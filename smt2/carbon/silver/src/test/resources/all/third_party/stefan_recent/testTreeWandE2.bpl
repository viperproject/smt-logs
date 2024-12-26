// 
// Translation of Viper program.
// 
// Date:         2024-12-26 15:14:56
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/third_party/stefan_recent/testTreeWandE2.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/third_party/stefan_recent/testTreeWandE2-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
axiom (forall o_76: Ref, f_53: (Field NormalField Ref), Heap: HeapType ::
  { Heap[o_76, f_53] }
  Heap[o_76, $allocated] ==> Heap[Heap[o_76, f_53], $allocated]
);
function  succHeap(Heap0: HeapType, Heap1: HeapType): bool;
function  succHeapTrans(Heap0: HeapType, Heap1: HeapType): bool;
function  IdenticalOnKnownLocations(Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType): bool;
function  IsPredicateField<A, B>(f_1: (Field A B)): bool;
function  IsWandField<A, B>(f_1: (Field A B)): bool;
function  getPredWandId<A, B>(f_1: (Field A B)): int;
// Frame all locations with direct permissions
axiom (forall <A, B> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_77: Ref, f_63: (Field A B) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_77, f_63] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, o_77, f_63) ==> Heap[o_77, f_63] == ExhaleHeap[o_77, f_63]
);
// Frame all predicate mask locations of predicates with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_54: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_54), ExhaleHeap[null, PredicateMaskField(pm_f_54)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_54) && IsPredicateField(pm_f_54) ==> Heap[null, PredicateMaskField(pm_f_54)] == ExhaleHeap[null, PredicateMaskField(pm_f_54)]
);
// Frame all locations with known folded permissions
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_54: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_54) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_54) && IsPredicateField(pm_f_54) ==> (forall <A, B> o2_54: Ref, f_63: (Field A B) ::
    { ExhaleHeap[o2_54, f_63] }
    Heap[null, PredicateMaskField(pm_f_54)][o2_54, f_63] ==> Heap[o2_54, f_63] == ExhaleHeap[o2_54, f_63]
  )
);
// Frame all wand mask locations of wands with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_54: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_54), ExhaleHeap[null, WandMaskField(pm_f_54)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_54) && IsWandField(pm_f_54) ==> Heap[null, WandMaskField(pm_f_54)] == ExhaleHeap[null, WandMaskField(pm_f_54)]
);
// Frame all locations in the footprint of magic wands
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_54: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_54) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_54) && IsWandField(pm_f_54) ==> (forall <A, B> o2_54: Ref, f_63: (Field A B) ::
    { ExhaleHeap[o2_54, f_63] }
    Heap[null, WandMaskField(pm_f_54)][o2_54, f_63] ==> Heap[o2_54, f_63] == ExhaleHeap[o2_54, f_63]
  )
);
// All previously-allocated references are still allocated
axiom (forall Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_77: Ref ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_77, $allocated] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> Heap[o_77, $allocated] ==> ExhaleHeap[o_77, $allocated]
);
// Updated Heaps are Successor Heaps
axiom (forall <A, B> Heap: HeapType, o_76: Ref, f_46: (Field A B), v: B ::
  { Heap[o_76, f_46:=v] }
  succHeap(Heap, Heap[o_76, f_46:=v])
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
    Mask := Mask[null, Wand_state_contains_for_state_contains__valid_wand(diz):=Mask[null, Wand_state_contains_for_state_contains__valid_wand(diz)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Check definedness of function body
    
    // -- Check definedness of (unfolding acc(Wand_state_contains_for_state_contains__valid_wand(diz), write) in diz.Wand_state_contains_for_state_contains__in_1)
      UnfoldingHeap := Heap;
      UnfoldingMask := Mask;
      assume Wand_state_contains_for_state_contains__valid_wand#trigger(UnfoldingHeap, Wand_state_contains_for_state_contains__valid_wand(diz));
      assume UnfoldingHeap[null, Wand_state_contains_for_state_contains__valid_wand(diz)] == CombineFrames(FrameFragment(UnfoldingHeap[diz, Wand_state_contains_for_state_contains__lemma]), CombineFrames(FrameFragment(UnfoldingHeap[diz, Wand_state_contains_for_state_contains__in_1]), CombineFrames(FrameFragment(UnfoldingHeap[diz, Wand_state_contains_for_state_contains__in_1_0]), CombineFrames(FrameFragment(UnfoldingHeap[diz, Wand_state_contains_for_state_contains__out_1]), CombineFrames(FrameFragment(UnfoldingHeap[diz, Wand_state_contains_for_state_contains__out_1_0]), CombineFrames(FrameFragment(UnfoldingHeap[diz, Wand_state_contains_for_state_contains__this_1]), CombineFrames(FrameFragment(UnfoldingHeap[diz, Wand_state_contains_for_state_contains__target_contents_1]), CombineFrames(FrameFragment(UnfoldingHeap[diz, Wand_state_contains_for_state_contains__prev_contents_1]), CombineFrames(FrameFragment(UnfoldingHeap[diz, Wand_state_contains_for_state_contains__prev_1]), CombineFrames(FrameFragment(UnfoldingHeap[diz, Wand_state_contains_for_state_contains__cur_contents_1]), CombineFrames(FrameFragment(UnfoldingHeap[diz, Wand_state_contains_for_state_contains__top_1]), CombineFrames(FrameFragment(UnfoldingHeap[diz, Wand_state_contains_for_state_contains__cur_1]), CombineFrames(FrameFragment(UnfoldingHeap[diz, Wand_state_contains_for_state_contains__wand_1]), CombineFrames(FrameFragment((if UnfoldingHeap[diz, Wand_state_contains_for_state_contains__lemma] == 1 then CombineFrames(CombineFrames(FrameFragment(UnfoldingHeap[UnfoldingHeap[diz, Wand_state_contains_for_state_contains__prev_1], Tree__left]), FrameFragment(UnfoldingHeap[UnfoldingHeap[diz, Wand_state_contains_for_state_contains__prev_1], Tree__data])), CombineFrames(CombineFrames(FrameFragment(UnfoldingHeap[UnfoldingHeap[diz, Wand_state_contains_for_state_contains__prev_1], Tree__right]), FrameFragment((if UnfoldingHeap[UnfoldingHeap[diz, Wand_state_contains_for_state_contains__prev_1], Tree__right] != null then UnfoldingHeap[null, Tree__state(UnfoldingHeap[UnfoldingHeap[diz, Wand_state_contains_for_state_contains__prev_1], Tree__right])] else EmptyFrame))), UnfoldingHeap[null, Wand_state_contains_for_state_contains__valid_wand(UnfoldingHeap[diz, Wand_state_contains_for_state_contains__wand_1])])) else EmptyFrame)), CombineFrames(FrameFragment(UnfoldingHeap[diz, Wand_state_contains_for_state_contains__this_2]), CombineFrames(FrameFragment(UnfoldingHeap[diz, Wand_state_contains_for_state_contains__target_contents_2]), CombineFrames(FrameFragment(UnfoldingHeap[diz, Wand_state_contains_for_state_contains__top_2]), FrameFragment((if UnfoldingHeap[diz, Wand_state_contains_for_state_contains__lemma] == 2 then EmptyFrame else EmptyFrame)))))))))))))))))));
      ExhaleWellDef0Mask := UnfoldingMask;
      ExhaleWellDef0Heap := UnfoldingHeap;
      perm := FullPerm;
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access Wand_state_contains_for_state_contains__valid_wand(diz) (testTreeWandE2.vpr@43.1--49.2) [173837]"}
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
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access diz.Wand_state_contains_for_state_contains__in_1 (testTreeWandE2.vpr@43.1--49.2) [173838]"}
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
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    assert {:msg "  Postcondition of Wand_state_contains_for_state_contains__get_in_1 might not hold. Assertion result != null might not hold. (testTreeWandE2.vpr@46.11--46.25) [173839]"}
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
    Mask := Mask[null, Wand_state_contains_for_state_contains__valid_wand(diz):=Mask[null, Wand_state_contains_for_state_contains__valid_wand(diz)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Check definedness of function body
    
    // -- Check definedness of (unfolding acc(Wand_state_contains_for_state_contains__valid_wand(diz), write) in diz.Wand_state_contains_for_state_contains__in_1_0)
      UnfoldingHeap := Heap;
      UnfoldingMask := Mask;
      assume Wand_state_contains_for_state_contains__valid_wand#trigger(UnfoldingHeap, Wand_state_contains_for_state_contains__valid_wand(diz));
      assume UnfoldingHeap[null, Wand_state_contains_for_state_contains__valid_wand(diz)] == CombineFrames(FrameFragment(UnfoldingHeap[diz, Wand_state_contains_for_state_contains__lemma]), CombineFrames(FrameFragment(UnfoldingHeap[diz, Wand_state_contains_for_state_contains__in_1]), CombineFrames(FrameFragment(UnfoldingHeap[diz, Wand_state_contains_for_state_contains__in_1_0]), CombineFrames(FrameFragment(UnfoldingHeap[diz, Wand_state_contains_for_state_contains__out_1]), CombineFrames(FrameFragment(UnfoldingHeap[diz, Wand_state_contains_for_state_contains__out_1_0]), CombineFrames(FrameFragment(UnfoldingHeap[diz, Wand_state_contains_for_state_contains__this_1]), CombineFrames(FrameFragment(UnfoldingHeap[diz, Wand_state_contains_for_state_contains__target_contents_1]), CombineFrames(FrameFragment(UnfoldingHeap[diz, Wand_state_contains_for_state_contains__prev_contents_1]), CombineFrames(FrameFragment(UnfoldingHeap[diz, Wand_state_contains_for_state_contains__prev_1]), CombineFrames(FrameFragment(UnfoldingHeap[diz, Wand_state_contains_for_state_contains__cur_contents_1]), CombineFrames(FrameFragment(UnfoldingHeap[diz, Wand_state_contains_for_state_contains__top_1]), CombineFrames(FrameFragment(UnfoldingHeap[diz, Wand_state_contains_for_state_contains__cur_1]), CombineFrames(FrameFragment(UnfoldingHeap[diz, Wand_state_contains_for_state_contains__wand_1]), CombineFrames(FrameFragment((if UnfoldingHeap[diz, Wand_state_contains_for_state_contains__lemma] == 1 then CombineFrames(CombineFrames(FrameFragment(UnfoldingHeap[UnfoldingHeap[diz, Wand_state_contains_for_state_contains__prev_1], Tree__left]), FrameFragment(UnfoldingHeap[UnfoldingHeap[diz, Wand_state_contains_for_state_contains__prev_1], Tree__data])), CombineFrames(CombineFrames(FrameFragment(UnfoldingHeap[UnfoldingHeap[diz, Wand_state_contains_for_state_contains__prev_1], Tree__right]), FrameFragment((if UnfoldingHeap[UnfoldingHeap[diz, Wand_state_contains_for_state_contains__prev_1], Tree__right] != null then UnfoldingHeap[null, Tree__state(UnfoldingHeap[UnfoldingHeap[diz, Wand_state_contains_for_state_contains__prev_1], Tree__right])] else EmptyFrame))), UnfoldingHeap[null, Wand_state_contains_for_state_contains__valid_wand(UnfoldingHeap[diz, Wand_state_contains_for_state_contains__wand_1])])) else EmptyFrame)), CombineFrames(FrameFragment(UnfoldingHeap[diz, Wand_state_contains_for_state_contains__this_2]), CombineFrames(FrameFragment(UnfoldingHeap[diz, Wand_state_contains_for_state_contains__target_contents_2]), CombineFrames(FrameFragment(UnfoldingHeap[diz, Wand_state_contains_for_state_contains__top_2]), FrameFragment((if UnfoldingHeap[diz, Wand_state_contains_for_state_contains__lemma] == 2 then EmptyFrame else EmptyFrame)))))))))))))))))));
      ExhaleWellDef0Mask := UnfoldingMask;
      ExhaleWellDef0Heap := UnfoldingHeap;
      perm := FullPerm;
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access Wand_state_contains_for_state_contains__valid_wand(diz) (testTreeWandE2.vpr@51.1--56.2) [173840]"}
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
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access diz.Wand_state_contains_for_state_contains__in_1_0 (testTreeWandE2.vpr@51.1--56.2) [173841]"}
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
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
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
      ExhaleWellDef0Mask := UnfoldingMask;
      ExhaleWellDef0Heap := UnfoldingHeap;
      perm := FullPerm;
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access Wand_state_contains_for_state_contains__valid_wand(diz) (testTreeWandE2.vpr@58.1--64.2) [173842]"}
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
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access diz.Wand_state_contains_for_state_contains__out_1 (testTreeWandE2.vpr@58.1--64.2) [173843]"}
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
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    assert {:msg "  Postcondition of Wand_state_contains_for_state_contains__get_out_1 might not hold. Assertion result != null might not hold. (testTreeWandE2.vpr@61.11--61.25) [173844]"}
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
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
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
      ExhaleWellDef0Mask := UnfoldingMask;
      ExhaleWellDef0Heap := UnfoldingHeap;
      perm := FullPerm;
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access Wand_state_contains_for_state_contains__valid_wand(diz) (testTreeWandE2.vpr@66.1--71.2) [173845]"}
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
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access diz.Wand_state_contains_for_state_contains__out_1_0 (testTreeWandE2.vpr@66.1--71.2) [173846]"}
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
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
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
        ExhaleWellDef0Mask := UnfoldingMask;
        ExhaleWellDef0Heap := UnfoldingHeap;
        perm := FullPerm;
        assert {:msg "  Function might not be well-formed. There might be insufficient permission to access Tree__state(t) (testTreeWandE2.vpr@73.1--77.2) [173847]"}
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
        assert {:msg "  Function might not be well-formed. There might be insufficient permission to access t.Tree__left (testTreeWandE2.vpr@73.1--77.2) [173848]"}
          HasDirectPerm(UnfoldingMask, t_2, Tree__left);
        if (*) {
          // Exhale precondition of function application
          ExhaleWellDef0Mask := UnfoldingMask;
          ExhaleWellDef0Heap := UnfoldingHeap;
          if (UnfoldingHeap[t_2, Tree__left] != null) {
            perm := FullPerm;
            assert {:msg "  Precondition of function Tree__tolist might not hold. There might be insufficient permission to access Tree__state(t.Tree__left) (testTreeWandE2.vpr@76.70--76.96) [173849]"}
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
        assert {:msg "  Function might not be well-formed. There might be insufficient permission to access t.Tree__data (testTreeWandE2.vpr@73.1--77.2) [173850]"}
          HasDirectPerm(UnfoldingMask, t_2, Tree__data);
        assert {:msg "  Function might not be well-formed. There might be insufficient permission to access t.Tree__right (testTreeWandE2.vpr@73.1--77.2) [173851]"}
          HasDirectPerm(UnfoldingMask, t_2, Tree__right);
        if (*) {
          // Exhale precondition of function application
          ExhaleWellDef0Mask := UnfoldingMask;
          ExhaleWellDef0Heap := UnfoldingHeap;
          if (UnfoldingHeap[t_2, Tree__right] != null) {
            perm := FullPerm;
            assert {:msg "  Precondition of function Tree__tolist might not hold. There might be insufficient permission to access Tree__state(t.Tree__right) (testTreeWandE2.vpr@76.121--76.148) [173852]"}
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
  state(Heap, Mask) && AssumeFunctionsAbove < 5 ==> Tree__sorted_list(Heap, s_2)
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
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume AssumeFunctionsAbove == 5;
  
  // -- Translate function body
    Result := true;
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
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
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
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        if (t_2 != null) {
          perm := FullPerm;
          assert {:msg "  Precondition of function Tree__tolist might not hold. There might be insufficient permission to access Tree__state(t) (testTreeWandE2.vpr@87.21--87.36) [173853]"}
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
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
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
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access diz.Wand_state_contains_for_state_contains__lemma (testTreeWandE2.vpr@90.1--92.2) [173854]"}
        HasDirectPerm(Mask, diz, Wand_state_contains_for_state_contains__lemma);
    assume 1 <= Heap[diz, Wand_state_contains_for_state_contains__lemma];
    havoc wildcard;
    perm := wildcard;
    assume diz != null;
    Mask := Mask[diz, Wand_state_contains_for_state_contains__in_1:=Mask[diz, Wand_state_contains_for_state_contains__in_1] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of diz.Wand_state_contains_for_state_contains__in_1 != null
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access diz.Wand_state_contains_for_state_contains__in_1 (testTreeWandE2.vpr@90.1--92.2) [173855]"}
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
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access diz.Wand_state_contains_for_state_contains__out_1 (testTreeWandE2.vpr@90.1--92.2) [173856]"}
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
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access diz.Wand_state_contains_for_state_contains__lemma (testTreeWandE2.vpr@90.1--92.2) [173857]"}
        HasDirectPerm(Mask, diz, Wand_state_contains_for_state_contains__lemma);
    if (Heap[diz, Wand_state_contains_for_state_contains__lemma] == 1) {
      
      // -- Check definedness of diz.Wand_state_contains_for_state_contains__this_1 != null
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access diz.Wand_state_contains_for_state_contains__this_1 (testTreeWandE2.vpr@90.1--92.2) [173858]"}
          HasDirectPerm(Mask, diz, Wand_state_contains_for_state_contains__this_1);
      assume Heap[diz, Wand_state_contains_for_state_contains__this_1] != null;
      
      // -- Check definedness of |diz.Wand_state_contains_for_state_contains__prev_contents_1| > 0
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access diz.Wand_state_contains_for_state_contains__prev_contents_1 (testTreeWandE2.vpr@90.1--92.2) [173859]"}
          HasDirectPerm(Mask, diz, Wand_state_contains_for_state_contains__prev_contents_1);
      assume Seq#Length(Heap[diz, Wand_state_contains_for_state_contains__prev_contents_1]) > 0;
      
      // -- Check definedness of |diz.Wand_state_contains_for_state_contains__cur_contents_1| > 0
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access diz.Wand_state_contains_for_state_contains__cur_contents_1 (testTreeWandE2.vpr@90.1--92.2) [173860]"}
          HasDirectPerm(Mask, diz, Wand_state_contains_for_state_contains__cur_contents_1);
      assume Seq#Length(Heap[diz, Wand_state_contains_for_state_contains__cur_contents_1]) > 0;
      
      // -- Check definedness of acc(diz.Wand_state_contains_for_state_contains__prev_1.Tree__left, write)
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access diz.Wand_state_contains_for_state_contains__prev_1 (testTreeWandE2.vpr@90.1--92.2) [173861]"}
          HasDirectPerm(Mask, diz, Wand_state_contains_for_state_contains__prev_1);
      perm := FullPerm;
      assume Heap[diz, Wand_state_contains_for_state_contains__prev_1] != null;
      Mask := Mask[Heap[diz, Wand_state_contains_for_state_contains__prev_1], Tree__left:=Mask[Heap[diz, Wand_state_contains_for_state_contains__prev_1], Tree__left] + perm];
      assume state(Heap, Mask);
      
      // -- Check definedness of acc(diz.Wand_state_contains_for_state_contains__prev_1.Tree__data, write)
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access diz.Wand_state_contains_for_state_contains__prev_1 (testTreeWandE2.vpr@90.1--92.2) [173862]"}
          HasDirectPerm(Mask, diz, Wand_state_contains_for_state_contains__prev_1);
      perm := FullPerm;
      assume Heap[diz, Wand_state_contains_for_state_contains__prev_1] != null;
      Mask := Mask[Heap[diz, Wand_state_contains_for_state_contains__prev_1], Tree__data:=Mask[Heap[diz, Wand_state_contains_for_state_contains__prev_1], Tree__data] + perm];
      assume state(Heap, Mask);
      
      // -- Check definedness of acc(diz.Wand_state_contains_for_state_contains__prev_1.Tree__right, write)
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access diz.Wand_state_contains_for_state_contains__prev_1 (testTreeWandE2.vpr@90.1--92.2) [173863]"}
          HasDirectPerm(Mask, diz, Wand_state_contains_for_state_contains__prev_1);
      perm := FullPerm;
      assume Heap[diz, Wand_state_contains_for_state_contains__prev_1] != null;
      Mask := Mask[Heap[diz, Wand_state_contains_for_state_contains__prev_1], Tree__right:=Mask[Heap[diz, Wand_state_contains_for_state_contains__prev_1], Tree__right] + perm];
      assume state(Heap, Mask);
      
      // -- Check definedness of diz.Wand_state_contains_for_state_contains__prev_1.Tree__right != null
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access diz.Wand_state_contains_for_state_contains__prev_1 (testTreeWandE2.vpr@90.1--92.2) [173864]"}
          HasDirectPerm(Mask, diz, Wand_state_contains_for_state_contains__prev_1);
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access diz.Wand_state_contains_for_state_contains__prev_1.Tree__right (testTreeWandE2.vpr@90.1--92.2) [173865]"}
          HasDirectPerm(Mask, Heap[diz, Wand_state_contains_for_state_contains__prev_1], Tree__right);
      if (Heap[Heap[diz, Wand_state_contains_for_state_contains__prev_1], Tree__right] != null) {
        
        // -- Check definedness of acc(Tree__state(diz.Wand_state_contains_for_state_contains__prev_1.Tree__right), write)
          assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access diz.Wand_state_contains_for_state_contains__prev_1 (testTreeWandE2.vpr@90.1--92.2) [173866]"}
            HasDirectPerm(Mask, diz, Wand_state_contains_for_state_contains__prev_1);
          assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access diz.Wand_state_contains_for_state_contains__prev_1.Tree__right (testTreeWandE2.vpr@90.1--92.2) [173867]"}
            HasDirectPerm(Mask, Heap[diz, Wand_state_contains_for_state_contains__prev_1], Tree__right);
        perm := FullPerm;
        Mask := Mask[null, Tree__state(Heap[Heap[diz, Wand_state_contains_for_state_contains__prev_1], Tree__right]):=Mask[null, Tree__state(Heap[Heap[diz, Wand_state_contains_for_state_contains__prev_1], Tree__right])] + perm];
        assume state(Heap, Mask);
      }
      
      // -- Check definedness of diz.Wand_state_contains_for_state_contains__prev_1.Tree__left == diz.Wand_state_contains_for_state_contains__cur_1
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access diz.Wand_state_contains_for_state_contains__prev_1 (testTreeWandE2.vpr@90.1--92.2) [173868]"}
          HasDirectPerm(Mask, diz, Wand_state_contains_for_state_contains__prev_1);
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access diz.Wand_state_contains_for_state_contains__prev_1.Tree__left (testTreeWandE2.vpr@90.1--92.2) [173869]"}
          HasDirectPerm(Mask, Heap[diz, Wand_state_contains_for_state_contains__prev_1], Tree__left);
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access diz.Wand_state_contains_for_state_contains__cur_1 (testTreeWandE2.vpr@90.1--92.2) [173870]"}
          HasDirectPerm(Mask, diz, Wand_state_contains_for_state_contains__cur_1);
      assume Heap[Heap[diz, Wand_state_contains_for_state_contains__prev_1], Tree__left] == Heap[diz, Wand_state_contains_for_state_contains__cur_1];
      assume state(Heap, Mask);
      
      // -- Check definedness of diz.Wand_state_contains_for_state_contains__prev_contents_1 == diz.Wand_state_contains_for_state_contains__cur_contents_1 ++ Seq(diz.Wand_state_contains_for_state_contains__prev_1.Tree__data) ++ Tree__tolist(diz.Wand_state_contains_for_state_contains__prev_1.Tree__right)
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access diz.Wand_state_contains_for_state_contains__prev_contents_1 (testTreeWandE2.vpr@90.1--92.2) [173871]"}
          HasDirectPerm(Mask, diz, Wand_state_contains_for_state_contains__prev_contents_1);
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access diz.Wand_state_contains_for_state_contains__cur_contents_1 (testTreeWandE2.vpr@90.1--92.2) [173872]"}
          HasDirectPerm(Mask, diz, Wand_state_contains_for_state_contains__cur_contents_1);
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access diz.Wand_state_contains_for_state_contains__prev_1 (testTreeWandE2.vpr@90.1--92.2) [173873]"}
          HasDirectPerm(Mask, diz, Wand_state_contains_for_state_contains__prev_1);
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access diz.Wand_state_contains_for_state_contains__prev_1.Tree__data (testTreeWandE2.vpr@90.1--92.2) [173874]"}
          HasDirectPerm(Mask, Heap[diz, Wand_state_contains_for_state_contains__prev_1], Tree__data);
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access diz.Wand_state_contains_for_state_contains__prev_1 (testTreeWandE2.vpr@90.1--92.2) [173875]"}
          HasDirectPerm(Mask, diz, Wand_state_contains_for_state_contains__prev_1);
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access diz.Wand_state_contains_for_state_contains__prev_1.Tree__right (testTreeWandE2.vpr@90.1--92.2) [173876]"}
          HasDirectPerm(Mask, Heap[diz, Wand_state_contains_for_state_contains__prev_1], Tree__right);
        if (*) {
          // Exhale precondition of function application
          ExhaleWellDef0Mask := Mask;
          ExhaleWellDef0Heap := Heap;
          if (Heap[Heap[diz, Wand_state_contains_for_state_contains__prev_1], Tree__right] != null) {
            perm := FullPerm;
            assert {:msg "  Precondition of function Tree__tolist might not hold. There might be insufficient permission to access Tree__state(diz.Wand_state_contains_for_state_contains__prev_1.Tree__right) (testTreeWandE2.vpr@91.2097--91.2173) [173877]"}
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
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access diz.Wand_state_contains_for_state_contains__wand_1 (testTreeWandE2.vpr@90.1--92.2) [173878]"}
          HasDirectPerm(Mask, diz, Wand_state_contains_for_state_contains__wand_1);
      assume Heap[diz, Wand_state_contains_for_state_contains__wand_1] != null;
      
      // -- Check definedness of acc(Wand_state_contains_for_state_contains__valid_wand(diz.Wand_state_contains_for_state_contains__wand_1), write)
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access diz.Wand_state_contains_for_state_contains__wand_1 (testTreeWandE2.vpr@90.1--92.2) [173879]"}
          HasDirectPerm(Mask, diz, Wand_state_contains_for_state_contains__wand_1);
      perm := FullPerm;
      Mask := Mask[null, Wand_state_contains_for_state_contains__valid_wand(Heap[diz, Wand_state_contains_for_state_contains__wand_1]):=Mask[null, Wand_state_contains_for_state_contains__valid_wand(Heap[diz, Wand_state_contains_for_state_contains__wand_1])] + perm];
      assume state(Heap, Mask);
      assume state(Heap, Mask);
      
      // -- Check definedness of Wand_state_contains_for_state_contains__get_in_1(diz.Wand_state_contains_for_state_contains__wand_1) == diz.Wand_state_contains_for_state_contains__prev_1
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access diz.Wand_state_contains_for_state_contains__wand_1 (testTreeWandE2.vpr@90.1--92.2) [173880]"}
          HasDirectPerm(Mask, diz, Wand_state_contains_for_state_contains__wand_1);
        if (*) {
          // Exhale precondition of function application
          ExhaleWellDef0Mask := Mask;
          ExhaleWellDef0Heap := Heap;
          assert {:msg "  Precondition of function Wand_state_contains_for_state_contains__get_in_1 might not hold. Assertion diz.Wand_state_contains_for_state_contains__wand_1 != null might not hold. (testTreeWandE2.vpr@91.2362--91.2462) [173881]"}
            Heap[diz, Wand_state_contains_for_state_contains__wand_1] != null;
          perm := FullPerm;
          assert {:msg "  Precondition of function Wand_state_contains_for_state_contains__get_in_1 might not hold. There might be insufficient permission to access Wand_state_contains_for_state_contains__valid_wand(diz.Wand_state_contains_for_state_contains__wand_1) (testTreeWandE2.vpr@91.2362--91.2462) [173882]"}
            NoPerm < perm ==> NoPerm < Mask[null, Wand_state_contains_for_state_contains__valid_wand(Heap[diz, Wand_state_contains_for_state_contains__wand_1])];
          // Finish exhale
          havoc ExhaleHeap;
          assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
          Heap := ExhaleHeap;
          // Stop execution
          assume false;
        }
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access diz.Wand_state_contains_for_state_contains__prev_1 (testTreeWandE2.vpr@90.1--92.2) [173883]"}
          HasDirectPerm(Mask, diz, Wand_state_contains_for_state_contains__prev_1);
      assume Wand_state_contains_for_state_contains__get_in_1(Heap, Heap[diz, Wand_state_contains_for_state_contains__wand_1]) == Heap[diz, Wand_state_contains_for_state_contains__prev_1];
      assume state(Heap, Mask);
      
      // -- Check definedness of Wand_state_contains_for_state_contains__get_in_1_0(diz.Wand_state_contains_for_state_contains__wand_1) == diz.Wand_state_contains_for_state_contains__prev_contents_1[1..]
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access diz.Wand_state_contains_for_state_contains__wand_1 (testTreeWandE2.vpr@90.1--92.2) [173884]"}
          HasDirectPerm(Mask, diz, Wand_state_contains_for_state_contains__wand_1);
        if (*) {
          // Exhale precondition of function application
          ExhaleWellDef0Mask := Mask;
          ExhaleWellDef0Heap := Heap;
          assert {:msg "  Precondition of function Wand_state_contains_for_state_contains__get_in_1_0 might not hold. Assertion diz.Wand_state_contains_for_state_contains__wand_1 != null might not hold. (testTreeWandE2.vpr@91.2522--91.2624) [173885]"}
            Heap[diz, Wand_state_contains_for_state_contains__wand_1] != null;
          perm := FullPerm;
          assert {:msg "  Precondition of function Wand_state_contains_for_state_contains__get_in_1_0 might not hold. There might be insufficient permission to access Wand_state_contains_for_state_contains__valid_wand(diz.Wand_state_contains_for_state_contains__wand_1) (testTreeWandE2.vpr@91.2522--91.2624) [173886]"}
            NoPerm < perm ==> NoPerm < Mask[null, Wand_state_contains_for_state_contains__valid_wand(Heap[diz, Wand_state_contains_for_state_contains__wand_1])];
          // Finish exhale
          havoc ExhaleHeap;
          assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
          Heap := ExhaleHeap;
          // Stop execution
          assume false;
        }
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access diz.Wand_state_contains_for_state_contains__prev_contents_1 (testTreeWandE2.vpr@90.1--92.2) [173887]"}
          HasDirectPerm(Mask, diz, Wand_state_contains_for_state_contains__prev_contents_1);
      assume Seq#Equal(Wand_state_contains_for_state_contains__get_in_1_0(Heap, Heap[diz, Wand_state_contains_for_state_contains__wand_1]), Seq#Drop(Heap[diz, Wand_state_contains_for_state_contains__prev_contents_1], 1));
      assume state(Heap, Mask);
      
      // -- Check definedness of Wand_state_contains_for_state_contains__get_out_1(diz.Wand_state_contains_for_state_contains__wand_1) == diz.Wand_state_contains_for_state_contains__top_1
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access diz.Wand_state_contains_for_state_contains__wand_1 (testTreeWandE2.vpr@90.1--92.2) [173888]"}
          HasDirectPerm(Mask, diz, Wand_state_contains_for_state_contains__wand_1);
        if (*) {
          // Exhale precondition of function application
          ExhaleWellDef0Mask := Mask;
          ExhaleWellDef0Heap := Heap;
          assert {:msg "  Precondition of function Wand_state_contains_for_state_contains__get_out_1 might not hold. Assertion diz.Wand_state_contains_for_state_contains__wand_1 != null might not hold. (testTreeWandE2.vpr@91.2698--91.2799) [173889]"}
            Heap[diz, Wand_state_contains_for_state_contains__wand_1] != null;
          perm := FullPerm;
          assert {:msg "  Precondition of function Wand_state_contains_for_state_contains__get_out_1 might not hold. There might be insufficient permission to access Wand_state_contains_for_state_contains__valid_wand(diz.Wand_state_contains_for_state_contains__wand_1) (testTreeWandE2.vpr@91.2698--91.2799) [173890]"}
            NoPerm < perm ==> NoPerm < Mask[null, Wand_state_contains_for_state_contains__valid_wand(Heap[diz, Wand_state_contains_for_state_contains__wand_1])];
          // Finish exhale
          havoc ExhaleHeap;
          assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
          Heap := ExhaleHeap;
          // Stop execution
          assume false;
        }
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access diz.Wand_state_contains_for_state_contains__top_1 (testTreeWandE2.vpr@90.1--92.2) [173891]"}
          HasDirectPerm(Mask, diz, Wand_state_contains_for_state_contains__top_1);
      assume Wand_state_contains_for_state_contains__get_out_1(Heap, Heap[diz, Wand_state_contains_for_state_contains__wand_1]) == Heap[diz, Wand_state_contains_for_state_contains__top_1];
      assume state(Heap, Mask);
      
      // -- Check definedness of Wand_state_contains_for_state_contains__get_out_1_0(diz.Wand_state_contains_for_state_contains__wand_1) == diz.Wand_state_contains_for_state_contains__target_contents_1
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access diz.Wand_state_contains_for_state_contains__wand_1 (testTreeWandE2.vpr@90.1--92.2) [173892]"}
          HasDirectPerm(Mask, diz, Wand_state_contains_for_state_contains__wand_1);
        if (*) {
          // Exhale precondition of function application
          ExhaleWellDef0Mask := Mask;
          ExhaleWellDef0Heap := Heap;
          assert {:msg "  Precondition of function Wand_state_contains_for_state_contains__get_out_1_0 might not hold. Assertion diz.Wand_state_contains_for_state_contains__wand_1 != null might not hold. (testTreeWandE2.vpr@91.2858--91.2961) [173893]"}
            Heap[diz, Wand_state_contains_for_state_contains__wand_1] != null;
          perm := FullPerm;
          assert {:msg "  Precondition of function Wand_state_contains_for_state_contains__get_out_1_0 might not hold. There might be insufficient permission to access Wand_state_contains_for_state_contains__valid_wand(diz.Wand_state_contains_for_state_contains__wand_1) (testTreeWandE2.vpr@91.2858--91.2961) [173894]"}
            NoPerm < perm ==> NoPerm < Mask[null, Wand_state_contains_for_state_contains__valid_wand(Heap[diz, Wand_state_contains_for_state_contains__wand_1])];
          // Finish exhale
          havoc ExhaleHeap;
          assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
          Heap := ExhaleHeap;
          // Stop execution
          assume false;
        }
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access diz.Wand_state_contains_for_state_contains__target_contents_1 (testTreeWandE2.vpr@90.1--92.2) [173895]"}
          HasDirectPerm(Mask, diz, Wand_state_contains_for_state_contains__target_contents_1);
      assume Seq#Equal(Wand_state_contains_for_state_contains__get_out_1_0(Heap, Heap[diz, Wand_state_contains_for_state_contains__wand_1]), Heap[diz, Wand_state_contains_for_state_contains__target_contents_1]);
      
      // -- Check definedness of diz.Wand_state_contains_for_state_contains__in_1 == diz.Wand_state_contains_for_state_contains__cur_1
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access diz.Wand_state_contains_for_state_contains__in_1 (testTreeWandE2.vpr@90.1--92.2) [173896]"}
          HasDirectPerm(Mask, diz, Wand_state_contains_for_state_contains__in_1);
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access diz.Wand_state_contains_for_state_contains__cur_1 (testTreeWandE2.vpr@90.1--92.2) [173897]"}
          HasDirectPerm(Mask, diz, Wand_state_contains_for_state_contains__cur_1);
      assume Heap[diz, Wand_state_contains_for_state_contains__in_1] == Heap[diz, Wand_state_contains_for_state_contains__cur_1];
      
      // -- Check definedness of diz.Wand_state_contains_for_state_contains__in_1_0 == diz.Wand_state_contains_for_state_contains__cur_contents_1[1..]
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access diz.Wand_state_contains_for_state_contains__in_1_0 (testTreeWandE2.vpr@90.1--92.2) [173898]"}
          HasDirectPerm(Mask, diz, Wand_state_contains_for_state_contains__in_1_0);
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access diz.Wand_state_contains_for_state_contains__cur_contents_1 (testTreeWandE2.vpr@90.1--92.2) [173899]"}
          HasDirectPerm(Mask, diz, Wand_state_contains_for_state_contains__cur_contents_1);
      assume Seq#Equal(Heap[diz, Wand_state_contains_for_state_contains__in_1_0], Seq#Drop(Heap[diz, Wand_state_contains_for_state_contains__cur_contents_1], 1));
      
      // -- Check definedness of diz.Wand_state_contains_for_state_contains__out_1 == diz.Wand_state_contains_for_state_contains__top_1
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access diz.Wand_state_contains_for_state_contains__out_1 (testTreeWandE2.vpr@90.1--92.2) [173900]"}
          HasDirectPerm(Mask, diz, Wand_state_contains_for_state_contains__out_1);
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access diz.Wand_state_contains_for_state_contains__top_1 (testTreeWandE2.vpr@90.1--92.2) [173901]"}
          HasDirectPerm(Mask, diz, Wand_state_contains_for_state_contains__top_1);
      assume Heap[diz, Wand_state_contains_for_state_contains__out_1] == Heap[diz, Wand_state_contains_for_state_contains__top_1];
      
      // -- Check definedness of diz.Wand_state_contains_for_state_contains__out_1_0 == diz.Wand_state_contains_for_state_contains__target_contents_1
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access diz.Wand_state_contains_for_state_contains__out_1_0 (testTreeWandE2.vpr@90.1--92.2) [173902]"}
          HasDirectPerm(Mask, diz, Wand_state_contains_for_state_contains__out_1_0);
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access diz.Wand_state_contains_for_state_contains__target_contents_1 (testTreeWandE2.vpr@90.1--92.2) [173903]"}
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
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access diz.Wand_state_contains_for_state_contains__lemma (testTreeWandE2.vpr@90.1--92.2) [173904]"}
        HasDirectPerm(Mask, diz, Wand_state_contains_for_state_contains__lemma);
    if (Heap[diz, Wand_state_contains_for_state_contains__lemma] == 2) {
      
      // -- Check definedness of diz.Wand_state_contains_for_state_contains__this_2 != null
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access diz.Wand_state_contains_for_state_contains__this_2 (testTreeWandE2.vpr@90.1--92.2) [173905]"}
          HasDirectPerm(Mask, diz, Wand_state_contains_for_state_contains__this_2);
      assume Heap[diz, Wand_state_contains_for_state_contains__this_2] != null;
      
      // -- Check definedness of diz.Wand_state_contains_for_state_contains__in_1 == diz.Wand_state_contains_for_state_contains__top_2
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access diz.Wand_state_contains_for_state_contains__in_1 (testTreeWandE2.vpr@90.1--92.2) [173906]"}
          HasDirectPerm(Mask, diz, Wand_state_contains_for_state_contains__in_1);
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access diz.Wand_state_contains_for_state_contains__top_2 (testTreeWandE2.vpr@90.1--92.2) [173907]"}
          HasDirectPerm(Mask, diz, Wand_state_contains_for_state_contains__top_2);
      assume Heap[diz, Wand_state_contains_for_state_contains__in_1] == Heap[diz, Wand_state_contains_for_state_contains__top_2];
      
      // -- Check definedness of diz.Wand_state_contains_for_state_contains__in_1_0 == diz.Wand_state_contains_for_state_contains__target_contents_2
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access diz.Wand_state_contains_for_state_contains__in_1_0 (testTreeWandE2.vpr@90.1--92.2) [173908]"}
          HasDirectPerm(Mask, diz, Wand_state_contains_for_state_contains__in_1_0);
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access diz.Wand_state_contains_for_state_contains__target_contents_2 (testTreeWandE2.vpr@90.1--92.2) [173909]"}
          HasDirectPerm(Mask, diz, Wand_state_contains_for_state_contains__target_contents_2);
      assume Seq#Equal(Heap[diz, Wand_state_contains_for_state_contains__in_1_0], Heap[diz, Wand_state_contains_for_state_contains__target_contents_2]);
      
      // -- Check definedness of diz.Wand_state_contains_for_state_contains__out_1 == diz.Wand_state_contains_for_state_contains__top_2
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access diz.Wand_state_contains_for_state_contains__out_1 (testTreeWandE2.vpr@90.1--92.2) [173910]"}
          HasDirectPerm(Mask, diz, Wand_state_contains_for_state_contains__out_1);
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access diz.Wand_state_contains_for_state_contains__top_2 (testTreeWandE2.vpr@90.1--92.2) [173911]"}
          HasDirectPerm(Mask, diz, Wand_state_contains_for_state_contains__top_2);
      assume Heap[diz, Wand_state_contains_for_state_contains__out_1] == Heap[diz, Wand_state_contains_for_state_contains__top_2];
      
      // -- Check definedness of diz.Wand_state_contains_for_state_contains__out_1_0 == diz.Wand_state_contains_for_state_contains__target_contents_2
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access diz.Wand_state_contains_for_state_contains__out_1_0 (testTreeWandE2.vpr@90.1--92.2) [173912]"}
          HasDirectPerm(Mask, diz, Wand_state_contains_for_state_contains__out_1_0);
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access diz.Wand_state_contains_for_state_contains__target_contents_2 (testTreeWandE2.vpr@90.1--92.2) [173913]"}
          HasDirectPerm(Mask, diz, Wand_state_contains_for_state_contains__target_contents_2);
      assume Seq#Equal(Heap[diz, Wand_state_contains_for_state_contains__out_1_0], Heap[diz, Wand_state_contains_for_state_contains__target_contents_2]);
    }
    
    // -- Check definedness of diz.Wand_state_contains_for_state_contains__lemma <= 2
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access diz.Wand_state_contains_for_state_contains__lemma (testTreeWandE2.vpr@90.1--92.2) [173914]"}
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
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access diz.Tree__left (testTreeWandE2.vpr@94.1--96.2) [173915]"}
        HasDirectPerm(Mask, diz, Tree__left);
    if (Heap[diz, Tree__left] != null) {
      
      // -- Check definedness of acc(Tree__state(diz.Tree__left), write)
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access diz.Tree__left (testTreeWandE2.vpr@94.1--96.2) [173916]"}
          HasDirectPerm(Mask, diz, Tree__left);
      perm := FullPerm;
      Mask := Mask[null, Tree__state(Heap[diz, Tree__left]):=Mask[null, Tree__state(Heap[diz, Tree__left])] + perm];
      assume state(Heap, Mask);
    }
    
    // -- Check definedness of diz.Tree__right != null
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access diz.Tree__right (testTreeWandE2.vpr@94.1--96.2) [173917]"}
        HasDirectPerm(Mask, diz, Tree__right);
    if (Heap[diz, Tree__right] != null) {
      
      // -- Check definedness of acc(Tree__state(diz.Tree__right), write)
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access diz.Tree__right (testTreeWandE2.vpr@94.1--96.2) [173918]"}
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
  var AssertHeap: HeapType;
  var AssertMask: MaskType;
  var ExhaleWellDef1Mask: MaskType;
  var ExhaleWellDef1Heap: HeapType;
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
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        assert {:msg "  Precondition of function Wand_state_contains_for_state_contains__get_in_1 might not hold. Assertion diz != null might not hold. (testTreeWandE2.vpr@102.28--102.81) [173919]"}
          diz != null;
        perm := FullPerm;
        assert {:msg "  Precondition of function Wand_state_contains_for_state_contains__get_in_1 might not hold. There might be insufficient permission to access Wand_state_contains_for_state_contains__valid_wand(diz) (testTreeWandE2.vpr@102.28--102.81) [173920]"}
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
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        assert {:msg "  Precondition of function Wand_state_contains_for_state_contains__get_in_1 might not hold. Assertion diz != null might not hold. (testTreeWandE2.vpr@103.25--103.78) [173921]"}
          diz != null;
        perm := FullPerm;
        assert {:msg "  Precondition of function Wand_state_contains_for_state_contains__get_in_1 might not hold. There might be insufficient permission to access Wand_state_contains_for_state_contains__valid_wand(diz) (testTreeWandE2.vpr@103.25--103.78) [173922]"}
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
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        if (Wand_state_contains_for_state_contains__get_in_1(Heap, diz) != null) {
          perm := FullPerm;
          assert {:msg "  Precondition of function Tree__tolist might not hold. There might be insufficient permission to access Tree__state(Wand_state_contains_for_state_contains__get_in_1(diz)) (testTreeWandE2.vpr@103.12--103.79) [173923]"}
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
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        assert {:msg "  Precondition of function Wand_state_contains_for_state_contains__get_in_1_0 might not hold. Assertion diz != null might not hold. (testTreeWandE2.vpr@103.83--103.138) [173924]"}
          diz != null;
        perm := FullPerm;
        assert {:msg "  Precondition of function Wand_state_contains_for_state_contains__get_in_1_0 might not hold. There might be insufficient permission to access Wand_state_contains_for_state_contains__valid_wand(diz) (testTreeWandE2.vpr@103.83--103.138) [173925]"}
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
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        assert {:msg "  Precondition of function Wand_state_contains_for_state_contains__get_out_1 might not hold. Assertion diz != null might not hold. (testTreeWandE2.vpr@104.12--104.66) [173926]"}
          diz != null;
        perm := FullPerm;
        assert {:msg "  Precondition of function Wand_state_contains_for_state_contains__get_out_1 might not hold. There might be insufficient permission to access Wand_state_contains_for_state_contains__valid_wand(diz) (testTreeWandE2.vpr@104.12--104.66) [173927]"}
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
      oldMask := Mask;
      oldHeap := Heap;
  if (*) {
    havoc PostHeap;
    PostMask := ZeroMask;
    assume state(PostHeap, PostMask);
    // Checked inhaling of postcondition to check definedness
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of acc(Tree__state(old(Wand_state_contains_for_state_contains__get_out_1(diz))), write)
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Mask := oldMask;
        ExhaleWellDef0Heap := oldHeap;
        assert {:msg "  Precondition of function Wand_state_contains_for_state_contains__get_out_1 might not hold. Assertion diz != null might not hold. (testTreeWandE2.vpr@105.31--105.85) [173928]"}
          diz != null;
        perm := FullPerm;
        assert {:msg "  Precondition of function Wand_state_contains_for_state_contains__get_out_1 might not hold. There might be insufficient permission to access Wand_state_contains_for_state_contains__valid_wand(diz) (testTreeWandE2.vpr@105.31--105.85) [173929]"}
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
        ExhaleWellDef0Mask := oldMask;
        ExhaleWellDef0Heap := oldHeap;
        assert {:msg "  Precondition of function Wand_state_contains_for_state_contains__get_out_1 might not hold. Assertion diz != null might not hold. (testTreeWandE2.vpr@106.28--106.82) [173930]"}
          diz != null;
        perm := FullPerm;
        assert {:msg "  Precondition of function Wand_state_contains_for_state_contains__get_out_1 might not hold. There might be insufficient permission to access Wand_state_contains_for_state_contains__valid_wand(diz) (testTreeWandE2.vpr@106.28--106.82) [173931]"}
          NoPerm < perm ==> NoPerm < oldMask[null, Wand_state_contains_for_state_contains__valid_wand(diz)];
        // Finish exhale
        // Stop execution
        assume false;
      }
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Mask := PostMask;
        ExhaleWellDef0Heap := PostHeap;
        if (Wand_state_contains_for_state_contains__get_out_1(oldHeap, diz) != null) {
          perm := FullPerm;
          assert {:msg "  Precondition of function Tree__tolist might not hold. There might be insufficient permission to access Tree__state(old(Wand_state_contains_for_state_contains__get_out_1(diz))) (testTreeWandE2.vpr@106.11--106.84) [173932]"}
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
        ExhaleWellDef0Mask := oldMask;
        ExhaleWellDef0Heap := oldHeap;
        assert {:msg "  Precondition of function Wand_state_contains_for_state_contains__get_out_1_0 might not hold. Assertion diz != null might not hold. (testTreeWandE2.vpr@106.92--106.148) [173933]"}
          diz != null;
        perm := FullPerm;
        assert {:msg "  Precondition of function Wand_state_contains_for_state_contains__get_out_1_0 might not hold. There might be insufficient permission to access Wand_state_contains_for_state_contains__valid_wand(diz) (testTreeWandE2.vpr@106.92--106.148) [173934]"}
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
  
  // -- Translating statement: unfold acc(Wand_state_contains_for_state_contains__valid_wand(diz), write) -- testTreeWandE2.vpr@108.3--108.77
    assume Wand_state_contains_for_state_contains__valid_wand#trigger(Heap, Wand_state_contains_for_state_contains__valid_wand(diz));
    assume Heap[null, Wand_state_contains_for_state_contains__valid_wand(diz)] == CombineFrames(FrameFragment(Heap[diz, Wand_state_contains_for_state_contains__lemma]), CombineFrames(FrameFragment(Heap[diz, Wand_state_contains_for_state_contains__in_1]), CombineFrames(FrameFragment(Heap[diz, Wand_state_contains_for_state_contains__in_1_0]), CombineFrames(FrameFragment(Heap[diz, Wand_state_contains_for_state_contains__out_1]), CombineFrames(FrameFragment(Heap[diz, Wand_state_contains_for_state_contains__out_1_0]), CombineFrames(FrameFragment(Heap[diz, Wand_state_contains_for_state_contains__this_1]), CombineFrames(FrameFragment(Heap[diz, Wand_state_contains_for_state_contains__target_contents_1]), CombineFrames(FrameFragment(Heap[diz, Wand_state_contains_for_state_contains__prev_contents_1]), CombineFrames(FrameFragment(Heap[diz, Wand_state_contains_for_state_contains__prev_1]), CombineFrames(FrameFragment(Heap[diz, Wand_state_contains_for_state_contains__cur_contents_1]), CombineFrames(FrameFragment(Heap[diz, Wand_state_contains_for_state_contains__top_1]), CombineFrames(FrameFragment(Heap[diz, Wand_state_contains_for_state_contains__cur_1]), CombineFrames(FrameFragment(Heap[diz, Wand_state_contains_for_state_contains__wand_1]), CombineFrames(FrameFragment((if Heap[diz, Wand_state_contains_for_state_contains__lemma] == 1 then CombineFrames(CombineFrames(FrameFragment(Heap[Heap[diz, Wand_state_contains_for_state_contains__prev_1], Tree__left]), FrameFragment(Heap[Heap[diz, Wand_state_contains_for_state_contains__prev_1], Tree__data])), CombineFrames(CombineFrames(FrameFragment(Heap[Heap[diz, Wand_state_contains_for_state_contains__prev_1], Tree__right]), FrameFragment((if Heap[Heap[diz, Wand_state_contains_for_state_contains__prev_1], Tree__right] != null then Heap[null, Tree__state(Heap[Heap[diz, Wand_state_contains_for_state_contains__prev_1], Tree__right])] else EmptyFrame))), Heap[null, Wand_state_contains_for_state_contains__valid_wand(Heap[diz, Wand_state_contains_for_state_contains__wand_1])])) else EmptyFrame)), CombineFrames(FrameFragment(Heap[diz, Wand_state_contains_for_state_contains__this_2]), CombineFrames(FrameFragment(Heap[diz, Wand_state_contains_for_state_contains__target_contents_2]), CombineFrames(FrameFragment(Heap[diz, Wand_state_contains_for_state_contains__top_2]), FrameFragment((if Heap[diz, Wand_state_contains_for_state_contains__lemma] == 2 then EmptyFrame else EmptyFrame)))))))))))))))))));
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Unfolding Wand_state_contains_for_state_contains__valid_wand(diz) might fail. There might be insufficient permission to access Wand_state_contains_for_state_contains__valid_wand(diz) (testTreeWandE2.vpr@108.3--108.77) [173937]"}
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
  
  // -- Translating statement: if (diz.Wand_state_contains_for_state_contains__lemma == 1) -- testTreeWandE2.vpr@109.3--118.4
    
    // -- Check definedness of diz.Wand_state_contains_for_state_contains__lemma == 1
      assert {:msg "  Conditional statement might fail. There might be insufficient permission to access diz.Wand_state_contains_for_state_contains__lemma (testTreeWandE2.vpr@109.7--109.61) [173943]"}
        HasDirectPerm(Mask, diz, Wand_state_contains_for_state_contains__lemma);
    if (Heap[diz, Wand_state_contains_for_state_contains__lemma] == 1) {
      
      // -- Translating statement: fold acc(Tree__state(diz.Wand_state_contains_for_state_contains__prev_1), write) -- testTreeWandE2.vpr@110.5--110.85
        
        // -- Check definedness of acc(Tree__state(diz.Wand_state_contains_for_state_contains__prev_1), write)
          assert {:msg "  Folding Tree__state(diz.Wand_state_contains_for_state_contains__prev_1) might fail. There might be insufficient permission to access diz.Wand_state_contains_for_state_contains__prev_1 (testTreeWandE2.vpr@110.5--110.85) [173944]"}
            HasDirectPerm(Mask, diz, Wand_state_contains_for_state_contains__prev_1);
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        perm := FullPerm;
        if (perm != NoPerm) {
          assert {:msg "  Folding Tree__state(diz.Wand_state_contains_for_state_contains__prev_1) might fail. There might be insufficient permission to access diz.Wand_state_contains_for_state_contains__prev_1.Tree__data (testTreeWandE2.vpr@110.5--110.85) [173947]"}
            perm <= Mask[Heap[diz, Wand_state_contains_for_state_contains__prev_1], Tree__data];
        }
        Mask := Mask[Heap[diz, Wand_state_contains_for_state_contains__prev_1], Tree__data:=Mask[Heap[diz, Wand_state_contains_for_state_contains__prev_1], Tree__data] - perm];
        perm := FullPerm;
        if (perm != NoPerm) {
          assert {:msg "  Folding Tree__state(diz.Wand_state_contains_for_state_contains__prev_1) might fail. There might be insufficient permission to access diz.Wand_state_contains_for_state_contains__prev_1.Tree__left (testTreeWandE2.vpr@110.5--110.85) [173949]"}
            perm <= Mask[Heap[diz, Wand_state_contains_for_state_contains__prev_1], Tree__left];
        }
        Mask := Mask[Heap[diz, Wand_state_contains_for_state_contains__prev_1], Tree__left:=Mask[Heap[diz, Wand_state_contains_for_state_contains__prev_1], Tree__left] - perm];
        perm := FullPerm;
        if (perm != NoPerm) {
          assert {:msg "  Folding Tree__state(diz.Wand_state_contains_for_state_contains__prev_1) might fail. There might be insufficient permission to access diz.Wand_state_contains_for_state_contains__prev_1.Tree__right (testTreeWandE2.vpr@110.5--110.85) [173951]"}
            perm <= Mask[Heap[diz, Wand_state_contains_for_state_contains__prev_1], Tree__right];
        }
        Mask := Mask[Heap[diz, Wand_state_contains_for_state_contains__prev_1], Tree__right:=Mask[Heap[diz, Wand_state_contains_for_state_contains__prev_1], Tree__right] - perm];
        if (Heap[Heap[diz, Wand_state_contains_for_state_contains__prev_1], Tree__left] != null) {
          perm := FullPerm;
          if (perm != NoPerm) {
            assert {:msg "  Folding Tree__state(diz.Wand_state_contains_for_state_contains__prev_1) might fail. There might be insufficient permission to access Tree__state(diz.Wand_state_contains_for_state_contains__prev_1.Tree__left) (testTreeWandE2.vpr@110.5--110.85) [173953]"}
              perm <= Mask[null, Tree__state(Heap[Heap[diz, Wand_state_contains_for_state_contains__prev_1], Tree__left])];
          }
          Mask := Mask[null, Tree__state(Heap[Heap[diz, Wand_state_contains_for_state_contains__prev_1], Tree__left]):=Mask[null, Tree__state(Heap[Heap[diz, Wand_state_contains_for_state_contains__prev_1], Tree__left])] - perm];
          
          // -- Record predicate instance information
            assume InsidePredicate(Tree__state(Heap[diz, Wand_state_contains_for_state_contains__prev_1]), Heap[null, Tree__state(Heap[diz, Wand_state_contains_for_state_contains__prev_1])], Tree__state(Heap[Heap[diz, Wand_state_contains_for_state_contains__prev_1], Tree__left]), Heap[null, Tree__state(Heap[Heap[diz, Wand_state_contains_for_state_contains__prev_1], Tree__left])]);
        }
        if (Heap[Heap[diz, Wand_state_contains_for_state_contains__prev_1], Tree__right] != null) {
          perm := FullPerm;
          if (perm != NoPerm) {
            assert {:msg "  Folding Tree__state(diz.Wand_state_contains_for_state_contains__prev_1) might fail. There might be insufficient permission to access Tree__state(diz.Wand_state_contains_for_state_contains__prev_1.Tree__right) (testTreeWandE2.vpr@110.5--110.85) [173955]"}
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
          assume (forall <A, B> o_22: Ref, f_24: (Field A B) ::
            { newPMask[o_22, f_24] }
            Heap[null, Tree__state#sm(Heap[diz, Wand_state_contains_for_state_contains__prev_1])][o_22, f_24] || Heap[null, Tree__state#sm(Heap[Heap[diz, Wand_state_contains_for_state_contains__prev_1], Tree__left])][o_22, f_24] ==> newPMask[o_22, f_24]
          );
          Heap := Heap[null, Tree__state#sm(Heap[diz, Wand_state_contains_for_state_contains__prev_1]):=newPMask];
        }
        if (Heap[Heap[diz, Wand_state_contains_for_state_contains__prev_1], Tree__right] != null) {
          havoc newPMask;
          assume (forall <A, B> o_3: Ref, f_12: (Field A B) ::
            { newPMask[o_3, f_12] }
            Heap[null, Tree__state#sm(Heap[diz, Wand_state_contains_for_state_contains__prev_1])][o_3, f_12] || Heap[null, Tree__state#sm(Heap[Heap[diz, Wand_state_contains_for_state_contains__prev_1], Tree__right])][o_3, f_12] ==> newPMask[o_3, f_12]
          );
          Heap := Heap[null, Tree__state#sm(Heap[diz, Wand_state_contains_for_state_contains__prev_1]):=newPMask];
        }
        assume state(Heap, Mask);
        assume state(Heap, Mask);
      
      // -- Translating statement: assert acc(Tree__state(diz.Wand_state_contains_for_state_contains__prev_1), write) &&
  //   Tree__tolist(diz.Wand_state_contains_for_state_contains__prev_1) ==
  //   diz.Wand_state_contains_for_state_contains__prev_contents_1[1..] -- testTreeWandE2.vpr@111.5--111.225
        AssertHeap := Heap;
        AssertMask := Mask;
        ExhaleWellDef0Mask := AssertMask;
        ExhaleWellDef0Heap := AssertHeap;
        
        // -- Check definedness of acc(Tree__state(diz.Wand_state_contains_for_state_contains__prev_1), write)
          assert {:msg "  Assert might fail. There might be insufficient permission to access diz.Wand_state_contains_for_state_contains__prev_1 (testTreeWandE2.vpr@111.12--111.225) [173957]"}
            HasDirectPerm(ExhaleWellDef0Mask, diz, Wand_state_contains_for_state_contains__prev_1);
        perm := FullPerm;
        if (perm != NoPerm) {
          assert {:msg "  Assert might fail. There might be insufficient permission to access Tree__state(diz.Wand_state_contains_for_state_contains__prev_1) (testTreeWandE2.vpr@111.12--111.225) [173959]"}
            perm <= AssertMask[null, Tree__state(AssertHeap[diz, Wand_state_contains_for_state_contains__prev_1])];
        }
        AssertMask := AssertMask[null, Tree__state(AssertHeap[diz, Wand_state_contains_for_state_contains__prev_1]):=AssertMask[null, Tree__state(AssertHeap[diz, Wand_state_contains_for_state_contains__prev_1])] - perm];
        
        // -- Check definedness of Tree__tolist(diz.Wand_state_contains_for_state_contains__prev_1) == diz.Wand_state_contains_for_state_contains__prev_contents_1[1..]
          assert {:msg "  Assert might fail. There might be insufficient permission to access diz.Wand_state_contains_for_state_contains__prev_1 (testTreeWandE2.vpr@111.12--111.225) [173960]"}
            HasDirectPerm(ExhaleWellDef0Mask, diz, Wand_state_contains_for_state_contains__prev_1);
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef1Mask := ExhaleWellDef0Mask;
            ExhaleWellDef1Heap := ExhaleWellDef0Heap;
            if (ExhaleWellDef0Heap[diz, Wand_state_contains_for_state_contains__prev_1] != null) {
              perm := FullPerm;
              assert {:msg "  Precondition of function Tree__tolist might not hold. There might be insufficient permission to access Tree__state(diz.Wand_state_contains_for_state_contains__prev_1) (testTreeWandE2.vpr@111.92--111.156) [173961]"}
                NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[null, Tree__state(ExhaleWellDef0Heap[diz, Wand_state_contains_for_state_contains__prev_1])];
            }
            // Finish exhale
            havoc ExhaleHeap;
            assume IdenticalOnKnownLocations(ExhaleWellDef0Heap, ExhaleHeap, ExhaleWellDef0Mask);
            ExhaleWellDef0Heap := ExhaleHeap;
            // Stop execution
            assume false;
          }
          assert {:msg "  Assert might fail. There might be insufficient permission to access diz.Wand_state_contains_for_state_contains__prev_contents_1 (testTreeWandE2.vpr@111.12--111.225) [173962]"}
            HasDirectPerm(ExhaleWellDef0Mask, diz, Wand_state_contains_for_state_contains__prev_contents_1);
        assert {:msg "  Assert might fail. Assertion Tree__tolist(diz.Wand_state_contains_for_state_contains__prev_1) == diz.Wand_state_contains_for_state_contains__prev_contents_1[1..] might not hold. (testTreeWandE2.vpr@111.12--111.225) [173963]"}
          Seq#Equal(Tree__tolist(AssertHeap, AssertHeap[diz, Wand_state_contains_for_state_contains__prev_1]), Seq#Drop(AssertHeap[diz, Wand_state_contains_for_state_contains__prev_contents_1], 1));
        assume state(Heap, Mask);
      
      // -- Translating statement: Wand_state_contains_for_state_contains___apply(diz.Wand_state_contains_for_state_contains__wand_1,
  //   current_thread_id) -- testTreeWandE2.vpr@112.5--112.122
        PreCallHeap := Heap;
        PreCallMask := Mask;
        
        // -- Check definedness of diz.Wand_state_contains_for_state_contains__wand_1
          assert {:msg "  Method call might fail. There might be insufficient permission to access diz.Wand_state_contains_for_state_contains__wand_1 (testTreeWandE2.vpr@112.5--112.122) [173964]"}
            HasDirectPerm(Mask, diz, Wand_state_contains_for_state_contains__wand_1);
        arg_diz := Heap[diz, Wand_state_contains_for_state_contains__wand_1];
        
        // -- Exhaling precondition
          ExhaleWellDef0Mask := Mask;
          ExhaleWellDef0Heap := Heap;
          assert {:msg "  The precondition of method Wand_state_contains_for_state_contains___apply might not hold. Assertion diz.Wand_state_contains_for_state_contains__wand_1 != null might not hold. (testTreeWandE2.vpr@112.5--112.122) [173965]"}
            arg_diz != null;
          assert {:msg "  The precondition of method Wand_state_contains_for_state_contains___apply might not hold. Assertion current_thread_id >= 0 might not hold. (testTreeWandE2.vpr@112.5--112.122) [173966]"}
            current_thread_id >= 0;
          perm := FullPerm;
          if (perm != NoPerm) {
            assert {:msg "  The precondition of method Wand_state_contains_for_state_contains___apply might not hold. There might be insufficient permission to access Wand_state_contains_for_state_contains__valid_wand(diz.Wand_state_contains_for_state_contains__wand_1) (testTreeWandE2.vpr@112.5--112.122) [173967]"}
              perm <= Mask[null, Wand_state_contains_for_state_contains__valid_wand(arg_diz)];
          }
          Mask := Mask[null, Wand_state_contains_for_state_contains__valid_wand(arg_diz):=Mask[null, Wand_state_contains_for_state_contains__valid_wand(arg_diz)] - perm];
          perm := FullPerm;
          if (perm != NoPerm) {
            assert {:msg "  The precondition of method Wand_state_contains_for_state_contains___apply might not hold. There might be insufficient permission to access Tree__state(Wand_state_contains_for_state_contains__get_in_1(diz.Wand_state_contains_for_state_contains__wand_1)) (testTreeWandE2.vpr@112.5--112.122) [173968]"}
              perm <= Mask[null, Tree__state(Wand_state_contains_for_state_contains__get_in_1(Heap, arg_diz))];
          }
          Mask := Mask[null, Tree__state(Wand_state_contains_for_state_contains__get_in_1(Heap, arg_diz)):=Mask[null, Tree__state(Wand_state_contains_for_state_contains__get_in_1(Heap, arg_diz))] - perm];
          assert {:msg "  The precondition of method Wand_state_contains_for_state_contains___apply might not hold. Assertion Tree__tolist(Wand_state_contains_for_state_contains__get_in_1(diz.Wand_state_contains_for_state_contains__wand_1)) == Wand_state_contains_for_state_contains__get_in_1_0(diz.Wand_state_contains_for_state_contains__wand_1) might not hold. (testTreeWandE2.vpr@112.5--112.122) [173969]"}
            Seq#Equal(Tree__tolist(Heap, Wand_state_contains_for_state_contains__get_in_1(Heap, arg_diz)), Wand_state_contains_for_state_contains__get_in_1_0(Heap, arg_diz));
          assert {:msg "  The precondition of method Wand_state_contains_for_state_contains___apply might not hold. Assertion Wand_state_contains_for_state_contains__get_out_1(diz.Wand_state_contains_for_state_contains__wand_1) != null might not hold. (testTreeWandE2.vpr@112.5--112.122) [173970]"}
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
  //   old(Wand_state_contains_for_state_contains__get_out_1_0(diz)) -- testTreeWandE2.vpr@113.5--113.240
        AssertHeap := Heap;
        AssertMask := Mask;
        ExhaleWellDef0Mask := AssertMask;
        ExhaleWellDef0Heap := AssertHeap;
        
        // -- Check definedness of acc(Tree__state(old(Wand_state_contains_for_state_contains__get_out_1(diz))), write)
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef1Mask := oldMask;
            ExhaleWellDef1Heap := oldHeap;
            assert {:msg "  Precondition of function Wand_state_contains_for_state_contains__get_out_1 might not hold. Assertion diz != null might not hold. (testTreeWandE2.vpr@113.32--113.86) [173971]"}
              diz != null;
            perm := FullPerm;
            assert {:msg "  Precondition of function Wand_state_contains_for_state_contains__get_out_1 might not hold. There might be insufficient permission to access Wand_state_contains_for_state_contains__valid_wand(diz) (testTreeWandE2.vpr@113.32--113.86) [173972]"}
              NoPerm < perm ==> NoPerm < oldMask[null, Wand_state_contains_for_state_contains__valid_wand(diz)];
            // Finish exhale
            // Stop execution
            assume false;
          }
        perm := FullPerm;
        if (perm != NoPerm) {
          assert {:msg "  Assert might fail. There might be insufficient permission to access Tree__state(old(Wand_state_contains_for_state_contains__get_out_1(diz))) (testTreeWandE2.vpr@113.12--113.240) [173974]"}
            perm <= AssertMask[null, Tree__state(Wand_state_contains_for_state_contains__get_out_1(oldHeap, diz))];
        }
        AssertMask := AssertMask[null, Tree__state(Wand_state_contains_for_state_contains__get_out_1(oldHeap, diz)):=AssertMask[null, Tree__state(Wand_state_contains_for_state_contains__get_out_1(oldHeap, diz))] - perm];
        
        // -- Check definedness of Tree__tolist(old(Wand_state_contains_for_state_contains__get_out_1(diz))) == old(Wand_state_contains_for_state_contains__get_out_1_0(diz))
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef1Mask := oldMask;
            ExhaleWellDef1Heap := oldHeap;
            assert {:msg "  Precondition of function Wand_state_contains_for_state_contains__get_out_1 might not hold. Assertion diz != null might not hold. (testTreeWandE2.vpr@113.118--113.172) [173975]"}
              diz != null;
            perm := FullPerm;
            assert {:msg "  Precondition of function Wand_state_contains_for_state_contains__get_out_1 might not hold. There might be insufficient permission to access Wand_state_contains_for_state_contains__valid_wand(diz) (testTreeWandE2.vpr@113.118--113.172) [173976]"}
              NoPerm < perm ==> NoPerm < oldMask[null, Wand_state_contains_for_state_contains__valid_wand(diz)];
            // Finish exhale
            // Stop execution
            assume false;
          }
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef1Mask := ExhaleWellDef0Mask;
            ExhaleWellDef1Heap := ExhaleWellDef0Heap;
            if (Wand_state_contains_for_state_contains__get_out_1(oldHeap, diz) != null) {
              perm := FullPerm;
              assert {:msg "  Precondition of function Tree__tolist might not hold. There might be insufficient permission to access Tree__state(old(Wand_state_contains_for_state_contains__get_out_1(diz))) (testTreeWandE2.vpr@113.101--113.174) [173977]"}
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
            ExhaleWellDef1Mask := oldMask;
            ExhaleWellDef1Heap := oldHeap;
            assert {:msg "  Precondition of function Wand_state_contains_for_state_contains__get_out_1_0 might not hold. Assertion diz != null might not hold. (testTreeWandE2.vpr@113.182--113.238) [173978]"}
              diz != null;
            perm := FullPerm;
            assert {:msg "  Precondition of function Wand_state_contains_for_state_contains__get_out_1_0 might not hold. There might be insufficient permission to access Wand_state_contains_for_state_contains__valid_wand(diz) (testTreeWandE2.vpr@113.182--113.238) [173979]"}
              NoPerm < perm ==> NoPerm < oldMask[null, Wand_state_contains_for_state_contains__valid_wand(diz)];
            // Finish exhale
            // Stop execution
            assume false;
          }
        assert {:msg "  Assert might fail. Assertion Tree__tolist(old(Wand_state_contains_for_state_contains__get_out_1(diz))) == old(Wand_state_contains_for_state_contains__get_out_1_0(diz)) might not hold. (testTreeWandE2.vpr@113.12--113.240) [173980]"}
          Seq#Equal(Tree__tolist(AssertHeap, Wand_state_contains_for_state_contains__get_out_1(oldHeap, diz)), Wand_state_contains_for_state_contains__get_out_1_0(oldHeap, diz));
        assume state(Heap, Mask);
      
      // -- Translating statement: inhale false -- testTreeWandE2.vpr@114.5--114.17
        assume false;
        assume state(Heap, Mask);
        assume state(Heap, Mask);
    } else {
      
      // -- Translating statement: if (diz.Wand_state_contains_for_state_contains__lemma == 2) -- testTreeWandE2.vpr@115.5--118.4
        
        // -- Check definedness of diz.Wand_state_contains_for_state_contains__lemma == 2
          assert {:msg "  Conditional statement might fail. There might be insufficient permission to access diz.Wand_state_contains_for_state_contains__lemma (testTreeWandE2.vpr@115.13--115.67) [173981]"}
            HasDirectPerm(Mask, diz, Wand_state_contains_for_state_contains__lemma);
        if (Heap[diz, Wand_state_contains_for_state_contains__lemma] == 2) {
          
          // -- Translating statement: assert acc(Tree__state(old(Wand_state_contains_for_state_contains__get_out_1(diz))), write) &&
  //   Tree__tolist(old(Wand_state_contains_for_state_contains__get_out_1(diz))) ==
  //   old(Wand_state_contains_for_state_contains__get_out_1_0(diz)) -- testTreeWandE2.vpr@116.5--116.240
            AssertHeap := Heap;
            AssertMask := Mask;
            ExhaleWellDef0Mask := AssertMask;
            ExhaleWellDef0Heap := AssertHeap;
            
            // -- Check definedness of acc(Tree__state(old(Wand_state_contains_for_state_contains__get_out_1(diz))), write)
              if (*) {
                // Exhale precondition of function application
                ExhaleWellDef1Mask := oldMask;
                ExhaleWellDef1Heap := oldHeap;
                assert {:msg "  Precondition of function Wand_state_contains_for_state_contains__get_out_1 might not hold. Assertion diz != null might not hold. (testTreeWandE2.vpr@116.32--116.86) [173982]"}
                  diz != null;
                perm := FullPerm;
                assert {:msg "  Precondition of function Wand_state_contains_for_state_contains__get_out_1 might not hold. There might be insufficient permission to access Wand_state_contains_for_state_contains__valid_wand(diz) (testTreeWandE2.vpr@116.32--116.86) [173983]"}
                  NoPerm < perm ==> NoPerm < oldMask[null, Wand_state_contains_for_state_contains__valid_wand(diz)];
                // Finish exhale
                // Stop execution
                assume false;
              }
            perm := FullPerm;
            if (perm != NoPerm) {
              assert {:msg "  Assert might fail. There might be insufficient permission to access Tree__state(old(Wand_state_contains_for_state_contains__get_out_1(diz))) (testTreeWandE2.vpr@116.12--116.240) [173985]"}
                perm <= AssertMask[null, Tree__state(Wand_state_contains_for_state_contains__get_out_1(oldHeap, diz))];
            }
            AssertMask := AssertMask[null, Tree__state(Wand_state_contains_for_state_contains__get_out_1(oldHeap, diz)):=AssertMask[null, Tree__state(Wand_state_contains_for_state_contains__get_out_1(oldHeap, diz))] - perm];
            
            // -- Check definedness of Tree__tolist(old(Wand_state_contains_for_state_contains__get_out_1(diz))) == old(Wand_state_contains_for_state_contains__get_out_1_0(diz))
              if (*) {
                // Exhale precondition of function application
                ExhaleWellDef1Mask := oldMask;
                ExhaleWellDef1Heap := oldHeap;
                assert {:msg "  Precondition of function Wand_state_contains_for_state_contains__get_out_1 might not hold. Assertion diz != null might not hold. (testTreeWandE2.vpr@116.118--116.172) [173986]"}
                  diz != null;
                perm := FullPerm;
                assert {:msg "  Precondition of function Wand_state_contains_for_state_contains__get_out_1 might not hold. There might be insufficient permission to access Wand_state_contains_for_state_contains__valid_wand(diz) (testTreeWandE2.vpr@116.118--116.172) [173987]"}
                  NoPerm < perm ==> NoPerm < oldMask[null, Wand_state_contains_for_state_contains__valid_wand(diz)];
                // Finish exhale
                // Stop execution
                assume false;
              }
              if (*) {
                // Exhale precondition of function application
                ExhaleWellDef1Mask := ExhaleWellDef0Mask;
                ExhaleWellDef1Heap := ExhaleWellDef0Heap;
                if (Wand_state_contains_for_state_contains__get_out_1(oldHeap, diz) != null) {
                  perm := FullPerm;
                  assert {:msg "  Precondition of function Tree__tolist might not hold. There might be insufficient permission to access Tree__state(old(Wand_state_contains_for_state_contains__get_out_1(diz))) (testTreeWandE2.vpr@116.101--116.174) [173988]"}
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
                ExhaleWellDef1Mask := oldMask;
                ExhaleWellDef1Heap := oldHeap;
                assert {:msg "  Precondition of function Wand_state_contains_for_state_contains__get_out_1_0 might not hold. Assertion diz != null might not hold. (testTreeWandE2.vpr@116.182--116.238) [173989]"}
                  diz != null;
                perm := FullPerm;
                assert {:msg "  Precondition of function Wand_state_contains_for_state_contains__get_out_1_0 might not hold. There might be insufficient permission to access Wand_state_contains_for_state_contains__valid_wand(diz) (testTreeWandE2.vpr@116.182--116.238) [173990]"}
                  NoPerm < perm ==> NoPerm < oldMask[null, Wand_state_contains_for_state_contains__valid_wand(diz)];
                // Finish exhale
                // Stop execution
                assume false;
              }
            assert {:msg "  Assert might fail. Assertion Tree__tolist(old(Wand_state_contains_for_state_contains__get_out_1(diz))) == old(Wand_state_contains_for_state_contains__get_out_1_0(diz)) might not hold. (testTreeWandE2.vpr@116.12--116.240) [173991]"}
              Seq#Equal(Tree__tolist(AssertHeap, Wand_state_contains_for_state_contains__get_out_1(oldHeap, diz)), Wand_state_contains_for_state_contains__get_out_1_0(oldHeap, diz));
            assume state(Heap, Mask);
          
          // -- Translating statement: inhale false -- testTreeWandE2.vpr@117.5--117.17
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
      assert {:msg "  Postcondition of Wand_state_contains_for_state_contains___apply might not hold. There might be insufficient permission to access Tree__state(old(Wand_state_contains_for_state_contains__get_out_1(diz))) (testTreeWandE2.vpr@105.11--105.95) [173992]"}
        perm <= Mask[null, Tree__state(Wand_state_contains_for_state_contains__get_out_1(oldHeap, diz))];
    }
    Mask := Mask[null, Tree__state(Wand_state_contains_for_state_contains__get_out_1(oldHeap, diz)):=Mask[null, Tree__state(Wand_state_contains_for_state_contains__get_out_1(oldHeap, diz))] - perm];
    assert {:msg "  Postcondition of Wand_state_contains_for_state_contains___apply might not hold. Assertion Tree__tolist(old(Wand_state_contains_for_state_contains__get_out_1(diz))) == old(Wand_state_contains_for_state_contains__get_out_1_0(diz)) might not hold. (testTreeWandE2.vpr@106.11--106.149) [173993]"}
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
  var oldMask: MaskType;
  var oldHeap: HeapType;
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
    PostMask := PostMask[sys__result, Wand_state_contains_for_state_contains__lemma:=PostMask[sys__result, Wand_state_contains_for_state_contains__lemma] + perm];
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of sys__result.Wand_state_contains_for_state_contains__lemma == 0
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access sys__result.Wand_state_contains_for_state_contains__lemma (testTreeWandE2.vpr@124.11--124.148) [173994]"}
        HasDirectPerm(PostMask, sys__result, Wand_state_contains_for_state_contains__lemma);
    assume PostHeap[sys__result, Wand_state_contains_for_state_contains__lemma] == 0;
    assume state(PostHeap, PostMask);
    perm := FullPerm;
    assume sys__result != null;
    PostMask := PostMask[sys__result, Wand_state_contains_for_state_contains__in_1:=PostMask[sys__result, Wand_state_contains_for_state_contains__in_1] + perm];
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of sys__result.Wand_state_contains_for_state_contains__in_1 == null
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access sys__result.Wand_state_contains_for_state_contains__in_1 (testTreeWandE2.vpr@125.11--125.149) [173995]"}
        HasDirectPerm(PostMask, sys__result, Wand_state_contains_for_state_contains__in_1);
    assume PostHeap[sys__result, Wand_state_contains_for_state_contains__in_1] == null;
    assume state(PostHeap, PostMask);
    perm := FullPerm;
    assume sys__result != null;
    PostMask := PostMask[sys__result, Wand_state_contains_for_state_contains__in_1_0:=PostMask[sys__result, Wand_state_contains_for_state_contains__in_1_0] + perm];
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of sys__result.Wand_state_contains_for_state_contains__in_1_0 == Seq[Int]()
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access sys__result.Wand_state_contains_for_state_contains__in_1_0 (testTreeWandE2.vpr@126.11--126.159) [173996]"}
        HasDirectPerm(PostMask, sys__result, Wand_state_contains_for_state_contains__in_1_0);
    assume Seq#Equal(PostHeap[sys__result, Wand_state_contains_for_state_contains__in_1_0], (Seq#Empty(): Seq int));
    assume state(PostHeap, PostMask);
    perm := FullPerm;
    assume sys__result != null;
    PostMask := PostMask[sys__result, Wand_state_contains_for_state_contains__out_1:=PostMask[sys__result, Wand_state_contains_for_state_contains__out_1] + perm];
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of sys__result.Wand_state_contains_for_state_contains__out_1 == null
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access sys__result.Wand_state_contains_for_state_contains__out_1 (testTreeWandE2.vpr@127.11--127.151) [173997]"}
        HasDirectPerm(PostMask, sys__result, Wand_state_contains_for_state_contains__out_1);
    assume PostHeap[sys__result, Wand_state_contains_for_state_contains__out_1] == null;
    assume state(PostHeap, PostMask);
    perm := FullPerm;
    assume sys__result != null;
    PostMask := PostMask[sys__result, Wand_state_contains_for_state_contains__out_1_0:=PostMask[sys__result, Wand_state_contains_for_state_contains__out_1_0] + perm];
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of sys__result.Wand_state_contains_for_state_contains__out_1_0 == Seq[Int]()
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access sys__result.Wand_state_contains_for_state_contains__out_1_0 (testTreeWandE2.vpr@128.11--128.161) [173998]"}
        HasDirectPerm(PostMask, sys__result, Wand_state_contains_for_state_contains__out_1_0);
    assume Seq#Equal(PostHeap[sys__result, Wand_state_contains_for_state_contains__out_1_0], (Seq#Empty(): Seq int));
    assume state(PostHeap, PostMask);
    perm := FullPerm;
    assume sys__result != null;
    PostMask := PostMask[sys__result, Wand_state_contains_for_state_contains__this_1:=PostMask[sys__result, Wand_state_contains_for_state_contains__this_1] + perm];
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of sys__result.Wand_state_contains_for_state_contains__this_1 == null
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access sys__result.Wand_state_contains_for_state_contains__this_1 (testTreeWandE2.vpr@129.11--129.153) [173999]"}
        HasDirectPerm(PostMask, sys__result, Wand_state_contains_for_state_contains__this_1);
    assume PostHeap[sys__result, Wand_state_contains_for_state_contains__this_1] == null;
    assume state(PostHeap, PostMask);
    perm := FullPerm;
    assume sys__result != null;
    PostMask := PostMask[sys__result, Wand_state_contains_for_state_contains__target_contents_1:=PostMask[sys__result, Wand_state_contains_for_state_contains__target_contents_1] + perm];
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of sys__result.Wand_state_contains_for_state_contains__target_contents_1 == Seq[Int]()
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access sys__result.Wand_state_contains_for_state_contains__target_contents_1 (testTreeWandE2.vpr@130.11--130.181) [174000]"}
        HasDirectPerm(PostMask, sys__result, Wand_state_contains_for_state_contains__target_contents_1);
    assume Seq#Equal(PostHeap[sys__result, Wand_state_contains_for_state_contains__target_contents_1], (Seq#Empty(): Seq int));
    assume state(PostHeap, PostMask);
    perm := FullPerm;
    assume sys__result != null;
    PostMask := PostMask[sys__result, Wand_state_contains_for_state_contains__prev_contents_1:=PostMask[sys__result, Wand_state_contains_for_state_contains__prev_contents_1] + perm];
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of sys__result.Wand_state_contains_for_state_contains__prev_contents_1 == Seq[Int]()
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access sys__result.Wand_state_contains_for_state_contains__prev_contents_1 (testTreeWandE2.vpr@131.11--131.177) [174001]"}
        HasDirectPerm(PostMask, sys__result, Wand_state_contains_for_state_contains__prev_contents_1);
    assume Seq#Equal(PostHeap[sys__result, Wand_state_contains_for_state_contains__prev_contents_1], (Seq#Empty(): Seq int));
    assume state(PostHeap, PostMask);
    perm := FullPerm;
    assume sys__result != null;
    PostMask := PostMask[sys__result, Wand_state_contains_for_state_contains__prev_1:=PostMask[sys__result, Wand_state_contains_for_state_contains__prev_1] + perm];
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of sys__result.Wand_state_contains_for_state_contains__prev_1 == null
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access sys__result.Wand_state_contains_for_state_contains__prev_1 (testTreeWandE2.vpr@132.11--132.153) [174002]"}
        HasDirectPerm(PostMask, sys__result, Wand_state_contains_for_state_contains__prev_1);
    assume PostHeap[sys__result, Wand_state_contains_for_state_contains__prev_1] == null;
    assume state(PostHeap, PostMask);
    perm := FullPerm;
    assume sys__result != null;
    PostMask := PostMask[sys__result, Wand_state_contains_for_state_contains__cur_contents_1:=PostMask[sys__result, Wand_state_contains_for_state_contains__cur_contents_1] + perm];
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of sys__result.Wand_state_contains_for_state_contains__cur_contents_1 == Seq[Int]()
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access sys__result.Wand_state_contains_for_state_contains__cur_contents_1 (testTreeWandE2.vpr@133.11--133.175) [174003]"}
        HasDirectPerm(PostMask, sys__result, Wand_state_contains_for_state_contains__cur_contents_1);
    assume Seq#Equal(PostHeap[sys__result, Wand_state_contains_for_state_contains__cur_contents_1], (Seq#Empty(): Seq int));
    assume state(PostHeap, PostMask);
    perm := FullPerm;
    assume sys__result != null;
    PostMask := PostMask[sys__result, Wand_state_contains_for_state_contains__top_1:=PostMask[sys__result, Wand_state_contains_for_state_contains__top_1] + perm];
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of sys__result.Wand_state_contains_for_state_contains__top_1 == null
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access sys__result.Wand_state_contains_for_state_contains__top_1 (testTreeWandE2.vpr@134.11--134.151) [174004]"}
        HasDirectPerm(PostMask, sys__result, Wand_state_contains_for_state_contains__top_1);
    assume PostHeap[sys__result, Wand_state_contains_for_state_contains__top_1] == null;
    assume state(PostHeap, PostMask);
    perm := FullPerm;
    assume sys__result != null;
    PostMask := PostMask[sys__result, Wand_state_contains_for_state_contains__cur_1:=PostMask[sys__result, Wand_state_contains_for_state_contains__cur_1] + perm];
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of sys__result.Wand_state_contains_for_state_contains__cur_1 == null
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access sys__result.Wand_state_contains_for_state_contains__cur_1 (testTreeWandE2.vpr@135.11--135.151) [174005]"}
        HasDirectPerm(PostMask, sys__result, Wand_state_contains_for_state_contains__cur_1);
    assume PostHeap[sys__result, Wand_state_contains_for_state_contains__cur_1] == null;
    assume state(PostHeap, PostMask);
    perm := FullPerm;
    assume sys__result != null;
    PostMask := PostMask[sys__result, Wand_state_contains_for_state_contains__wand_1:=PostMask[sys__result, Wand_state_contains_for_state_contains__wand_1] + perm];
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of sys__result.Wand_state_contains_for_state_contains__wand_1 == null
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access sys__result.Wand_state_contains_for_state_contains__wand_1 (testTreeWandE2.vpr@136.11--136.153) [174006]"}
        HasDirectPerm(PostMask, sys__result, Wand_state_contains_for_state_contains__wand_1);
    assume PostHeap[sys__result, Wand_state_contains_for_state_contains__wand_1] == null;
    assume state(PostHeap, PostMask);
    perm := FullPerm;
    assume sys__result != null;
    PostMask := PostMask[sys__result, Wand_state_contains_for_state_contains__this_2:=PostMask[sys__result, Wand_state_contains_for_state_contains__this_2] + perm];
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of sys__result.Wand_state_contains_for_state_contains__this_2 == null
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access sys__result.Wand_state_contains_for_state_contains__this_2 (testTreeWandE2.vpr@137.11--137.153) [174007]"}
        HasDirectPerm(PostMask, sys__result, Wand_state_contains_for_state_contains__this_2);
    assume PostHeap[sys__result, Wand_state_contains_for_state_contains__this_2] == null;
    assume state(PostHeap, PostMask);
    perm := FullPerm;
    assume sys__result != null;
    PostMask := PostMask[sys__result, Wand_state_contains_for_state_contains__target_contents_2:=PostMask[sys__result, Wand_state_contains_for_state_contains__target_contents_2] + perm];
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of sys__result.Wand_state_contains_for_state_contains__target_contents_2 == Seq[Int]()
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access sys__result.Wand_state_contains_for_state_contains__target_contents_2 (testTreeWandE2.vpr@138.11--138.181) [174008]"}
        HasDirectPerm(PostMask, sys__result, Wand_state_contains_for_state_contains__target_contents_2);
    assume Seq#Equal(PostHeap[sys__result, Wand_state_contains_for_state_contains__target_contents_2], (Seq#Empty(): Seq int));
    assume state(PostHeap, PostMask);
    perm := FullPerm;
    assume sys__result != null;
    PostMask := PostMask[sys__result, Wand_state_contains_for_state_contains__top_2:=PostMask[sys__result, Wand_state_contains_for_state_contains__top_2] + perm];
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of sys__result.Wand_state_contains_for_state_contains__top_2 == null
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access sys__result.Wand_state_contains_for_state_contains__top_2 (testTreeWandE2.vpr@139.11--139.151) [174009]"}
        HasDirectPerm(PostMask, sys__result, Wand_state_contains_for_state_contains__top_2);
    assume PostHeap[sys__result, Wand_state_contains_for_state_contains__top_2] == null;
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Assumptions about local variables
    assume Heap[diz, $allocated];
  
  // -- Translating statement: diz := new(Wand_state_contains_for_state_contains__lemma, Wand_state_contains_for_state_contains__in_1, Wand_state_contains_for_state_contains__in_1_0, Wand_state_contains_for_state_contains__out_1, Wand_state_contains_for_state_contains__out_1_0, Wand_state_contains_for_state_contains__this_1, Wand_state_contains_for_state_contains__target_contents_1, Wand_state_contains_for_state_contains__prev_contents_1, Wand_state_contains_for_state_contains__prev_1, Wand_state_contains_for_state_contains__cur_contents_1, Wand_state_contains_for_state_contains__top_1, Wand_state_contains_for_state_contains__cur_1, Wand_state_contains_for_state_contains__wand_1, Wand_state_contains_for_state_contains__this_2, Wand_state_contains_for_state_contains__target_contents_2, Wand_state_contains_for_state_contains__top_2) -- testTreeWandE2.vpr@156.3--156.814
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
  
  // -- Translating statement: __flatten_2 := 0 -- testTreeWandE2.vpr@157.3--157.19
    __flatten_2 := 0;
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_46 := __flatten_2 -- testTreeWandE2.vpr@158.3--158.30
    __flatten_46 := __flatten_2;
    assume state(Heap, Mask);
  
  // -- Translating statement: diz.Wand_state_contains_for_state_contains__lemma := __flatten_46 -- testTreeWandE2.vpr@159.3--159.68
    assert {:msg "  Assignment might fail. There might be insufficient permission to access diz.Wand_state_contains_for_state_contains__lemma (testTreeWandE2.vpr@159.3--159.68) [174010]"}
      FullPerm == Mask[diz, Wand_state_contains_for_state_contains__lemma];
    Heap := Heap[diz, Wand_state_contains_for_state_contains__lemma:=__flatten_46];
    assume state(Heap, Mask);
  
  // -- Translating statement: diz.Wand_state_contains_for_state_contains__in_1 := null -- testTreeWandE2.vpr@160.3--160.59
    assert {:msg "  Assignment might fail. There might be insufficient permission to access diz.Wand_state_contains_for_state_contains__in_1 (testTreeWandE2.vpr@160.3--160.59) [174011]"}
      FullPerm == Mask[diz, Wand_state_contains_for_state_contains__in_1];
    Heap := Heap[diz, Wand_state_contains_for_state_contains__in_1:=null];
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_3 := Seq[Int]() -- testTreeWandE2.vpr@161.3--161.28
    __flatten_3 := (Seq#Empty(): Seq int);
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_47 := __flatten_3 -- testTreeWandE2.vpr@162.3--162.30
    __flatten_47 := __flatten_3;
    assume state(Heap, Mask);
  
  // -- Translating statement: diz.Wand_state_contains_for_state_contains__in_1_0 := __flatten_47 -- testTreeWandE2.vpr@163.3--163.69
    assert {:msg "  Assignment might fail. There might be insufficient permission to access diz.Wand_state_contains_for_state_contains__in_1_0 (testTreeWandE2.vpr@163.3--163.69) [174012]"}
      FullPerm == Mask[diz, Wand_state_contains_for_state_contains__in_1_0];
    Heap := Heap[diz, Wand_state_contains_for_state_contains__in_1_0:=__flatten_47];
    assume state(Heap, Mask);
  
  // -- Translating statement: diz.Wand_state_contains_for_state_contains__out_1 := null -- testTreeWandE2.vpr@164.3--164.60
    assert {:msg "  Assignment might fail. There might be insufficient permission to access diz.Wand_state_contains_for_state_contains__out_1 (testTreeWandE2.vpr@164.3--164.60) [174013]"}
      FullPerm == Mask[diz, Wand_state_contains_for_state_contains__out_1];
    Heap := Heap[diz, Wand_state_contains_for_state_contains__out_1:=null];
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_4 := Seq[Int]() -- testTreeWandE2.vpr@165.3--165.28
    __flatten_4 := (Seq#Empty(): Seq int);
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_48 := __flatten_4 -- testTreeWandE2.vpr@166.3--166.30
    __flatten_48 := __flatten_4;
    assume state(Heap, Mask);
  
  // -- Translating statement: diz.Wand_state_contains_for_state_contains__out_1_0 := __flatten_48 -- testTreeWandE2.vpr@167.3--167.70
    assert {:msg "  Assignment might fail. There might be insufficient permission to access diz.Wand_state_contains_for_state_contains__out_1_0 (testTreeWandE2.vpr@167.3--167.70) [174014]"}
      FullPerm == Mask[diz, Wand_state_contains_for_state_contains__out_1_0];
    Heap := Heap[diz, Wand_state_contains_for_state_contains__out_1_0:=__flatten_48];
    assume state(Heap, Mask);
  
  // -- Translating statement: diz.Wand_state_contains_for_state_contains__this_1 := null -- testTreeWandE2.vpr@168.3--168.61
    assert {:msg "  Assignment might fail. There might be insufficient permission to access diz.Wand_state_contains_for_state_contains__this_1 (testTreeWandE2.vpr@168.3--168.61) [174015]"}
      FullPerm == Mask[diz, Wand_state_contains_for_state_contains__this_1];
    Heap := Heap[diz, Wand_state_contains_for_state_contains__this_1:=null];
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_5 := Seq[Int]() -- testTreeWandE2.vpr@169.3--169.28
    __flatten_5 := (Seq#Empty(): Seq int);
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_49 := __flatten_5 -- testTreeWandE2.vpr@170.3--170.30
    __flatten_49 := __flatten_5;
    assume state(Heap, Mask);
  
  // -- Translating statement: diz.Wand_state_contains_for_state_contains__target_contents_1 := __flatten_49 -- testTreeWandE2.vpr@171.3--171.80
    assert {:msg "  Assignment might fail. There might be insufficient permission to access diz.Wand_state_contains_for_state_contains__target_contents_1 (testTreeWandE2.vpr@171.3--171.80) [174016]"}
      FullPerm == Mask[diz, Wand_state_contains_for_state_contains__target_contents_1];
    Heap := Heap[diz, Wand_state_contains_for_state_contains__target_contents_1:=__flatten_49];
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_6 := Seq[Int]() -- testTreeWandE2.vpr@172.3--172.28
    __flatten_6 := (Seq#Empty(): Seq int);
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_50 := __flatten_6 -- testTreeWandE2.vpr@173.3--173.30
    __flatten_50 := __flatten_6;
    assume state(Heap, Mask);
  
  // -- Translating statement: diz.Wand_state_contains_for_state_contains__prev_contents_1 := __flatten_50 -- testTreeWandE2.vpr@174.3--174.78
    assert {:msg "  Assignment might fail. There might be insufficient permission to access diz.Wand_state_contains_for_state_contains__prev_contents_1 (testTreeWandE2.vpr@174.3--174.78) [174017]"}
      FullPerm == Mask[diz, Wand_state_contains_for_state_contains__prev_contents_1];
    Heap := Heap[diz, Wand_state_contains_for_state_contains__prev_contents_1:=__flatten_50];
    assume state(Heap, Mask);
  
  // -- Translating statement: diz.Wand_state_contains_for_state_contains__prev_1 := null -- testTreeWandE2.vpr@175.3--175.61
    assert {:msg "  Assignment might fail. There might be insufficient permission to access diz.Wand_state_contains_for_state_contains__prev_1 (testTreeWandE2.vpr@175.3--175.61) [174018]"}
      FullPerm == Mask[diz, Wand_state_contains_for_state_contains__prev_1];
    Heap := Heap[diz, Wand_state_contains_for_state_contains__prev_1:=null];
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_7 := Seq[Int]() -- testTreeWandE2.vpr@176.3--176.28
    __flatten_7 := (Seq#Empty(): Seq int);
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_51 := __flatten_7 -- testTreeWandE2.vpr@177.3--177.30
    __flatten_51 := __flatten_7;
    assume state(Heap, Mask);
  
  // -- Translating statement: diz.Wand_state_contains_for_state_contains__cur_contents_1 := __flatten_51 -- testTreeWandE2.vpr@178.3--178.77
    assert {:msg "  Assignment might fail. There might be insufficient permission to access diz.Wand_state_contains_for_state_contains__cur_contents_1 (testTreeWandE2.vpr@178.3--178.77) [174019]"}
      FullPerm == Mask[diz, Wand_state_contains_for_state_contains__cur_contents_1];
    Heap := Heap[diz, Wand_state_contains_for_state_contains__cur_contents_1:=__flatten_51];
    assume state(Heap, Mask);
  
  // -- Translating statement: diz.Wand_state_contains_for_state_contains__top_1 := null -- testTreeWandE2.vpr@179.3--179.60
    assert {:msg "  Assignment might fail. There might be insufficient permission to access diz.Wand_state_contains_for_state_contains__top_1 (testTreeWandE2.vpr@179.3--179.60) [174020]"}
      FullPerm == Mask[diz, Wand_state_contains_for_state_contains__top_1];
    Heap := Heap[diz, Wand_state_contains_for_state_contains__top_1:=null];
    assume state(Heap, Mask);
  
  // -- Translating statement: diz.Wand_state_contains_for_state_contains__cur_1 := null -- testTreeWandE2.vpr@180.3--180.60
    assert {:msg "  Assignment might fail. There might be insufficient permission to access diz.Wand_state_contains_for_state_contains__cur_1 (testTreeWandE2.vpr@180.3--180.60) [174021]"}
      FullPerm == Mask[diz, Wand_state_contains_for_state_contains__cur_1];
    Heap := Heap[diz, Wand_state_contains_for_state_contains__cur_1:=null];
    assume state(Heap, Mask);
  
  // -- Translating statement: diz.Wand_state_contains_for_state_contains__wand_1 := null -- testTreeWandE2.vpr@181.3--181.61
    assert {:msg "  Assignment might fail. There might be insufficient permission to access diz.Wand_state_contains_for_state_contains__wand_1 (testTreeWandE2.vpr@181.3--181.61) [174022]"}
      FullPerm == Mask[diz, Wand_state_contains_for_state_contains__wand_1];
    Heap := Heap[diz, Wand_state_contains_for_state_contains__wand_1:=null];
    assume state(Heap, Mask);
  
  // -- Translating statement: diz.Wand_state_contains_for_state_contains__this_2 := null -- testTreeWandE2.vpr@182.3--182.61
    assert {:msg "  Assignment might fail. There might be insufficient permission to access diz.Wand_state_contains_for_state_contains__this_2 (testTreeWandE2.vpr@182.3--182.61) [174023]"}
      FullPerm == Mask[diz, Wand_state_contains_for_state_contains__this_2];
    Heap := Heap[diz, Wand_state_contains_for_state_contains__this_2:=null];
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_8 := Seq[Int]() -- testTreeWandE2.vpr@183.3--183.28
    __flatten_8 := (Seq#Empty(): Seq int);
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_52 := __flatten_8 -- testTreeWandE2.vpr@184.3--184.30
    __flatten_52 := __flatten_8;
    assume state(Heap, Mask);
  
  // -- Translating statement: diz.Wand_state_contains_for_state_contains__target_contents_2 := __flatten_52 -- testTreeWandE2.vpr@185.3--185.80
    assert {:msg "  Assignment might fail. There might be insufficient permission to access diz.Wand_state_contains_for_state_contains__target_contents_2 (testTreeWandE2.vpr@185.3--185.80) [174024]"}
      FullPerm == Mask[diz, Wand_state_contains_for_state_contains__target_contents_2];
    Heap := Heap[diz, Wand_state_contains_for_state_contains__target_contents_2:=__flatten_52];
    assume state(Heap, Mask);
  
  // -- Translating statement: diz.Wand_state_contains_for_state_contains__top_2 := null -- testTreeWandE2.vpr@186.3--186.60
    assert {:msg "  Assignment might fail. There might be insufficient permission to access diz.Wand_state_contains_for_state_contains__top_2 (testTreeWandE2.vpr@186.3--186.60) [174025]"}
      FullPerm == Mask[diz, Wand_state_contains_for_state_contains__top_2];
    Heap := Heap[diz, Wand_state_contains_for_state_contains__top_2:=null];
    assume state(Heap, Mask);
  
  // -- Translating statement: sys__result := diz -- testTreeWandE2.vpr@187.3--187.21
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
  //   sys__result.Wand_state_contains_for_state_contains__top_2 == null)))))))))))))))) -- testTreeWandE2.vpr@188.3--188.2498
    AssertHeap := Heap;
    AssertMask := Mask;
    ExhaleWellDef0Mask := AssertMask;
    ExhaleWellDef0Heap := AssertHeap;
    assert {:msg "  Assert might fail. Assertion sys__result != null might not hold. (testTreeWandE2.vpr@188.10--188.2498) [174026]"}
      sys__result != null;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Assert might fail. There might be insufficient permission to access sys__result.Wand_state_contains_for_state_contains__lemma (testTreeWandE2.vpr@188.10--188.2498) [174028]"}
        perm <= AssertMask[sys__result, Wand_state_contains_for_state_contains__lemma];
    }
    AssertMask := AssertMask[sys__result, Wand_state_contains_for_state_contains__lemma:=AssertMask[sys__result, Wand_state_contains_for_state_contains__lemma] - perm];
    
    // -- Check definedness of sys__result.Wand_state_contains_for_state_contains__lemma == 0
      assert {:msg "  Assert might fail. There might be insufficient permission to access sys__result.Wand_state_contains_for_state_contains__lemma (testTreeWandE2.vpr@188.10--188.2498) [174029]"}
        HasDirectPerm(ExhaleWellDef0Mask, sys__result, Wand_state_contains_for_state_contains__lemma);
    assert {:msg "  Assert might fail. Assertion sys__result.Wand_state_contains_for_state_contains__lemma == 0 might not hold. (testTreeWandE2.vpr@188.10--188.2498) [174030]"}
      AssertHeap[sys__result, Wand_state_contains_for_state_contains__lemma] == 0;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Assert might fail. There might be insufficient permission to access sys__result.Wand_state_contains_for_state_contains__in_1 (testTreeWandE2.vpr@188.10--188.2498) [174032]"}
        perm <= AssertMask[sys__result, Wand_state_contains_for_state_contains__in_1];
    }
    AssertMask := AssertMask[sys__result, Wand_state_contains_for_state_contains__in_1:=AssertMask[sys__result, Wand_state_contains_for_state_contains__in_1] - perm];
    
    // -- Check definedness of sys__result.Wand_state_contains_for_state_contains__in_1 == null
      assert {:msg "  Assert might fail. There might be insufficient permission to access sys__result.Wand_state_contains_for_state_contains__in_1 (testTreeWandE2.vpr@188.10--188.2498) [174033]"}
        HasDirectPerm(ExhaleWellDef0Mask, sys__result, Wand_state_contains_for_state_contains__in_1);
    assert {:msg "  Assert might fail. Assertion sys__result.Wand_state_contains_for_state_contains__in_1 == null might not hold. (testTreeWandE2.vpr@188.10--188.2498) [174034]"}
      AssertHeap[sys__result, Wand_state_contains_for_state_contains__in_1] == null;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Assert might fail. There might be insufficient permission to access sys__result.Wand_state_contains_for_state_contains__in_1_0 (testTreeWandE2.vpr@188.10--188.2498) [174036]"}
        perm <= AssertMask[sys__result, Wand_state_contains_for_state_contains__in_1_0];
    }
    AssertMask := AssertMask[sys__result, Wand_state_contains_for_state_contains__in_1_0:=AssertMask[sys__result, Wand_state_contains_for_state_contains__in_1_0] - perm];
    
    // -- Check definedness of sys__result.Wand_state_contains_for_state_contains__in_1_0 == Seq[Int]()
      assert {:msg "  Assert might fail. There might be insufficient permission to access sys__result.Wand_state_contains_for_state_contains__in_1_0 (testTreeWandE2.vpr@188.10--188.2498) [174037]"}
        HasDirectPerm(ExhaleWellDef0Mask, sys__result, Wand_state_contains_for_state_contains__in_1_0);
    assert {:msg "  Assert might fail. Assertion sys__result.Wand_state_contains_for_state_contains__in_1_0 == Seq[Int]() might not hold. (testTreeWandE2.vpr@188.10--188.2498) [174038]"}
      Seq#Equal(AssertHeap[sys__result, Wand_state_contains_for_state_contains__in_1_0], (Seq#Empty(): Seq int));
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Assert might fail. There might be insufficient permission to access sys__result.Wand_state_contains_for_state_contains__out_1 (testTreeWandE2.vpr@188.10--188.2498) [174040]"}
        perm <= AssertMask[sys__result, Wand_state_contains_for_state_contains__out_1];
    }
    AssertMask := AssertMask[sys__result, Wand_state_contains_for_state_contains__out_1:=AssertMask[sys__result, Wand_state_contains_for_state_contains__out_1] - perm];
    
    // -- Check definedness of sys__result.Wand_state_contains_for_state_contains__out_1 == null
      assert {:msg "  Assert might fail. There might be insufficient permission to access sys__result.Wand_state_contains_for_state_contains__out_1 (testTreeWandE2.vpr@188.10--188.2498) [174041]"}
        HasDirectPerm(ExhaleWellDef0Mask, sys__result, Wand_state_contains_for_state_contains__out_1);
    assert {:msg "  Assert might fail. Assertion sys__result.Wand_state_contains_for_state_contains__out_1 == null might not hold. (testTreeWandE2.vpr@188.10--188.2498) [174042]"}
      AssertHeap[sys__result, Wand_state_contains_for_state_contains__out_1] == null;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Assert might fail. There might be insufficient permission to access sys__result.Wand_state_contains_for_state_contains__out_1_0 (testTreeWandE2.vpr@188.10--188.2498) [174044]"}
        perm <= AssertMask[sys__result, Wand_state_contains_for_state_contains__out_1_0];
    }
    AssertMask := AssertMask[sys__result, Wand_state_contains_for_state_contains__out_1_0:=AssertMask[sys__result, Wand_state_contains_for_state_contains__out_1_0] - perm];
    
    // -- Check definedness of sys__result.Wand_state_contains_for_state_contains__out_1_0 == Seq[Int]()
      assert {:msg "  Assert might fail. There might be insufficient permission to access sys__result.Wand_state_contains_for_state_contains__out_1_0 (testTreeWandE2.vpr@188.10--188.2498) [174045]"}
        HasDirectPerm(ExhaleWellDef0Mask, sys__result, Wand_state_contains_for_state_contains__out_1_0);
    assert {:msg "  Assert might fail. Assertion sys__result.Wand_state_contains_for_state_contains__out_1_0 == Seq[Int]() might not hold. (testTreeWandE2.vpr@188.10--188.2498) [174046]"}
      Seq#Equal(AssertHeap[sys__result, Wand_state_contains_for_state_contains__out_1_0], (Seq#Empty(): Seq int));
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Assert might fail. There might be insufficient permission to access sys__result.Wand_state_contains_for_state_contains__this_1 (testTreeWandE2.vpr@188.10--188.2498) [174048]"}
        perm <= AssertMask[sys__result, Wand_state_contains_for_state_contains__this_1];
    }
    AssertMask := AssertMask[sys__result, Wand_state_contains_for_state_contains__this_1:=AssertMask[sys__result, Wand_state_contains_for_state_contains__this_1] - perm];
    
    // -- Check definedness of sys__result.Wand_state_contains_for_state_contains__this_1 == null
      assert {:msg "  Assert might fail. There might be insufficient permission to access sys__result.Wand_state_contains_for_state_contains__this_1 (testTreeWandE2.vpr@188.10--188.2498) [174049]"}
        HasDirectPerm(ExhaleWellDef0Mask, sys__result, Wand_state_contains_for_state_contains__this_1);
    assert {:msg "  Assert might fail. Assertion sys__result.Wand_state_contains_for_state_contains__this_1 == null might not hold. (testTreeWandE2.vpr@188.10--188.2498) [174050]"}
      AssertHeap[sys__result, Wand_state_contains_for_state_contains__this_1] == null;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Assert might fail. There might be insufficient permission to access sys__result.Wand_state_contains_for_state_contains__target_contents_1 (testTreeWandE2.vpr@188.10--188.2498) [174052]"}
        perm <= AssertMask[sys__result, Wand_state_contains_for_state_contains__target_contents_1];
    }
    AssertMask := AssertMask[sys__result, Wand_state_contains_for_state_contains__target_contents_1:=AssertMask[sys__result, Wand_state_contains_for_state_contains__target_contents_1] - perm];
    
    // -- Check definedness of sys__result.Wand_state_contains_for_state_contains__target_contents_1 == Seq[Int]()
      assert {:msg "  Assert might fail. There might be insufficient permission to access sys__result.Wand_state_contains_for_state_contains__target_contents_1 (testTreeWandE2.vpr@188.10--188.2498) [174053]"}
        HasDirectPerm(ExhaleWellDef0Mask, sys__result, Wand_state_contains_for_state_contains__target_contents_1);
    assert {:msg "  Assert might fail. Assertion sys__result.Wand_state_contains_for_state_contains__target_contents_1 == Seq[Int]() might not hold. (testTreeWandE2.vpr@188.10--188.2498) [174054]"}
      Seq#Equal(AssertHeap[sys__result, Wand_state_contains_for_state_contains__target_contents_1], (Seq#Empty(): Seq int));
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Assert might fail. There might be insufficient permission to access sys__result.Wand_state_contains_for_state_contains__prev_contents_1 (testTreeWandE2.vpr@188.10--188.2498) [174056]"}
        perm <= AssertMask[sys__result, Wand_state_contains_for_state_contains__prev_contents_1];
    }
    AssertMask := AssertMask[sys__result, Wand_state_contains_for_state_contains__prev_contents_1:=AssertMask[sys__result, Wand_state_contains_for_state_contains__prev_contents_1] - perm];
    
    // -- Check definedness of sys__result.Wand_state_contains_for_state_contains__prev_contents_1 == Seq[Int]()
      assert {:msg "  Assert might fail. There might be insufficient permission to access sys__result.Wand_state_contains_for_state_contains__prev_contents_1 (testTreeWandE2.vpr@188.10--188.2498) [174057]"}
        HasDirectPerm(ExhaleWellDef0Mask, sys__result, Wand_state_contains_for_state_contains__prev_contents_1);
    assert {:msg "  Assert might fail. Assertion sys__result.Wand_state_contains_for_state_contains__prev_contents_1 == Seq[Int]() might not hold. (testTreeWandE2.vpr@188.10--188.2498) [174058]"}
      Seq#Equal(AssertHeap[sys__result, Wand_state_contains_for_state_contains__prev_contents_1], (Seq#Empty(): Seq int));
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Assert might fail. There might be insufficient permission to access sys__result.Wand_state_contains_for_state_contains__prev_1 (testTreeWandE2.vpr@188.10--188.2498) [174060]"}
        perm <= AssertMask[sys__result, Wand_state_contains_for_state_contains__prev_1];
    }
    AssertMask := AssertMask[sys__result, Wand_state_contains_for_state_contains__prev_1:=AssertMask[sys__result, Wand_state_contains_for_state_contains__prev_1] - perm];
    
    // -- Check definedness of sys__result.Wand_state_contains_for_state_contains__prev_1 == null
      assert {:msg "  Assert might fail. There might be insufficient permission to access sys__result.Wand_state_contains_for_state_contains__prev_1 (testTreeWandE2.vpr@188.10--188.2498) [174061]"}
        HasDirectPerm(ExhaleWellDef0Mask, sys__result, Wand_state_contains_for_state_contains__prev_1);
    assert {:msg "  Assert might fail. Assertion sys__result.Wand_state_contains_for_state_contains__prev_1 == null might not hold. (testTreeWandE2.vpr@188.10--188.2498) [174062]"}
      AssertHeap[sys__result, Wand_state_contains_for_state_contains__prev_1] == null;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Assert might fail. There might be insufficient permission to access sys__result.Wand_state_contains_for_state_contains__cur_contents_1 (testTreeWandE2.vpr@188.10--188.2498) [174064]"}
        perm <= AssertMask[sys__result, Wand_state_contains_for_state_contains__cur_contents_1];
    }
    AssertMask := AssertMask[sys__result, Wand_state_contains_for_state_contains__cur_contents_1:=AssertMask[sys__result, Wand_state_contains_for_state_contains__cur_contents_1] - perm];
    
    // -- Check definedness of sys__result.Wand_state_contains_for_state_contains__cur_contents_1 == Seq[Int]()
      assert {:msg "  Assert might fail. There might be insufficient permission to access sys__result.Wand_state_contains_for_state_contains__cur_contents_1 (testTreeWandE2.vpr@188.10--188.2498) [174065]"}
        HasDirectPerm(ExhaleWellDef0Mask, sys__result, Wand_state_contains_for_state_contains__cur_contents_1);
    assert {:msg "  Assert might fail. Assertion sys__result.Wand_state_contains_for_state_contains__cur_contents_1 == Seq[Int]() might not hold. (testTreeWandE2.vpr@188.10--188.2498) [174066]"}
      Seq#Equal(AssertHeap[sys__result, Wand_state_contains_for_state_contains__cur_contents_1], (Seq#Empty(): Seq int));
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Assert might fail. There might be insufficient permission to access sys__result.Wand_state_contains_for_state_contains__top_1 (testTreeWandE2.vpr@188.10--188.2498) [174068]"}
        perm <= AssertMask[sys__result, Wand_state_contains_for_state_contains__top_1];
    }
    AssertMask := AssertMask[sys__result, Wand_state_contains_for_state_contains__top_1:=AssertMask[sys__result, Wand_state_contains_for_state_contains__top_1] - perm];
    
    // -- Check definedness of sys__result.Wand_state_contains_for_state_contains__top_1 == null
      assert {:msg "  Assert might fail. There might be insufficient permission to access sys__result.Wand_state_contains_for_state_contains__top_1 (testTreeWandE2.vpr@188.10--188.2498) [174069]"}
        HasDirectPerm(ExhaleWellDef0Mask, sys__result, Wand_state_contains_for_state_contains__top_1);
    assert {:msg "  Assert might fail. Assertion sys__result.Wand_state_contains_for_state_contains__top_1 == null might not hold. (testTreeWandE2.vpr@188.10--188.2498) [174070]"}
      AssertHeap[sys__result, Wand_state_contains_for_state_contains__top_1] == null;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Assert might fail. There might be insufficient permission to access sys__result.Wand_state_contains_for_state_contains__cur_1 (testTreeWandE2.vpr@188.10--188.2498) [174072]"}
        perm <= AssertMask[sys__result, Wand_state_contains_for_state_contains__cur_1];
    }
    AssertMask := AssertMask[sys__result, Wand_state_contains_for_state_contains__cur_1:=AssertMask[sys__result, Wand_state_contains_for_state_contains__cur_1] - perm];
    
    // -- Check definedness of sys__result.Wand_state_contains_for_state_contains__cur_1 == null
      assert {:msg "  Assert might fail. There might be insufficient permission to access sys__result.Wand_state_contains_for_state_contains__cur_1 (testTreeWandE2.vpr@188.10--188.2498) [174073]"}
        HasDirectPerm(ExhaleWellDef0Mask, sys__result, Wand_state_contains_for_state_contains__cur_1);
    assert {:msg "  Assert might fail. Assertion sys__result.Wand_state_contains_for_state_contains__cur_1 == null might not hold. (testTreeWandE2.vpr@188.10--188.2498) [174074]"}
      AssertHeap[sys__result, Wand_state_contains_for_state_contains__cur_1] == null;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Assert might fail. There might be insufficient permission to access sys__result.Wand_state_contains_for_state_contains__wand_1 (testTreeWandE2.vpr@188.10--188.2498) [174076]"}
        perm <= AssertMask[sys__result, Wand_state_contains_for_state_contains__wand_1];
    }
    AssertMask := AssertMask[sys__result, Wand_state_contains_for_state_contains__wand_1:=AssertMask[sys__result, Wand_state_contains_for_state_contains__wand_1] - perm];
    
    // -- Check definedness of sys__result.Wand_state_contains_for_state_contains__wand_1 == null
      assert {:msg "  Assert might fail. There might be insufficient permission to access sys__result.Wand_state_contains_for_state_contains__wand_1 (testTreeWandE2.vpr@188.10--188.2498) [174077]"}
        HasDirectPerm(ExhaleWellDef0Mask, sys__result, Wand_state_contains_for_state_contains__wand_1);
    assert {:msg "  Assert might fail. Assertion sys__result.Wand_state_contains_for_state_contains__wand_1 == null might not hold. (testTreeWandE2.vpr@188.10--188.2498) [174078]"}
      AssertHeap[sys__result, Wand_state_contains_for_state_contains__wand_1] == null;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Assert might fail. There might be insufficient permission to access sys__result.Wand_state_contains_for_state_contains__this_2 (testTreeWandE2.vpr@188.10--188.2498) [174080]"}
        perm <= AssertMask[sys__result, Wand_state_contains_for_state_contains__this_2];
    }
    AssertMask := AssertMask[sys__result, Wand_state_contains_for_state_contains__this_2:=AssertMask[sys__result, Wand_state_contains_for_state_contains__this_2] - perm];
    
    // -- Check definedness of sys__result.Wand_state_contains_for_state_contains__this_2 == null
      assert {:msg "  Assert might fail. There might be insufficient permission to access sys__result.Wand_state_contains_for_state_contains__this_2 (testTreeWandE2.vpr@188.10--188.2498) [174081]"}
        HasDirectPerm(ExhaleWellDef0Mask, sys__result, Wand_state_contains_for_state_contains__this_2);
    assert {:msg "  Assert might fail. Assertion sys__result.Wand_state_contains_for_state_contains__this_2 == null might not hold. (testTreeWandE2.vpr@188.10--188.2498) [174082]"}
      AssertHeap[sys__result, Wand_state_contains_for_state_contains__this_2] == null;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Assert might fail. There might be insufficient permission to access sys__result.Wand_state_contains_for_state_contains__target_contents_2 (testTreeWandE2.vpr@188.10--188.2498) [174084]"}
        perm <= AssertMask[sys__result, Wand_state_contains_for_state_contains__target_contents_2];
    }
    AssertMask := AssertMask[sys__result, Wand_state_contains_for_state_contains__target_contents_2:=AssertMask[sys__result, Wand_state_contains_for_state_contains__target_contents_2] - perm];
    
    // -- Check definedness of sys__result.Wand_state_contains_for_state_contains__target_contents_2 == Seq[Int]()
      assert {:msg "  Assert might fail. There might be insufficient permission to access sys__result.Wand_state_contains_for_state_contains__target_contents_2 (testTreeWandE2.vpr@188.10--188.2498) [174085]"}
        HasDirectPerm(ExhaleWellDef0Mask, sys__result, Wand_state_contains_for_state_contains__target_contents_2);
    assert {:msg "  Assert might fail. Assertion sys__result.Wand_state_contains_for_state_contains__target_contents_2 == Seq[Int]() might not hold. (testTreeWandE2.vpr@188.10--188.2498) [174086]"}
      Seq#Equal(AssertHeap[sys__result, Wand_state_contains_for_state_contains__target_contents_2], (Seq#Empty(): Seq int));
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Assert might fail. There might be insufficient permission to access sys__result.Wand_state_contains_for_state_contains__top_2 (testTreeWandE2.vpr@188.10--188.2498) [174088]"}
        perm <= AssertMask[sys__result, Wand_state_contains_for_state_contains__top_2];
    }
    AssertMask := AssertMask[sys__result, Wand_state_contains_for_state_contains__top_2:=AssertMask[sys__result, Wand_state_contains_for_state_contains__top_2] - perm];
    
    // -- Check definedness of sys__result.Wand_state_contains_for_state_contains__top_2 == null
      assert {:msg "  Assert might fail. There might be insufficient permission to access sys__result.Wand_state_contains_for_state_contains__top_2 (testTreeWandE2.vpr@188.10--188.2498) [174089]"}
        HasDirectPerm(ExhaleWellDef0Mask, sys__result, Wand_state_contains_for_state_contains__top_2);
    assert {:msg "  Assert might fail. Assertion sys__result.Wand_state_contains_for_state_contains__top_2 == null might not hold. (testTreeWandE2.vpr@188.10--188.2498) [174090]"}
      AssertHeap[sys__result, Wand_state_contains_for_state_contains__top_2] == null;
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale false -- testTreeWandE2.vpr@189.3--189.15
    assume false;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    assert {:msg "  Postcondition of Wand_state_contains_for_state_contains__Wand_state_contains_for_state_contains might not hold. Assertion sys__result != null might not hold. (testTreeWandE2.vpr@123.11--123.30) [174091]"}
      sys__result != null;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of Wand_state_contains_for_state_contains__Wand_state_contains_for_state_contains might not hold. There might be insufficient permission to access sys__result.Wand_state_contains_for_state_contains__lemma (testTreeWandE2.vpr@124.11--124.148) [174092]"}
        perm <= Mask[sys__result, Wand_state_contains_for_state_contains__lemma];
    }
    Mask := Mask[sys__result, Wand_state_contains_for_state_contains__lemma:=Mask[sys__result, Wand_state_contains_for_state_contains__lemma] - perm];
    assert {:msg "  Postcondition of Wand_state_contains_for_state_contains__Wand_state_contains_for_state_contains might not hold. Assertion sys__result.Wand_state_contains_for_state_contains__lemma == 0 might not hold. (testTreeWandE2.vpr@124.11--124.148) [174093]"}
      Heap[sys__result, Wand_state_contains_for_state_contains__lemma] == 0;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of Wand_state_contains_for_state_contains__Wand_state_contains_for_state_contains might not hold. There might be insufficient permission to access sys__result.Wand_state_contains_for_state_contains__in_1 (testTreeWandE2.vpr@125.11--125.149) [174094]"}
        perm <= Mask[sys__result, Wand_state_contains_for_state_contains__in_1];
    }
    Mask := Mask[sys__result, Wand_state_contains_for_state_contains__in_1:=Mask[sys__result, Wand_state_contains_for_state_contains__in_1] - perm];
    assert {:msg "  Postcondition of Wand_state_contains_for_state_contains__Wand_state_contains_for_state_contains might not hold. Assertion sys__result.Wand_state_contains_for_state_contains__in_1 == null might not hold. (testTreeWandE2.vpr@125.11--125.149) [174095]"}
      Heap[sys__result, Wand_state_contains_for_state_contains__in_1] == null;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of Wand_state_contains_for_state_contains__Wand_state_contains_for_state_contains might not hold. There might be insufficient permission to access sys__result.Wand_state_contains_for_state_contains__in_1_0 (testTreeWandE2.vpr@126.11--126.159) [174096]"}
        perm <= Mask[sys__result, Wand_state_contains_for_state_contains__in_1_0];
    }
    Mask := Mask[sys__result, Wand_state_contains_for_state_contains__in_1_0:=Mask[sys__result, Wand_state_contains_for_state_contains__in_1_0] - perm];
    assert {:msg "  Postcondition of Wand_state_contains_for_state_contains__Wand_state_contains_for_state_contains might not hold. Assertion sys__result.Wand_state_contains_for_state_contains__in_1_0 == Seq[Int]() might not hold. (testTreeWandE2.vpr@126.11--126.159) [174097]"}
      Seq#Equal(Heap[sys__result, Wand_state_contains_for_state_contains__in_1_0], (Seq#Empty(): Seq int));
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of Wand_state_contains_for_state_contains__Wand_state_contains_for_state_contains might not hold. There might be insufficient permission to access sys__result.Wand_state_contains_for_state_contains__out_1 (testTreeWandE2.vpr@127.11--127.151) [174098]"}
        perm <= Mask[sys__result, Wand_state_contains_for_state_contains__out_1];
    }
    Mask := Mask[sys__result, Wand_state_contains_for_state_contains__out_1:=Mask[sys__result, Wand_state_contains_for_state_contains__out_1] - perm];
    assert {:msg "  Postcondition of Wand_state_contains_for_state_contains__Wand_state_contains_for_state_contains might not hold. Assertion sys__result.Wand_state_contains_for_state_contains__out_1 == null might not hold. (testTreeWandE2.vpr@127.11--127.151) [174099]"}
      Heap[sys__result, Wand_state_contains_for_state_contains__out_1] == null;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of Wand_state_contains_for_state_contains__Wand_state_contains_for_state_contains might not hold. There might be insufficient permission to access sys__result.Wand_state_contains_for_state_contains__out_1_0 (testTreeWandE2.vpr@128.11--128.161) [174100]"}
        perm <= Mask[sys__result, Wand_state_contains_for_state_contains__out_1_0];
    }
    Mask := Mask[sys__result, Wand_state_contains_for_state_contains__out_1_0:=Mask[sys__result, Wand_state_contains_for_state_contains__out_1_0] - perm];
    assert {:msg "  Postcondition of Wand_state_contains_for_state_contains__Wand_state_contains_for_state_contains might not hold. Assertion sys__result.Wand_state_contains_for_state_contains__out_1_0 == Seq[Int]() might not hold. (testTreeWandE2.vpr@128.11--128.161) [174101]"}
      Seq#Equal(Heap[sys__result, Wand_state_contains_for_state_contains__out_1_0], (Seq#Empty(): Seq int));
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of Wand_state_contains_for_state_contains__Wand_state_contains_for_state_contains might not hold. There might be insufficient permission to access sys__result.Wand_state_contains_for_state_contains__this_1 (testTreeWandE2.vpr@129.11--129.153) [174102]"}
        perm <= Mask[sys__result, Wand_state_contains_for_state_contains__this_1];
    }
    Mask := Mask[sys__result, Wand_state_contains_for_state_contains__this_1:=Mask[sys__result, Wand_state_contains_for_state_contains__this_1] - perm];
    assert {:msg "  Postcondition of Wand_state_contains_for_state_contains__Wand_state_contains_for_state_contains might not hold. Assertion sys__result.Wand_state_contains_for_state_contains__this_1 == null might not hold. (testTreeWandE2.vpr@129.11--129.153) [174103]"}
      Heap[sys__result, Wand_state_contains_for_state_contains__this_1] == null;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of Wand_state_contains_for_state_contains__Wand_state_contains_for_state_contains might not hold. There might be insufficient permission to access sys__result.Wand_state_contains_for_state_contains__target_contents_1 (testTreeWandE2.vpr@130.11--130.181) [174104]"}
        perm <= Mask[sys__result, Wand_state_contains_for_state_contains__target_contents_1];
    }
    Mask := Mask[sys__result, Wand_state_contains_for_state_contains__target_contents_1:=Mask[sys__result, Wand_state_contains_for_state_contains__target_contents_1] - perm];
    assert {:msg "  Postcondition of Wand_state_contains_for_state_contains__Wand_state_contains_for_state_contains might not hold. Assertion sys__result.Wand_state_contains_for_state_contains__target_contents_1 == Seq[Int]() might not hold. (testTreeWandE2.vpr@130.11--130.181) [174105]"}
      Seq#Equal(Heap[sys__result, Wand_state_contains_for_state_contains__target_contents_1], (Seq#Empty(): Seq int));
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of Wand_state_contains_for_state_contains__Wand_state_contains_for_state_contains might not hold. There might be insufficient permission to access sys__result.Wand_state_contains_for_state_contains__prev_contents_1 (testTreeWandE2.vpr@131.11--131.177) [174106]"}
        perm <= Mask[sys__result, Wand_state_contains_for_state_contains__prev_contents_1];
    }
    Mask := Mask[sys__result, Wand_state_contains_for_state_contains__prev_contents_1:=Mask[sys__result, Wand_state_contains_for_state_contains__prev_contents_1] - perm];
    assert {:msg "  Postcondition of Wand_state_contains_for_state_contains__Wand_state_contains_for_state_contains might not hold. Assertion sys__result.Wand_state_contains_for_state_contains__prev_contents_1 == Seq[Int]() might not hold. (testTreeWandE2.vpr@131.11--131.177) [174107]"}
      Seq#Equal(Heap[sys__result, Wand_state_contains_for_state_contains__prev_contents_1], (Seq#Empty(): Seq int));
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of Wand_state_contains_for_state_contains__Wand_state_contains_for_state_contains might not hold. There might be insufficient permission to access sys__result.Wand_state_contains_for_state_contains__prev_1 (testTreeWandE2.vpr@132.11--132.153) [174108]"}
        perm <= Mask[sys__result, Wand_state_contains_for_state_contains__prev_1];
    }
    Mask := Mask[sys__result, Wand_state_contains_for_state_contains__prev_1:=Mask[sys__result, Wand_state_contains_for_state_contains__prev_1] - perm];
    assert {:msg "  Postcondition of Wand_state_contains_for_state_contains__Wand_state_contains_for_state_contains might not hold. Assertion sys__result.Wand_state_contains_for_state_contains__prev_1 == null might not hold. (testTreeWandE2.vpr@132.11--132.153) [174109]"}
      Heap[sys__result, Wand_state_contains_for_state_contains__prev_1] == null;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of Wand_state_contains_for_state_contains__Wand_state_contains_for_state_contains might not hold. There might be insufficient permission to access sys__result.Wand_state_contains_for_state_contains__cur_contents_1 (testTreeWandE2.vpr@133.11--133.175) [174110]"}
        perm <= Mask[sys__result, Wand_state_contains_for_state_contains__cur_contents_1];
    }
    Mask := Mask[sys__result, Wand_state_contains_for_state_contains__cur_contents_1:=Mask[sys__result, Wand_state_contains_for_state_contains__cur_contents_1] - perm];
    assert {:msg "  Postcondition of Wand_state_contains_for_state_contains__Wand_state_contains_for_state_contains might not hold. Assertion sys__result.Wand_state_contains_for_state_contains__cur_contents_1 == Seq[Int]() might not hold. (testTreeWandE2.vpr@133.11--133.175) [174111]"}
      Seq#Equal(Heap[sys__result, Wand_state_contains_for_state_contains__cur_contents_1], (Seq#Empty(): Seq int));
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of Wand_state_contains_for_state_contains__Wand_state_contains_for_state_contains might not hold. There might be insufficient permission to access sys__result.Wand_state_contains_for_state_contains__top_1 (testTreeWandE2.vpr@134.11--134.151) [174112]"}
        perm <= Mask[sys__result, Wand_state_contains_for_state_contains__top_1];
    }
    Mask := Mask[sys__result, Wand_state_contains_for_state_contains__top_1:=Mask[sys__result, Wand_state_contains_for_state_contains__top_1] - perm];
    assert {:msg "  Postcondition of Wand_state_contains_for_state_contains__Wand_state_contains_for_state_contains might not hold. Assertion sys__result.Wand_state_contains_for_state_contains__top_1 == null might not hold. (testTreeWandE2.vpr@134.11--134.151) [174113]"}
      Heap[sys__result, Wand_state_contains_for_state_contains__top_1] == null;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of Wand_state_contains_for_state_contains__Wand_state_contains_for_state_contains might not hold. There might be insufficient permission to access sys__result.Wand_state_contains_for_state_contains__cur_1 (testTreeWandE2.vpr@135.11--135.151) [174114]"}
        perm <= Mask[sys__result, Wand_state_contains_for_state_contains__cur_1];
    }
    Mask := Mask[sys__result, Wand_state_contains_for_state_contains__cur_1:=Mask[sys__result, Wand_state_contains_for_state_contains__cur_1] - perm];
    assert {:msg "  Postcondition of Wand_state_contains_for_state_contains__Wand_state_contains_for_state_contains might not hold. Assertion sys__result.Wand_state_contains_for_state_contains__cur_1 == null might not hold. (testTreeWandE2.vpr@135.11--135.151) [174115]"}
      Heap[sys__result, Wand_state_contains_for_state_contains__cur_1] == null;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of Wand_state_contains_for_state_contains__Wand_state_contains_for_state_contains might not hold. There might be insufficient permission to access sys__result.Wand_state_contains_for_state_contains__wand_1 (testTreeWandE2.vpr@136.11--136.153) [174116]"}
        perm <= Mask[sys__result, Wand_state_contains_for_state_contains__wand_1];
    }
    Mask := Mask[sys__result, Wand_state_contains_for_state_contains__wand_1:=Mask[sys__result, Wand_state_contains_for_state_contains__wand_1] - perm];
    assert {:msg "  Postcondition of Wand_state_contains_for_state_contains__Wand_state_contains_for_state_contains might not hold. Assertion sys__result.Wand_state_contains_for_state_contains__wand_1 == null might not hold. (testTreeWandE2.vpr@136.11--136.153) [174117]"}
      Heap[sys__result, Wand_state_contains_for_state_contains__wand_1] == null;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of Wand_state_contains_for_state_contains__Wand_state_contains_for_state_contains might not hold. There might be insufficient permission to access sys__result.Wand_state_contains_for_state_contains__this_2 (testTreeWandE2.vpr@137.11--137.153) [174118]"}
        perm <= Mask[sys__result, Wand_state_contains_for_state_contains__this_2];
    }
    Mask := Mask[sys__result, Wand_state_contains_for_state_contains__this_2:=Mask[sys__result, Wand_state_contains_for_state_contains__this_2] - perm];
    assert {:msg "  Postcondition of Wand_state_contains_for_state_contains__Wand_state_contains_for_state_contains might not hold. Assertion sys__result.Wand_state_contains_for_state_contains__this_2 == null might not hold. (testTreeWandE2.vpr@137.11--137.153) [174119]"}
      Heap[sys__result, Wand_state_contains_for_state_contains__this_2] == null;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of Wand_state_contains_for_state_contains__Wand_state_contains_for_state_contains might not hold. There might be insufficient permission to access sys__result.Wand_state_contains_for_state_contains__target_contents_2 (testTreeWandE2.vpr@138.11--138.181) [174120]"}
        perm <= Mask[sys__result, Wand_state_contains_for_state_contains__target_contents_2];
    }
    Mask := Mask[sys__result, Wand_state_contains_for_state_contains__target_contents_2:=Mask[sys__result, Wand_state_contains_for_state_contains__target_contents_2] - perm];
    assert {:msg "  Postcondition of Wand_state_contains_for_state_contains__Wand_state_contains_for_state_contains might not hold. Assertion sys__result.Wand_state_contains_for_state_contains__target_contents_2 == Seq[Int]() might not hold. (testTreeWandE2.vpr@138.11--138.181) [174121]"}
      Seq#Equal(Heap[sys__result, Wand_state_contains_for_state_contains__target_contents_2], (Seq#Empty(): Seq int));
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of Wand_state_contains_for_state_contains__Wand_state_contains_for_state_contains might not hold. There might be insufficient permission to access sys__result.Wand_state_contains_for_state_contains__top_2 (testTreeWandE2.vpr@139.11--139.151) [174122]"}
        perm <= Mask[sys__result, Wand_state_contains_for_state_contains__top_2];
    }
    Mask := Mask[sys__result, Wand_state_contains_for_state_contains__top_2:=Mask[sys__result, Wand_state_contains_for_state_contains__top_2] - perm];
    assert {:msg "  Postcondition of Wand_state_contains_for_state_contains__Wand_state_contains_for_state_contains might not hold. Assertion sys__result.Wand_state_contains_for_state_contains__top_2 == null might not hold. (testTreeWandE2.vpr@139.11--139.151) [174123]"}
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
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleHeap: HeapType;
  var oldMask: MaskType;
  var oldHeap: HeapType;
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
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access prev_1.Tree__right (testTreeWandE2.vpr@201.12--201.88) [174124]"}
        HasDirectPerm(Mask, prev_1, Tree__right);
    if (Heap[prev_1, Tree__right] != null) {
      
      // -- Check definedness of acc(Tree__state(prev_1.Tree__right), write)
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access prev_1.Tree__right (testTreeWandE2.vpr@201.12--201.88) [174125]"}
          HasDirectPerm(Mask, prev_1, Tree__right);
      perm := FullPerm;
      Mask := Mask[null, Tree__state(Heap[prev_1, Tree__right]):=Mask[null, Tree__state(Heap[prev_1, Tree__right])] + perm];
      assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
    
    // -- Check definedness of prev_1.Tree__left == cur_1
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access prev_1.Tree__left (testTreeWandE2.vpr@202.12--202.38) [174126]"}
        HasDirectPerm(Mask, prev_1, Tree__left);
    assume Heap[prev_1, Tree__left] == cur_1;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of prev_contents_1 == cur_contents_1 ++ Seq(prev_1.Tree__data) ++ Tree__tolist(prev_1.Tree__right)
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access prev_1.Tree__data (testTreeWandE2.vpr@203.12--203.107) [174127]"}
        HasDirectPerm(Mask, prev_1, Tree__data);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access prev_1.Tree__right (testTreeWandE2.vpr@203.12--203.107) [174128]"}
        HasDirectPerm(Mask, prev_1, Tree__right);
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        if (Heap[prev_1, Tree__right] != null) {
          perm := FullPerm;
          assert {:msg "  Precondition of function Tree__tolist might not hold. There might be insufficient permission to access Tree__state(prev_1.Tree__right) (testTreeWandE2.vpr@203.75--203.107) [174129]"}
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
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        assert {:msg "  Precondition of function Wand_state_contains_for_state_contains__get_in_1 might not hold. Assertion wand_1 != null might not hold. (testTreeWandE2.vpr@206.12--206.68) [174130]"}
          wand_1_1 != null;
        perm := FullPerm;
        assert {:msg "  Precondition of function Wand_state_contains_for_state_contains__get_in_1 might not hold. There might be insufficient permission to access Wand_state_contains_for_state_contains__valid_wand(wand_1) (testTreeWandE2.vpr@206.12--206.68) [174131]"}
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
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        assert {:msg "  Precondition of function Wand_state_contains_for_state_contains__get_in_1_0 might not hold. Assertion wand_1 != null might not hold. (testTreeWandE2.vpr@207.12--207.70) [174132]"}
          wand_1_1 != null;
        perm := FullPerm;
        assert {:msg "  Precondition of function Wand_state_contains_for_state_contains__get_in_1_0 might not hold. There might be insufficient permission to access Wand_state_contains_for_state_contains__valid_wand(wand_1) (testTreeWandE2.vpr@207.12--207.70) [174133]"}
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
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        assert {:msg "  Precondition of function Wand_state_contains_for_state_contains__get_out_1 might not hold. Assertion wand_1 != null might not hold. (testTreeWandE2.vpr@208.12--208.69) [174134]"}
          wand_1_1 != null;
        perm := FullPerm;
        assert {:msg "  Precondition of function Wand_state_contains_for_state_contains__get_out_1 might not hold. There might be insufficient permission to access Wand_state_contains_for_state_contains__valid_wand(wand_1) (testTreeWandE2.vpr@208.12--208.69) [174135]"}
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
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        assert {:msg "  Precondition of function Wand_state_contains_for_state_contains__get_out_1_0 might not hold. Assertion wand_1 != null might not hold. (testTreeWandE2.vpr@209.12--209.71) [174136]"}
          wand_1_1 != null;
        perm := FullPerm;
        assert {:msg "  Precondition of function Wand_state_contains_for_state_contains__get_out_1_0 might not hold. There might be insufficient permission to access Wand_state_contains_for_state_contains__valid_wand(wand_1) (testTreeWandE2.vpr@209.12--209.71) [174137]"}
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
    PostMask := PostMask[null, Wand_state_contains_for_state_contains__valid_wand(sys__result):=PostMask[null, Wand_state_contains_for_state_contains__valid_wand(sys__result)] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of Wand_state_contains_for_state_contains__get_in_1(sys__result) == in_1
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Mask := PostMask;
        ExhaleWellDef0Heap := PostHeap;
        assert {:msg "  Precondition of function Wand_state_contains_for_state_contains__get_in_1 might not hold. Assertion sys__result != null might not hold. (testTreeWandE2.vpr@218.11--218.72) [174138]"}
          sys__result != null;
        perm := FullPerm;
        assert {:msg "  Precondition of function Wand_state_contains_for_state_contains__get_in_1 might not hold. There might be insufficient permission to access Wand_state_contains_for_state_contains__valid_wand(sys__result) (testTreeWandE2.vpr@218.11--218.72) [174139]"}
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
        ExhaleWellDef0Mask := PostMask;
        ExhaleWellDef0Heap := PostHeap;
        assert {:msg "  Precondition of function Wand_state_contains_for_state_contains__get_in_1_0 might not hold. Assertion sys__result != null might not hold. (testTreeWandE2.vpr@219.11--219.74) [174140]"}
          sys__result != null;
        perm := FullPerm;
        assert {:msg "  Precondition of function Wand_state_contains_for_state_contains__get_in_1_0 might not hold. There might be insufficient permission to access Wand_state_contains_for_state_contains__valid_wand(sys__result) (testTreeWandE2.vpr@219.11--219.74) [174141]"}
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
        ExhaleWellDef0Mask := PostMask;
        ExhaleWellDef0Heap := PostHeap;
        assert {:msg "  Precondition of function Wand_state_contains_for_state_contains__get_out_1 might not hold. Assertion sys__result != null might not hold. (testTreeWandE2.vpr@220.11--220.73) [174142]"}
          sys__result != null;
        perm := FullPerm;
        assert {:msg "  Precondition of function Wand_state_contains_for_state_contains__get_out_1 might not hold. There might be insufficient permission to access Wand_state_contains_for_state_contains__valid_wand(sys__result) (testTreeWandE2.vpr@220.11--220.73) [174143]"}
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
        ExhaleWellDef0Mask := PostMask;
        ExhaleWellDef0Heap := PostHeap;
        assert {:msg "  Precondition of function Wand_state_contains_for_state_contains__get_out_1_0 might not hold. Assertion sys__result != null might not hold. (testTreeWandE2.vpr@221.11--221.75) [174144]"}
          sys__result != null;
        perm := FullPerm;
        assert {:msg "  Precondition of function Wand_state_contains_for_state_contains__get_out_1_0 might not hold. There might be insufficient permission to access Wand_state_contains_for_state_contains__valid_wand(sys__result) (testTreeWandE2.vpr@221.11--221.75) [174145]"}
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
  
  // -- Translating statement: __flatten_9 := Wand_state_contains_for_state_contains__Wand_state_contains_for_state_contains(current_thread_id) -- testTreeWandE2.vpr@252.3--252.115
    PreCallHeap := Heap;
    PreCallMask := Mask;
    
    // -- Exhaling precondition
      ExhaleWellDef0Mask := Mask;
      ExhaleWellDef0Heap := Heap;
      assert {:msg "  The precondition of method Wand_state_contains_for_state_contains__Wand_state_contains_for_state_contains might not hold. Assertion current_thread_id >= 0 might not hold. (testTreeWandE2.vpr@252.3--252.115) [174146]"}
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
  
  // -- Translating statement: vwand := __flatten_9 -- testTreeWandE2.vpr@253.3--253.23
    vwand := __flatten_9;
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_10 := 1 -- testTreeWandE2.vpr@254.3--254.20
    __flatten_10 := 1;
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_54 := __flatten_10 -- testTreeWandE2.vpr@255.3--255.31
    __flatten_54 := __flatten_10;
    assume state(Heap, Mask);
  
  // -- Translating statement: vwand.Wand_state_contains_for_state_contains__lemma := __flatten_54 -- testTreeWandE2.vpr@256.3--256.70
    assert {:msg "  Assignment might fail. There might be insufficient permission to access vwand.Wand_state_contains_for_state_contains__lemma (testTreeWandE2.vpr@256.3--256.70) [174147]"}
      FullPerm == Mask[vwand, Wand_state_contains_for_state_contains__lemma];
    Heap := Heap[vwand, Wand_state_contains_for_state_contains__lemma:=__flatten_54];
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_11 := this_1 -- testTreeWandE2.vpr@257.3--257.25
    __flatten_11 := this_1;
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_55 := __flatten_11 -- testTreeWandE2.vpr@258.3--258.31
    __flatten_55 := __flatten_11;
    assume state(Heap, Mask);
  
  // -- Translating statement: vwand.Wand_state_contains_for_state_contains__this_1 := __flatten_55 -- testTreeWandE2.vpr@259.3--259.71
    assert {:msg "  Assignment might fail. There might be insufficient permission to access vwand.Wand_state_contains_for_state_contains__this_1 (testTreeWandE2.vpr@259.3--259.71) [174148]"}
      FullPerm == Mask[vwand, Wand_state_contains_for_state_contains__this_1];
    Heap := Heap[vwand, Wand_state_contains_for_state_contains__this_1:=__flatten_55];
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_12 := target_contents_1 -- testTreeWandE2.vpr@260.3--260.36
    __flatten_12 := target_contents_1;
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_56 := __flatten_12 -- testTreeWandE2.vpr@261.3--261.31
    __flatten_56 := __flatten_12;
    assume state(Heap, Mask);
  
  // -- Translating statement: vwand.Wand_state_contains_for_state_contains__target_contents_1 := __flatten_56 -- testTreeWandE2.vpr@262.3--262.82
    assert {:msg "  Assignment might fail. There might be insufficient permission to access vwand.Wand_state_contains_for_state_contains__target_contents_1 (testTreeWandE2.vpr@262.3--262.82) [174149]"}
      FullPerm == Mask[vwand, Wand_state_contains_for_state_contains__target_contents_1];
    Heap := Heap[vwand, Wand_state_contains_for_state_contains__target_contents_1:=__flatten_56];
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_13 := prev_contents_1 -- testTreeWandE2.vpr@263.3--263.34
    __flatten_13 := prev_contents_1;
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_57 := __flatten_13 -- testTreeWandE2.vpr@264.3--264.31
    __flatten_57 := __flatten_13;
    assume state(Heap, Mask);
  
  // -- Translating statement: vwand.Wand_state_contains_for_state_contains__prev_contents_1 := __flatten_57 -- testTreeWandE2.vpr@265.3--265.80
    assert {:msg "  Assignment might fail. There might be insufficient permission to access vwand.Wand_state_contains_for_state_contains__prev_contents_1 (testTreeWandE2.vpr@265.3--265.80) [174150]"}
      FullPerm == Mask[vwand, Wand_state_contains_for_state_contains__prev_contents_1];
    Heap := Heap[vwand, Wand_state_contains_for_state_contains__prev_contents_1:=__flatten_57];
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_14 := prev_1 -- testTreeWandE2.vpr@266.3--266.25
    __flatten_14 := prev_1;
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_58 := __flatten_14 -- testTreeWandE2.vpr@267.3--267.31
    __flatten_58 := __flatten_14;
    assume state(Heap, Mask);
  
  // -- Translating statement: vwand.Wand_state_contains_for_state_contains__prev_1 := __flatten_58 -- testTreeWandE2.vpr@268.3--268.71
    assert {:msg "  Assignment might fail. There might be insufficient permission to access vwand.Wand_state_contains_for_state_contains__prev_1 (testTreeWandE2.vpr@268.3--268.71) [174151]"}
      FullPerm == Mask[vwand, Wand_state_contains_for_state_contains__prev_1];
    Heap := Heap[vwand, Wand_state_contains_for_state_contains__prev_1:=__flatten_58];
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_15 := cur_contents_1 -- testTreeWandE2.vpr@269.3--269.33
    __flatten_15 := cur_contents_1;
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_59 := __flatten_15 -- testTreeWandE2.vpr@270.3--270.31
    __flatten_59 := __flatten_15;
    assume state(Heap, Mask);
  
  // -- Translating statement: vwand.Wand_state_contains_for_state_contains__cur_contents_1 := __flatten_59 -- testTreeWandE2.vpr@271.3--271.79
    assert {:msg "  Assignment might fail. There might be insufficient permission to access vwand.Wand_state_contains_for_state_contains__cur_contents_1 (testTreeWandE2.vpr@271.3--271.79) [174152]"}
      FullPerm == Mask[vwand, Wand_state_contains_for_state_contains__cur_contents_1];
    Heap := Heap[vwand, Wand_state_contains_for_state_contains__cur_contents_1:=__flatten_59];
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_16 := top_1 -- testTreeWandE2.vpr@272.3--272.24
    __flatten_16 := top_1;
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_60 := __flatten_16 -- testTreeWandE2.vpr@273.3--273.31
    __flatten_60 := __flatten_16;
    assume state(Heap, Mask);
  
  // -- Translating statement: vwand.Wand_state_contains_for_state_contains__top_1 := __flatten_60 -- testTreeWandE2.vpr@274.3--274.70
    assert {:msg "  Assignment might fail. There might be insufficient permission to access vwand.Wand_state_contains_for_state_contains__top_1 (testTreeWandE2.vpr@274.3--274.70) [174153]"}
      FullPerm == Mask[vwand, Wand_state_contains_for_state_contains__top_1];
    Heap := Heap[vwand, Wand_state_contains_for_state_contains__top_1:=__flatten_60];
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_17 := cur_1 -- testTreeWandE2.vpr@275.3--275.24
    __flatten_17 := cur_1;
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_61 := __flatten_17 -- testTreeWandE2.vpr@276.3--276.31
    __flatten_61 := __flatten_17;
    assume state(Heap, Mask);
  
  // -- Translating statement: vwand.Wand_state_contains_for_state_contains__cur_1 := __flatten_61 -- testTreeWandE2.vpr@277.3--277.70
    assert {:msg "  Assignment might fail. There might be insufficient permission to access vwand.Wand_state_contains_for_state_contains__cur_1 (testTreeWandE2.vpr@277.3--277.70) [174154]"}
      FullPerm == Mask[vwand, Wand_state_contains_for_state_contains__cur_1];
    Heap := Heap[vwand, Wand_state_contains_for_state_contains__cur_1:=__flatten_61];
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_18 := wand_1 -- testTreeWandE2.vpr@278.3--278.25
    __flatten_18 := wand_1_1;
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_62 := __flatten_18 -- testTreeWandE2.vpr@279.3--279.31
    __flatten_62 := __flatten_18;
    assume state(Heap, Mask);
  
  // -- Translating statement: vwand.Wand_state_contains_for_state_contains__wand_1 := __flatten_62 -- testTreeWandE2.vpr@280.3--280.71
    assert {:msg "  Assignment might fail. There might be insufficient permission to access vwand.Wand_state_contains_for_state_contains__wand_1 (testTreeWandE2.vpr@280.3--280.71) [174155]"}
      FullPerm == Mask[vwand, Wand_state_contains_for_state_contains__wand_1];
    Heap := Heap[vwand, Wand_state_contains_for_state_contains__wand_1:=__flatten_62];
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_19 := in_1 -- testTreeWandE2.vpr@281.3--281.23
    __flatten_19 := in_1;
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_63 := __flatten_19 -- testTreeWandE2.vpr@282.3--282.31
    __flatten_63 := __flatten_19;
    assume state(Heap, Mask);
  
  // -- Translating statement: vwand.Wand_state_contains_for_state_contains__in_1 := __flatten_63 -- testTreeWandE2.vpr@283.3--283.69
    assert {:msg "  Assignment might fail. There might be insufficient permission to access vwand.Wand_state_contains_for_state_contains__in_1 (testTreeWandE2.vpr@283.3--283.69) [174156]"}
      FullPerm == Mask[vwand, Wand_state_contains_for_state_contains__in_1];
    Heap := Heap[vwand, Wand_state_contains_for_state_contains__in_1:=__flatten_63];
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_20 := in_1_0 -- testTreeWandE2.vpr@284.3--284.25
    __flatten_20 := in_1_0;
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_64 := __flatten_20 -- testTreeWandE2.vpr@285.3--285.31
    __flatten_64 := __flatten_20;
    assume state(Heap, Mask);
  
  // -- Translating statement: vwand.Wand_state_contains_for_state_contains__in_1_0 := __flatten_64 -- testTreeWandE2.vpr@286.3--286.71
    assert {:msg "  Assignment might fail. There might be insufficient permission to access vwand.Wand_state_contains_for_state_contains__in_1_0 (testTreeWandE2.vpr@286.3--286.71) [174157]"}
      FullPerm == Mask[vwand, Wand_state_contains_for_state_contains__in_1_0];
    Heap := Heap[vwand, Wand_state_contains_for_state_contains__in_1_0:=__flatten_64];
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_21 := out_1 -- testTreeWandE2.vpr@287.3--287.24
    __flatten_21 := out_1;
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_65 := __flatten_21 -- testTreeWandE2.vpr@288.3--288.31
    __flatten_65 := __flatten_21;
    assume state(Heap, Mask);
  
  // -- Translating statement: vwand.Wand_state_contains_for_state_contains__out_1 := __flatten_65 -- testTreeWandE2.vpr@289.3--289.70
    assert {:msg "  Assignment might fail. There might be insufficient permission to access vwand.Wand_state_contains_for_state_contains__out_1 (testTreeWandE2.vpr@289.3--289.70) [174158]"}
      FullPerm == Mask[vwand, Wand_state_contains_for_state_contains__out_1];
    Heap := Heap[vwand, Wand_state_contains_for_state_contains__out_1:=__flatten_65];
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_22 := out_1_0 -- testTreeWandE2.vpr@290.3--290.26
    __flatten_22 := out_1_0;
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_66 := __flatten_22 -- testTreeWandE2.vpr@291.3--291.31
    __flatten_66 := __flatten_22;
    assume state(Heap, Mask);
  
  // -- Translating statement: vwand.Wand_state_contains_for_state_contains__out_1_0 := __flatten_66 -- testTreeWandE2.vpr@292.3--292.72
    assert {:msg "  Assignment might fail. There might be insufficient permission to access vwand.Wand_state_contains_for_state_contains__out_1_0 (testTreeWandE2.vpr@292.3--292.72) [174159]"}
      FullPerm == Mask[vwand, Wand_state_contains_for_state_contains__out_1_0];
    Heap := Heap[vwand, Wand_state_contains_for_state_contains__out_1_0:=__flatten_66];
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(Wand_state_contains_for_state_contains__valid_wand(vwand), write) -- testTreeWandE2.vpr@293.3--293.77
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    assert {:msg "  Folding Wand_state_contains_for_state_contains__valid_wand(vwand) might fail. There might be insufficient permission to access vwand.Wand_state_contains_for_state_contains__lemma (testTreeWandE2.vpr@293.3--293.77) [174161]"}
      Mask[vwand, Wand_state_contains_for_state_contains__lemma] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[vwand, Wand_state_contains_for_state_contains__lemma];
    Mask := Mask[vwand, Wand_state_contains_for_state_contains__lemma:=Mask[vwand, Wand_state_contains_for_state_contains__lemma] - wildcard];
    assert {:msg "  Folding Wand_state_contains_for_state_contains__valid_wand(vwand) might fail. Assertion 1 <= vwand.Wand_state_contains_for_state_contains__lemma might not hold. (testTreeWandE2.vpr@293.3--293.77) [174162]"}
      1 <= Heap[vwand, Wand_state_contains_for_state_contains__lemma];
    assert {:msg "  Folding Wand_state_contains_for_state_contains__valid_wand(vwand) might fail. There might be insufficient permission to access vwand.Wand_state_contains_for_state_contains__in_1 (testTreeWandE2.vpr@293.3--293.77) [174163]"}
      Mask[vwand, Wand_state_contains_for_state_contains__in_1] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[vwand, Wand_state_contains_for_state_contains__in_1];
    Mask := Mask[vwand, Wand_state_contains_for_state_contains__in_1:=Mask[vwand, Wand_state_contains_for_state_contains__in_1] - wildcard];
    assert {:msg "  Folding Wand_state_contains_for_state_contains__valid_wand(vwand) might fail. Assertion vwand.Wand_state_contains_for_state_contains__in_1 != null might not hold. (testTreeWandE2.vpr@293.3--293.77) [174164]"}
      Heap[vwand, Wand_state_contains_for_state_contains__in_1] != null;
    assert {:msg "  Folding Wand_state_contains_for_state_contains__valid_wand(vwand) might fail. There might be insufficient permission to access vwand.Wand_state_contains_for_state_contains__in_1_0 (testTreeWandE2.vpr@293.3--293.77) [174165]"}
      Mask[vwand, Wand_state_contains_for_state_contains__in_1_0] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[vwand, Wand_state_contains_for_state_contains__in_1_0];
    Mask := Mask[vwand, Wand_state_contains_for_state_contains__in_1_0:=Mask[vwand, Wand_state_contains_for_state_contains__in_1_0] - wildcard];
    assert {:msg "  Folding Wand_state_contains_for_state_contains__valid_wand(vwand) might fail. There might be insufficient permission to access vwand.Wand_state_contains_for_state_contains__out_1 (testTreeWandE2.vpr@293.3--293.77) [174166]"}
      Mask[vwand, Wand_state_contains_for_state_contains__out_1] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[vwand, Wand_state_contains_for_state_contains__out_1];
    Mask := Mask[vwand, Wand_state_contains_for_state_contains__out_1:=Mask[vwand, Wand_state_contains_for_state_contains__out_1] - wildcard];
    assert {:msg "  Folding Wand_state_contains_for_state_contains__valid_wand(vwand) might fail. Assertion vwand.Wand_state_contains_for_state_contains__out_1 != null might not hold. (testTreeWandE2.vpr@293.3--293.77) [174167]"}
      Heap[vwand, Wand_state_contains_for_state_contains__out_1] != null;
    assert {:msg "  Folding Wand_state_contains_for_state_contains__valid_wand(vwand) might fail. There might be insufficient permission to access vwand.Wand_state_contains_for_state_contains__out_1_0 (testTreeWandE2.vpr@293.3--293.77) [174168]"}
      Mask[vwand, Wand_state_contains_for_state_contains__out_1_0] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[vwand, Wand_state_contains_for_state_contains__out_1_0];
    Mask := Mask[vwand, Wand_state_contains_for_state_contains__out_1_0:=Mask[vwand, Wand_state_contains_for_state_contains__out_1_0] - wildcard];
    assert {:msg "  Folding Wand_state_contains_for_state_contains__valid_wand(vwand) might fail. There might be insufficient permission to access vwand.Wand_state_contains_for_state_contains__this_1 (testTreeWandE2.vpr@293.3--293.77) [174169]"}
      Mask[vwand, Wand_state_contains_for_state_contains__this_1] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[vwand, Wand_state_contains_for_state_contains__this_1];
    Mask := Mask[vwand, Wand_state_contains_for_state_contains__this_1:=Mask[vwand, Wand_state_contains_for_state_contains__this_1] - wildcard];
    assert {:msg "  Folding Wand_state_contains_for_state_contains__valid_wand(vwand) might fail. There might be insufficient permission to access vwand.Wand_state_contains_for_state_contains__target_contents_1 (testTreeWandE2.vpr@293.3--293.77) [174170]"}
      Mask[vwand, Wand_state_contains_for_state_contains__target_contents_1] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[vwand, Wand_state_contains_for_state_contains__target_contents_1];
    Mask := Mask[vwand, Wand_state_contains_for_state_contains__target_contents_1:=Mask[vwand, Wand_state_contains_for_state_contains__target_contents_1] - wildcard];
    assert {:msg "  Folding Wand_state_contains_for_state_contains__valid_wand(vwand) might fail. There might be insufficient permission to access vwand.Wand_state_contains_for_state_contains__prev_contents_1 (testTreeWandE2.vpr@293.3--293.77) [174171]"}
      Mask[vwand, Wand_state_contains_for_state_contains__prev_contents_1] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[vwand, Wand_state_contains_for_state_contains__prev_contents_1];
    Mask := Mask[vwand, Wand_state_contains_for_state_contains__prev_contents_1:=Mask[vwand, Wand_state_contains_for_state_contains__prev_contents_1] - wildcard];
    assert {:msg "  Folding Wand_state_contains_for_state_contains__valid_wand(vwand) might fail. There might be insufficient permission to access vwand.Wand_state_contains_for_state_contains__prev_1 (testTreeWandE2.vpr@293.3--293.77) [174172]"}
      Mask[vwand, Wand_state_contains_for_state_contains__prev_1] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[vwand, Wand_state_contains_for_state_contains__prev_1];
    Mask := Mask[vwand, Wand_state_contains_for_state_contains__prev_1:=Mask[vwand, Wand_state_contains_for_state_contains__prev_1] - wildcard];
    assert {:msg "  Folding Wand_state_contains_for_state_contains__valid_wand(vwand) might fail. There might be insufficient permission to access vwand.Wand_state_contains_for_state_contains__cur_contents_1 (testTreeWandE2.vpr@293.3--293.77) [174173]"}
      Mask[vwand, Wand_state_contains_for_state_contains__cur_contents_1] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[vwand, Wand_state_contains_for_state_contains__cur_contents_1];
    Mask := Mask[vwand, Wand_state_contains_for_state_contains__cur_contents_1:=Mask[vwand, Wand_state_contains_for_state_contains__cur_contents_1] - wildcard];
    assert {:msg "  Folding Wand_state_contains_for_state_contains__valid_wand(vwand) might fail. There might be insufficient permission to access vwand.Wand_state_contains_for_state_contains__top_1 (testTreeWandE2.vpr@293.3--293.77) [174174]"}
      Mask[vwand, Wand_state_contains_for_state_contains__top_1] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[vwand, Wand_state_contains_for_state_contains__top_1];
    Mask := Mask[vwand, Wand_state_contains_for_state_contains__top_1:=Mask[vwand, Wand_state_contains_for_state_contains__top_1] - wildcard];
    assert {:msg "  Folding Wand_state_contains_for_state_contains__valid_wand(vwand) might fail. There might be insufficient permission to access vwand.Wand_state_contains_for_state_contains__cur_1 (testTreeWandE2.vpr@293.3--293.77) [174175]"}
      Mask[vwand, Wand_state_contains_for_state_contains__cur_1] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[vwand, Wand_state_contains_for_state_contains__cur_1];
    Mask := Mask[vwand, Wand_state_contains_for_state_contains__cur_1:=Mask[vwand, Wand_state_contains_for_state_contains__cur_1] - wildcard];
    assert {:msg "  Folding Wand_state_contains_for_state_contains__valid_wand(vwand) might fail. There might be insufficient permission to access vwand.Wand_state_contains_for_state_contains__wand_1 (testTreeWandE2.vpr@293.3--293.77) [174176]"}
      Mask[vwand, Wand_state_contains_for_state_contains__wand_1] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[vwand, Wand_state_contains_for_state_contains__wand_1];
    Mask := Mask[vwand, Wand_state_contains_for_state_contains__wand_1:=Mask[vwand, Wand_state_contains_for_state_contains__wand_1] - wildcard];
    if (Heap[vwand, Wand_state_contains_for_state_contains__lemma] == 1) {
      assert {:msg "  Folding Wand_state_contains_for_state_contains__valid_wand(vwand) might fail. Assertion vwand.Wand_state_contains_for_state_contains__this_1 != null might not hold. (testTreeWandE2.vpr@293.3--293.77) [174177]"}
        Heap[vwand, Wand_state_contains_for_state_contains__this_1] != null;
      assert {:msg "  Folding Wand_state_contains_for_state_contains__valid_wand(vwand) might fail. Assertion |vwand.Wand_state_contains_for_state_contains__prev_contents_1| > 0 might not hold. (testTreeWandE2.vpr@293.3--293.77) [174178]"}
        Seq#Length(Heap[vwand, Wand_state_contains_for_state_contains__prev_contents_1]) > 0;
      assert {:msg "  Folding Wand_state_contains_for_state_contains__valid_wand(vwand) might fail. Assertion |vwand.Wand_state_contains_for_state_contains__cur_contents_1| > 0 might not hold. (testTreeWandE2.vpr@293.3--293.77) [174179]"}
        Seq#Length(Heap[vwand, Wand_state_contains_for_state_contains__cur_contents_1]) > 0;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Folding Wand_state_contains_for_state_contains__valid_wand(vwand) might fail. There might be insufficient permission to access vwand.Wand_state_contains_for_state_contains__prev_1.Tree__left (testTreeWandE2.vpr@293.3--293.77) [174181]"}
          perm <= Mask[Heap[vwand, Wand_state_contains_for_state_contains__prev_1], Tree__left];
      }
      Mask := Mask[Heap[vwand, Wand_state_contains_for_state_contains__prev_1], Tree__left:=Mask[Heap[vwand, Wand_state_contains_for_state_contains__prev_1], Tree__left] - perm];
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Folding Wand_state_contains_for_state_contains__valid_wand(vwand) might fail. There might be insufficient permission to access vwand.Wand_state_contains_for_state_contains__prev_1.Tree__data (testTreeWandE2.vpr@293.3--293.77) [174183]"}
          perm <= Mask[Heap[vwand, Wand_state_contains_for_state_contains__prev_1], Tree__data];
      }
      Mask := Mask[Heap[vwand, Wand_state_contains_for_state_contains__prev_1], Tree__data:=Mask[Heap[vwand, Wand_state_contains_for_state_contains__prev_1], Tree__data] - perm];
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Folding Wand_state_contains_for_state_contains__valid_wand(vwand) might fail. There might be insufficient permission to access vwand.Wand_state_contains_for_state_contains__prev_1.Tree__right (testTreeWandE2.vpr@293.3--293.77) [174185]"}
          perm <= Mask[Heap[vwand, Wand_state_contains_for_state_contains__prev_1], Tree__right];
      }
      Mask := Mask[Heap[vwand, Wand_state_contains_for_state_contains__prev_1], Tree__right:=Mask[Heap[vwand, Wand_state_contains_for_state_contains__prev_1], Tree__right] - perm];
      if (Heap[Heap[vwand, Wand_state_contains_for_state_contains__prev_1], Tree__right] != null) {
        perm := FullPerm;
        if (perm != NoPerm) {
          assert {:msg "  Folding Wand_state_contains_for_state_contains__valid_wand(vwand) might fail. There might be insufficient permission to access Tree__state(vwand.Wand_state_contains_for_state_contains__prev_1.Tree__right) (testTreeWandE2.vpr@293.3--293.77) [174187]"}
            perm <= Mask[null, Tree__state(Heap[Heap[vwand, Wand_state_contains_for_state_contains__prev_1], Tree__right])];
        }
        Mask := Mask[null, Tree__state(Heap[Heap[vwand, Wand_state_contains_for_state_contains__prev_1], Tree__right]):=Mask[null, Tree__state(Heap[Heap[vwand, Wand_state_contains_for_state_contains__prev_1], Tree__right])] - perm];
        
        // -- Record predicate instance information
          assume InsidePredicate(Wand_state_contains_for_state_contains__valid_wand(vwand), Heap[null, Wand_state_contains_for_state_contains__valid_wand(vwand)], Tree__state(Heap[Heap[vwand, Wand_state_contains_for_state_contains__prev_1], Tree__right]), Heap[null, Tree__state(Heap[Heap[vwand, Wand_state_contains_for_state_contains__prev_1], Tree__right])]);
      }
      assert {:msg "  Folding Wand_state_contains_for_state_contains__valid_wand(vwand) might fail. Assertion vwand.Wand_state_contains_for_state_contains__prev_1.Tree__left == vwand.Wand_state_contains_for_state_contains__cur_1 might not hold. (testTreeWandE2.vpr@293.3--293.77) [174188]"}
        Heap[Heap[vwand, Wand_state_contains_for_state_contains__prev_1], Tree__left] == Heap[vwand, Wand_state_contains_for_state_contains__cur_1];
      assert {:msg "  Folding Wand_state_contains_for_state_contains__valid_wand(vwand) might fail. Assertion vwand.Wand_state_contains_for_state_contains__prev_contents_1 == vwand.Wand_state_contains_for_state_contains__cur_contents_1 ++ Seq(vwand.Wand_state_contains_for_state_contains__prev_1.Tree__data) ++ Tree__tolist(vwand.Wand_state_contains_for_state_contains__prev_1.Tree__right) might not hold. (testTreeWandE2.vpr@293.3--293.77) [174189]"}
        Seq#Equal(Heap[vwand, Wand_state_contains_for_state_contains__prev_contents_1], Seq#Append(Seq#Append(Heap[vwand, Wand_state_contains_for_state_contains__cur_contents_1], Seq#Singleton(Heap[Heap[vwand, Wand_state_contains_for_state_contains__prev_1], Tree__data])), Tree__tolist(Heap, Heap[Heap[vwand, Wand_state_contains_for_state_contains__prev_1], Tree__right])));
      assert {:msg "  Folding Wand_state_contains_for_state_contains__valid_wand(vwand) might fail. Assertion vwand.Wand_state_contains_for_state_contains__wand_1 != null might not hold. (testTreeWandE2.vpr@293.3--293.77) [174190]"}
        Heap[vwand, Wand_state_contains_for_state_contains__wand_1] != null;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Folding Wand_state_contains_for_state_contains__valid_wand(vwand) might fail. There might be insufficient permission to access Wand_state_contains_for_state_contains__valid_wand(vwand.Wand_state_contains_for_state_contains__wand_1) (testTreeWandE2.vpr@293.3--293.77) [174192]"}
          perm <= Mask[null, Wand_state_contains_for_state_contains__valid_wand(Heap[vwand, Wand_state_contains_for_state_contains__wand_1])];
      }
      Mask := Mask[null, Wand_state_contains_for_state_contains__valid_wand(Heap[vwand, Wand_state_contains_for_state_contains__wand_1]):=Mask[null, Wand_state_contains_for_state_contains__valid_wand(Heap[vwand, Wand_state_contains_for_state_contains__wand_1])] - perm];
      
      // -- Record predicate instance information
        assume InsidePredicate(Wand_state_contains_for_state_contains__valid_wand(vwand), Heap[null, Wand_state_contains_for_state_contains__valid_wand(vwand)], Wand_state_contains_for_state_contains__valid_wand(Heap[vwand, Wand_state_contains_for_state_contains__wand_1]), Heap[null, Wand_state_contains_for_state_contains__valid_wand(Heap[vwand, Wand_state_contains_for_state_contains__wand_1])]);
      assert {:msg "  Folding Wand_state_contains_for_state_contains__valid_wand(vwand) might fail. Assertion Wand_state_contains_for_state_contains__get_in_1(vwand.Wand_state_contains_for_state_contains__wand_1) == vwand.Wand_state_contains_for_state_contains__prev_1 might not hold. (testTreeWandE2.vpr@293.3--293.77) [174193]"}
        Wand_state_contains_for_state_contains__get_in_1(Heap, Heap[vwand, Wand_state_contains_for_state_contains__wand_1]) == Heap[vwand, Wand_state_contains_for_state_contains__prev_1];
      assert {:msg "  Folding Wand_state_contains_for_state_contains__valid_wand(vwand) might fail. Assertion Wand_state_contains_for_state_contains__get_in_1_0(vwand.Wand_state_contains_for_state_contains__wand_1) == vwand.Wand_state_contains_for_state_contains__prev_contents_1[1..] might not hold. (testTreeWandE2.vpr@293.3--293.77) [174194]"}
        Seq#Equal(Wand_state_contains_for_state_contains__get_in_1_0(Heap, Heap[vwand, Wand_state_contains_for_state_contains__wand_1]), Seq#Drop(Heap[vwand, Wand_state_contains_for_state_contains__prev_contents_1], 1));
      assert {:msg "  Folding Wand_state_contains_for_state_contains__valid_wand(vwand) might fail. Assertion Wand_state_contains_for_state_contains__get_out_1(vwand.Wand_state_contains_for_state_contains__wand_1) == vwand.Wand_state_contains_for_state_contains__top_1 might not hold. (testTreeWandE2.vpr@293.3--293.77) [174195]"}
        Wand_state_contains_for_state_contains__get_out_1(Heap, Heap[vwand, Wand_state_contains_for_state_contains__wand_1]) == Heap[vwand, Wand_state_contains_for_state_contains__top_1];
      assert {:msg "  Folding Wand_state_contains_for_state_contains__valid_wand(vwand) might fail. Assertion Wand_state_contains_for_state_contains__get_out_1_0(vwand.Wand_state_contains_for_state_contains__wand_1) == vwand.Wand_state_contains_for_state_contains__target_contents_1 might not hold. (testTreeWandE2.vpr@293.3--293.77) [174196]"}
        Seq#Equal(Wand_state_contains_for_state_contains__get_out_1_0(Heap, Heap[vwand, Wand_state_contains_for_state_contains__wand_1]), Heap[vwand, Wand_state_contains_for_state_contains__target_contents_1]);
      assert {:msg "  Folding Wand_state_contains_for_state_contains__valid_wand(vwand) might fail. Assertion vwand.Wand_state_contains_for_state_contains__in_1 == vwand.Wand_state_contains_for_state_contains__cur_1 might not hold. (testTreeWandE2.vpr@293.3--293.77) [174197]"}
        Heap[vwand, Wand_state_contains_for_state_contains__in_1] == Heap[vwand, Wand_state_contains_for_state_contains__cur_1];
      assert {:msg "  Folding Wand_state_contains_for_state_contains__valid_wand(vwand) might fail. Assertion vwand.Wand_state_contains_for_state_contains__in_1_0 == vwand.Wand_state_contains_for_state_contains__cur_contents_1[1..] might not hold. (testTreeWandE2.vpr@293.3--293.77) [174198]"}
        Seq#Equal(Heap[vwand, Wand_state_contains_for_state_contains__in_1_0], Seq#Drop(Heap[vwand, Wand_state_contains_for_state_contains__cur_contents_1], 1));
      assert {:msg "  Folding Wand_state_contains_for_state_contains__valid_wand(vwand) might fail. Assertion vwand.Wand_state_contains_for_state_contains__out_1 == vwand.Wand_state_contains_for_state_contains__top_1 might not hold. (testTreeWandE2.vpr@293.3--293.77) [174199]"}
        Heap[vwand, Wand_state_contains_for_state_contains__out_1] == Heap[vwand, Wand_state_contains_for_state_contains__top_1];
      assert {:msg "  Folding Wand_state_contains_for_state_contains__valid_wand(vwand) might fail. Assertion vwand.Wand_state_contains_for_state_contains__out_1_0 == vwand.Wand_state_contains_for_state_contains__target_contents_1 might not hold. (testTreeWandE2.vpr@293.3--293.77) [174200]"}
        Seq#Equal(Heap[vwand, Wand_state_contains_for_state_contains__out_1_0], Heap[vwand, Wand_state_contains_for_state_contains__target_contents_1]);
    }
    assert {:msg "  Folding Wand_state_contains_for_state_contains__valid_wand(vwand) might fail. There might be insufficient permission to access vwand.Wand_state_contains_for_state_contains__this_2 (testTreeWandE2.vpr@293.3--293.77) [174201]"}
      Mask[vwand, Wand_state_contains_for_state_contains__this_2] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[vwand, Wand_state_contains_for_state_contains__this_2];
    Mask := Mask[vwand, Wand_state_contains_for_state_contains__this_2:=Mask[vwand, Wand_state_contains_for_state_contains__this_2] - wildcard];
    assert {:msg "  Folding Wand_state_contains_for_state_contains__valid_wand(vwand) might fail. There might be insufficient permission to access vwand.Wand_state_contains_for_state_contains__target_contents_2 (testTreeWandE2.vpr@293.3--293.77) [174202]"}
      Mask[vwand, Wand_state_contains_for_state_contains__target_contents_2] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[vwand, Wand_state_contains_for_state_contains__target_contents_2];
    Mask := Mask[vwand, Wand_state_contains_for_state_contains__target_contents_2:=Mask[vwand, Wand_state_contains_for_state_contains__target_contents_2] - wildcard];
    assert {:msg "  Folding Wand_state_contains_for_state_contains__valid_wand(vwand) might fail. There might be insufficient permission to access vwand.Wand_state_contains_for_state_contains__top_2 (testTreeWandE2.vpr@293.3--293.77) [174203]"}
      Mask[vwand, Wand_state_contains_for_state_contains__top_2] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[vwand, Wand_state_contains_for_state_contains__top_2];
    Mask := Mask[vwand, Wand_state_contains_for_state_contains__top_2:=Mask[vwand, Wand_state_contains_for_state_contains__top_2] - wildcard];
    if (Heap[vwand, Wand_state_contains_for_state_contains__lemma] == 2) {
      assert {:msg "  Folding Wand_state_contains_for_state_contains__valid_wand(vwand) might fail. Assertion vwand.Wand_state_contains_for_state_contains__this_2 != null might not hold. (testTreeWandE2.vpr@293.3--293.77) [174204]"}
        Heap[vwand, Wand_state_contains_for_state_contains__this_2] != null;
      assert {:msg "  Folding Wand_state_contains_for_state_contains__valid_wand(vwand) might fail. Assertion vwand.Wand_state_contains_for_state_contains__in_1 == vwand.Wand_state_contains_for_state_contains__top_2 might not hold. (testTreeWandE2.vpr@293.3--293.77) [174205]"}
        Heap[vwand, Wand_state_contains_for_state_contains__in_1] == Heap[vwand, Wand_state_contains_for_state_contains__top_2];
      assert {:msg "  Folding Wand_state_contains_for_state_contains__valid_wand(vwand) might fail. Assertion vwand.Wand_state_contains_for_state_contains__in_1_0 == vwand.Wand_state_contains_for_state_contains__target_contents_2 might not hold. (testTreeWandE2.vpr@293.3--293.77) [174206]"}
        Seq#Equal(Heap[vwand, Wand_state_contains_for_state_contains__in_1_0], Heap[vwand, Wand_state_contains_for_state_contains__target_contents_2]);
      assert {:msg "  Folding Wand_state_contains_for_state_contains__valid_wand(vwand) might fail. Assertion vwand.Wand_state_contains_for_state_contains__out_1 == vwand.Wand_state_contains_for_state_contains__top_2 might not hold. (testTreeWandE2.vpr@293.3--293.77) [174207]"}
        Heap[vwand, Wand_state_contains_for_state_contains__out_1] == Heap[vwand, Wand_state_contains_for_state_contains__top_2];
      assert {:msg "  Folding Wand_state_contains_for_state_contains__valid_wand(vwand) might fail. Assertion vwand.Wand_state_contains_for_state_contains__out_1_0 == vwand.Wand_state_contains_for_state_contains__target_contents_2 might not hold. (testTreeWandE2.vpr@293.3--293.77) [174208]"}
        Seq#Equal(Heap[vwand, Wand_state_contains_for_state_contains__out_1_0], Heap[vwand, Wand_state_contains_for_state_contains__target_contents_2]);
    }
    assert {:msg "  Folding Wand_state_contains_for_state_contains__valid_wand(vwand) might fail. Assertion vwand.Wand_state_contains_for_state_contains__lemma <= 2 might not hold. (testTreeWandE2.vpr@293.3--293.77) [174209]"}
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
        assume (forall <A, B> o_46: Ref, f_35: (Field A B) ::
          { newPMask[o_46, f_35] }
          Heap[null, Wand_state_contains_for_state_contains__valid_wand#sm(vwand)][o_46, f_35] || Heap[null, Tree__state#sm(Heap[Heap[vwand, Wand_state_contains_for_state_contains__prev_1], Tree__right])][o_46, f_35] ==> newPMask[o_46, f_35]
        );
        Heap := Heap[null, Wand_state_contains_for_state_contains__valid_wand#sm(vwand):=newPMask];
      }
      havoc newPMask;
      assume (forall <A, B> o_41: Ref, f_25: (Field A B) ::
        { newPMask[o_41, f_25] }
        Heap[null, Wand_state_contains_for_state_contains__valid_wand#sm(vwand)][o_41, f_25] || Heap[null, Wand_state_contains_for_state_contains__valid_wand#sm(Heap[vwand, Wand_state_contains_for_state_contains__wand_1])][o_41, f_25] ==> newPMask[o_41, f_25]
      );
      Heap := Heap[null, Wand_state_contains_for_state_contains__valid_wand#sm(vwand):=newPMask];
    }
    Heap := Heap[null, Wand_state_contains_for_state_contains__valid_wand#sm(vwand):=Heap[null, Wand_state_contains_for_state_contains__valid_wand#sm(vwand)][vwand, Wand_state_contains_for_state_contains__this_2:=true]];
    Heap := Heap[null, Wand_state_contains_for_state_contains__valid_wand#sm(vwand):=Heap[null, Wand_state_contains_for_state_contains__valid_wand#sm(vwand)][vwand, Wand_state_contains_for_state_contains__target_contents_2:=true]];
    Heap := Heap[null, Wand_state_contains_for_state_contains__valid_wand#sm(vwand):=Heap[null, Wand_state_contains_for_state_contains__valid_wand#sm(vwand)][vwand, Wand_state_contains_for_state_contains__top_2:=true]];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_23 := vwand -- testTreeWandE2.vpr@294.3--294.24
    __flatten_23 := vwand;
    assume state(Heap, Mask);
  
  // -- Translating statement: sys__result := __flatten_23 -- testTreeWandE2.vpr@295.3--295.30
    sys__result := __flatten_23;
    assume state(Heap, Mask);
  
  // -- Translating statement: assert sys__result != null &&
  //   (acc(Wand_state_contains_for_state_contains__valid_wand(sys__result), write) &&
  //   (Wand_state_contains_for_state_contains__get_in_1(sys__result) == in_1 &&
  //   (Wand_state_contains_for_state_contains__get_in_1_0(sys__result) ==
  //   in_1_0 &&
  //   (Wand_state_contains_for_state_contains__get_out_1(sys__result) == out_1 &&
  //   Wand_state_contains_for_state_contains__get_out_1_0(sys__result) ==
  //   out_1_0)))) -- testTreeWandE2.vpr@296.3--296.422
    AssertHeap := Heap;
    AssertMask := Mask;
    ExhaleWellDef0Mask := AssertMask;
    ExhaleWellDef0Heap := AssertHeap;
    assert {:msg "  Assert might fail. Assertion sys__result != null might not hold. (testTreeWandE2.vpr@296.10--296.422) [174211]"}
      sys__result != null;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Assert might fail. There might be insufficient permission to access Wand_state_contains_for_state_contains__valid_wand(sys__result) (testTreeWandE2.vpr@296.10--296.422) [174213]"}
        perm <= AssertMask[null, Wand_state_contains_for_state_contains__valid_wand(sys__result)];
    }
    AssertMask := AssertMask[null, Wand_state_contains_for_state_contains__valid_wand(sys__result):=AssertMask[null, Wand_state_contains_for_state_contains__valid_wand(sys__result)] - perm];
    
    // -- Check definedness of Wand_state_contains_for_state_contains__get_in_1(sys__result) == in_1
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef1Mask := ExhaleWellDef0Mask;
        ExhaleWellDef1Heap := ExhaleWellDef0Heap;
        assert {:msg "  Precondition of function Wand_state_contains_for_state_contains__get_in_1 might not hold. Assertion sys__result != null might not hold. (testTreeWandE2.vpr@296.115--296.176) [174214]"}
          sys__result != null;
        perm := FullPerm;
        assert {:msg "  Precondition of function Wand_state_contains_for_state_contains__get_in_1 might not hold. There might be insufficient permission to access Wand_state_contains_for_state_contains__valid_wand(sys__result) (testTreeWandE2.vpr@296.115--296.176) [174215]"}
          NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[null, Wand_state_contains_for_state_contains__valid_wand(sys__result)];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(ExhaleWellDef0Heap, ExhaleHeap, ExhaleWellDef0Mask);
        ExhaleWellDef0Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion Wand_state_contains_for_state_contains__get_in_1(sys__result) == in_1 might not hold. (testTreeWandE2.vpr@296.10--296.422) [174216]"}
      Wand_state_contains_for_state_contains__get_in_1(AssertHeap, sys__result) == in_1;
    
    // -- Check definedness of Wand_state_contains_for_state_contains__get_in_1_0(sys__result) == in_1_0
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef1Mask := ExhaleWellDef0Mask;
        ExhaleWellDef1Heap := ExhaleWellDef0Heap;
        assert {:msg "  Precondition of function Wand_state_contains_for_state_contains__get_in_1_0 might not hold. Assertion sys__result != null might not hold. (testTreeWandE2.vpr@296.190--296.253) [174217]"}
          sys__result != null;
        perm := FullPerm;
        assert {:msg "  Precondition of function Wand_state_contains_for_state_contains__get_in_1_0 might not hold. There might be insufficient permission to access Wand_state_contains_for_state_contains__valid_wand(sys__result) (testTreeWandE2.vpr@296.190--296.253) [174218]"}
          NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[null, Wand_state_contains_for_state_contains__valid_wand(sys__result)];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(ExhaleWellDef0Heap, ExhaleHeap, ExhaleWellDef0Mask);
        ExhaleWellDef0Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion Wand_state_contains_for_state_contains__get_in_1_0(sys__result) == in_1_0 might not hold. (testTreeWandE2.vpr@296.10--296.422) [174219]"}
      Seq#Equal(Wand_state_contains_for_state_contains__get_in_1_0(AssertHeap, sys__result), in_1_0);
    
    // -- Check definedness of Wand_state_contains_for_state_contains__get_out_1(sys__result) == out_1
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef1Mask := ExhaleWellDef0Mask;
        ExhaleWellDef1Heap := ExhaleWellDef0Heap;
        assert {:msg "  Precondition of function Wand_state_contains_for_state_contains__get_out_1 might not hold. Assertion sys__result != null might not hold. (testTreeWandE2.vpr@296.269--296.331) [174220]"}
          sys__result != null;
        perm := FullPerm;
        assert {:msg "  Precondition of function Wand_state_contains_for_state_contains__get_out_1 might not hold. There might be insufficient permission to access Wand_state_contains_for_state_contains__valid_wand(sys__result) (testTreeWandE2.vpr@296.269--296.331) [174221]"}
          NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[null, Wand_state_contains_for_state_contains__valid_wand(sys__result)];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(ExhaleWellDef0Heap, ExhaleHeap, ExhaleWellDef0Mask);
        ExhaleWellDef0Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion Wand_state_contains_for_state_contains__get_out_1(sys__result) == out_1 might not hold. (testTreeWandE2.vpr@296.10--296.422) [174222]"}
      Wand_state_contains_for_state_contains__get_out_1(AssertHeap, sys__result) == out_1;
    
    // -- Check definedness of Wand_state_contains_for_state_contains__get_out_1_0(sys__result) == out_1_0
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef1Mask := ExhaleWellDef0Mask;
        ExhaleWellDef1Heap := ExhaleWellDef0Heap;
        assert {:msg "  Precondition of function Wand_state_contains_for_state_contains__get_out_1_0 might not hold. Assertion sys__result != null might not hold. (testTreeWandE2.vpr@296.346--296.410) [174223]"}
          sys__result != null;
        perm := FullPerm;
        assert {:msg "  Precondition of function Wand_state_contains_for_state_contains__get_out_1_0 might not hold. There might be insufficient permission to access Wand_state_contains_for_state_contains__valid_wand(sys__result) (testTreeWandE2.vpr@296.346--296.410) [174224]"}
          NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[null, Wand_state_contains_for_state_contains__valid_wand(sys__result)];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(ExhaleWellDef0Heap, ExhaleHeap, ExhaleWellDef0Mask);
        ExhaleWellDef0Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion Wand_state_contains_for_state_contains__get_out_1_0(sys__result) == out_1_0 might not hold. (testTreeWandE2.vpr@296.10--296.422) [174225]"}
      Seq#Equal(Wand_state_contains_for_state_contains__get_out_1_0(AssertHeap, sys__result), out_1_0);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale false -- testTreeWandE2.vpr@297.3--297.15
    assume false;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    assert {:msg "  Postcondition of Tree__Wand_state_contains_for_state_contains_lemma_1 might not hold. Assertion sys__result != null might not hold. (testTreeWandE2.vpr@216.11--216.30) [174226]"}
      sys__result != null;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of Tree__Wand_state_contains_for_state_contains_lemma_1 might not hold. There might be insufficient permission to access Wand_state_contains_for_state_contains__valid_wand(sys__result) (testTreeWandE2.vpr@217.11--217.86) [174227]"}
        perm <= Mask[null, Wand_state_contains_for_state_contains__valid_wand(sys__result)];
    }
    Mask := Mask[null, Wand_state_contains_for_state_contains__valid_wand(sys__result):=Mask[null, Wand_state_contains_for_state_contains__valid_wand(sys__result)] - perm];
    assert {:msg "  Postcondition of Tree__Wand_state_contains_for_state_contains_lemma_1 might not hold. Assertion Wand_state_contains_for_state_contains__get_in_1(sys__result) == in_1 might not hold. (testTreeWandE2.vpr@218.11--218.80) [174228]"}
      Wand_state_contains_for_state_contains__get_in_1(Heap, sys__result) == in_1;
    assert {:msg "  Postcondition of Tree__Wand_state_contains_for_state_contains_lemma_1 might not hold. Assertion Wand_state_contains_for_state_contains__get_in_1_0(sys__result) == in_1_0 might not hold. (testTreeWandE2.vpr@219.11--219.84) [174229]"}
      Seq#Equal(Wand_state_contains_for_state_contains__get_in_1_0(Heap, sys__result), in_1_0);
    assert {:msg "  Postcondition of Tree__Wand_state_contains_for_state_contains_lemma_1 might not hold. Assertion Wand_state_contains_for_state_contains__get_out_1(sys__result) == out_1 might not hold. (testTreeWandE2.vpr@220.11--220.82) [174230]"}
      Wand_state_contains_for_state_contains__get_out_1(Heap, sys__result) == out_1;
    assert {:msg "  Postcondition of Tree__Wand_state_contains_for_state_contains_lemma_1 might not hold. Assertion Wand_state_contains_for_state_contains__get_out_1_0(sys__result) == out_1_0 might not hold. (testTreeWandE2.vpr@221.11--221.86) [174231]"}
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
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var perm: Perm;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
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
    PostMask := PostMask[null, Wand_state_contains_for_state_contains__valid_wand(sys__result):=PostMask[null, Wand_state_contains_for_state_contains__valid_wand(sys__result)] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of Wand_state_contains_for_state_contains__get_in_1(sys__result) == in_1
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Mask := PostMask;
        ExhaleWellDef0Heap := PostHeap;
        assert {:msg "  Precondition of function Wand_state_contains_for_state_contains__get_in_1 might not hold. Assertion sys__result != null might not hold. (testTreeWandE2.vpr@312.11--312.72) [174232]"}
          sys__result != null;
        perm := FullPerm;
        assert {:msg "  Precondition of function Wand_state_contains_for_state_contains__get_in_1 might not hold. There might be insufficient permission to access Wand_state_contains_for_state_contains__valid_wand(sys__result) (testTreeWandE2.vpr@312.11--312.72) [174233]"}
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
        ExhaleWellDef0Mask := PostMask;
        ExhaleWellDef0Heap := PostHeap;
        assert {:msg "  Precondition of function Wand_state_contains_for_state_contains__get_in_1_0 might not hold. Assertion sys__result != null might not hold. (testTreeWandE2.vpr@313.11--313.74) [174234]"}
          sys__result != null;
        perm := FullPerm;
        assert {:msg "  Precondition of function Wand_state_contains_for_state_contains__get_in_1_0 might not hold. There might be insufficient permission to access Wand_state_contains_for_state_contains__valid_wand(sys__result) (testTreeWandE2.vpr@313.11--313.74) [174235]"}
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
        ExhaleWellDef0Mask := PostMask;
        ExhaleWellDef0Heap := PostHeap;
        assert {:msg "  Precondition of function Wand_state_contains_for_state_contains__get_out_1 might not hold. Assertion sys__result != null might not hold. (testTreeWandE2.vpr@314.11--314.73) [174236]"}
          sys__result != null;
        perm := FullPerm;
        assert {:msg "  Precondition of function Wand_state_contains_for_state_contains__get_out_1 might not hold. There might be insufficient permission to access Wand_state_contains_for_state_contains__valid_wand(sys__result) (testTreeWandE2.vpr@314.11--314.73) [174237]"}
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
        ExhaleWellDef0Mask := PostMask;
        ExhaleWellDef0Heap := PostHeap;
        assert {:msg "  Precondition of function Wand_state_contains_for_state_contains__get_out_1_0 might not hold. Assertion sys__result != null might not hold. (testTreeWandE2.vpr@315.11--315.75) [174238]"}
          sys__result != null;
        perm := FullPerm;
        assert {:msg "  Precondition of function Wand_state_contains_for_state_contains__get_out_1_0 might not hold. There might be insufficient permission to access Wand_state_contains_for_state_contains__valid_wand(sys__result) (testTreeWandE2.vpr@315.11--315.75) [174239]"}
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
  
  // -- Translating statement: __flatten_24 := Wand_state_contains_for_state_contains__Wand_state_contains_for_state_contains(current_thread_id) -- testTreeWandE2.vpr@336.3--336.116
    PreCallHeap := Heap;
    PreCallMask := Mask;
    
    // -- Exhaling precondition
      ExhaleWellDef0Mask := Mask;
      ExhaleWellDef0Heap := Heap;
      assert {:msg "  The precondition of method Wand_state_contains_for_state_contains__Wand_state_contains_for_state_contains might not hold. Assertion current_thread_id >= 0 might not hold. (testTreeWandE2.vpr@336.3--336.116) [174240]"}
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
  
  // -- Translating statement: vwand := __flatten_24 -- testTreeWandE2.vpr@337.3--337.24
    vwand := __flatten_24;
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_25 := 2 -- testTreeWandE2.vpr@338.3--338.20
    __flatten_25 := 2;
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_68 := __flatten_25 -- testTreeWandE2.vpr@339.3--339.31
    __flatten_68 := __flatten_25;
    assume state(Heap, Mask);
  
  // -- Translating statement: vwand.Wand_state_contains_for_state_contains__lemma := __flatten_68 -- testTreeWandE2.vpr@340.3--340.70
    assert {:msg "  Assignment might fail. There might be insufficient permission to access vwand.Wand_state_contains_for_state_contains__lemma (testTreeWandE2.vpr@340.3--340.70) [174241]"}
      FullPerm == Mask[vwand, Wand_state_contains_for_state_contains__lemma];
    Heap := Heap[vwand, Wand_state_contains_for_state_contains__lemma:=__flatten_68];
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_26 := this_2 -- testTreeWandE2.vpr@341.3--341.25
    __flatten_26 := this_2;
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_69 := __flatten_26 -- testTreeWandE2.vpr@342.3--342.31
    __flatten_69 := __flatten_26;
    assume state(Heap, Mask);
  
  // -- Translating statement: vwand.Wand_state_contains_for_state_contains__this_2 := __flatten_69 -- testTreeWandE2.vpr@343.3--343.71
    assert {:msg "  Assignment might fail. There might be insufficient permission to access vwand.Wand_state_contains_for_state_contains__this_2 (testTreeWandE2.vpr@343.3--343.71) [174242]"}
      FullPerm == Mask[vwand, Wand_state_contains_for_state_contains__this_2];
    Heap := Heap[vwand, Wand_state_contains_for_state_contains__this_2:=__flatten_69];
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_27 := target_contents_2 -- testTreeWandE2.vpr@344.3--344.36
    __flatten_27 := target_contents_2;
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_70 := __flatten_27 -- testTreeWandE2.vpr@345.3--345.31
    __flatten_70 := __flatten_27;
    assume state(Heap, Mask);
  
  // -- Translating statement: vwand.Wand_state_contains_for_state_contains__target_contents_2 := __flatten_70 -- testTreeWandE2.vpr@346.3--346.82
    assert {:msg "  Assignment might fail. There might be insufficient permission to access vwand.Wand_state_contains_for_state_contains__target_contents_2 (testTreeWandE2.vpr@346.3--346.82) [174243]"}
      FullPerm == Mask[vwand, Wand_state_contains_for_state_contains__target_contents_2];
    Heap := Heap[vwand, Wand_state_contains_for_state_contains__target_contents_2:=__flatten_70];
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_28 := top_2 -- testTreeWandE2.vpr@347.3--347.24
    __flatten_28 := top_2;
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_71 := __flatten_28 -- testTreeWandE2.vpr@348.3--348.31
    __flatten_71 := __flatten_28;
    assume state(Heap, Mask);
  
  // -- Translating statement: vwand.Wand_state_contains_for_state_contains__top_2 := __flatten_71 -- testTreeWandE2.vpr@349.3--349.70
    assert {:msg "  Assignment might fail. There might be insufficient permission to access vwand.Wand_state_contains_for_state_contains__top_2 (testTreeWandE2.vpr@349.3--349.70) [174244]"}
      FullPerm == Mask[vwand, Wand_state_contains_for_state_contains__top_2];
    Heap := Heap[vwand, Wand_state_contains_for_state_contains__top_2:=__flatten_71];
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_29 := in_1 -- testTreeWandE2.vpr@350.3--350.23
    __flatten_29 := in_1;
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_72 := __flatten_29 -- testTreeWandE2.vpr@351.3--351.31
    __flatten_72 := __flatten_29;
    assume state(Heap, Mask);
  
  // -- Translating statement: vwand.Wand_state_contains_for_state_contains__in_1 := __flatten_72 -- testTreeWandE2.vpr@352.3--352.69
    assert {:msg "  Assignment might fail. There might be insufficient permission to access vwand.Wand_state_contains_for_state_contains__in_1 (testTreeWandE2.vpr@352.3--352.69) [174245]"}
      FullPerm == Mask[vwand, Wand_state_contains_for_state_contains__in_1];
    Heap := Heap[vwand, Wand_state_contains_for_state_contains__in_1:=__flatten_72];
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_30 := in_1_0 -- testTreeWandE2.vpr@353.3--353.25
    __flatten_30 := in_1_0;
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_73 := __flatten_30 -- testTreeWandE2.vpr@354.3--354.31
    __flatten_73 := __flatten_30;
    assume state(Heap, Mask);
  
  // -- Translating statement: vwand.Wand_state_contains_for_state_contains__in_1_0 := __flatten_73 -- testTreeWandE2.vpr@355.3--355.71
    assert {:msg "  Assignment might fail. There might be insufficient permission to access vwand.Wand_state_contains_for_state_contains__in_1_0 (testTreeWandE2.vpr@355.3--355.71) [174246]"}
      FullPerm == Mask[vwand, Wand_state_contains_for_state_contains__in_1_0];
    Heap := Heap[vwand, Wand_state_contains_for_state_contains__in_1_0:=__flatten_73];
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_31 := out_1 -- testTreeWandE2.vpr@356.3--356.24
    __flatten_31 := out_1;
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_74 := __flatten_31 -- testTreeWandE2.vpr@357.3--357.31
    __flatten_74 := __flatten_31;
    assume state(Heap, Mask);
  
  // -- Translating statement: vwand.Wand_state_contains_for_state_contains__out_1 := __flatten_74 -- testTreeWandE2.vpr@358.3--358.70
    assert {:msg "  Assignment might fail. There might be insufficient permission to access vwand.Wand_state_contains_for_state_contains__out_1 (testTreeWandE2.vpr@358.3--358.70) [174247]"}
      FullPerm == Mask[vwand, Wand_state_contains_for_state_contains__out_1];
    Heap := Heap[vwand, Wand_state_contains_for_state_contains__out_1:=__flatten_74];
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_32 := out_1_0 -- testTreeWandE2.vpr@359.3--359.26
    __flatten_32 := out_1_0;
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_75 := __flatten_32 -- testTreeWandE2.vpr@360.3--360.31
    __flatten_75 := __flatten_32;
    assume state(Heap, Mask);
  
  // -- Translating statement: vwand.Wand_state_contains_for_state_contains__out_1_0 := __flatten_75 -- testTreeWandE2.vpr@361.3--361.72
    assert {:msg "  Assignment might fail. There might be insufficient permission to access vwand.Wand_state_contains_for_state_contains__out_1_0 (testTreeWandE2.vpr@361.3--361.72) [174248]"}
      FullPerm == Mask[vwand, Wand_state_contains_for_state_contains__out_1_0];
    Heap := Heap[vwand, Wand_state_contains_for_state_contains__out_1_0:=__flatten_75];
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(Wand_state_contains_for_state_contains__valid_wand(vwand), write) -- testTreeWandE2.vpr@362.3--362.77
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    assert {:msg "  Folding Wand_state_contains_for_state_contains__valid_wand(vwand) might fail. There might be insufficient permission to access vwand.Wand_state_contains_for_state_contains__lemma (testTreeWandE2.vpr@362.3--362.77) [174250]"}
      Mask[vwand, Wand_state_contains_for_state_contains__lemma] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[vwand, Wand_state_contains_for_state_contains__lemma];
    Mask := Mask[vwand, Wand_state_contains_for_state_contains__lemma:=Mask[vwand, Wand_state_contains_for_state_contains__lemma] - wildcard];
    assert {:msg "  Folding Wand_state_contains_for_state_contains__valid_wand(vwand) might fail. Assertion 1 <= vwand.Wand_state_contains_for_state_contains__lemma might not hold. (testTreeWandE2.vpr@362.3--362.77) [174251]"}
      1 <= Heap[vwand, Wand_state_contains_for_state_contains__lemma];
    assert {:msg "  Folding Wand_state_contains_for_state_contains__valid_wand(vwand) might fail. There might be insufficient permission to access vwand.Wand_state_contains_for_state_contains__in_1 (testTreeWandE2.vpr@362.3--362.77) [174252]"}
      Mask[vwand, Wand_state_contains_for_state_contains__in_1] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[vwand, Wand_state_contains_for_state_contains__in_1];
    Mask := Mask[vwand, Wand_state_contains_for_state_contains__in_1:=Mask[vwand, Wand_state_contains_for_state_contains__in_1] - wildcard];
    assert {:msg "  Folding Wand_state_contains_for_state_contains__valid_wand(vwand) might fail. Assertion vwand.Wand_state_contains_for_state_contains__in_1 != null might not hold. (testTreeWandE2.vpr@362.3--362.77) [174253]"}
      Heap[vwand, Wand_state_contains_for_state_contains__in_1] != null;
    assert {:msg "  Folding Wand_state_contains_for_state_contains__valid_wand(vwand) might fail. There might be insufficient permission to access vwand.Wand_state_contains_for_state_contains__in_1_0 (testTreeWandE2.vpr@362.3--362.77) [174254]"}
      Mask[vwand, Wand_state_contains_for_state_contains__in_1_0] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[vwand, Wand_state_contains_for_state_contains__in_1_0];
    Mask := Mask[vwand, Wand_state_contains_for_state_contains__in_1_0:=Mask[vwand, Wand_state_contains_for_state_contains__in_1_0] - wildcard];
    assert {:msg "  Folding Wand_state_contains_for_state_contains__valid_wand(vwand) might fail. There might be insufficient permission to access vwand.Wand_state_contains_for_state_contains__out_1 (testTreeWandE2.vpr@362.3--362.77) [174255]"}
      Mask[vwand, Wand_state_contains_for_state_contains__out_1] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[vwand, Wand_state_contains_for_state_contains__out_1];
    Mask := Mask[vwand, Wand_state_contains_for_state_contains__out_1:=Mask[vwand, Wand_state_contains_for_state_contains__out_1] - wildcard];
    assert {:msg "  Folding Wand_state_contains_for_state_contains__valid_wand(vwand) might fail. Assertion vwand.Wand_state_contains_for_state_contains__out_1 != null might not hold. (testTreeWandE2.vpr@362.3--362.77) [174256]"}
      Heap[vwand, Wand_state_contains_for_state_contains__out_1] != null;
    assert {:msg "  Folding Wand_state_contains_for_state_contains__valid_wand(vwand) might fail. There might be insufficient permission to access vwand.Wand_state_contains_for_state_contains__out_1_0 (testTreeWandE2.vpr@362.3--362.77) [174257]"}
      Mask[vwand, Wand_state_contains_for_state_contains__out_1_0] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[vwand, Wand_state_contains_for_state_contains__out_1_0];
    Mask := Mask[vwand, Wand_state_contains_for_state_contains__out_1_0:=Mask[vwand, Wand_state_contains_for_state_contains__out_1_0] - wildcard];
    assert {:msg "  Folding Wand_state_contains_for_state_contains__valid_wand(vwand) might fail. There might be insufficient permission to access vwand.Wand_state_contains_for_state_contains__this_1 (testTreeWandE2.vpr@362.3--362.77) [174258]"}
      Mask[vwand, Wand_state_contains_for_state_contains__this_1] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[vwand, Wand_state_contains_for_state_contains__this_1];
    Mask := Mask[vwand, Wand_state_contains_for_state_contains__this_1:=Mask[vwand, Wand_state_contains_for_state_contains__this_1] - wildcard];
    assert {:msg "  Folding Wand_state_contains_for_state_contains__valid_wand(vwand) might fail. There might be insufficient permission to access vwand.Wand_state_contains_for_state_contains__target_contents_1 (testTreeWandE2.vpr@362.3--362.77) [174259]"}
      Mask[vwand, Wand_state_contains_for_state_contains__target_contents_1] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[vwand, Wand_state_contains_for_state_contains__target_contents_1];
    Mask := Mask[vwand, Wand_state_contains_for_state_contains__target_contents_1:=Mask[vwand, Wand_state_contains_for_state_contains__target_contents_1] - wildcard];
    assert {:msg "  Folding Wand_state_contains_for_state_contains__valid_wand(vwand) might fail. There might be insufficient permission to access vwand.Wand_state_contains_for_state_contains__prev_contents_1 (testTreeWandE2.vpr@362.3--362.77) [174260]"}
      Mask[vwand, Wand_state_contains_for_state_contains__prev_contents_1] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[vwand, Wand_state_contains_for_state_contains__prev_contents_1];
    Mask := Mask[vwand, Wand_state_contains_for_state_contains__prev_contents_1:=Mask[vwand, Wand_state_contains_for_state_contains__prev_contents_1] - wildcard];
    assert {:msg "  Folding Wand_state_contains_for_state_contains__valid_wand(vwand) might fail. There might be insufficient permission to access vwand.Wand_state_contains_for_state_contains__prev_1 (testTreeWandE2.vpr@362.3--362.77) [174261]"}
      Mask[vwand, Wand_state_contains_for_state_contains__prev_1] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[vwand, Wand_state_contains_for_state_contains__prev_1];
    Mask := Mask[vwand, Wand_state_contains_for_state_contains__prev_1:=Mask[vwand, Wand_state_contains_for_state_contains__prev_1] - wildcard];
    assert {:msg "  Folding Wand_state_contains_for_state_contains__valid_wand(vwand) might fail. There might be insufficient permission to access vwand.Wand_state_contains_for_state_contains__cur_contents_1 (testTreeWandE2.vpr@362.3--362.77) [174262]"}
      Mask[vwand, Wand_state_contains_for_state_contains__cur_contents_1] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[vwand, Wand_state_contains_for_state_contains__cur_contents_1];
    Mask := Mask[vwand, Wand_state_contains_for_state_contains__cur_contents_1:=Mask[vwand, Wand_state_contains_for_state_contains__cur_contents_1] - wildcard];
    assert {:msg "  Folding Wand_state_contains_for_state_contains__valid_wand(vwand) might fail. There might be insufficient permission to access vwand.Wand_state_contains_for_state_contains__top_1 (testTreeWandE2.vpr@362.3--362.77) [174263]"}
      Mask[vwand, Wand_state_contains_for_state_contains__top_1] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[vwand, Wand_state_contains_for_state_contains__top_1];
    Mask := Mask[vwand, Wand_state_contains_for_state_contains__top_1:=Mask[vwand, Wand_state_contains_for_state_contains__top_1] - wildcard];
    assert {:msg "  Folding Wand_state_contains_for_state_contains__valid_wand(vwand) might fail. There might be insufficient permission to access vwand.Wand_state_contains_for_state_contains__cur_1 (testTreeWandE2.vpr@362.3--362.77) [174264]"}
      Mask[vwand, Wand_state_contains_for_state_contains__cur_1] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[vwand, Wand_state_contains_for_state_contains__cur_1];
    Mask := Mask[vwand, Wand_state_contains_for_state_contains__cur_1:=Mask[vwand, Wand_state_contains_for_state_contains__cur_1] - wildcard];
    assert {:msg "  Folding Wand_state_contains_for_state_contains__valid_wand(vwand) might fail. There might be insufficient permission to access vwand.Wand_state_contains_for_state_contains__wand_1 (testTreeWandE2.vpr@362.3--362.77) [174265]"}
      Mask[vwand, Wand_state_contains_for_state_contains__wand_1] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[vwand, Wand_state_contains_for_state_contains__wand_1];
    Mask := Mask[vwand, Wand_state_contains_for_state_contains__wand_1:=Mask[vwand, Wand_state_contains_for_state_contains__wand_1] - wildcard];
    if (Heap[vwand, Wand_state_contains_for_state_contains__lemma] == 1) {
      assert {:msg "  Folding Wand_state_contains_for_state_contains__valid_wand(vwand) might fail. Assertion vwand.Wand_state_contains_for_state_contains__this_1 != null might not hold. (testTreeWandE2.vpr@362.3--362.77) [174266]"}
        Heap[vwand, Wand_state_contains_for_state_contains__this_1] != null;
      assert {:msg "  Folding Wand_state_contains_for_state_contains__valid_wand(vwand) might fail. Assertion |vwand.Wand_state_contains_for_state_contains__prev_contents_1| > 0 might not hold. (testTreeWandE2.vpr@362.3--362.77) [174267]"}
        Seq#Length(Heap[vwand, Wand_state_contains_for_state_contains__prev_contents_1]) > 0;
      assert {:msg "  Folding Wand_state_contains_for_state_contains__valid_wand(vwand) might fail. Assertion |vwand.Wand_state_contains_for_state_contains__cur_contents_1| > 0 might not hold. (testTreeWandE2.vpr@362.3--362.77) [174268]"}
        Seq#Length(Heap[vwand, Wand_state_contains_for_state_contains__cur_contents_1]) > 0;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Folding Wand_state_contains_for_state_contains__valid_wand(vwand) might fail. There might be insufficient permission to access vwand.Wand_state_contains_for_state_contains__prev_1.Tree__left (testTreeWandE2.vpr@362.3--362.77) [174270]"}
          perm <= Mask[Heap[vwand, Wand_state_contains_for_state_contains__prev_1], Tree__left];
      }
      Mask := Mask[Heap[vwand, Wand_state_contains_for_state_contains__prev_1], Tree__left:=Mask[Heap[vwand, Wand_state_contains_for_state_contains__prev_1], Tree__left] - perm];
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Folding Wand_state_contains_for_state_contains__valid_wand(vwand) might fail. There might be insufficient permission to access vwand.Wand_state_contains_for_state_contains__prev_1.Tree__data (testTreeWandE2.vpr@362.3--362.77) [174272]"}
          perm <= Mask[Heap[vwand, Wand_state_contains_for_state_contains__prev_1], Tree__data];
      }
      Mask := Mask[Heap[vwand, Wand_state_contains_for_state_contains__prev_1], Tree__data:=Mask[Heap[vwand, Wand_state_contains_for_state_contains__prev_1], Tree__data] - perm];
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Folding Wand_state_contains_for_state_contains__valid_wand(vwand) might fail. There might be insufficient permission to access vwand.Wand_state_contains_for_state_contains__prev_1.Tree__right (testTreeWandE2.vpr@362.3--362.77) [174274]"}
          perm <= Mask[Heap[vwand, Wand_state_contains_for_state_contains__prev_1], Tree__right];
      }
      Mask := Mask[Heap[vwand, Wand_state_contains_for_state_contains__prev_1], Tree__right:=Mask[Heap[vwand, Wand_state_contains_for_state_contains__prev_1], Tree__right] - perm];
      if (Heap[Heap[vwand, Wand_state_contains_for_state_contains__prev_1], Tree__right] != null) {
        perm := FullPerm;
        if (perm != NoPerm) {
          assert {:msg "  Folding Wand_state_contains_for_state_contains__valid_wand(vwand) might fail. There might be insufficient permission to access Tree__state(vwand.Wand_state_contains_for_state_contains__prev_1.Tree__right) (testTreeWandE2.vpr@362.3--362.77) [174276]"}
            perm <= Mask[null, Tree__state(Heap[Heap[vwand, Wand_state_contains_for_state_contains__prev_1], Tree__right])];
        }
        Mask := Mask[null, Tree__state(Heap[Heap[vwand, Wand_state_contains_for_state_contains__prev_1], Tree__right]):=Mask[null, Tree__state(Heap[Heap[vwand, Wand_state_contains_for_state_contains__prev_1], Tree__right])] - perm];
        
        // -- Record predicate instance information
          assume InsidePredicate(Wand_state_contains_for_state_contains__valid_wand(vwand), Heap[null, Wand_state_contains_for_state_contains__valid_wand(vwand)], Tree__state(Heap[Heap[vwand, Wand_state_contains_for_state_contains__prev_1], Tree__right]), Heap[null, Tree__state(Heap[Heap[vwand, Wand_state_contains_for_state_contains__prev_1], Tree__right])]);
      }
      assert {:msg "  Folding Wand_state_contains_for_state_contains__valid_wand(vwand) might fail. Assertion vwand.Wand_state_contains_for_state_contains__prev_1.Tree__left == vwand.Wand_state_contains_for_state_contains__cur_1 might not hold. (testTreeWandE2.vpr@362.3--362.77) [174277]"}
        Heap[Heap[vwand, Wand_state_contains_for_state_contains__prev_1], Tree__left] == Heap[vwand, Wand_state_contains_for_state_contains__cur_1];
      assert {:msg "  Folding Wand_state_contains_for_state_contains__valid_wand(vwand) might fail. Assertion vwand.Wand_state_contains_for_state_contains__prev_contents_1 == vwand.Wand_state_contains_for_state_contains__cur_contents_1 ++ Seq(vwand.Wand_state_contains_for_state_contains__prev_1.Tree__data) ++ Tree__tolist(vwand.Wand_state_contains_for_state_contains__prev_1.Tree__right) might not hold. (testTreeWandE2.vpr@362.3--362.77) [174278]"}
        Seq#Equal(Heap[vwand, Wand_state_contains_for_state_contains__prev_contents_1], Seq#Append(Seq#Append(Heap[vwand, Wand_state_contains_for_state_contains__cur_contents_1], Seq#Singleton(Heap[Heap[vwand, Wand_state_contains_for_state_contains__prev_1], Tree__data])), Tree__tolist(Heap, Heap[Heap[vwand, Wand_state_contains_for_state_contains__prev_1], Tree__right])));
      assert {:msg "  Folding Wand_state_contains_for_state_contains__valid_wand(vwand) might fail. Assertion vwand.Wand_state_contains_for_state_contains__wand_1 != null might not hold. (testTreeWandE2.vpr@362.3--362.77) [174279]"}
        Heap[vwand, Wand_state_contains_for_state_contains__wand_1] != null;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Folding Wand_state_contains_for_state_contains__valid_wand(vwand) might fail. There might be insufficient permission to access Wand_state_contains_for_state_contains__valid_wand(vwand.Wand_state_contains_for_state_contains__wand_1) (testTreeWandE2.vpr@362.3--362.77) [174281]"}
          perm <= Mask[null, Wand_state_contains_for_state_contains__valid_wand(Heap[vwand, Wand_state_contains_for_state_contains__wand_1])];
      }
      Mask := Mask[null, Wand_state_contains_for_state_contains__valid_wand(Heap[vwand, Wand_state_contains_for_state_contains__wand_1]):=Mask[null, Wand_state_contains_for_state_contains__valid_wand(Heap[vwand, Wand_state_contains_for_state_contains__wand_1])] - perm];
      
      // -- Record predicate instance information
        assume InsidePredicate(Wand_state_contains_for_state_contains__valid_wand(vwand), Heap[null, Wand_state_contains_for_state_contains__valid_wand(vwand)], Wand_state_contains_for_state_contains__valid_wand(Heap[vwand, Wand_state_contains_for_state_contains__wand_1]), Heap[null, Wand_state_contains_for_state_contains__valid_wand(Heap[vwand, Wand_state_contains_for_state_contains__wand_1])]);
      assert {:msg "  Folding Wand_state_contains_for_state_contains__valid_wand(vwand) might fail. Assertion Wand_state_contains_for_state_contains__get_in_1(vwand.Wand_state_contains_for_state_contains__wand_1) == vwand.Wand_state_contains_for_state_contains__prev_1 might not hold. (testTreeWandE2.vpr@362.3--362.77) [174282]"}
        Wand_state_contains_for_state_contains__get_in_1(Heap, Heap[vwand, Wand_state_contains_for_state_contains__wand_1]) == Heap[vwand, Wand_state_contains_for_state_contains__prev_1];
      assert {:msg "  Folding Wand_state_contains_for_state_contains__valid_wand(vwand) might fail. Assertion Wand_state_contains_for_state_contains__get_in_1_0(vwand.Wand_state_contains_for_state_contains__wand_1) == vwand.Wand_state_contains_for_state_contains__prev_contents_1[1..] might not hold. (testTreeWandE2.vpr@362.3--362.77) [174283]"}
        Seq#Equal(Wand_state_contains_for_state_contains__get_in_1_0(Heap, Heap[vwand, Wand_state_contains_for_state_contains__wand_1]), Seq#Drop(Heap[vwand, Wand_state_contains_for_state_contains__prev_contents_1], 1));
      assert {:msg "  Folding Wand_state_contains_for_state_contains__valid_wand(vwand) might fail. Assertion Wand_state_contains_for_state_contains__get_out_1(vwand.Wand_state_contains_for_state_contains__wand_1) == vwand.Wand_state_contains_for_state_contains__top_1 might not hold. (testTreeWandE2.vpr@362.3--362.77) [174284]"}
        Wand_state_contains_for_state_contains__get_out_1(Heap, Heap[vwand, Wand_state_contains_for_state_contains__wand_1]) == Heap[vwand, Wand_state_contains_for_state_contains__top_1];
      assert {:msg "  Folding Wand_state_contains_for_state_contains__valid_wand(vwand) might fail. Assertion Wand_state_contains_for_state_contains__get_out_1_0(vwand.Wand_state_contains_for_state_contains__wand_1) == vwand.Wand_state_contains_for_state_contains__target_contents_1 might not hold. (testTreeWandE2.vpr@362.3--362.77) [174285]"}
        Seq#Equal(Wand_state_contains_for_state_contains__get_out_1_0(Heap, Heap[vwand, Wand_state_contains_for_state_contains__wand_1]), Heap[vwand, Wand_state_contains_for_state_contains__target_contents_1]);
      assert {:msg "  Folding Wand_state_contains_for_state_contains__valid_wand(vwand) might fail. Assertion vwand.Wand_state_contains_for_state_contains__in_1 == vwand.Wand_state_contains_for_state_contains__cur_1 might not hold. (testTreeWandE2.vpr@362.3--362.77) [174286]"}
        Heap[vwand, Wand_state_contains_for_state_contains__in_1] == Heap[vwand, Wand_state_contains_for_state_contains__cur_1];
      assert {:msg "  Folding Wand_state_contains_for_state_contains__valid_wand(vwand) might fail. Assertion vwand.Wand_state_contains_for_state_contains__in_1_0 == vwand.Wand_state_contains_for_state_contains__cur_contents_1[1..] might not hold. (testTreeWandE2.vpr@362.3--362.77) [174287]"}
        Seq#Equal(Heap[vwand, Wand_state_contains_for_state_contains__in_1_0], Seq#Drop(Heap[vwand, Wand_state_contains_for_state_contains__cur_contents_1], 1));
      assert {:msg "  Folding Wand_state_contains_for_state_contains__valid_wand(vwand) might fail. Assertion vwand.Wand_state_contains_for_state_contains__out_1 == vwand.Wand_state_contains_for_state_contains__top_1 might not hold. (testTreeWandE2.vpr@362.3--362.77) [174288]"}
        Heap[vwand, Wand_state_contains_for_state_contains__out_1] == Heap[vwand, Wand_state_contains_for_state_contains__top_1];
      assert {:msg "  Folding Wand_state_contains_for_state_contains__valid_wand(vwand) might fail. Assertion vwand.Wand_state_contains_for_state_contains__out_1_0 == vwand.Wand_state_contains_for_state_contains__target_contents_1 might not hold. (testTreeWandE2.vpr@362.3--362.77) [174289]"}
        Seq#Equal(Heap[vwand, Wand_state_contains_for_state_contains__out_1_0], Heap[vwand, Wand_state_contains_for_state_contains__target_contents_1]);
    }
    assert {:msg "  Folding Wand_state_contains_for_state_contains__valid_wand(vwand) might fail. There might be insufficient permission to access vwand.Wand_state_contains_for_state_contains__this_2 (testTreeWandE2.vpr@362.3--362.77) [174290]"}
      Mask[vwand, Wand_state_contains_for_state_contains__this_2] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[vwand, Wand_state_contains_for_state_contains__this_2];
    Mask := Mask[vwand, Wand_state_contains_for_state_contains__this_2:=Mask[vwand, Wand_state_contains_for_state_contains__this_2] - wildcard];
    assert {:msg "  Folding Wand_state_contains_for_state_contains__valid_wand(vwand) might fail. There might be insufficient permission to access vwand.Wand_state_contains_for_state_contains__target_contents_2 (testTreeWandE2.vpr@362.3--362.77) [174291]"}
      Mask[vwand, Wand_state_contains_for_state_contains__target_contents_2] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[vwand, Wand_state_contains_for_state_contains__target_contents_2];
    Mask := Mask[vwand, Wand_state_contains_for_state_contains__target_contents_2:=Mask[vwand, Wand_state_contains_for_state_contains__target_contents_2] - wildcard];
    assert {:msg "  Folding Wand_state_contains_for_state_contains__valid_wand(vwand) might fail. There might be insufficient permission to access vwand.Wand_state_contains_for_state_contains__top_2 (testTreeWandE2.vpr@362.3--362.77) [174292]"}
      Mask[vwand, Wand_state_contains_for_state_contains__top_2] > NoPerm;
    havoc wildcard;
    assume wildcard < Mask[vwand, Wand_state_contains_for_state_contains__top_2];
    Mask := Mask[vwand, Wand_state_contains_for_state_contains__top_2:=Mask[vwand, Wand_state_contains_for_state_contains__top_2] - wildcard];
    if (Heap[vwand, Wand_state_contains_for_state_contains__lemma] == 2) {
      assert {:msg "  Folding Wand_state_contains_for_state_contains__valid_wand(vwand) might fail. Assertion vwand.Wand_state_contains_for_state_contains__this_2 != null might not hold. (testTreeWandE2.vpr@362.3--362.77) [174293]"}
        Heap[vwand, Wand_state_contains_for_state_contains__this_2] != null;
      assert {:msg "  Folding Wand_state_contains_for_state_contains__valid_wand(vwand) might fail. Assertion vwand.Wand_state_contains_for_state_contains__in_1 == vwand.Wand_state_contains_for_state_contains__top_2 might not hold. (testTreeWandE2.vpr@362.3--362.77) [174294]"}
        Heap[vwand, Wand_state_contains_for_state_contains__in_1] == Heap[vwand, Wand_state_contains_for_state_contains__top_2];
      assert {:msg "  Folding Wand_state_contains_for_state_contains__valid_wand(vwand) might fail. Assertion vwand.Wand_state_contains_for_state_contains__in_1_0 == vwand.Wand_state_contains_for_state_contains__target_contents_2 might not hold. (testTreeWandE2.vpr@362.3--362.77) [174295]"}
        Seq#Equal(Heap[vwand, Wand_state_contains_for_state_contains__in_1_0], Heap[vwand, Wand_state_contains_for_state_contains__target_contents_2]);
      assert {:msg "  Folding Wand_state_contains_for_state_contains__valid_wand(vwand) might fail. Assertion vwand.Wand_state_contains_for_state_contains__out_1 == vwand.Wand_state_contains_for_state_contains__top_2 might not hold. (testTreeWandE2.vpr@362.3--362.77) [174296]"}
        Heap[vwand, Wand_state_contains_for_state_contains__out_1] == Heap[vwand, Wand_state_contains_for_state_contains__top_2];
      assert {:msg "  Folding Wand_state_contains_for_state_contains__valid_wand(vwand) might fail. Assertion vwand.Wand_state_contains_for_state_contains__out_1_0 == vwand.Wand_state_contains_for_state_contains__target_contents_2 might not hold. (testTreeWandE2.vpr@362.3--362.77) [174297]"}
        Seq#Equal(Heap[vwand, Wand_state_contains_for_state_contains__out_1_0], Heap[vwand, Wand_state_contains_for_state_contains__target_contents_2]);
    }
    assert {:msg "  Folding Wand_state_contains_for_state_contains__valid_wand(vwand) might fail. Assertion vwand.Wand_state_contains_for_state_contains__lemma <= 2 might not hold. (testTreeWandE2.vpr@362.3--362.77) [174298]"}
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
        assume (forall <A, B> o_34: Ref, f_44: (Field A B) ::
          { newPMask[o_34, f_44] }
          Heap[null, Wand_state_contains_for_state_contains__valid_wand#sm(vwand)][o_34, f_44] || Heap[null, Tree__state#sm(Heap[Heap[vwand, Wand_state_contains_for_state_contains__prev_1], Tree__right])][o_34, f_44] ==> newPMask[o_34, f_44]
        );
        Heap := Heap[null, Wand_state_contains_for_state_contains__valid_wand#sm(vwand):=newPMask];
      }
      havoc newPMask;
      assume (forall <A, B> o_55: Ref, f_36: (Field A B) ::
        { newPMask[o_55, f_36] }
        Heap[null, Wand_state_contains_for_state_contains__valid_wand#sm(vwand)][o_55, f_36] || Heap[null, Wand_state_contains_for_state_contains__valid_wand#sm(Heap[vwand, Wand_state_contains_for_state_contains__wand_1])][o_55, f_36] ==> newPMask[o_55, f_36]
      );
      Heap := Heap[null, Wand_state_contains_for_state_contains__valid_wand#sm(vwand):=newPMask];
    }
    Heap := Heap[null, Wand_state_contains_for_state_contains__valid_wand#sm(vwand):=Heap[null, Wand_state_contains_for_state_contains__valid_wand#sm(vwand)][vwand, Wand_state_contains_for_state_contains__this_2:=true]];
    Heap := Heap[null, Wand_state_contains_for_state_contains__valid_wand#sm(vwand):=Heap[null, Wand_state_contains_for_state_contains__valid_wand#sm(vwand)][vwand, Wand_state_contains_for_state_contains__target_contents_2:=true]];
    Heap := Heap[null, Wand_state_contains_for_state_contains__valid_wand#sm(vwand):=Heap[null, Wand_state_contains_for_state_contains__valid_wand#sm(vwand)][vwand, Wand_state_contains_for_state_contains__top_2:=true]];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_33 := vwand -- testTreeWandE2.vpr@363.3--363.24
    __flatten_33 := vwand;
    assume state(Heap, Mask);
  
  // -- Translating statement: sys__result := __flatten_33 -- testTreeWandE2.vpr@364.3--364.30
    sys__result := __flatten_33;
    assume state(Heap, Mask);
  
  // -- Translating statement: assert sys__result != null &&
  //   (acc(Wand_state_contains_for_state_contains__valid_wand(sys__result), write) &&
  //   (Wand_state_contains_for_state_contains__get_in_1(sys__result) == in_1 &&
  //   (Wand_state_contains_for_state_contains__get_in_1_0(sys__result) ==
  //   in_1_0 &&
  //   (Wand_state_contains_for_state_contains__get_out_1(sys__result) == out_1 &&
  //   Wand_state_contains_for_state_contains__get_out_1_0(sys__result) ==
  //   out_1_0)))) -- testTreeWandE2.vpr@365.3--365.422
    AssertHeap := Heap;
    AssertMask := Mask;
    ExhaleWellDef0Mask := AssertMask;
    ExhaleWellDef0Heap := AssertHeap;
    assert {:msg "  Assert might fail. Assertion sys__result != null might not hold. (testTreeWandE2.vpr@365.10--365.422) [174300]"}
      sys__result != null;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Assert might fail. There might be insufficient permission to access Wand_state_contains_for_state_contains__valid_wand(sys__result) (testTreeWandE2.vpr@365.10--365.422) [174302]"}
        perm <= AssertMask[null, Wand_state_contains_for_state_contains__valid_wand(sys__result)];
    }
    AssertMask := AssertMask[null, Wand_state_contains_for_state_contains__valid_wand(sys__result):=AssertMask[null, Wand_state_contains_for_state_contains__valid_wand(sys__result)] - perm];
    
    // -- Check definedness of Wand_state_contains_for_state_contains__get_in_1(sys__result) == in_1
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef1Mask := ExhaleWellDef0Mask;
        ExhaleWellDef1Heap := ExhaleWellDef0Heap;
        assert {:msg "  Precondition of function Wand_state_contains_for_state_contains__get_in_1 might not hold. Assertion sys__result != null might not hold. (testTreeWandE2.vpr@365.115--365.176) [174303]"}
          sys__result != null;
        perm := FullPerm;
        assert {:msg "  Precondition of function Wand_state_contains_for_state_contains__get_in_1 might not hold. There might be insufficient permission to access Wand_state_contains_for_state_contains__valid_wand(sys__result) (testTreeWandE2.vpr@365.115--365.176) [174304]"}
          NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[null, Wand_state_contains_for_state_contains__valid_wand(sys__result)];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(ExhaleWellDef0Heap, ExhaleHeap, ExhaleWellDef0Mask);
        ExhaleWellDef0Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion Wand_state_contains_for_state_contains__get_in_1(sys__result) == in_1 might not hold. (testTreeWandE2.vpr@365.10--365.422) [174305]"}
      Wand_state_contains_for_state_contains__get_in_1(AssertHeap, sys__result) == in_1;
    
    // -- Check definedness of Wand_state_contains_for_state_contains__get_in_1_0(sys__result) == in_1_0
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef1Mask := ExhaleWellDef0Mask;
        ExhaleWellDef1Heap := ExhaleWellDef0Heap;
        assert {:msg "  Precondition of function Wand_state_contains_for_state_contains__get_in_1_0 might not hold. Assertion sys__result != null might not hold. (testTreeWandE2.vpr@365.190--365.253) [174306]"}
          sys__result != null;
        perm := FullPerm;
        assert {:msg "  Precondition of function Wand_state_contains_for_state_contains__get_in_1_0 might not hold. There might be insufficient permission to access Wand_state_contains_for_state_contains__valid_wand(sys__result) (testTreeWandE2.vpr@365.190--365.253) [174307]"}
          NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[null, Wand_state_contains_for_state_contains__valid_wand(sys__result)];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(ExhaleWellDef0Heap, ExhaleHeap, ExhaleWellDef0Mask);
        ExhaleWellDef0Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion Wand_state_contains_for_state_contains__get_in_1_0(sys__result) == in_1_0 might not hold. (testTreeWandE2.vpr@365.10--365.422) [174308]"}
      Seq#Equal(Wand_state_contains_for_state_contains__get_in_1_0(AssertHeap, sys__result), in_1_0);
    
    // -- Check definedness of Wand_state_contains_for_state_contains__get_out_1(sys__result) == out_1
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef1Mask := ExhaleWellDef0Mask;
        ExhaleWellDef1Heap := ExhaleWellDef0Heap;
        assert {:msg "  Precondition of function Wand_state_contains_for_state_contains__get_out_1 might not hold. Assertion sys__result != null might not hold. (testTreeWandE2.vpr@365.269--365.331) [174309]"}
          sys__result != null;
        perm := FullPerm;
        assert {:msg "  Precondition of function Wand_state_contains_for_state_contains__get_out_1 might not hold. There might be insufficient permission to access Wand_state_contains_for_state_contains__valid_wand(sys__result) (testTreeWandE2.vpr@365.269--365.331) [174310]"}
          NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[null, Wand_state_contains_for_state_contains__valid_wand(sys__result)];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(ExhaleWellDef0Heap, ExhaleHeap, ExhaleWellDef0Mask);
        ExhaleWellDef0Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion Wand_state_contains_for_state_contains__get_out_1(sys__result) == out_1 might not hold. (testTreeWandE2.vpr@365.10--365.422) [174311]"}
      Wand_state_contains_for_state_contains__get_out_1(AssertHeap, sys__result) == out_1;
    
    // -- Check definedness of Wand_state_contains_for_state_contains__get_out_1_0(sys__result) == out_1_0
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef1Mask := ExhaleWellDef0Mask;
        ExhaleWellDef1Heap := ExhaleWellDef0Heap;
        assert {:msg "  Precondition of function Wand_state_contains_for_state_contains__get_out_1_0 might not hold. Assertion sys__result != null might not hold. (testTreeWandE2.vpr@365.346--365.410) [174312]"}
          sys__result != null;
        perm := FullPerm;
        assert {:msg "  Precondition of function Wand_state_contains_for_state_contains__get_out_1_0 might not hold. There might be insufficient permission to access Wand_state_contains_for_state_contains__valid_wand(sys__result) (testTreeWandE2.vpr@365.346--365.410) [174313]"}
          NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[null, Wand_state_contains_for_state_contains__valid_wand(sys__result)];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(ExhaleWellDef0Heap, ExhaleHeap, ExhaleWellDef0Mask);
        ExhaleWellDef0Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion Wand_state_contains_for_state_contains__get_out_1_0(sys__result) == out_1_0 might not hold. (testTreeWandE2.vpr@365.10--365.422) [174314]"}
      Seq#Equal(Wand_state_contains_for_state_contains__get_out_1_0(AssertHeap, sys__result), out_1_0);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale false -- testTreeWandE2.vpr@366.3--366.15
    assume false;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    assert {:msg "  Postcondition of Tree__Wand_state_contains_for_state_contains_lemma_2 might not hold. Assertion sys__result != null might not hold. (testTreeWandE2.vpr@310.11--310.30) [174315]"}
      sys__result != null;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of Tree__Wand_state_contains_for_state_contains_lemma_2 might not hold. There might be insufficient permission to access Wand_state_contains_for_state_contains__valid_wand(sys__result) (testTreeWandE2.vpr@311.11--311.86) [174316]"}
        perm <= Mask[null, Wand_state_contains_for_state_contains__valid_wand(sys__result)];
    }
    Mask := Mask[null, Wand_state_contains_for_state_contains__valid_wand(sys__result):=Mask[null, Wand_state_contains_for_state_contains__valid_wand(sys__result)] - perm];
    assert {:msg "  Postcondition of Tree__Wand_state_contains_for_state_contains_lemma_2 might not hold. Assertion Wand_state_contains_for_state_contains__get_in_1(sys__result) == in_1 might not hold. (testTreeWandE2.vpr@312.11--312.80) [174317]"}
      Wand_state_contains_for_state_contains__get_in_1(Heap, sys__result) == in_1;
    assert {:msg "  Postcondition of Tree__Wand_state_contains_for_state_contains_lemma_2 might not hold. Assertion Wand_state_contains_for_state_contains__get_in_1_0(sys__result) == in_1_0 might not hold. (testTreeWandE2.vpr@313.11--313.84) [174318]"}
      Seq#Equal(Wand_state_contains_for_state_contains__get_in_1_0(Heap, sys__result), in_1_0);
    assert {:msg "  Postcondition of Tree__Wand_state_contains_for_state_contains_lemma_2 might not hold. Assertion Wand_state_contains_for_state_contains__get_out_1(sys__result) == out_1 might not hold. (testTreeWandE2.vpr@314.11--314.82) [174319]"}
      Wand_state_contains_for_state_contains__get_out_1(Heap, sys__result) == out_1;
    assert {:msg "  Postcondition of Tree__Wand_state_contains_for_state_contains_lemma_2 might not hold. Assertion Wand_state_contains_for_state_contains__get_out_1_0(sys__result) == out_1_0 might not hold. (testTreeWandE2.vpr@315.11--315.86) [174320]"}
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
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
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
  var ExhaleWellDef1Mask: MaskType;
  var ExhaleWellDef1Heap: HeapType;
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
      oldMask := Mask;
      oldHeap := Heap;
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
        ExhaleWellDef0Mask := oldMask;
        ExhaleWellDef0Heap := oldHeap;
        if (top != null) {
          perm := FullPerm;
          assert {:msg "  Precondition of function Tree__tolist might not hold. There might be insufficient permission to access Tree__state(top) (testTreeWandE2.vpr@375.15--375.32) [174321]"}
            NoPerm < perm ==> NoPerm < oldMask[null, Tree__state(top)];
        }
        // Finish exhale
        // Stop execution
        assume false;
      }
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Mask := PostMask;
        ExhaleWellDef0Heap := PostHeap;
        if (sys__result != null) {
          perm := FullPerm;
          assert {:msg "  Precondition of function Tree__tolist might not hold. There might be insufficient permission to access Tree__state(sys__result) (testTreeWandE2.vpr@375.42--375.67) [174322]"}
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
        ExhaleWellDef0Mask := oldMask;
        ExhaleWellDef0Heap := oldHeap;
        if (top != null) {
          perm := FullPerm;
          assert {:msg "  Precondition of function Tree__sorted might not hold. There might be insufficient permission to access Tree__state(top) (testTreeWandE2.vpr@376.15--376.32) [174323]"}
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
          ExhaleWellDef0Mask := PostMask;
          ExhaleWellDef0Heap := PostHeap;
          if (sys__result != null) {
            perm := FullPerm;
            assert {:msg "  Precondition of function Tree__sorted might not hold. There might be insufficient permission to access Tree__state(sys__result) (testTreeWandE2.vpr@376.38--376.63) [174324]"}
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
  
  // -- Translating statement: __flatten_76 := Tree__tolist(top) -- testTreeWandE2.vpr@401.3--401.36
    
    // -- Check definedness of Tree__tolist(top)
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        if (top != null) {
          perm := FullPerm;
          assert {:msg "  Precondition of function Tree__tolist might not hold. There might be insufficient permission to access Tree__state(top) (testTreeWandE2.vpr@401.19--401.36) [174325]"}
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
  
  // -- Translating statement: __flatten_34 := __flatten_76 -- testTreeWandE2.vpr@402.3--402.31
    __flatten_34 := __flatten_76;
    assume state(Heap, Mask);
  
  // -- Translating statement: orig_contents := __flatten_34 -- testTreeWandE2.vpr@403.3--403.32
    orig_contents := __flatten_34;
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_77 := Tree__tolist(top) -- testTreeWandE2.vpr@404.3--404.36
    
    // -- Check definedness of Tree__tolist(top)
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        if (top != null) {
          perm := FullPerm;
          assert {:msg "  Precondition of function Tree__tolist might not hold. There might be insufficient permission to access Tree__state(top) (testTreeWandE2.vpr@404.19--404.36) [174326]"}
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
  
  // -- Translating statement: __flatten_35 := __flatten_77 -- testTreeWandE2.vpr@405.3--405.31
    __flatten_35 := __flatten_77;
    assume state(Heap, Mask);
  
  // -- Translating statement: target_contents := __flatten_35[1..] -- testTreeWandE2.vpr@406.3--406.39
    target_contents := Seq#Drop(__flatten_35, 1);
    assume state(Heap, Mask);
  
  // -- Translating statement: unfold acc(Tree__state(top), write) -- testTreeWandE2.vpr@407.3--407.38
    assume Tree__state#trigger(Heap, Tree__state(top));
    assume Heap[null, Tree__state(top)] == CombineFrames(FrameFragment(Heap[top, Tree__data]), CombineFrames(FrameFragment(Heap[top, Tree__left]), CombineFrames(FrameFragment(Heap[top, Tree__right]), CombineFrames(FrameFragment((if Heap[top, Tree__left] != null then Heap[null, Tree__state(Heap[top, Tree__left])] else EmptyFrame)), FrameFragment((if Heap[top, Tree__right] != null then Heap[null, Tree__state(Heap[top, Tree__right])] else EmptyFrame))))));
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Unfolding Tree__state(top) might fail. There might be insufficient permission to access Tree__state(top) (testTreeWandE2.vpr@407.3--407.38) [174329]"}
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
  
  // -- Translating statement: if (top.Tree__left == null) -- testTreeWandE2.vpr@408.3--474.4
    
    // -- Check definedness of top.Tree__left == null
      assert {:msg "  Conditional statement might fail. There might be insufficient permission to access top.Tree__left (testTreeWandE2.vpr@408.7--408.29) [174335]"}
        HasDirectPerm(Mask, top, Tree__left);
    if (Heap[top, Tree__left] == null) {
      
      // -- Translating statement: assert orig_contents ==
  //   Tree__tolist(top.Tree__left) ++ Seq(top.Tree__data) ++
  //   Tree__tolist(top.Tree__right) -- testTreeWandE2.vpr@409.5--409.113
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        
        // -- Check definedness of orig_contents == Tree__tolist(top.Tree__left) ++ Seq(top.Tree__data) ++ Tree__tolist(top.Tree__right)
          assert {:msg "  Assert might fail. There might be insufficient permission to access top.Tree__left (testTreeWandE2.vpr@409.12--409.113) [174336]"}
            HasDirectPerm(ExhaleWellDef0Mask, top, Tree__left);
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef1Mask := ExhaleWellDef0Mask;
            ExhaleWellDef1Heap := ExhaleWellDef0Heap;
            if (ExhaleWellDef0Heap[top, Tree__left] != null) {
              perm := FullPerm;
              assert {:msg "  Precondition of function Tree__tolist might not hold. There might be insufficient permission to access Tree__state(top.Tree__left) (testTreeWandE2.vpr@409.29--409.57) [174337]"}
                NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[null, Tree__state(ExhaleWellDef0Heap[top, Tree__left])];
            }
            // Finish exhale
            havoc ExhaleHeap;
            assume IdenticalOnKnownLocations(ExhaleWellDef0Heap, ExhaleHeap, ExhaleWellDef0Mask);
            ExhaleWellDef0Heap := ExhaleHeap;
            // Stop execution
            assume false;
          }
          assert {:msg "  Assert might fail. There might be insufficient permission to access top.Tree__data (testTreeWandE2.vpr@409.12--409.113) [174338]"}
            HasDirectPerm(ExhaleWellDef0Mask, top, Tree__data);
          assert {:msg "  Assert might fail. There might be insufficient permission to access top.Tree__right (testTreeWandE2.vpr@409.12--409.113) [174339]"}
            HasDirectPerm(ExhaleWellDef0Mask, top, Tree__right);
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef1Mask := ExhaleWellDef0Mask;
            ExhaleWellDef1Heap := ExhaleWellDef0Heap;
            if (ExhaleWellDef0Heap[top, Tree__right] != null) {
              perm := FullPerm;
              assert {:msg "  Precondition of function Tree__tolist might not hold. There might be insufficient permission to access Tree__state(top.Tree__right) (testTreeWandE2.vpr@409.84--409.113) [174340]"}
                NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[null, Tree__state(ExhaleWellDef0Heap[top, Tree__right])];
            }
            // Finish exhale
            havoc ExhaleHeap;
            assume IdenticalOnKnownLocations(ExhaleWellDef0Heap, ExhaleHeap, ExhaleWellDef0Mask);
            ExhaleWellDef0Heap := ExhaleHeap;
            // Stop execution
            assume false;
          }
        assert {:msg "  Assert might fail. Assertion orig_contents == Tree__tolist(top.Tree__left) ++ Seq(top.Tree__data) ++ Tree__tolist(top.Tree__right) might not hold. (testTreeWandE2.vpr@409.12--409.113) [174341]"}
          Seq#Equal(orig_contents, Seq#Append(Seq#Append(Tree__tolist(Heap, Heap[top, Tree__left]), Seq#Singleton(Heap[top, Tree__data])), Tree__tolist(Heap, Heap[top, Tree__right])));
        assume state(Heap, Mask);
      
      // -- Translating statement: assert Tree__tolist(top.Tree__left) == Seq[Int]() -- testTreeWandE2.vpr@410.5--410.54
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        
        // -- Check definedness of Tree__tolist(top.Tree__left) == Seq[Int]()
          assert {:msg "  Assert might fail. There might be insufficient permission to access top.Tree__left (testTreeWandE2.vpr@410.12--410.54) [174342]"}
            HasDirectPerm(ExhaleWellDef0Mask, top, Tree__left);
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef1Mask := ExhaleWellDef0Mask;
            ExhaleWellDef1Heap := ExhaleWellDef0Heap;
            if (ExhaleWellDef0Heap[top, Tree__left] != null) {
              perm := FullPerm;
              assert {:msg "  Precondition of function Tree__tolist might not hold. There might be insufficient permission to access Tree__state(top.Tree__left) (testTreeWandE2.vpr@410.12--410.40) [174343]"}
                NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[null, Tree__state(ExhaleWellDef0Heap[top, Tree__left])];
            }
            // Finish exhale
            havoc ExhaleHeap;
            assume IdenticalOnKnownLocations(ExhaleWellDef0Heap, ExhaleHeap, ExhaleWellDef0Mask);
            ExhaleWellDef0Heap := ExhaleHeap;
            // Stop execution
            assume false;
          }
        assert {:msg "  Assert might fail. Assertion Tree__tolist(top.Tree__left) == Seq[Int]() might not hold. (testTreeWandE2.vpr@410.12--410.54) [174344]"}
          Seq#Equal(Tree__tolist(Heap, Heap[top, Tree__left]), (Seq#Empty(): Seq int));
        assume state(Heap, Mask);
      
      // -- Translating statement: __flatten_36 := top.Tree__right -- testTreeWandE2.vpr@411.5--411.36
        
        // -- Check definedness of top.Tree__right
          assert {:msg "  Assignment might fail. There might be insufficient permission to access top.Tree__right (testTreeWandE2.vpr@411.5--411.36) [174345]"}
            HasDirectPerm(Mask, top, Tree__right);
        __flatten_36 := Heap[top, Tree__right];
        assume state(Heap, Mask);
      
      // -- Translating statement: sys__result := __flatten_36 -- testTreeWandE2.vpr@412.5--412.32
        sys__result := __flatten_36;
        assume state(Heap, Mask);
      
      // -- Translating statement: assert (sys__result != null ==> acc(Tree__state(sys__result), write)) &&
  //   (old(Tree__tolist(top))[1..] == Tree__tolist(sys__result) &&
  //   (old(Tree__sorted(top)) ==> Tree__sorted(sys__result))) -- testTreeWandE2.vpr@413.5--413.196
        AssertHeap := Heap;
        AssertMask := Mask;
        ExhaleWellDef0Mask := AssertMask;
        ExhaleWellDef0Heap := AssertHeap;
        if (sys__result != null) {
          perm := FullPerm;
          if (perm != NoPerm) {
            assert {:msg "  Assert might fail. There might be insufficient permission to access Tree__state(sys__result) (testTreeWandE2.vpr@413.12--413.196) [174347]"}
              perm <= AssertMask[null, Tree__state(sys__result)];
          }
          AssertMask := AssertMask[null, Tree__state(sys__result):=AssertMask[null, Tree__state(sys__result)] - perm];
        }
        
        // -- Check definedness of old(Tree__tolist(top))[1..] == Tree__tolist(sys__result)
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef1Mask := oldMask;
            ExhaleWellDef1Heap := oldHeap;
            if (top != null) {
              perm := FullPerm;
              assert {:msg "  Precondition of function Tree__tolist might not hold. There might be insufficient permission to access Tree__state(top) (testTreeWandE2.vpr@413.85--413.102) [174348]"}
                NoPerm < perm ==> NoPerm < oldMask[null, Tree__state(top)];
            }
            // Finish exhale
            // Stop execution
            assume false;
          }
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef1Mask := ExhaleWellDef0Mask;
            ExhaleWellDef1Heap := ExhaleWellDef0Heap;
            if (sys__result != null) {
              perm := FullPerm;
              assert {:msg "  Precondition of function Tree__tolist might not hold. There might be insufficient permission to access Tree__state(sys__result) (testTreeWandE2.vpr@413.112--413.137) [174349]"}
                NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[null, Tree__state(sys__result)];
            }
            // Finish exhale
            havoc ExhaleHeap;
            assume IdenticalOnKnownLocations(ExhaleWellDef0Heap, ExhaleHeap, ExhaleWellDef0Mask);
            ExhaleWellDef0Heap := ExhaleHeap;
            // Stop execution
            assume false;
          }
        assert {:msg "  Assert might fail. Assertion old(Tree__tolist(top))[1..] == Tree__tolist(sys__result) might not hold. (testTreeWandE2.vpr@413.12--413.196) [174350]"}
          Seq#Equal(Seq#Drop(Tree__tolist(oldHeap, top), 1), Tree__tolist(AssertHeap, sys__result));
        
        // -- Check definedness of old(Tree__sorted(top))
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef1Mask := oldMask;
            ExhaleWellDef1Heap := oldHeap;
            if (top != null) {
              perm := FullPerm;
              assert {:msg "  Precondition of function Tree__sorted might not hold. There might be insufficient permission to access Tree__state(top) (testTreeWandE2.vpr@413.147--413.164) [174351]"}
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
              ExhaleWellDef1Mask := ExhaleWellDef0Mask;
              ExhaleWellDef1Heap := ExhaleWellDef0Heap;
              if (sys__result != null) {
                perm := FullPerm;
                assert {:msg "  Precondition of function Tree__sorted might not hold. There might be insufficient permission to access Tree__state(sys__result) (testTreeWandE2.vpr@413.170--413.195) [174352]"}
                  NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[null, Tree__state(sys__result)];
              }
              // Finish exhale
              havoc ExhaleHeap;
              assume IdenticalOnKnownLocations(ExhaleWellDef0Heap, ExhaleHeap, ExhaleWellDef0Mask);
              ExhaleWellDef0Heap := ExhaleHeap;
              // Stop execution
              assume false;
            }
          assert {:msg "  Assert might fail. Assertion Tree__sorted(sys__result) might not hold. (testTreeWandE2.vpr@413.12--413.196) [174353]"}
            Tree__sorted(AssertHeap, sys__result);
        }
        assume state(Heap, Mask);
      
      // -- Translating statement: inhale false -- testTreeWandE2.vpr@414.5--414.17
        assume false;
        assume state(Heap, Mask);
        assume state(Heap, Mask);
    } else {
      
      // -- Translating statement: cur := top -- testTreeWandE2.vpr@416.5--416.15
        cur := top;
        assume state(Heap, Mask);
      
      // -- Translating statement: left := top.Tree__left -- testTreeWandE2.vpr@417.5--417.27
        
        // -- Check definedness of top.Tree__left
          assert {:msg "  Assignment might fail. There might be insufficient permission to access top.Tree__left (testTreeWandE2.vpr@417.5--417.27) [174354]"}
            HasDirectPerm(Mask, top, Tree__left);
        left_1 := Heap[top, Tree__left];
        assume state(Heap, Mask);
      
      // -- Translating statement: cur_contents := orig_contents -- testTreeWandE2.vpr@418.5--418.34
        cur_contents := orig_contents;
        assume state(Heap, Mask);
      
      // -- Translating statement: assert cur_contents ==
  //   Tree__tolist(left) ++ Seq(top.Tree__data) ++
  //   Tree__tolist(top.Tree__right) -- testTreeWandE2.vpr@419.5--419.102
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        
        // -- Check definedness of cur_contents == Tree__tolist(left) ++ Seq(top.Tree__data) ++ Tree__tolist(top.Tree__right)
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef1Mask := ExhaleWellDef0Mask;
            ExhaleWellDef1Heap := ExhaleWellDef0Heap;
            if (left_1 != null) {
              perm := FullPerm;
              assert {:msg "  Precondition of function Tree__tolist might not hold. There might be insufficient permission to access Tree__state(left) (testTreeWandE2.vpr@419.28--419.46) [174355]"}
                NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[null, Tree__state(left_1)];
            }
            // Finish exhale
            havoc ExhaleHeap;
            assume IdenticalOnKnownLocations(ExhaleWellDef0Heap, ExhaleHeap, ExhaleWellDef0Mask);
            ExhaleWellDef0Heap := ExhaleHeap;
            // Stop execution
            assume false;
          }
          assert {:msg "  Assert might fail. There might be insufficient permission to access top.Tree__data (testTreeWandE2.vpr@419.12--419.102) [174356]"}
            HasDirectPerm(ExhaleWellDef0Mask, top, Tree__data);
          assert {:msg "  Assert might fail. There might be insufficient permission to access top.Tree__right (testTreeWandE2.vpr@419.12--419.102) [174357]"}
            HasDirectPerm(ExhaleWellDef0Mask, top, Tree__right);
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef1Mask := ExhaleWellDef0Mask;
            ExhaleWellDef1Heap := ExhaleWellDef0Heap;
            if (ExhaleWellDef0Heap[top, Tree__right] != null) {
              perm := FullPerm;
              assert {:msg "  Precondition of function Tree__tolist might not hold. There might be insufficient permission to access Tree__state(top.Tree__right) (testTreeWandE2.vpr@419.73--419.102) [174358]"}
                NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[null, Tree__state(ExhaleWellDef0Heap[top, Tree__right])];
            }
            // Finish exhale
            havoc ExhaleHeap;
            assume IdenticalOnKnownLocations(ExhaleWellDef0Heap, ExhaleHeap, ExhaleWellDef0Mask);
            ExhaleWellDef0Heap := ExhaleHeap;
            // Stop execution
            assume false;
          }
        assert {:msg "  Assert might fail. Assertion cur_contents == Tree__tolist(left) ++ Seq(top.Tree__data) ++ Tree__tolist(top.Tree__right) might not hold. (testTreeWandE2.vpr@419.12--419.102) [174359]"}
          Seq#Equal(cur_contents, Seq#Append(Seq#Append(Tree__tolist(Heap, left_1), Seq#Singleton(Heap[top, Tree__data])), Tree__tolist(Heap, Heap[top, Tree__right])));
        assume state(Heap, Mask);
      
      // -- Translating statement: unfold acc(Tree__state(left), write) -- testTreeWandE2.vpr@420.5--420.41
        assume Tree__state#trigger(Heap, Tree__state(left_1));
        assume Heap[null, Tree__state(left_1)] == CombineFrames(FrameFragment(Heap[left_1, Tree__data]), CombineFrames(FrameFragment(Heap[left_1, Tree__left]), CombineFrames(FrameFragment(Heap[left_1, Tree__right]), CombineFrames(FrameFragment((if Heap[left_1, Tree__left] != null then Heap[null, Tree__state(Heap[left_1, Tree__left])] else EmptyFrame)), FrameFragment((if Heap[left_1, Tree__right] != null then Heap[null, Tree__state(Heap[left_1, Tree__right])] else EmptyFrame))))));
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        perm := FullPerm;
        if (perm != NoPerm) {
          assert {:msg "  Unfolding Tree__state(left) might fail. There might be insufficient permission to access Tree__state(left) (testTreeWandE2.vpr@420.5--420.41) [174362]"}
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
  //   diz, target_contents, top, top, target_contents, top, target_contents) -- testTreeWandE2.vpr@421.5--421.161
        PreCallHeap := Heap;
        PreCallMask := Mask;
        
        // -- Exhaling precondition
          ExhaleWellDef0Mask := Mask;
          ExhaleWellDef0Heap := Heap;
          assert {:msg "  The precondition of method Tree__Wand_state_contains_for_state_contains_lemma_2 might not hold. Assertion diz != null might not hold. (testTreeWandE2.vpr@421.5--421.161) [174368]"}
            diz != null;
          assert {:msg "  The precondition of method Tree__Wand_state_contains_for_state_contains_lemma_2 might not hold. Assertion current_thread_id >= 0 might not hold. (testTreeWandE2.vpr@421.5--421.161) [174369]"}
            current_thread_id >= 0;
          assert {:msg "  The precondition of method Tree__Wand_state_contains_for_state_contains_lemma_2 might not hold. Assertion diz != null might not hold. (testTreeWandE2.vpr@421.5--421.161) [174370]"}
            diz != null;
          assert {:msg "  The precondition of method Tree__Wand_state_contains_for_state_contains_lemma_2 might not hold. Assertion top != null might not hold. (testTreeWandE2.vpr@421.5--421.161) [174371]"}
            top != null;
          assert {:msg "  The precondition of method Tree__Wand_state_contains_for_state_contains_lemma_2 might not hold. Assertion top == top might not hold. (testTreeWandE2.vpr@421.5--421.161) [174372]"}
            top == top;
          assert {:msg "  The precondition of method Tree__Wand_state_contains_for_state_contains_lemma_2 might not hold. Assertion target_contents == target_contents might not hold. (testTreeWandE2.vpr@421.5--421.161) [174373]"}
            Seq#Equal(target_contents, target_contents);
          assert {:msg "  The precondition of method Tree__Wand_state_contains_for_state_contains_lemma_2 might not hold. Assertion top != null might not hold. (testTreeWandE2.vpr@421.5--421.161) [174374]"}
            top != null;
          assert {:msg "  The precondition of method Tree__Wand_state_contains_for_state_contains_lemma_2 might not hold. Assertion top == top might not hold. (testTreeWandE2.vpr@421.5--421.161) [174375]"}
            top == top;
          assert {:msg "  The precondition of method Tree__Wand_state_contains_for_state_contains_lemma_2 might not hold. Assertion target_contents == target_contents might not hold. (testTreeWandE2.vpr@421.5--421.161) [174376]"}
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
      
      // -- Translating statement: while (left.Tree__left != null) -- testTreeWandE2.vpr@422.5--459.6
        
        // -- Before loop head
          
          // -- Exhale loop invariant before loop
            ExhaleWellDef0Mask := Mask;
            ExhaleWellDef0Heap := Heap;
            perm := FullPerm;
            if (perm != NoPerm) {
              assert {:msg "  Loop invariant acc(cur.Tree__left, write) might not hold on entry. There might be insufficient permission to access cur.Tree__left (testTreeWandE2.vpr@423.17--423.43) [174377]"}
                perm <= Mask[cur, Tree__left];
            }
            Mask := Mask[cur, Tree__left:=Mask[cur, Tree__left] - perm];
            perm := FullPerm;
            if (perm != NoPerm) {
              assert {:msg "  Loop invariant acc(cur.Tree__data, write) might not hold on entry. There might be insufficient permission to access cur.Tree__data (testTreeWandE2.vpr@424.17--424.43) [174378]"}
                perm <= Mask[cur, Tree__data];
            }
            Mask := Mask[cur, Tree__data:=Mask[cur, Tree__data] - perm];
            perm := FullPerm;
            if (perm != NoPerm) {
              assert {:msg "  Loop invariant acc(cur.Tree__right, write) might not hold on entry. There might be insufficient permission to access cur.Tree__right (testTreeWandE2.vpr@425.17--425.44) [174379]"}
                perm <= Mask[cur, Tree__right];
            }
            Mask := Mask[cur, Tree__right:=Mask[cur, Tree__right] - perm];
            assert {:msg "  Loop invariant cur.Tree__left == left might not hold on entry. Assertion cur.Tree__left == left might not hold. (testTreeWandE2.vpr@426.17--426.39) [174380]"}
              Heap[cur, Tree__left] == left_1;
            if (Heap[cur, Tree__right] != null) {
              perm := FullPerm;
              if (perm != NoPerm) {
                assert {:msg "  Loop invariant cur.Tree__right != null ==> acc(Tree__state(cur.Tree__right), write) might not hold on entry. There might be insufficient permission to access Tree__state(cur.Tree__right) (testTreeWandE2.vpr@427.17--427.87) [174381]"}
                  perm <= Mask[null, Tree__state(Heap[cur, Tree__right])];
              }
              Mask := Mask[null, Tree__state(Heap[cur, Tree__right]):=Mask[null, Tree__state(Heap[cur, Tree__right])] - perm];
            }
            perm := FullPerm;
            if (perm != NoPerm) {
              assert {:msg "  Loop invariant acc(left.Tree__left, write) might not hold on entry. There might be insufficient permission to access left.Tree__left (testTreeWandE2.vpr@428.17--428.44) [174382]"}
                perm <= Mask[left_1, Tree__left];
            }
            Mask := Mask[left_1, Tree__left:=Mask[left_1, Tree__left] - perm];
            perm := FullPerm;
            if (perm != NoPerm) {
              assert {:msg "  Loop invariant acc(left.Tree__data, write) might not hold on entry. There might be insufficient permission to access left.Tree__data (testTreeWandE2.vpr@429.17--429.44) [174383]"}
                perm <= Mask[left_1, Tree__data];
            }
            Mask := Mask[left_1, Tree__data:=Mask[left_1, Tree__data] - perm];
            perm := FullPerm;
            if (perm != NoPerm) {
              assert {:msg "  Loop invariant acc(left.Tree__right, write) might not hold on entry. There might be insufficient permission to access left.Tree__right (testTreeWandE2.vpr@430.17--430.45) [174384]"}
                perm <= Mask[left_1, Tree__right];
            }
            Mask := Mask[left_1, Tree__right:=Mask[left_1, Tree__right] - perm];
            if (Heap[left_1, Tree__left] != null) {
              perm := FullPerm;
              if (perm != NoPerm) {
                assert {:msg "  Loop invariant left.Tree__left != null ==> acc(Tree__state(left.Tree__left), write) might not hold on entry. There might be insufficient permission to access Tree__state(left.Tree__left) (testTreeWandE2.vpr@431.17--431.87) [174385]"}
                  perm <= Mask[null, Tree__state(Heap[left_1, Tree__left])];
              }
              Mask := Mask[null, Tree__state(Heap[left_1, Tree__left]):=Mask[null, Tree__state(Heap[left_1, Tree__left])] - perm];
            }
            if (Heap[left_1, Tree__right] != null) {
              perm := FullPerm;
              if (perm != NoPerm) {
                assert {:msg "  Loop invariant left.Tree__right != null ==> acc(Tree__state(left.Tree__right), write) might not hold on entry. There might be insufficient permission to access Tree__state(left.Tree__right) (testTreeWandE2.vpr@432.17--432.89) [174386]"}
                  perm <= Mask[null, Tree__state(Heap[left_1, Tree__right])];
              }
              Mask := Mask[null, Tree__state(Heap[left_1, Tree__right]):=Mask[null, Tree__state(Heap[left_1, Tree__right])] - perm];
            }
            assert {:msg "  Loop invariant cur_contents == Tree__tolist(left.Tree__left) ++ Seq(left.Tree__data) ++ Tree__tolist(left.Tree__right) ++ Seq(cur.Tree__data) ++ Tree__tolist(cur.Tree__right) might not hold on entry. Assertion cur_contents == Tree__tolist(left.Tree__left) ++ Seq(left.Tree__data) ++ Tree__tolist(left.Tree__right) ++ Seq(cur.Tree__data) ++ Tree__tolist(cur.Tree__right) might not hold. (testTreeWandE2.vpr@433.17--433.176) [174387]"}
              Seq#Equal(cur_contents, Seq#Append(Seq#Append(Seq#Append(Seq#Append(Tree__tolist(Heap, Heap[left_1, Tree__left]), Seq#Singleton(Heap[left_1, Tree__data])), Tree__tolist(Heap, Heap[left_1, Tree__right])), Seq#Singleton(Heap[cur, Tree__data])), Tree__tolist(Heap, Heap[cur, Tree__right])));
            assert {:msg "  Loop invariant vwand != null might not hold on entry. Assertion vwand != null might not hold. (testTreeWandE2.vpr@434.17--434.30) [174388]"}
              vwand != null;
            perm := FullPerm;
            if (perm != NoPerm) {
              assert {:msg "  Loop invariant acc(Wand_state_contains_for_state_contains__valid_wand(vwand), write) might not hold on entry. There might be insufficient permission to access Wand_state_contains_for_state_contains__valid_wand(vwand) (testTreeWandE2.vpr@435.17--435.86) [174389]"}
                perm <= Mask[null, Wand_state_contains_for_state_contains__valid_wand(vwand)];
            }
            Mask := Mask[null, Wand_state_contains_for_state_contains__valid_wand(vwand):=Mask[null, Wand_state_contains_for_state_contains__valid_wand(vwand)] - perm];
            assert {:msg "  Loop invariant Wand_state_contains_for_state_contains__get_in_1(vwand) == cur might not hold on entry. Assertion Wand_state_contains_for_state_contains__get_in_1(vwand) == cur might not hold. (testTreeWandE2.vpr@436.17--436.79) [174390]"}
              Wand_state_contains_for_state_contains__get_in_1(Heap, vwand) == cur;
            assert {:msg "  Loop invariant Wand_state_contains_for_state_contains__get_in_1_0(vwand) == cur_contents[1..] might not hold on entry. Assertion Wand_state_contains_for_state_contains__get_in_1_0(vwand) == cur_contents[1..] might not hold. (testTreeWandE2.vpr@437.17--437.95) [174391]"}
              Seq#Equal(Wand_state_contains_for_state_contains__get_in_1_0(Heap, vwand), Seq#Drop(cur_contents, 1));
            assert {:msg "  Loop invariant Wand_state_contains_for_state_contains__get_out_1(vwand) == top might not hold on entry. Assertion Wand_state_contains_for_state_contains__get_out_1(vwand) == top might not hold. (testTreeWandE2.vpr@438.17--438.80) [174392]"}
              Wand_state_contains_for_state_contains__get_out_1(Heap, vwand) == top;
            assert {:msg "  Loop invariant Wand_state_contains_for_state_contains__get_out_1_0(vwand) == target_contents might not hold on entry. Assertion Wand_state_contains_for_state_contains__get_out_1_0(vwand) == target_contents might not hold. (testTreeWandE2.vpr@439.17--439.94) [174393]"}
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
              assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access cur.Tree__left (testTreeWandE2.vpr@426.17--426.39) [174394]"}
                HasDirectPerm(Mask, cur, Tree__left);
            assume Heap[cur, Tree__left] == left_1;
            assume state(Heap, Mask);
            
            // -- Check definedness of cur.Tree__right != null
              assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access cur.Tree__right (testTreeWandE2.vpr@427.17--427.87) [174395]"}
                HasDirectPerm(Mask, cur, Tree__right);
            if (Heap[cur, Tree__right] != null) {
              
              // -- Check definedness of acc(Tree__state(cur.Tree__right), write)
                assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access cur.Tree__right (testTreeWandE2.vpr@427.17--427.87) [174396]"}
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
              assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access left.Tree__left (testTreeWandE2.vpr@431.17--431.87) [174397]"}
                HasDirectPerm(Mask, left_1, Tree__left);
            if (Heap[left_1, Tree__left] != null) {
              
              // -- Check definedness of acc(Tree__state(left.Tree__left), write)
                assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access left.Tree__left (testTreeWandE2.vpr@431.17--431.87) [174398]"}
                  HasDirectPerm(Mask, left_1, Tree__left);
              perm := FullPerm;
              Mask := Mask[null, Tree__state(Heap[left_1, Tree__left]):=Mask[null, Tree__state(Heap[left_1, Tree__left])] + perm];
              assume state(Heap, Mask);
            }
            assume state(Heap, Mask);
            
            // -- Check definedness of left.Tree__right != null
              assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access left.Tree__right (testTreeWandE2.vpr@432.17--432.89) [174399]"}
                HasDirectPerm(Mask, left_1, Tree__right);
            if (Heap[left_1, Tree__right] != null) {
              
              // -- Check definedness of acc(Tree__state(left.Tree__right), write)
                assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access left.Tree__right (testTreeWandE2.vpr@432.17--432.89) [174400]"}
                  HasDirectPerm(Mask, left_1, Tree__right);
              perm := FullPerm;
              Mask := Mask[null, Tree__state(Heap[left_1, Tree__right]):=Mask[null, Tree__state(Heap[left_1, Tree__right])] + perm];
              assume state(Heap, Mask);
            }
            assume state(Heap, Mask);
            assume state(Heap, Mask);
            
            // -- Check definedness of cur_contents == Tree__tolist(left.Tree__left) ++ Seq(left.Tree__data) ++ Tree__tolist(left.Tree__right) ++ Seq(cur.Tree__data) ++ Tree__tolist(cur.Tree__right)
              assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access left.Tree__left (testTreeWandE2.vpr@433.17--433.176) [174401]"}
                HasDirectPerm(Mask, left_1, Tree__left);
              if (*) {
                // Exhale precondition of function application
                ExhaleWellDef0Mask := Mask;
                ExhaleWellDef0Heap := Heap;
                if (Heap[left_1, Tree__left] != null) {
                  perm := FullPerm;
                  assert {:msg "  Precondition of function Tree__tolist might not hold. There might be insufficient permission to access Tree__state(left.Tree__left) (testTreeWandE2.vpr@433.33--433.62) [174402]"}
                    NoPerm < perm ==> NoPerm < Mask[null, Tree__state(Heap[left_1, Tree__left])];
                }
                // Finish exhale
                havoc ExhaleHeap;
                assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
                Heap := ExhaleHeap;
                // Stop execution
                assume false;
              }
              assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access left.Tree__data (testTreeWandE2.vpr@433.17--433.176) [174403]"}
                HasDirectPerm(Mask, left_1, Tree__data);
              assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access left.Tree__right (testTreeWandE2.vpr@433.17--433.176) [174404]"}
                HasDirectPerm(Mask, left_1, Tree__right);
              if (*) {
                // Exhale precondition of function application
                ExhaleWellDef0Mask := Mask;
                ExhaleWellDef0Heap := Heap;
                if (Heap[left_1, Tree__right] != null) {
                  perm := FullPerm;
                  assert {:msg "  Precondition of function Tree__tolist might not hold. There might be insufficient permission to access Tree__state(left.Tree__right) (testTreeWandE2.vpr@433.90--433.120) [174405]"}
                    NoPerm < perm ==> NoPerm < Mask[null, Tree__state(Heap[left_1, Tree__right])];
                }
                // Finish exhale
                havoc ExhaleHeap;
                assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
                Heap := ExhaleHeap;
                // Stop execution
                assume false;
              }
              assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access cur.Tree__data (testTreeWandE2.vpr@433.17--433.176) [174406]"}
                HasDirectPerm(Mask, cur, Tree__data);
              assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access cur.Tree__right (testTreeWandE2.vpr@433.17--433.176) [174407]"}
                HasDirectPerm(Mask, cur, Tree__right);
              if (*) {
                // Exhale precondition of function application
                ExhaleWellDef0Mask := Mask;
                ExhaleWellDef0Heap := Heap;
                if (Heap[cur, Tree__right] != null) {
                  perm := FullPerm;
                  assert {:msg "  Precondition of function Tree__tolist might not hold. There might be insufficient permission to access Tree__state(cur.Tree__right) (testTreeWandE2.vpr@433.147--433.176) [174408]"}
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
                ExhaleWellDef0Mask := Mask;
                ExhaleWellDef0Heap := Heap;
                assert {:msg "  Precondition of function Wand_state_contains_for_state_contains__get_in_1 might not hold. Assertion vwand != null might not hold. (testTreeWandE2.vpr@436.17--436.72) [174409]"}
                  vwand != null;
                perm := FullPerm;
                assert {:msg "  Precondition of function Wand_state_contains_for_state_contains__get_in_1 might not hold. There might be insufficient permission to access Wand_state_contains_for_state_contains__valid_wand(vwand) (testTreeWandE2.vpr@436.17--436.72) [174410]"}
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
                ExhaleWellDef0Mask := Mask;
                ExhaleWellDef0Heap := Heap;
                assert {:msg "  Precondition of function Wand_state_contains_for_state_contains__get_in_1_0 might not hold. Assertion vwand != null might not hold. (testTreeWandE2.vpr@437.17--437.74) [174411]"}
                  vwand != null;
                perm := FullPerm;
                assert {:msg "  Precondition of function Wand_state_contains_for_state_contains__get_in_1_0 might not hold. There might be insufficient permission to access Wand_state_contains_for_state_contains__valid_wand(vwand) (testTreeWandE2.vpr@437.17--437.74) [174412]"}
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
                ExhaleWellDef0Mask := Mask;
                ExhaleWellDef0Heap := Heap;
                assert {:msg "  Precondition of function Wand_state_contains_for_state_contains__get_out_1 might not hold. Assertion vwand != null might not hold. (testTreeWandE2.vpr@438.17--438.73) [174413]"}
                  vwand != null;
                perm := FullPerm;
                assert {:msg "  Precondition of function Wand_state_contains_for_state_contains__get_out_1 might not hold. There might be insufficient permission to access Wand_state_contains_for_state_contains__valid_wand(vwand) (testTreeWandE2.vpr@438.17--438.73) [174414]"}
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
                ExhaleWellDef0Mask := Mask;
                ExhaleWellDef0Heap := Heap;
                assert {:msg "  Precondition of function Wand_state_contains_for_state_contains__get_out_1_0 might not hold. Assertion vwand != null might not hold. (testTreeWandE2.vpr@439.17--439.75) [174415]"}
                  vwand != null;
                perm := FullPerm;
                assert {:msg "  Precondition of function Wand_state_contains_for_state_contains__get_out_1_0 might not hold. There might be insufficient permission to access Wand_state_contains_for_state_contains__valid_wand(vwand) (testTreeWandE2.vpr@439.17--439.75) [174416]"}
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
              assert {:msg "  While statement might fail. There might be insufficient permission to access left.Tree__left (testTreeWandE2.vpr@422.12--422.35) [174417]"}
                HasDirectPerm(Mask, left_1, Tree__left);
            assume Heap[left_1, Tree__left] != null;
            assume state(Heap, Mask);
            
            // -- Translate loop body
              
              // -- Translating statement: prev := cur -- testTreeWandE2.vpr@441.7--441.18
                prev := cur;
                assume state(Heap, Mask);
              
              // -- Translating statement: prev_contents := cur_contents -- testTreeWandE2.vpr@442.7--442.36
                prev_contents := cur_contents;
                assume state(Heap, Mask);
              
              // -- Translating statement: cur := left -- testTreeWandE2.vpr@443.7--443.18
                cur := left_1;
                assume state(Heap, Mask);
              
              // -- Translating statement: left := cur.Tree__left -- testTreeWandE2.vpr@444.7--444.29
                
                // -- Check definedness of cur.Tree__left
                  assert {:msg "  Assignment might fail. There might be insufficient permission to access cur.Tree__left (testTreeWandE2.vpr@444.7--444.29) [174418]"}
                    HasDirectPerm(Mask, cur, Tree__left);
                left_1 := Heap[cur, Tree__left];
                assume state(Heap, Mask);
              
              // -- Translating statement: unfold acc(Tree__state(left), write) -- testTreeWandE2.vpr@445.7--445.43
                assume Tree__state#trigger(Heap, Tree__state(left_1));
                assume Heap[null, Tree__state(left_1)] == CombineFrames(FrameFragment(Heap[left_1, Tree__data]), CombineFrames(FrameFragment(Heap[left_1, Tree__left]), CombineFrames(FrameFragment(Heap[left_1, Tree__right]), CombineFrames(FrameFragment((if Heap[left_1, Tree__left] != null then Heap[null, Tree__state(Heap[left_1, Tree__left])] else EmptyFrame)), FrameFragment((if Heap[left_1, Tree__right] != null then Heap[null, Tree__state(Heap[left_1, Tree__right])] else EmptyFrame))))));
                ExhaleWellDef0Mask := Mask;
                ExhaleWellDef0Heap := Heap;
                perm := FullPerm;
                if (perm != NoPerm) {
                  assert {:msg "  Unfolding Tree__state(left) might fail. There might be insufficient permission to access Tree__state(left) (testTreeWandE2.vpr@445.7--445.43) [174419]"}
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
              
              // -- Translating statement: __flatten_78 := Tree__tolist(left.Tree__left) -- testTreeWandE2.vpr@446.7--446.52
                
                // -- Check definedness of Tree__tolist(left.Tree__left)
                  assert {:msg "  Assignment might fail. There might be insufficient permission to access left.Tree__left (testTreeWandE2.vpr@446.7--446.52) [174420]"}
                    HasDirectPerm(Mask, left_1, Tree__left);
                  if (*) {
                    // Exhale precondition of function application
                    ExhaleWellDef0Mask := Mask;
                    ExhaleWellDef0Heap := Heap;
                    if (Heap[left_1, Tree__left] != null) {
                      perm := FullPerm;
                      assert {:msg "  Precondition of function Tree__tolist might not hold. There might be insufficient permission to access Tree__state(left.Tree__left) (testTreeWandE2.vpr@446.23--446.52) [174421]"}
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
              
              // -- Translating statement: __flatten_37 := __flatten_78 -- testTreeWandE2.vpr@447.7--447.35
                __flatten_37 := __flatten_78;
                assume state(Heap, Mask);
              
              // -- Translating statement: __flatten_79 := Tree__tolist(left.Tree__right) -- testTreeWandE2.vpr@448.7--448.53
                
                // -- Check definedness of Tree__tolist(left.Tree__right)
                  assert {:msg "  Assignment might fail. There might be insufficient permission to access left.Tree__right (testTreeWandE2.vpr@448.7--448.53) [174422]"}
                    HasDirectPerm(Mask, left_1, Tree__right);
                  if (*) {
                    // Exhale precondition of function application
                    ExhaleWellDef0Mask := Mask;
                    ExhaleWellDef0Heap := Heap;
                    if (Heap[left_1, Tree__right] != null) {
                      perm := FullPerm;
                      assert {:msg "  Precondition of function Tree__tolist might not hold. There might be insufficient permission to access Tree__state(left.Tree__right) (testTreeWandE2.vpr@448.23--448.53) [174423]"}
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
              
              // -- Translating statement: __flatten_38 := __flatten_79 -- testTreeWandE2.vpr@449.7--449.35
                __flatten_38 := __flatten_79;
                assume state(Heap, Mask);
              
              // -- Translating statement: cur_contents := __flatten_37 ++ Seq(left.Tree__data) ++ __flatten_38 -- testTreeWandE2.vpr@450.7--450.75
                
                // -- Check definedness of __flatten_37 ++ Seq(left.Tree__data) ++ __flatten_38
                  assert {:msg "  Assignment might fail. There might be insufficient permission to access left.Tree__data (testTreeWandE2.vpr@450.7--450.75) [174424]"}
                    HasDirectPerm(Mask, left_1, Tree__data);
                cur_contents := Seq#Append(Seq#Append(__flatten_37, Seq#Singleton(Heap[left_1, Tree__data])), __flatten_38);
                assume state(Heap, Mask);
              
              // -- Translating statement: __flatten_80 := Tree__tolist(cur.Tree__right) -- testTreeWandE2.vpr@451.7--451.52
                
                // -- Check definedness of Tree__tolist(cur.Tree__right)
                  assert {:msg "  Assignment might fail. There might be insufficient permission to access cur.Tree__right (testTreeWandE2.vpr@451.7--451.52) [174425]"}
                    HasDirectPerm(Mask, cur, Tree__right);
                  if (*) {
                    // Exhale precondition of function application
                    ExhaleWellDef0Mask := Mask;
                    ExhaleWellDef0Heap := Heap;
                    if (Heap[cur, Tree__right] != null) {
                      perm := FullPerm;
                      assert {:msg "  Precondition of function Tree__tolist might not hold. There might be insufficient permission to access Tree__state(cur.Tree__right) (testTreeWandE2.vpr@451.23--451.52) [174426]"}
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
              
              // -- Translating statement: __flatten_39 := __flatten_80 -- testTreeWandE2.vpr@452.7--452.35
                __flatten_39 := __flatten_80;
                assume state(Heap, Mask);
              
              // -- Translating statement: cur_contents := cur_contents ++ Seq(cur.Tree__data) ++ __flatten_39 -- testTreeWandE2.vpr@453.7--453.74
                
                // -- Check definedness of cur_contents ++ Seq(cur.Tree__data) ++ __flatten_39
                  assert {:msg "  Assignment might fail. There might be insufficient permission to access cur.Tree__data (testTreeWandE2.vpr@453.7--453.74) [174427]"}
                    HasDirectPerm(Mask, cur, Tree__data);
                cur_contents := Seq#Append(Seq#Append(cur_contents, Seq#Singleton(Heap[cur, Tree__data])), __flatten_39);
                assume state(Heap, Mask);
              
              // -- Translating statement: assert |prev_contents| > 0 -- testTreeWandE2.vpr@454.7--454.33
                ExhaleWellDef0Mask := Mask;
                ExhaleWellDef0Heap := Heap;
                assert {:msg "  Assert might fail. Assertion |prev_contents| > 0 might not hold. (testTreeWandE2.vpr@454.14--454.33) [174428]"}
                  Seq#Length(prev_contents) > 0;
                assume state(Heap, Mask);
              
              // -- Translating statement: assert |cur_contents| > 0 -- testTreeWandE2.vpr@455.7--455.32
                ExhaleWellDef0Mask := Mask;
                ExhaleWellDef0Heap := Heap;
                assert {:msg "  Assert might fail. Assertion |cur_contents| > 0 might not hold. (testTreeWandE2.vpr@455.14--455.32) [174429]"}
                  Seq#Length(cur_contents) > 0;
                assume state(Heap, Mask);
              
              // -- Translating statement: assert prev_contents ==
  //   cur_contents ++ Seq(prev.Tree__data) ++ Tree__tolist(prev.Tree__right) -- testTreeWandE2.vpr@456.7--456.101
                ExhaleWellDef0Mask := Mask;
                ExhaleWellDef0Heap := Heap;
                
                // -- Check definedness of prev_contents == cur_contents ++ Seq(prev.Tree__data) ++ Tree__tolist(prev.Tree__right)
                  assert {:msg "  Assert might fail. There might be insufficient permission to access prev.Tree__data (testTreeWandE2.vpr@456.14--456.101) [174430]"}
                    HasDirectPerm(ExhaleWellDef0Mask, prev, Tree__data);
                  assert {:msg "  Assert might fail. There might be insufficient permission to access prev.Tree__right (testTreeWandE2.vpr@456.14--456.101) [174431]"}
                    HasDirectPerm(ExhaleWellDef0Mask, prev, Tree__right);
                  if (*) {
                    // Exhale precondition of function application
                    ExhaleWellDef1Mask := ExhaleWellDef0Mask;
                    ExhaleWellDef1Heap := ExhaleWellDef0Heap;
                    if (ExhaleWellDef0Heap[prev, Tree__right] != null) {
                      perm := FullPerm;
                      assert {:msg "  Precondition of function Tree__tolist might not hold. There might be insufficient permission to access Tree__state(prev.Tree__right) (testTreeWandE2.vpr@456.71--456.101) [174432]"}
                        NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[null, Tree__state(ExhaleWellDef0Heap[prev, Tree__right])];
                    }
                    // Finish exhale
                    havoc ExhaleHeap;
                    assume IdenticalOnKnownLocations(ExhaleWellDef0Heap, ExhaleHeap, ExhaleWellDef0Mask);
                    ExhaleWellDef0Heap := ExhaleHeap;
                    // Stop execution
                    assume false;
                  }
                assert {:msg "  Assert might fail. Assertion prev_contents == cur_contents ++ Seq(prev.Tree__data) ++ Tree__tolist(prev.Tree__right) might not hold. (testTreeWandE2.vpr@456.14--456.101) [174433]"}
                  Seq#Equal(prev_contents, Seq#Append(Seq#Append(cur_contents, Seq#Singleton(Heap[prev, Tree__data])), Tree__tolist(Heap, Heap[prev, Tree__right])));
                assume state(Heap, Mask);
              
              // -- Translating statement: __flatten_40 := Tree__Wand_state_contains_for_state_contains_lemma_1(diz, current_thread_id,
  //   diz, target_contents, prev_contents, prev, cur_contents, top, cur, vwand,
  //   cur, cur_contents[1..], top, target_contents) -- testTreeWandE2.vpr@457.7--457.219
                PreCallHeap := Heap;
                PreCallMask := Mask;
                arg_in_1_0 := Seq#Drop(cur_contents, 1);
                
                // -- Exhaling precondition
                  ExhaleWellDef0Mask := Mask;
                  ExhaleWellDef0Heap := Heap;
                  assert {:msg "  The precondition of method Tree__Wand_state_contains_for_state_contains_lemma_1 might not hold. Assertion diz != null might not hold. (testTreeWandE2.vpr@457.7--457.219) [174434]"}
                    diz != null;
                  assert {:msg "  The precondition of method Tree__Wand_state_contains_for_state_contains_lemma_1 might not hold. Assertion current_thread_id >= 0 might not hold. (testTreeWandE2.vpr@457.7--457.219) [174435]"}
                    current_thread_id >= 0;
                  assert {:msg "  The precondition of method Tree__Wand_state_contains_for_state_contains_lemma_1 might not hold. Assertion diz != null might not hold. (testTreeWandE2.vpr@457.7--457.219) [174436]"}
                    diz != null;
                  assert {:msg "  The precondition of method Tree__Wand_state_contains_for_state_contains_lemma_1 might not hold. Assertion |prev_contents| > 0 might not hold. (testTreeWandE2.vpr@457.7--457.219) [174437]"}
                    Seq#Length(prev_contents) > 0;
                  assert {:msg "  The precondition of method Tree__Wand_state_contains_for_state_contains_lemma_1 might not hold. Assertion |cur_contents| > 0 might not hold. (testTreeWandE2.vpr@457.7--457.219) [174438]"}
                    Seq#Length(cur_contents) > 0;
                  perm := FullPerm;
                  if (perm != NoPerm) {
                    assert {:msg "  The precondition of method Tree__Wand_state_contains_for_state_contains_lemma_1 might not hold. There might be insufficient permission to access prev.Tree__left (testTreeWandE2.vpr@457.7--457.219) [174439]"}
                      perm <= Mask[prev, Tree__left];
                  }
                  Mask := Mask[prev, Tree__left:=Mask[prev, Tree__left] - perm];
                  perm := FullPerm;
                  if (perm != NoPerm) {
                    assert {:msg "  The precondition of method Tree__Wand_state_contains_for_state_contains_lemma_1 might not hold. There might be insufficient permission to access prev.Tree__data (testTreeWandE2.vpr@457.7--457.219) [174440]"}
                      perm <= Mask[prev, Tree__data];
                  }
                  Mask := Mask[prev, Tree__data:=Mask[prev, Tree__data] - perm];
                  perm := FullPerm;
                  if (perm != NoPerm) {
                    assert {:msg "  The precondition of method Tree__Wand_state_contains_for_state_contains_lemma_1 might not hold. There might be insufficient permission to access prev.Tree__right (testTreeWandE2.vpr@457.7--457.219) [174441]"}
                      perm <= Mask[prev, Tree__right];
                  }
                  Mask := Mask[prev, Tree__right:=Mask[prev, Tree__right] - perm];
                  if (Heap[prev, Tree__right] != null) {
                    perm := FullPerm;
                    if (perm != NoPerm) {
                      assert {:msg "  The precondition of method Tree__Wand_state_contains_for_state_contains_lemma_1 might not hold. There might be insufficient permission to access Tree__state(prev.Tree__right) (testTreeWandE2.vpr@457.7--457.219) [174442]"}
                        perm <= Mask[null, Tree__state(Heap[prev, Tree__right])];
                    }
                    Mask := Mask[null, Tree__state(Heap[prev, Tree__right]):=Mask[null, Tree__state(Heap[prev, Tree__right])] - perm];
                  }
                  assert {:msg "  The precondition of method Tree__Wand_state_contains_for_state_contains_lemma_1 might not hold. Assertion prev.Tree__left == cur might not hold. (testTreeWandE2.vpr@457.7--457.219) [174443]"}
                    Heap[prev, Tree__left] == cur;
                  assert {:msg "  The precondition of method Tree__Wand_state_contains_for_state_contains_lemma_1 might not hold. Assertion prev_contents == cur_contents ++ Seq(prev.Tree__data) ++ Tree__tolist(prev.Tree__right) might not hold. (testTreeWandE2.vpr@457.7--457.219) [174444]"}
                    Seq#Equal(prev_contents, Seq#Append(Seq#Append(cur_contents, Seq#Singleton(Heap[prev, Tree__data])), Tree__tolist(Heap, Heap[prev, Tree__right])));
                  assert {:msg "  The precondition of method Tree__Wand_state_contains_for_state_contains_lemma_1 might not hold. Assertion vwand != null might not hold. (testTreeWandE2.vpr@457.7--457.219) [174445]"}
                    vwand != null;
                  perm := FullPerm;
                  if (perm != NoPerm) {
                    assert {:msg "  The precondition of method Tree__Wand_state_contains_for_state_contains_lemma_1 might not hold. There might be insufficient permission to access Wand_state_contains_for_state_contains__valid_wand(vwand) (testTreeWandE2.vpr@457.7--457.219) [174446]"}
                      perm <= Mask[null, Wand_state_contains_for_state_contains__valid_wand(vwand)];
                  }
                  Mask := Mask[null, Wand_state_contains_for_state_contains__valid_wand(vwand):=Mask[null, Wand_state_contains_for_state_contains__valid_wand(vwand)] - perm];
                  assert {:msg "  The precondition of method Tree__Wand_state_contains_for_state_contains_lemma_1 might not hold. Assertion Wand_state_contains_for_state_contains__get_in_1(vwand) == prev might not hold. (testTreeWandE2.vpr@457.7--457.219) [174447]"}
                    Wand_state_contains_for_state_contains__get_in_1(Heap, vwand) == prev;
                  assert {:msg "  The precondition of method Tree__Wand_state_contains_for_state_contains_lemma_1 might not hold. Assertion Wand_state_contains_for_state_contains__get_in_1_0(vwand) == prev_contents[1..] might not hold. (testTreeWandE2.vpr@457.7--457.219) [174448]"}
                    Seq#Equal(Wand_state_contains_for_state_contains__get_in_1_0(Heap, vwand), Seq#Drop(prev_contents, 1));
                  assert {:msg "  The precondition of method Tree__Wand_state_contains_for_state_contains_lemma_1 might not hold. Assertion Wand_state_contains_for_state_contains__get_out_1(vwand) == top might not hold. (testTreeWandE2.vpr@457.7--457.219) [174449]"}
                    Wand_state_contains_for_state_contains__get_out_1(Heap, vwand) == top;
                  assert {:msg "  The precondition of method Tree__Wand_state_contains_for_state_contains_lemma_1 might not hold. Assertion Wand_state_contains_for_state_contains__get_out_1_0(vwand) == target_contents might not hold. (testTreeWandE2.vpr@457.7--457.219) [174450]"}
                    Seq#Equal(Wand_state_contains_for_state_contains__get_out_1_0(Heap, vwand), target_contents);
                  assert {:msg "  The precondition of method Tree__Wand_state_contains_for_state_contains_lemma_1 might not hold. Assertion cur != null might not hold. (testTreeWandE2.vpr@457.7--457.219) [174451]"}
                    cur != null;
                  assert {:msg "  The precondition of method Tree__Wand_state_contains_for_state_contains_lemma_1 might not hold. Assertion cur == cur might not hold. (testTreeWandE2.vpr@457.7--457.219) [174452]"}
                    cur == cur;
                  assert {:msg "  The precondition of method Tree__Wand_state_contains_for_state_contains_lemma_1 might not hold. Assertion cur_contents[1..] == cur_contents[1..] might not hold. (testTreeWandE2.vpr@457.7--457.219) [174453]"}
                    Seq#Equal(arg_in_1_0, Seq#Drop(cur_contents, 1));
                  assert {:msg "  The precondition of method Tree__Wand_state_contains_for_state_contains_lemma_1 might not hold. Assertion top != null might not hold. (testTreeWandE2.vpr@457.7--457.219) [174454]"}
                    top != null;
                  assert {:msg "  The precondition of method Tree__Wand_state_contains_for_state_contains_lemma_1 might not hold. Assertion top == top might not hold. (testTreeWandE2.vpr@457.7--457.219) [174455]"}
                    top == top;
                  assert {:msg "  The precondition of method Tree__Wand_state_contains_for_state_contains_lemma_1 might not hold. Assertion target_contents == target_contents might not hold. (testTreeWandE2.vpr@457.7--457.219) [174456]"}
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
              
              // -- Translating statement: vwand := __flatten_40 -- testTreeWandE2.vpr@458.7--458.28
                vwand := __flatten_40;
                assume state(Heap, Mask);
            // Exhale invariant
            ExhaleWellDef0Mask := Mask;
            ExhaleWellDef0Heap := Heap;
            perm := FullPerm;
            if (perm != NoPerm) {
              assert {:msg "  Loop invariant acc(cur.Tree__left, write) might not be preserved. There might be insufficient permission to access cur.Tree__left (testTreeWandE2.vpr@423.17--423.43) [174457]"}
                perm <= Mask[cur, Tree__left];
            }
            Mask := Mask[cur, Tree__left:=Mask[cur, Tree__left] - perm];
            perm := FullPerm;
            if (perm != NoPerm) {
              assert {:msg "  Loop invariant acc(cur.Tree__data, write) might not be preserved. There might be insufficient permission to access cur.Tree__data (testTreeWandE2.vpr@424.17--424.43) [174458]"}
                perm <= Mask[cur, Tree__data];
            }
            Mask := Mask[cur, Tree__data:=Mask[cur, Tree__data] - perm];
            perm := FullPerm;
            if (perm != NoPerm) {
              assert {:msg "  Loop invariant acc(cur.Tree__right, write) might not be preserved. There might be insufficient permission to access cur.Tree__right (testTreeWandE2.vpr@425.17--425.44) [174459]"}
                perm <= Mask[cur, Tree__right];
            }
            Mask := Mask[cur, Tree__right:=Mask[cur, Tree__right] - perm];
            assert {:msg "  Loop invariant cur.Tree__left == left might not be preserved. Assertion cur.Tree__left == left might not hold. (testTreeWandE2.vpr@426.17--426.39) [174460]"}
              Heap[cur, Tree__left] == left_1;
            if (Heap[cur, Tree__right] != null) {
              perm := FullPerm;
              if (perm != NoPerm) {
                assert {:msg "  Loop invariant cur.Tree__right != null ==> acc(Tree__state(cur.Tree__right), write) might not be preserved. There might be insufficient permission to access Tree__state(cur.Tree__right) (testTreeWandE2.vpr@427.17--427.87) [174461]"}
                  perm <= Mask[null, Tree__state(Heap[cur, Tree__right])];
              }
              Mask := Mask[null, Tree__state(Heap[cur, Tree__right]):=Mask[null, Tree__state(Heap[cur, Tree__right])] - perm];
            }
            perm := FullPerm;
            if (perm != NoPerm) {
              assert {:msg "  Loop invariant acc(left.Tree__left, write) might not be preserved. There might be insufficient permission to access left.Tree__left (testTreeWandE2.vpr@428.17--428.44) [174462]"}
                perm <= Mask[left_1, Tree__left];
            }
            Mask := Mask[left_1, Tree__left:=Mask[left_1, Tree__left] - perm];
            perm := FullPerm;
            if (perm != NoPerm) {
              assert {:msg "  Loop invariant acc(left.Tree__data, write) might not be preserved. There might be insufficient permission to access left.Tree__data (testTreeWandE2.vpr@429.17--429.44) [174463]"}
                perm <= Mask[left_1, Tree__data];
            }
            Mask := Mask[left_1, Tree__data:=Mask[left_1, Tree__data] - perm];
            perm := FullPerm;
            if (perm != NoPerm) {
              assert {:msg "  Loop invariant acc(left.Tree__right, write) might not be preserved. There might be insufficient permission to access left.Tree__right (testTreeWandE2.vpr@430.17--430.45) [174464]"}
                perm <= Mask[left_1, Tree__right];
            }
            Mask := Mask[left_1, Tree__right:=Mask[left_1, Tree__right] - perm];
            if (Heap[left_1, Tree__left] != null) {
              perm := FullPerm;
              if (perm != NoPerm) {
                assert {:msg "  Loop invariant left.Tree__left != null ==> acc(Tree__state(left.Tree__left), write) might not be preserved. There might be insufficient permission to access Tree__state(left.Tree__left) (testTreeWandE2.vpr@431.17--431.87) [174465]"}
                  perm <= Mask[null, Tree__state(Heap[left_1, Tree__left])];
              }
              Mask := Mask[null, Tree__state(Heap[left_1, Tree__left]):=Mask[null, Tree__state(Heap[left_1, Tree__left])] - perm];
            }
            if (Heap[left_1, Tree__right] != null) {
              perm := FullPerm;
              if (perm != NoPerm) {
                assert {:msg "  Loop invariant left.Tree__right != null ==> acc(Tree__state(left.Tree__right), write) might not be preserved. There might be insufficient permission to access Tree__state(left.Tree__right) (testTreeWandE2.vpr@432.17--432.89) [174466]"}
                  perm <= Mask[null, Tree__state(Heap[left_1, Tree__right])];
              }
              Mask := Mask[null, Tree__state(Heap[left_1, Tree__right]):=Mask[null, Tree__state(Heap[left_1, Tree__right])] - perm];
            }
            assert {:msg "  Loop invariant cur_contents == Tree__tolist(left.Tree__left) ++ Seq(left.Tree__data) ++ Tree__tolist(left.Tree__right) ++ Seq(cur.Tree__data) ++ Tree__tolist(cur.Tree__right) might not be preserved. Assertion cur_contents == Tree__tolist(left.Tree__left) ++ Seq(left.Tree__data) ++ Tree__tolist(left.Tree__right) ++ Seq(cur.Tree__data) ++ Tree__tolist(cur.Tree__right) might not hold. (testTreeWandE2.vpr@433.17--433.176) [174467]"}
              Seq#Equal(cur_contents, Seq#Append(Seq#Append(Seq#Append(Seq#Append(Tree__tolist(Heap, Heap[left_1, Tree__left]), Seq#Singleton(Heap[left_1, Tree__data])), Tree__tolist(Heap, Heap[left_1, Tree__right])), Seq#Singleton(Heap[cur, Tree__data])), Tree__tolist(Heap, Heap[cur, Tree__right])));
            assert {:msg "  Loop invariant vwand != null might not be preserved. Assertion vwand != null might not hold. (testTreeWandE2.vpr@434.17--434.30) [174468]"}
              vwand != null;
            perm := FullPerm;
            if (perm != NoPerm) {
              assert {:msg "  Loop invariant acc(Wand_state_contains_for_state_contains__valid_wand(vwand), write) might not be preserved. There might be insufficient permission to access Wand_state_contains_for_state_contains__valid_wand(vwand) (testTreeWandE2.vpr@435.17--435.86) [174469]"}
                perm <= Mask[null, Wand_state_contains_for_state_contains__valid_wand(vwand)];
            }
            Mask := Mask[null, Wand_state_contains_for_state_contains__valid_wand(vwand):=Mask[null, Wand_state_contains_for_state_contains__valid_wand(vwand)] - perm];
            assert {:msg "  Loop invariant Wand_state_contains_for_state_contains__get_in_1(vwand) == cur might not be preserved. Assertion Wand_state_contains_for_state_contains__get_in_1(vwand) == cur might not hold. (testTreeWandE2.vpr@436.17--436.79) [174470]"}
              Wand_state_contains_for_state_contains__get_in_1(Heap, vwand) == cur;
            assert {:msg "  Loop invariant Wand_state_contains_for_state_contains__get_in_1_0(vwand) == cur_contents[1..] might not be preserved. Assertion Wand_state_contains_for_state_contains__get_in_1_0(vwand) == cur_contents[1..] might not hold. (testTreeWandE2.vpr@437.17--437.95) [174471]"}
              Seq#Equal(Wand_state_contains_for_state_contains__get_in_1_0(Heap, vwand), Seq#Drop(cur_contents, 1));
            assert {:msg "  Loop invariant Wand_state_contains_for_state_contains__get_out_1(vwand) == top might not be preserved. Assertion Wand_state_contains_for_state_contains__get_out_1(vwand) == top might not hold. (testTreeWandE2.vpr@438.17--438.80) [174472]"}
              Wand_state_contains_for_state_contains__get_out_1(Heap, vwand) == top;
            assert {:msg "  Loop invariant Wand_state_contains_for_state_contains__get_out_1_0(vwand) == target_contents might not be preserved. Assertion Wand_state_contains_for_state_contains__get_out_1_0(vwand) == target_contents might not hold. (testTreeWandE2.vpr@439.17--439.94) [174473]"}
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
      
      // -- Translating statement: __flatten_41 := left.Tree__left -- testTreeWandE2.vpr@460.5--460.36
        
        // -- Check definedness of left.Tree__left
          assert {:msg "  Assignment might fail. There might be insufficient permission to access left.Tree__left (testTreeWandE2.vpr@460.5--460.36) [174474]"}
            HasDirectPerm(Mask, left_1, Tree__left);
        __flatten_41 := Heap[left_1, Tree__left];
        assume state(Heap, Mask);
      
      // -- Translating statement: __flatten_82 := __flatten_41 -- testTreeWandE2.vpr@461.5--461.33
        __flatten_82 := __flatten_41;
        assume state(Heap, Mask);
      
      // -- Translating statement: cur.Tree__left := __flatten_82 -- testTreeWandE2.vpr@462.5--462.35
        assert {:msg "  Assignment might fail. There might be insufficient permission to access cur.Tree__left (testTreeWandE2.vpr@462.5--462.35) [174475]"}
          FullPerm == Mask[cur, Tree__left];
        Heap := Heap[cur, Tree__left:=__flatten_82];
        assume state(Heap, Mask);
      
      // -- Translating statement: fold acc(Tree__state(cur), write) -- testTreeWandE2.vpr@463.5--463.38
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        perm := FullPerm;
        if (perm != NoPerm) {
          assert {:msg "  Folding Tree__state(cur) might fail. There might be insufficient permission to access cur.Tree__data (testTreeWandE2.vpr@463.5--463.38) [174478]"}
            perm <= Mask[cur, Tree__data];
        }
        Mask := Mask[cur, Tree__data:=Mask[cur, Tree__data] - perm];
        perm := FullPerm;
        if (perm != NoPerm) {
          assert {:msg "  Folding Tree__state(cur) might fail. There might be insufficient permission to access cur.Tree__left (testTreeWandE2.vpr@463.5--463.38) [174480]"}
            perm <= Mask[cur, Tree__left];
        }
        Mask := Mask[cur, Tree__left:=Mask[cur, Tree__left] - perm];
        perm := FullPerm;
        if (perm != NoPerm) {
          assert {:msg "  Folding Tree__state(cur) might fail. There might be insufficient permission to access cur.Tree__right (testTreeWandE2.vpr@463.5--463.38) [174482]"}
            perm <= Mask[cur, Tree__right];
        }
        Mask := Mask[cur, Tree__right:=Mask[cur, Tree__right] - perm];
        if (Heap[cur, Tree__left] != null) {
          perm := FullPerm;
          if (perm != NoPerm) {
            assert {:msg "  Folding Tree__state(cur) might fail. There might be insufficient permission to access Tree__state(cur.Tree__left) (testTreeWandE2.vpr@463.5--463.38) [174484]"}
              perm <= Mask[null, Tree__state(Heap[cur, Tree__left])];
          }
          Mask := Mask[null, Tree__state(Heap[cur, Tree__left]):=Mask[null, Tree__state(Heap[cur, Tree__left])] - perm];
          
          // -- Record predicate instance information
            assume InsidePredicate(Tree__state(cur), Heap[null, Tree__state(cur)], Tree__state(Heap[cur, Tree__left]), Heap[null, Tree__state(Heap[cur, Tree__left])]);
        }
        if (Heap[cur, Tree__right] != null) {
          perm := FullPerm;
          if (perm != NoPerm) {
            assert {:msg "  Folding Tree__state(cur) might fail. There might be insufficient permission to access Tree__state(cur.Tree__right) (testTreeWandE2.vpr@463.5--463.38) [174486]"}
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
          assume (forall <A, B> o_42: Ref, f_26: (Field A B) ::
            { newPMask[o_42, f_26] }
            Heap[null, Tree__state#sm(cur)][o_42, f_26] || Heap[null, Tree__state#sm(Heap[cur, Tree__left])][o_42, f_26] ==> newPMask[o_42, f_26]
          );
          Heap := Heap[null, Tree__state#sm(cur):=newPMask];
        }
        if (Heap[cur, Tree__right] != null) {
          havoc newPMask;
          assume (forall <A, B> o_13: Ref, f_45: (Field A B) ::
            { newPMask[o_13, f_45] }
            Heap[null, Tree__state#sm(cur)][o_13, f_45] || Heap[null, Tree__state#sm(Heap[cur, Tree__right])][o_13, f_45] ==> newPMask[o_13, f_45]
          );
          Heap := Heap[null, Tree__state#sm(cur):=newPMask];
        }
        assume state(Heap, Mask);
        assume state(Heap, Mask);
      
      // -- Translating statement: assert Tree__tolist(cur) == cur_contents[1..] -- testTreeWandE2.vpr@466.5--466.50
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        
        // -- Check definedness of Tree__tolist(cur) == cur_contents[1..]
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef1Mask := ExhaleWellDef0Mask;
            ExhaleWellDef1Heap := ExhaleWellDef0Heap;
            if (cur != null) {
              perm := FullPerm;
              assert {:msg "  Precondition of function Tree__tolist might not hold. There might be insufficient permission to access Tree__state(cur) (testTreeWandE2.vpr@466.12--466.29) [174488]"}
                NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[null, Tree__state(cur)];
            }
            // Finish exhale
            havoc ExhaleHeap;
            assume IdenticalOnKnownLocations(ExhaleWellDef0Heap, ExhaleHeap, ExhaleWellDef0Mask);
            ExhaleWellDef0Heap := ExhaleHeap;
            // Stop execution
            assume false;
          }
        assert {:msg "  Assert might fail. Assertion Tree__tolist(cur) == cur_contents[1..] might not hold. (testTreeWandE2.vpr@466.12--466.50) [174489]"}
          Seq#Equal(Tree__tolist(Heap, cur), Seq#Drop(cur_contents, 1));
        assume state(Heap, Mask);
      
      // -- Translating statement: assert acc(Tree__state(cur), write) &&
  //   Tree__tolist(cur) == Tree__tolist(cur) -- testTreeWandE2.vpr@467.5--467.84
        AssertHeap := Heap;
        AssertMask := Mask;
        ExhaleWellDef0Mask := AssertMask;
        ExhaleWellDef0Heap := AssertHeap;
        perm := FullPerm;
        if (perm != NoPerm) {
          assert {:msg "  Assert might fail. There might be insufficient permission to access Tree__state(cur) (testTreeWandE2.vpr@467.12--467.84) [174491]"}
            perm <= AssertMask[null, Tree__state(cur)];
        }
        AssertMask := AssertMask[null, Tree__state(cur):=AssertMask[null, Tree__state(cur)] - perm];
        
        // -- Check definedness of Tree__tolist(cur) == Tree__tolist(cur)
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef1Mask := ExhaleWellDef0Mask;
            ExhaleWellDef1Heap := ExhaleWellDef0Heap;
            if (cur != null) {
              perm := FullPerm;
              assert {:msg "  Precondition of function Tree__tolist might not hold. There might be insufficient permission to access Tree__state(cur) (testTreeWandE2.vpr@467.45--467.62) [174492]"}
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
            ExhaleWellDef1Mask := ExhaleWellDef0Mask;
            ExhaleWellDef1Heap := ExhaleWellDef0Heap;
            if (cur != null) {
              perm := FullPerm;
              assert {:msg "  Precondition of function Tree__tolist might not hold. There might be insufficient permission to access Tree__state(cur) (testTreeWandE2.vpr@467.66--467.83) [174493]"}
                NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[null, Tree__state(cur)];
            }
            // Finish exhale
            havoc ExhaleHeap;
            assume IdenticalOnKnownLocations(ExhaleWellDef0Heap, ExhaleHeap, ExhaleWellDef0Mask);
            ExhaleWellDef0Heap := ExhaleHeap;
            // Stop execution
            assume false;
          }
        assert {:msg "  Assert might fail. Assertion Tree__tolist(cur) == Tree__tolist(cur) might not hold. (testTreeWandE2.vpr@467.12--467.84) [174494]"}
          Seq#Equal(Tree__tolist(AssertHeap, cur), Tree__tolist(AssertHeap, cur));
        assume state(Heap, Mask);
      
      // -- Translating statement: assert acc(Tree__state(cur), write) &&
  //   Tree__tolist(cur) == cur_contents[1..] -- testTreeWandE2.vpr@468.5--468.84
        AssertHeap := Heap;
        AssertMask := Mask;
        ExhaleWellDef0Mask := AssertMask;
        ExhaleWellDef0Heap := AssertHeap;
        perm := FullPerm;
        if (perm != NoPerm) {
          assert {:msg "  Assert might fail. There might be insufficient permission to access Tree__state(cur) (testTreeWandE2.vpr@468.12--468.84) [174496]"}
            perm <= AssertMask[null, Tree__state(cur)];
        }
        AssertMask := AssertMask[null, Tree__state(cur):=AssertMask[null, Tree__state(cur)] - perm];
        
        // -- Check definedness of Tree__tolist(cur) == cur_contents[1..]
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef1Mask := ExhaleWellDef0Mask;
            ExhaleWellDef1Heap := ExhaleWellDef0Heap;
            if (cur != null) {
              perm := FullPerm;
              assert {:msg "  Precondition of function Tree__tolist might not hold. There might be insufficient permission to access Tree__state(cur) (testTreeWandE2.vpr@468.45--468.62) [174497]"}
                NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[null, Tree__state(cur)];
            }
            // Finish exhale
            havoc ExhaleHeap;
            assume IdenticalOnKnownLocations(ExhaleWellDef0Heap, ExhaleHeap, ExhaleWellDef0Mask);
            ExhaleWellDef0Heap := ExhaleHeap;
            // Stop execution
            assume false;
          }
        assert {:msg "  Assert might fail. Assertion Tree__tolist(cur) == cur_contents[1..] might not hold. (testTreeWandE2.vpr@468.12--468.84) [174498]"}
          Seq#Equal(Tree__tolist(AssertHeap, cur), Seq#Drop(cur_contents, 1));
        assume state(Heap, Mask);
      
      // -- Translating statement: Wand_state_contains_for_state_contains___apply(vwand, current_thread_id) -- testTreeWandE2.vpr@469.5--469.77
        PreCallHeap := Heap;
        PreCallMask := Mask;
        
        // -- Exhaling precondition
          ExhaleWellDef0Mask := Mask;
          ExhaleWellDef0Heap := Heap;
          assert {:msg "  The precondition of method Wand_state_contains_for_state_contains___apply might not hold. Assertion vwand != null might not hold. (testTreeWandE2.vpr@469.5--469.77) [174499]"}
            vwand != null;
          assert {:msg "  The precondition of method Wand_state_contains_for_state_contains___apply might not hold. Assertion current_thread_id >= 0 might not hold. (testTreeWandE2.vpr@469.5--469.77) [174500]"}
            current_thread_id >= 0;
          perm := FullPerm;
          if (perm != NoPerm) {
            assert {:msg "  The precondition of method Wand_state_contains_for_state_contains___apply might not hold. There might be insufficient permission to access Wand_state_contains_for_state_contains__valid_wand(vwand) (testTreeWandE2.vpr@469.5--469.77) [174501]"}
              perm <= Mask[null, Wand_state_contains_for_state_contains__valid_wand(vwand)];
          }
          Mask := Mask[null, Wand_state_contains_for_state_contains__valid_wand(vwand):=Mask[null, Wand_state_contains_for_state_contains__valid_wand(vwand)] - perm];
          perm := FullPerm;
          if (perm != NoPerm) {
            assert {:msg "  The precondition of method Wand_state_contains_for_state_contains___apply might not hold. There might be insufficient permission to access Tree__state(Wand_state_contains_for_state_contains__get_in_1(vwand)) (testTreeWandE2.vpr@469.5--469.77) [174502]"}
              perm <= Mask[null, Tree__state(Wand_state_contains_for_state_contains__get_in_1(Heap, vwand))];
          }
          Mask := Mask[null, Tree__state(Wand_state_contains_for_state_contains__get_in_1(Heap, vwand)):=Mask[null, Tree__state(Wand_state_contains_for_state_contains__get_in_1(Heap, vwand))] - perm];
          assert {:msg "  The precondition of method Wand_state_contains_for_state_contains___apply might not hold. Assertion Tree__tolist(Wand_state_contains_for_state_contains__get_in_1(vwand)) == Wand_state_contains_for_state_contains__get_in_1_0(vwand) might not hold. (testTreeWandE2.vpr@469.5--469.77) [174503]"}
            Seq#Equal(Tree__tolist(Heap, Wand_state_contains_for_state_contains__get_in_1(Heap, vwand)), Wand_state_contains_for_state_contains__get_in_1_0(Heap, vwand));
          assert {:msg "  The precondition of method Wand_state_contains_for_state_contains___apply might not hold. Assertion Wand_state_contains_for_state_contains__get_out_1(vwand) != null might not hold. (testTreeWandE2.vpr@469.5--469.77) [174504]"}
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
      
      // -- Translating statement: __flatten_43 := top -- testTreeWandE2.vpr@470.5--470.24
        __flatten_43 := top;
        assume state(Heap, Mask);
      
      // -- Translating statement: sys__result := __flatten_43 -- testTreeWandE2.vpr@471.5--471.32
        sys__result := __flatten_43;
        assume state(Heap, Mask);
      
      // -- Translating statement: assert (sys__result != null ==> acc(Tree__state(sys__result), write)) &&
  //   (old(Tree__tolist(top))[1..] == Tree__tolist(sys__result) &&
  //   (old(Tree__sorted(top)) ==> Tree__sorted(sys__result))) -- testTreeWandE2.vpr@472.5--472.196
        AssertHeap := Heap;
        AssertMask := Mask;
        ExhaleWellDef0Mask := AssertMask;
        ExhaleWellDef0Heap := AssertHeap;
        if (sys__result != null) {
          perm := FullPerm;
          if (perm != NoPerm) {
            assert {:msg "  Assert might fail. There might be insufficient permission to access Tree__state(sys__result) (testTreeWandE2.vpr@472.12--472.196) [174506]"}
              perm <= AssertMask[null, Tree__state(sys__result)];
          }
          AssertMask := AssertMask[null, Tree__state(sys__result):=AssertMask[null, Tree__state(sys__result)] - perm];
        }
        
        // -- Check definedness of old(Tree__tolist(top))[1..] == Tree__tolist(sys__result)
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef1Mask := oldMask;
            ExhaleWellDef1Heap := oldHeap;
            if (top != null) {
              perm := FullPerm;
              assert {:msg "  Precondition of function Tree__tolist might not hold. There might be insufficient permission to access Tree__state(top) (testTreeWandE2.vpr@472.85--472.102) [174507]"}
                NoPerm < perm ==> NoPerm < oldMask[null, Tree__state(top)];
            }
            // Finish exhale
            // Stop execution
            assume false;
          }
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef1Mask := ExhaleWellDef0Mask;
            ExhaleWellDef1Heap := ExhaleWellDef0Heap;
            if (sys__result != null) {
              perm := FullPerm;
              assert {:msg "  Precondition of function Tree__tolist might not hold. There might be insufficient permission to access Tree__state(sys__result) (testTreeWandE2.vpr@472.112--472.137) [174508]"}
                NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[null, Tree__state(sys__result)];
            }
            // Finish exhale
            havoc ExhaleHeap;
            assume IdenticalOnKnownLocations(ExhaleWellDef0Heap, ExhaleHeap, ExhaleWellDef0Mask);
            ExhaleWellDef0Heap := ExhaleHeap;
            // Stop execution
            assume false;
          }
        assert {:msg "  Assert might fail. Assertion old(Tree__tolist(top))[1..] == Tree__tolist(sys__result) might not hold. (testTreeWandE2.vpr@472.12--472.196) [174509]"}
          Seq#Equal(Seq#Drop(Tree__tolist(oldHeap, top), 1), Tree__tolist(AssertHeap, sys__result));
        
        // -- Check definedness of old(Tree__sorted(top))
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef1Mask := oldMask;
            ExhaleWellDef1Heap := oldHeap;
            if (top != null) {
              perm := FullPerm;
              assert {:msg "  Precondition of function Tree__sorted might not hold. There might be insufficient permission to access Tree__state(top) (testTreeWandE2.vpr@472.147--472.164) [174510]"}
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
              ExhaleWellDef1Mask := ExhaleWellDef0Mask;
              ExhaleWellDef1Heap := ExhaleWellDef0Heap;
              if (sys__result != null) {
                perm := FullPerm;
                assert {:msg "  Precondition of function Tree__sorted might not hold. There might be insufficient permission to access Tree__state(sys__result) (testTreeWandE2.vpr@472.170--472.195) [174511]"}
                  NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[null, Tree__state(sys__result)];
              }
              // Finish exhale
              havoc ExhaleHeap;
              assume IdenticalOnKnownLocations(ExhaleWellDef0Heap, ExhaleHeap, ExhaleWellDef0Mask);
              ExhaleWellDef0Heap := ExhaleHeap;
              // Stop execution
              assume false;
            }
          assert {:msg "  Assert might fail. Assertion Tree__sorted(sys__result) might not hold. (testTreeWandE2.vpr@472.12--472.196) [174512]"}
            Tree__sorted(AssertHeap, sys__result);
        }
        assume state(Heap, Mask);
      
      // -- Translating statement: inhale false -- testTreeWandE2.vpr@473.5--473.17
        assume false;
        assume state(Heap, Mask);
        assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    if (sys__result != null) {
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Postcondition of Tree__del_min might not hold. There might be insufficient permission to access Tree__state(sys__result) (testTreeWandE2.vpr@374.11--374.73) [174513]"}
          perm <= Mask[null, Tree__state(sys__result)];
      }
      Mask := Mask[null, Tree__state(sys__result):=Mask[null, Tree__state(sys__result)] - perm];
    }
    assert {:msg "  Postcondition of Tree__del_min might not hold. Assertion old(Tree__tolist(top))[1..] == Tree__tolist(sys__result) might not hold. (testTreeWandE2.vpr@375.11--375.67) [174514]"}
      Seq#Equal(Seq#Drop(Tree__tolist(oldHeap, top), 1), Tree__tolist(Heap, sys__result));
    if (Tree__sorted(oldHeap, top)) {
      assert {:msg "  Postcondition of Tree__del_min might not hold. Assertion Tree__sorted(sys__result) might not hold. (testTreeWandE2.vpr@376.11--376.63) [174515]"}
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
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var perm: Perm;
  var diz: Ref;
  var freshObj: Ref;
  var __flatten_44: int;
  var __flatten_84: int;
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
    PostMask := PostMask[sys__result, Tree__data:=PostMask[sys__result, Tree__data] + perm];
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of sys__result.Tree__data == 0
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access sys__result.Tree__data (testTreeWandE2.vpr@480.11--480.78) [174516]"}
        HasDirectPerm(PostMask, sys__result, Tree__data);
    assume PostHeap[sys__result, Tree__data] == 0;
    assume state(PostHeap, PostMask);
    perm := FullPerm;
    assume sys__result != null;
    PostMask := PostMask[sys__result, Tree__left:=PostMask[sys__result, Tree__left] + perm];
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of sys__result.Tree__left == null
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access sys__result.Tree__left (testTreeWandE2.vpr@481.11--481.81) [174517]"}
        HasDirectPerm(PostMask, sys__result, Tree__left);
    assume PostHeap[sys__result, Tree__left] == null;
    assume state(PostHeap, PostMask);
    perm := FullPerm;
    assume sys__result != null;
    PostMask := PostMask[sys__result, Tree__right:=PostMask[sys__result, Tree__right] + perm];
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of sys__result.Tree__right == null
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access sys__result.Tree__right (testTreeWandE2.vpr@482.11--482.83) [174518]"}
        HasDirectPerm(PostMask, sys__result, Tree__right);
    assume PostHeap[sys__result, Tree__right] == null;
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Assumptions about local variables
    assume Heap[diz, $allocated];
  
  // -- Translating statement: diz := new(Tree__data, Tree__left, Tree__right) -- testTreeWandE2.vpr@487.3--487.50
    havoc freshObj;
    assume freshObj != null && !Heap[freshObj, $allocated];
    Heap := Heap[freshObj, $allocated:=true];
    diz := freshObj;
    Mask := Mask[diz, Tree__data:=Mask[diz, Tree__data] + FullPerm];
    Mask := Mask[diz, Tree__left:=Mask[diz, Tree__left] + FullPerm];
    Mask := Mask[diz, Tree__right:=Mask[diz, Tree__right] + FullPerm];
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_44 := 0 -- testTreeWandE2.vpr@488.3--488.20
    __flatten_44 := 0;
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_84 := __flatten_44 -- testTreeWandE2.vpr@489.3--489.31
    __flatten_84 := __flatten_44;
    assume state(Heap, Mask);
  
  // -- Translating statement: diz.Tree__data := __flatten_84 -- testTreeWandE2.vpr@490.3--490.33
    assert {:msg "  Assignment might fail. There might be insufficient permission to access diz.Tree__data (testTreeWandE2.vpr@490.3--490.33) [174519]"}
      FullPerm == Mask[diz, Tree__data];
    Heap := Heap[diz, Tree__data:=__flatten_84];
    assume state(Heap, Mask);
  
  // -- Translating statement: diz.Tree__left := null -- testTreeWandE2.vpr@491.3--491.25
    assert {:msg "  Assignment might fail. There might be insufficient permission to access diz.Tree__left (testTreeWandE2.vpr@491.3--491.25) [174520]"}
      FullPerm == Mask[diz, Tree__left];
    Heap := Heap[diz, Tree__left:=null];
    assume state(Heap, Mask);
  
  // -- Translating statement: diz.Tree__right := null -- testTreeWandE2.vpr@492.3--492.26
    assert {:msg "  Assignment might fail. There might be insufficient permission to access diz.Tree__right (testTreeWandE2.vpr@492.3--492.26) [174521]"}
      FullPerm == Mask[diz, Tree__right];
    Heap := Heap[diz, Tree__right:=null];
    assume state(Heap, Mask);
  
  // -- Translating statement: sys__result := diz -- testTreeWandE2.vpr@493.3--493.21
    sys__result := diz;
    assume state(Heap, Mask);
  
  // -- Translating statement: assert sys__result != null &&
  //   (acc(sys__result.Tree__data, write) && sys__result.Tree__data == 0 &&
  //   (acc(sys__result.Tree__left, write) && sys__result.Tree__left == null &&
  //   (acc(sys__result.Tree__right, write) && sys__result.Tree__right == null))) -- testTreeWandE2.vpr@494.3--494.258
    AssertHeap := Heap;
    AssertMask := Mask;
    ExhaleWellDef0Mask := AssertMask;
    ExhaleWellDef0Heap := AssertHeap;
    assert {:msg "  Assert might fail. Assertion sys__result != null might not hold. (testTreeWandE2.vpr@494.10--494.258) [174522]"}
      sys__result != null;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Assert might fail. There might be insufficient permission to access sys__result.Tree__data (testTreeWandE2.vpr@494.10--494.258) [174524]"}
        perm <= AssertMask[sys__result, Tree__data];
    }
    AssertMask := AssertMask[sys__result, Tree__data:=AssertMask[sys__result, Tree__data] - perm];
    
    // -- Check definedness of sys__result.Tree__data == 0
      assert {:msg "  Assert might fail. There might be insufficient permission to access sys__result.Tree__data (testTreeWandE2.vpr@494.10--494.258) [174525]"}
        HasDirectPerm(ExhaleWellDef0Mask, sys__result, Tree__data);
    assert {:msg "  Assert might fail. Assertion sys__result.Tree__data == 0 might not hold. (testTreeWandE2.vpr@494.10--494.258) [174526]"}
      AssertHeap[sys__result, Tree__data] == 0;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Assert might fail. There might be insufficient permission to access sys__result.Tree__left (testTreeWandE2.vpr@494.10--494.258) [174528]"}
        perm <= AssertMask[sys__result, Tree__left];
    }
    AssertMask := AssertMask[sys__result, Tree__left:=AssertMask[sys__result, Tree__left] - perm];
    
    // -- Check definedness of sys__result.Tree__left == null
      assert {:msg "  Assert might fail. There might be insufficient permission to access sys__result.Tree__left (testTreeWandE2.vpr@494.10--494.258) [174529]"}
        HasDirectPerm(ExhaleWellDef0Mask, sys__result, Tree__left);
    assert {:msg "  Assert might fail. Assertion sys__result.Tree__left == null might not hold. (testTreeWandE2.vpr@494.10--494.258) [174530]"}
      AssertHeap[sys__result, Tree__left] == null;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Assert might fail. There might be insufficient permission to access sys__result.Tree__right (testTreeWandE2.vpr@494.10--494.258) [174532]"}
        perm <= AssertMask[sys__result, Tree__right];
    }
    AssertMask := AssertMask[sys__result, Tree__right:=AssertMask[sys__result, Tree__right] - perm];
    
    // -- Check definedness of sys__result.Tree__right == null
      assert {:msg "  Assert might fail. There might be insufficient permission to access sys__result.Tree__right (testTreeWandE2.vpr@494.10--494.258) [174533]"}
        HasDirectPerm(ExhaleWellDef0Mask, sys__result, Tree__right);
    assert {:msg "  Assert might fail. Assertion sys__result.Tree__right == null might not hold. (testTreeWandE2.vpr@494.10--494.258) [174534]"}
      AssertHeap[sys__result, Tree__right] == null;
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale false -- testTreeWandE2.vpr@495.3--495.15
    assume false;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    assert {:msg "  Postcondition of Tree__Tree might not hold. Assertion sys__result != null might not hold. (testTreeWandE2.vpr@479.11--479.30) [174535]"}
      sys__result != null;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of Tree__Tree might not hold. There might be insufficient permission to access sys__result.Tree__data (testTreeWandE2.vpr@480.11--480.78) [174536]"}
        perm <= Mask[sys__result, Tree__data];
    }
    Mask := Mask[sys__result, Tree__data:=Mask[sys__result, Tree__data] - perm];
    assert {:msg "  Postcondition of Tree__Tree might not hold. Assertion sys__result.Tree__data == 0 might not hold. (testTreeWandE2.vpr@480.11--480.78) [174537]"}
      Heap[sys__result, Tree__data] == 0;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of Tree__Tree might not hold. There might be insufficient permission to access sys__result.Tree__left (testTreeWandE2.vpr@481.11--481.81) [174538]"}
        perm <= Mask[sys__result, Tree__left];
    }
    Mask := Mask[sys__result, Tree__left:=Mask[sys__result, Tree__left] - perm];
    assert {:msg "  Postcondition of Tree__Tree might not hold. Assertion sys__result.Tree__left == null might not hold. (testTreeWandE2.vpr@481.11--481.81) [174539]"}
      Heap[sys__result, Tree__left] == null;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of Tree__Tree might not hold. There might be insufficient permission to access sys__result.Tree__right (testTreeWandE2.vpr@482.11--482.83) [174540]"}
        perm <= Mask[sys__result, Tree__right];
    }
    Mask := Mask[sys__result, Tree__right:=Mask[sys__result, Tree__right] - perm];
    assert {:msg "  Postcondition of Tree__Tree might not hold. Assertion sys__result.Tree__right == null might not hold. (testTreeWandE2.vpr@482.11--482.83) [174541]"}
      Heap[sys__result, Tree__right] == null;
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}