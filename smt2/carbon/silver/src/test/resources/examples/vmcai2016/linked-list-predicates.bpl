// 
// Translation of Viper program.
// 
// Date:         2025-01-26 23:16:02
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/examples/vmcai2016/linked-list-predicates.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/examples/vmcai2016/linked-list-predicates-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
axiom (forall o_141: Ref, f_121: (Field NormalField Ref), Heap: HeapType ::
  { Heap[o_141, f_121] }
  Heap[o_141, $allocated] ==> Heap[Heap[o_141, f_121], $allocated]
);
function  succHeap(Heap0: HeapType, Heap1: HeapType): bool;
function  succHeapTrans(Heap0: HeapType, Heap1: HeapType): bool;
function  IdenticalOnKnownLocations(Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType): bool;
function  IsPredicateField<A, B>(f_1: (Field A B)): bool;
function  IsWandField<A, B>(f_1: (Field A B)): bool;
function  getPredWandId<A, B>(f_1: (Field A B)): int;
// Frame all locations with direct permissions
axiom (forall <A, B> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_142: Ref, f_125: (Field A B) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_142, f_125] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, o_142, f_125) ==> Heap[o_142, f_125] == ExhaleHeap[o_142, f_125]
);
// Frame all predicate mask locations of predicates with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_50: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_50), ExhaleHeap[null, PredicateMaskField(pm_f_50)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_50) && IsPredicateField(pm_f_50) ==> Heap[null, PredicateMaskField(pm_f_50)] == ExhaleHeap[null, PredicateMaskField(pm_f_50)]
);
// Frame all locations with known folded permissions
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_50: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_50) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_50) && IsPredicateField(pm_f_50) ==> (forall <A, B> o2_51: Ref, f_125: (Field A B) ::
    { ExhaleHeap[o2_51, f_125] }
    Heap[null, PredicateMaskField(pm_f_50)][o2_51, f_125] ==> Heap[o2_51, f_125] == ExhaleHeap[o2_51, f_125]
  )
);
// Frame all wand mask locations of wands with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_50: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_50), ExhaleHeap[null, WandMaskField(pm_f_50)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_50) && IsWandField(pm_f_50) ==> Heap[null, WandMaskField(pm_f_50)] == ExhaleHeap[null, WandMaskField(pm_f_50)]
);
// Frame all locations in the footprint of magic wands
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_50: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_50) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_50) && IsWandField(pm_f_50) ==> (forall <A, B> o2_51: Ref, f_125: (Field A B) ::
    { ExhaleHeap[o2_51, f_125] }
    Heap[null, WandMaskField(pm_f_50)][o2_51, f_125] ==> Heap[o2_51, f_125] == ExhaleHeap[o2_51, f_125]
  )
);
// All previously-allocated references are still allocated
axiom (forall Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_142: Ref ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_142, $allocated] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> Heap[o_142, $allocated] ==> ExhaleHeap[o_142, $allocated]
);
// Updated Heaps are Successor Heaps
axiom (forall <A, B> Heap: HeapType, o_141: Ref, f_158: (Field A B), v: B ::
  { Heap[o_141, f_158:=v] }
  succHeap(Heap, Heap[o_141, f_158:=v])
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
// - height 4: contentNodes
// - height 3: lengthNodes
// - height 2: content
// - height 1: length
// - height 0: peek
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

const unique data: Field NormalField int;
axiom !IsPredicateField(data);
axiom !IsWandField(data);
const unique next: Field NormalField Ref;
axiom !IsPredicateField(next);
axiom !IsWandField(next);
const unique head_3: Field NormalField Ref;
axiom !IsPredicateField(head_3);
axiom !IsWandField(head_3);
const unique held: Field NormalField int;
axiom !IsPredicateField(held);
axiom !IsWandField(held);
const unique changed: Field NormalField bool;
axiom !IsPredicateField(changed);
axiom !IsWandField(changed);

// ==================================================
// Translation of function contentNodes
// ==================================================

// Uninterpreted function definitions
function  contentNodes(Heap: HeapType, this: Ref, end_1: Ref): Seq int;
function  contentNodes'(Heap: HeapType, this: Ref, end_1: Ref): Seq int;
axiom (forall Heap: HeapType, this: Ref, end_1: Ref ::
  { contentNodes(Heap, this, end_1) }
  contentNodes(Heap, this, end_1) == contentNodes'(Heap, this, end_1) && dummyFunction(contentNodes#triggerStateless(this, end_1))
);
axiom (forall Heap: HeapType, this: Ref, end_1: Ref ::
  { contentNodes'(Heap, this, end_1) }
  dummyFunction(contentNodes#triggerStateless(this, end_1))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, this: Ref, end_1: Ref ::
  { state(Heap, Mask), contentNodes(Heap, this, end_1) } { state(Heap, Mask), contentNodes#triggerStateless(this, end_1), lseg#trigger(Heap, lseg(this, end_1)) }
  state(Heap, Mask) && AssumeFunctionsAbove < 4 ==> contentNodes(Heap, this, end_1) == (if this == end_1 then (Seq#Empty(): Seq int) else Seq#Append(Seq#Singleton(Heap[this, data]), contentNodes'(Heap, Heap[this, next], end_1)))
);

// Framing axioms
function  contentNodes#frame(frame: FrameType, this: Ref, end_1: Ref): Seq int;
axiom (forall Heap: HeapType, Mask: MaskType, this: Ref, end_1: Ref ::
  { state(Heap, Mask), contentNodes'(Heap, this, end_1) } { state(Heap, Mask), contentNodes#triggerStateless(this, end_1), lseg#trigger(Heap, lseg(this, end_1)) }
  state(Heap, Mask) ==> contentNodes'(Heap, this, end_1) == contentNodes#frame(Heap[null, lseg(this, end_1)], this, end_1)
);

// Postcondition axioms
axiom (forall Heap: HeapType, Mask: MaskType, this: Ref, end_1: Ref ::
  { state(Heap, Mask), contentNodes'(Heap, this, end_1) }
  state(Heap, Mask) && (AssumeFunctionsAbove < 4 || contentNodes#trigger(Heap[null, lseg(this, end_1)], this, end_1)) ==> this == end_1 ==> Seq#Equal(contentNodes'(Heap, this, end_1), (Seq#Empty(): Seq int))
);
axiom (forall Heap: HeapType, Mask: MaskType, this: Ref, end_1: Ref ::
  { state(Heap, Mask), contentNodes'(Heap, this, end_1) }
  state(Heap, Mask) && (AssumeFunctionsAbove < 4 || contentNodes#trigger(Heap[null, lseg(this, end_1)], this, end_1)) ==> this != end_1 ==> 0 < Seq#Length(contentNodes'(Heap, this, end_1)) && Seq#Index(contentNodes'(Heap, this, end_1), 0) == Heap[this, data]
);
axiom (forall Heap: HeapType, Mask: MaskType, this: Ref, end_1: Ref ::
  { state(Heap, Mask), contentNodes'(Heap, this, end_1) }
  state(Heap, Mask) && (AssumeFunctionsAbove < 4 || contentNodes#trigger(Heap[null, lseg(this, end_1)], this, end_1)) ==> (forall i: int, j: int ::
    { Seq#Index(contentNodes'(Heap, this, end_1), i), Seq#Index(contentNodes'(Heap, this, end_1), j) }
    0 <= i && (i < j && j < Seq#Length(contentNodes'(Heap, this, end_1))) ==> Seq#Index(contentNodes'(Heap, this, end_1), i) <= Seq#Index(contentNodes'(Heap, this, end_1), j)
  )
);

// Trigger function (controlling recursive postconditions)
function  contentNodes#trigger(frame: FrameType, this: Ref, end_1: Ref): bool;

// State-independent trigger function
function  contentNodes#triggerStateless(this: Ref, end_1: Ref): Seq int;

// Check contract well-formedness and postcondition
procedure contentNodes#definedness(this: Ref, end_1: Ref) returns (Result: (Seq int))
  modifies Heap, Mask;
{
  var perm: Perm;
  var UnfoldingHeap: HeapType;
  var UnfoldingMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var Unfolding1Heap: HeapType;
  var Unfolding1Mask: MaskType;
  var newPMask: PMaskType;
  var ExhaleHeap: HeapType;
  var ExhaleWellDef1Heap: HeapType;
  var ExhaleWellDef1Mask: MaskType;
  var i_12: int;
  var j_23: int;
  var i_2: int;
  var j_2_2: int;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume Heap[this, $allocated];
    assume Heap[end_1, $allocated];
    assume AssumeFunctionsAbove == 4;
  
  // -- Inhaling precondition (with checking)
    perm := FullPerm;
    Mask := Mask[null, lseg(this, end_1):=Mask[null, lseg(this, end_1)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Check definedness of function body
    
    // -- Check definedness of (this == end ? Seq[Int]() : (unfolding acc(lseg(this, end), write) in Seq(this.data) ++ contentNodes(this.next, end)))
      if (this == end_1) {
      } else {
        UnfoldingHeap := Heap;
        UnfoldingMask := Mask;
        assume lseg#trigger(UnfoldingHeap, lseg(this, end_1));
        assume UnfoldingHeap[null, lseg(this, end_1)] == FrameFragment((if this != end_1 then CombineFrames(FrameFragment(UnfoldingHeap[this, data]), CombineFrames(FrameFragment(UnfoldingHeap[this, next]), UnfoldingHeap[null, lseg(UnfoldingHeap[this, next], end_1)])) else EmptyFrame));
        ExhaleWellDef0Heap := UnfoldingHeap;
        ExhaleWellDef0Mask := UnfoldingMask;
        perm := FullPerm;
        assert {:msg "  Function might not be well-formed. There might be insufficient permission to access lseg(this, end) (linked-list-predicates.vpr@20.1--31.2) [111905]"}
          NoPerm < perm ==> NoPerm < UnfoldingMask[null, lseg(this, end_1)];
        if (this != end_1) {
          perm := FullPerm;
          assume this != null;
          UnfoldingMask := UnfoldingMask[this, data:=UnfoldingMask[this, data] + perm];
          assume state(UnfoldingHeap, UnfoldingMask);
          perm := FullPerm;
          assume this != null;
          UnfoldingMask := UnfoldingMask[this, next:=UnfoldingMask[this, next] + perm];
          assume state(UnfoldingHeap, UnfoldingMask);
          perm := FullPerm;
          UnfoldingMask := UnfoldingMask[null, lseg(UnfoldingHeap[this, next], end_1):=UnfoldingMask[null, lseg(UnfoldingHeap[this, next], end_1)] + perm];
          
          // -- Extra unfolding of predicate
            assume InsidePredicate(lseg(this, end_1), UnfoldingHeap[null, lseg(this, end_1)], lseg(UnfoldingHeap[this, next], end_1), UnfoldingHeap[null, lseg(UnfoldingHeap[this, next], end_1)]);
          assume state(UnfoldingHeap, UnfoldingMask);
          
          // -- Execute unfolding (for extra information)
            Unfolding1Heap := UnfoldingHeap;
            Unfolding1Mask := UnfoldingMask;
            assume lseg#trigger(Unfolding1Heap, lseg(Unfolding1Heap[this, next], end_1));
            assume Unfolding1Heap[null, lseg(Unfolding1Heap[this, next], end_1)] == FrameFragment((if Unfolding1Heap[this, next] != end_1 then CombineFrames(FrameFragment(Unfolding1Heap[Unfolding1Heap[this, next], data]), CombineFrames(FrameFragment(Unfolding1Heap[Unfolding1Heap[this, next], next]), Unfolding1Heap[null, lseg(Unfolding1Heap[Unfolding1Heap[this, next], next], end_1)])) else EmptyFrame));
            ExhaleWellDef0Heap := Unfolding1Heap;
            ExhaleWellDef0Mask := Unfolding1Mask;
            perm := FullPerm;
            if (Unfolding1Heap[this, next] != end_1) {
              perm := FullPerm;
              assume Unfolding1Heap[this, next] != null;
              Unfolding1Mask := Unfolding1Mask[Unfolding1Heap[this, next], data:=Unfolding1Mask[Unfolding1Heap[this, next], data] + perm];
              assume state(Unfolding1Heap, Unfolding1Mask);
              perm := FullPerm;
              assume Unfolding1Heap[this, next] != null;
              Unfolding1Mask := Unfolding1Mask[Unfolding1Heap[this, next], next:=Unfolding1Mask[Unfolding1Heap[this, next], next] + perm];
              assume state(Unfolding1Heap, Unfolding1Mask);
              perm := FullPerm;
              Unfolding1Mask := Unfolding1Mask[null, lseg(Unfolding1Heap[Unfolding1Heap[this, next], next], end_1):=Unfolding1Mask[null, lseg(Unfolding1Heap[Unfolding1Heap[this, next], next], end_1)] + perm];
              
              // -- Extra unfolding of predicate
                assume InsidePredicate(lseg(Unfolding1Heap[this, next], end_1), Unfolding1Heap[null, lseg(Unfolding1Heap[this, next], end_1)], lseg(Unfolding1Heap[Unfolding1Heap[this, next], next], end_1), Unfolding1Heap[null, lseg(Unfolding1Heap[Unfolding1Heap[this, next], next], end_1)]);
              assume state(Unfolding1Heap, Unfolding1Mask);
              assume Unfolding1Heap[Unfolding1Heap[this, next], next] != end_1 ==> Unfolding1Heap[Unfolding1Heap[this, next], data] <= Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[this, next], next], data];
              
              // -- Free assumptions (inhale module)
                if (Unfolding1Heap[Unfolding1Heap[this, next], next] != end_1) {
                  Unfolding1Heap := Unfolding1Heap[null, lseg#sm(Unfolding1Heap[Unfolding1Heap[this, next], next], end_1):=Unfolding1Heap[null, lseg#sm(Unfolding1Heap[Unfolding1Heap[this, next], next], end_1)][Unfolding1Heap[Unfolding1Heap[this, next], next], data:=true]];
                  Unfolding1Heap := Unfolding1Heap[null, lseg#sm(Unfolding1Heap[Unfolding1Heap[this, next], next], end_1):=Unfolding1Heap[null, lseg#sm(Unfolding1Heap[Unfolding1Heap[this, next], next], end_1)][Unfolding1Heap[Unfolding1Heap[this, next], next], next:=true]];
                  havoc newPMask;
                  assume (forall <A, B> o_6: Ref, f_12: (Field A B) ::
                    { newPMask[o_6, f_12] }
                    Unfolding1Heap[null, lseg#sm(Unfolding1Heap[Unfolding1Heap[this, next], next], end_1)][o_6, f_12] || Unfolding1Heap[null, lseg#sm(Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[this, next], next], next], end_1)][o_6, f_12] ==> newPMask[o_6, f_12]
                  );
                  Unfolding1Heap := Unfolding1Heap[null, lseg#sm(Unfolding1Heap[Unfolding1Heap[this, next], next], end_1):=newPMask];
                }
                assume state(Unfolding1Heap, Unfolding1Mask);
            }
            assume state(Unfolding1Heap, Unfolding1Mask);
          assume UnfoldingHeap[this, next] != end_1 ==> UnfoldingHeap[this, data] <= UnfoldingHeap[UnfoldingHeap[this, next], data];
          
          // -- Free assumptions (inhale module)
            if (UnfoldingHeap[this, next] != end_1) {
              UnfoldingHeap := UnfoldingHeap[null, lseg#sm(UnfoldingHeap[this, next], end_1):=UnfoldingHeap[null, lseg#sm(UnfoldingHeap[this, next], end_1)][UnfoldingHeap[this, next], data:=true]];
              UnfoldingHeap := UnfoldingHeap[null, lseg#sm(UnfoldingHeap[this, next], end_1):=UnfoldingHeap[null, lseg#sm(UnfoldingHeap[this, next], end_1)][UnfoldingHeap[this, next], next:=true]];
              havoc newPMask;
              assume (forall <A, B> o_5: Ref, f_11: (Field A B) ::
                { newPMask[o_5, f_11] }
                UnfoldingHeap[null, lseg#sm(UnfoldingHeap[this, next], end_1)][o_5, f_11] || UnfoldingHeap[null, lseg#sm(UnfoldingHeap[UnfoldingHeap[this, next], next], end_1)][o_5, f_11] ==> newPMask[o_5, f_11]
              );
              UnfoldingHeap := UnfoldingHeap[null, lseg#sm(UnfoldingHeap[this, next], end_1):=newPMask];
            }
            assume state(UnfoldingHeap, UnfoldingMask);
        }
        assume state(UnfoldingHeap, UnfoldingMask);
        assert {:msg "  Function might not be well-formed. There might be insufficient permission to access this.data (linked-list-predicates.vpr@20.1--31.2) [111906]"}
          HasDirectPerm(UnfoldingMask, this, data);
        assert {:msg "  Function might not be well-formed. There might be insufficient permission to access this.next (linked-list-predicates.vpr@20.1--31.2) [111907]"}
          HasDirectPerm(UnfoldingMask, this, next);
        if (*) {
          // Exhale precondition of function application
          ExhaleWellDef0Heap := UnfoldingHeap;
          ExhaleWellDef0Mask := UnfoldingMask;
          perm := FullPerm;
          assert {:msg "  Precondition of function contentNodes might not hold. There might be insufficient permission to access lseg(this.next, end) (linked-list-predicates.vpr@29.39--29.67) [111908]"}
            NoPerm < perm ==> NoPerm < UnfoldingMask[null, lseg(UnfoldingHeap[this, next], end_1)];
          // Finish exhale
          havoc ExhaleHeap;
          assume IdenticalOnKnownLocations(UnfoldingHeap, ExhaleHeap, UnfoldingMask);
          UnfoldingHeap := ExhaleHeap;
          // Stop execution
          assume false;
        } else {
          // Enable postcondition for recursive call
          assume contentNodes#trigger(UnfoldingHeap[null, lseg(UnfoldingHeap[this, next], end_1)], UnfoldingHeap[this, next], end_1);
        }
        
        // -- Free assumptions (exp module)
          if (this != end_1) {
            Heap := Heap[null, lseg#sm(this, end_1):=Heap[null, lseg#sm(this, end_1)][this, data:=true]];
            Heap := Heap[null, lseg#sm(this, end_1):=Heap[null, lseg#sm(this, end_1)][this, next:=true]];
            havoc newPMask;
            assume (forall <A, B> o_40: Ref, f_52: (Field A B) ::
              { newPMask[o_40, f_52] }
              Heap[null, lseg#sm(this, end_1)][o_40, f_52] || Heap[null, lseg#sm(Heap[this, next], end_1)][o_40, f_52] ==> newPMask[o_40, f_52]
            );
            Heap := Heap[null, lseg#sm(this, end_1):=newPMask];
          }
          assume state(Heap, Mask);
      }
  
  // -- Translate function body
    Result := (if this == end_1 then (Seq#Empty(): Seq int) else Seq#Append(Seq#Singleton(Heap[this, data]), contentNodes(Heap, Heap[this, next], end_1)));
  
  // -- Exhaling postcondition (with checking)
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    if (this == end_1) {
      assert {:msg "  Postcondition of contentNodes might not hold. Assertion result == Seq[Int]() might not hold. (linked-list-predicates.vpr@22.12--22.48) [111909]"}
        Seq#Equal(Result, (Seq#Empty(): Seq int));
    }
    if (this != end_1) {
      assert {:msg "  Postcondition of contentNodes might not hold. Assertion 0 < |result| might not hold. (linked-list-predicates.vpr@23.12--24.87) [111910]"}
        0 < Seq#Length(Result);
      
      // -- Check definedness of result[0] == (unfolding acc(lseg(this, end), write) in this.data)
        assert {:msg "  Contract might not be well-formed. Index result[0] into result might exceed sequence length. (linked-list-predicates.vpr@23.12--24.87) [111911]"}
          0 < Seq#Length(Result);
        UnfoldingHeap := ExhaleWellDef0Heap;
        UnfoldingMask := ExhaleWellDef0Mask;
        assume lseg#trigger(UnfoldingHeap, lseg(this, end_1));
        assume UnfoldingHeap[null, lseg(this, end_1)] == FrameFragment((if this != end_1 then CombineFrames(FrameFragment(UnfoldingHeap[this, data]), CombineFrames(FrameFragment(UnfoldingHeap[this, next]), UnfoldingHeap[null, lseg(UnfoldingHeap[this, next], end_1)])) else EmptyFrame));
        ExhaleWellDef1Heap := UnfoldingHeap;
        ExhaleWellDef1Mask := UnfoldingMask;
        perm := FullPerm;
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access lseg(this, end) (linked-list-predicates.vpr@23.12--24.87) [111912]"}
          NoPerm < perm ==> NoPerm < UnfoldingMask[null, lseg(this, end_1)];
        if (this != end_1) {
          perm := FullPerm;
          assume this != null;
          UnfoldingMask := UnfoldingMask[this, data:=UnfoldingMask[this, data] + perm];
          assume state(UnfoldingHeap, UnfoldingMask);
          perm := FullPerm;
          assume this != null;
          UnfoldingMask := UnfoldingMask[this, next:=UnfoldingMask[this, next] + perm];
          assume state(UnfoldingHeap, UnfoldingMask);
          perm := FullPerm;
          UnfoldingMask := UnfoldingMask[null, lseg(UnfoldingHeap[this, next], end_1):=UnfoldingMask[null, lseg(UnfoldingHeap[this, next], end_1)] + perm];
          
          // -- Extra unfolding of predicate
            assume InsidePredicate(lseg(this, end_1), UnfoldingHeap[null, lseg(this, end_1)], lseg(UnfoldingHeap[this, next], end_1), UnfoldingHeap[null, lseg(UnfoldingHeap[this, next], end_1)]);
          assume state(UnfoldingHeap, UnfoldingMask);
          
          // -- Execute unfolding (for extra information)
            Unfolding1Heap := UnfoldingHeap;
            Unfolding1Mask := UnfoldingMask;
            assume lseg#trigger(Unfolding1Heap, lseg(Unfolding1Heap[this, next], end_1));
            assume Unfolding1Heap[null, lseg(Unfolding1Heap[this, next], end_1)] == FrameFragment((if Unfolding1Heap[this, next] != end_1 then CombineFrames(FrameFragment(Unfolding1Heap[Unfolding1Heap[this, next], data]), CombineFrames(FrameFragment(Unfolding1Heap[Unfolding1Heap[this, next], next]), Unfolding1Heap[null, lseg(Unfolding1Heap[Unfolding1Heap[this, next], next], end_1)])) else EmptyFrame));
            ExhaleWellDef1Heap := Unfolding1Heap;
            ExhaleWellDef1Mask := Unfolding1Mask;
            perm := FullPerm;
            if (Unfolding1Heap[this, next] != end_1) {
              perm := FullPerm;
              assume Unfolding1Heap[this, next] != null;
              Unfolding1Mask := Unfolding1Mask[Unfolding1Heap[this, next], data:=Unfolding1Mask[Unfolding1Heap[this, next], data] + perm];
              assume state(Unfolding1Heap, Unfolding1Mask);
              perm := FullPerm;
              assume Unfolding1Heap[this, next] != null;
              Unfolding1Mask := Unfolding1Mask[Unfolding1Heap[this, next], next:=Unfolding1Mask[Unfolding1Heap[this, next], next] + perm];
              assume state(Unfolding1Heap, Unfolding1Mask);
              perm := FullPerm;
              Unfolding1Mask := Unfolding1Mask[null, lseg(Unfolding1Heap[Unfolding1Heap[this, next], next], end_1):=Unfolding1Mask[null, lseg(Unfolding1Heap[Unfolding1Heap[this, next], next], end_1)] + perm];
              
              // -- Extra unfolding of predicate
                assume InsidePredicate(lseg(Unfolding1Heap[this, next], end_1), Unfolding1Heap[null, lseg(Unfolding1Heap[this, next], end_1)], lseg(Unfolding1Heap[Unfolding1Heap[this, next], next], end_1), Unfolding1Heap[null, lseg(Unfolding1Heap[Unfolding1Heap[this, next], next], end_1)]);
              assume state(Unfolding1Heap, Unfolding1Mask);
              assume Unfolding1Heap[Unfolding1Heap[this, next], next] != end_1 ==> Unfolding1Heap[Unfolding1Heap[this, next], data] <= Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[this, next], next], data];
              
              // -- Free assumptions (inhale module)
                if (Unfolding1Heap[Unfolding1Heap[this, next], next] != end_1) {
                  Unfolding1Heap := Unfolding1Heap[null, lseg#sm(Unfolding1Heap[Unfolding1Heap[this, next], next], end_1):=Unfolding1Heap[null, lseg#sm(Unfolding1Heap[Unfolding1Heap[this, next], next], end_1)][Unfolding1Heap[Unfolding1Heap[this, next], next], data:=true]];
                  Unfolding1Heap := Unfolding1Heap[null, lseg#sm(Unfolding1Heap[Unfolding1Heap[this, next], next], end_1):=Unfolding1Heap[null, lseg#sm(Unfolding1Heap[Unfolding1Heap[this, next], next], end_1)][Unfolding1Heap[Unfolding1Heap[this, next], next], next:=true]];
                  havoc newPMask;
                  assume (forall <A, B> o_46: Ref, f_60: (Field A B) ::
                    { newPMask[o_46, f_60] }
                    Unfolding1Heap[null, lseg#sm(Unfolding1Heap[Unfolding1Heap[this, next], next], end_1)][o_46, f_60] || Unfolding1Heap[null, lseg#sm(Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[this, next], next], next], end_1)][o_46, f_60] ==> newPMask[o_46, f_60]
                  );
                  Unfolding1Heap := Unfolding1Heap[null, lseg#sm(Unfolding1Heap[Unfolding1Heap[this, next], next], end_1):=newPMask];
                }
                assume state(Unfolding1Heap, Unfolding1Mask);
            }
            assume state(Unfolding1Heap, Unfolding1Mask);
          assume UnfoldingHeap[this, next] != end_1 ==> UnfoldingHeap[this, data] <= UnfoldingHeap[UnfoldingHeap[this, next], data];
          
          // -- Free assumptions (inhale module)
            if (UnfoldingHeap[this, next] != end_1) {
              UnfoldingHeap := UnfoldingHeap[null, lseg#sm(UnfoldingHeap[this, next], end_1):=UnfoldingHeap[null, lseg#sm(UnfoldingHeap[this, next], end_1)][UnfoldingHeap[this, next], data:=true]];
              UnfoldingHeap := UnfoldingHeap[null, lseg#sm(UnfoldingHeap[this, next], end_1):=UnfoldingHeap[null, lseg#sm(UnfoldingHeap[this, next], end_1)][UnfoldingHeap[this, next], next:=true]];
              havoc newPMask;
              assume (forall <A, B> o_42: Ref, f_55: (Field A B) ::
                { newPMask[o_42, f_55] }
                UnfoldingHeap[null, lseg#sm(UnfoldingHeap[this, next], end_1)][o_42, f_55] || UnfoldingHeap[null, lseg#sm(UnfoldingHeap[UnfoldingHeap[this, next], next], end_1)][o_42, f_55] ==> newPMask[o_42, f_55]
              );
              UnfoldingHeap := UnfoldingHeap[null, lseg#sm(UnfoldingHeap[this, next], end_1):=newPMask];
            }
            assume state(UnfoldingHeap, UnfoldingMask);
        }
        assume state(UnfoldingHeap, UnfoldingMask);
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.data (linked-list-predicates.vpr@23.12--24.87) [111913]"}
          HasDirectPerm(UnfoldingMask, this, data);
        
        // -- Free assumptions (exp module)
          if (this != end_1) {
            Heap := Heap[null, lseg#sm(this, end_1):=Heap[null, lseg#sm(this, end_1)][this, data:=true]];
            Heap := Heap[null, lseg#sm(this, end_1):=Heap[null, lseg#sm(this, end_1)][this, next:=true]];
            havoc newPMask;
            assume (forall <A, B> o: Ref, f_61: (Field A B) ::
              { newPMask[o, f_61] }
              Heap[null, lseg#sm(this, end_1)][o, f_61] || Heap[null, lseg#sm(Heap[this, next], end_1)][o, f_61] ==> newPMask[o, f_61]
            );
            Heap := Heap[null, lseg#sm(this, end_1):=newPMask];
          }
          assume state(Heap, Mask);
        
        // -- Free assumptions (exp module)
          if (this != end_1) {
            Heap := Heap[null, lseg#sm(this, end_1):=Heap[null, lseg#sm(this, end_1)][this, data:=true]];
            Heap := Heap[null, lseg#sm(this, end_1):=Heap[null, lseg#sm(this, end_1)][this, next:=true]];
            havoc newPMask;
            assume (forall <A, B> o_14: Ref, f_3: (Field A B) ::
              { newPMask[o_14, f_3] }
              Heap[null, lseg#sm(this, end_1)][o_14, f_3] || Heap[null, lseg#sm(Heap[this, next], end_1)][o_14, f_3] ==> newPMask[o_14, f_3]
            );
            Heap := Heap[null, lseg#sm(this, end_1):=newPMask];
          }
          assume state(Heap, Mask);
      assert {:msg "  Postcondition of contentNodes might not hold. Assertion result[0] == (unfolding acc(lseg(this, end), write) in this.data) might not hold. (linked-list-predicates.vpr@23.12--24.87) [111914]"}
        Seq#Index(Result, 0) == Heap[this, data];
    }
    
    // -- Check definedness of (forall i: Int, j: Int :: { result[i], result[j] } 0 <= i && (i < j && j < |result|) ==> result[i] <= result[j])
      if (*) {
        if (0 <= i_12 && (i_12 < j_23 && j_23 < Seq#Length(Result))) {
          assert {:msg "  Contract might not be well-formed. Index result[i] into result might be negative. (linked-list-predicates.vpr@25.12--25.95) [111915]"}
            i_12 >= 0;
          assert {:msg "  Contract might not be well-formed. Index result[i] into result might exceed sequence length. (linked-list-predicates.vpr@25.12--25.95) [111916]"}
            i_12 < Seq#Length(Result);
          assert {:msg "  Contract might not be well-formed. Index result[j] into result might be negative. (linked-list-predicates.vpr@25.12--25.95) [111917]"}
            j_23 >= 0;
          assert {:msg "  Contract might not be well-formed. Index result[j] into result might exceed sequence length. (linked-list-predicates.vpr@25.12--25.95) [111918]"}
            j_23 < Seq#Length(Result);
        }
        assume false;
      }
    if (*) {
      if (0 <= i_2 && (i_2 < j_2_2 && j_2_2 < Seq#Length(Result))) {
        assert {:msg "  Postcondition of contentNodes might not hold. Assertion result[i] <= result[j] might not hold. (linked-list-predicates.vpr@25.12--25.95) [111919]"}
          Seq#Index(Result, i_2) <= Seq#Index(Result, j_2_2);
      }
      assume false;
    }
    assume (forall i_3_1: int, j_3_1_1: int ::
      { Seq#Index(Result, i_3_1), Seq#Index(Result, j_3_1_1) }
      0 <= i_3_1 && (i_3_1 < j_3_1_1 && j_3_1_1 < Seq#Length(Result)) ==> Seq#Index(Result, i_3_1) <= Seq#Index(Result, j_3_1_1)
    );
    
    // -- Free assumptions (exhale module)
      if (this != end_1) {
        Heap := Heap[null, lseg#sm(this, end_1):=Heap[null, lseg#sm(this, end_1)][this, data:=true]];
        Heap := Heap[null, lseg#sm(this, end_1):=Heap[null, lseg#sm(this, end_1)][this, next:=true]];
        havoc newPMask;
        assume (forall <A, B> o_16: Ref, f_8: (Field A B) ::
          { newPMask[o_16, f_8] }
          Heap[null, lseg#sm(this, end_1)][o_16, f_8] || Heap[null, lseg#sm(Heap[this, next], end_1)][o_16, f_8] ==> newPMask[o_16, f_8]
        );
        Heap := Heap[null, lseg#sm(this, end_1):=newPMask];
      }
      assume state(Heap, Mask);
}

// ==================================================
// Translation of function lengthNodes
// ==================================================

// Uninterpreted function definitions
function  lengthNodes(Heap: HeapType, this: Ref, end_1: Ref): int;
function  lengthNodes'(Heap: HeapType, this: Ref, end_1: Ref): int;
axiom (forall Heap: HeapType, this: Ref, end_1: Ref ::
  { lengthNodes(Heap, this, end_1) }
  lengthNodes(Heap, this, end_1) == lengthNodes'(Heap, this, end_1) && dummyFunction(lengthNodes#triggerStateless(this, end_1))
);
axiom (forall Heap: HeapType, this: Ref, end_1: Ref ::
  { lengthNodes'(Heap, this, end_1) }
  dummyFunction(lengthNodes#triggerStateless(this, end_1))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, this: Ref, end_1: Ref ::
  { state(Heap, Mask), lengthNodes(Heap, this, end_1) } { state(Heap, Mask), lengthNodes#triggerStateless(this, end_1), lseg#trigger(Heap, lseg(this, end_1)) }
  state(Heap, Mask) && AssumeFunctionsAbove < 3 ==> lengthNodes(Heap, this, end_1) == (if this == end_1 then 0 else 1 + lengthNodes'(Heap, Heap[this, next], end_1))
);

// Framing axioms
function  lengthNodes#frame(frame: FrameType, this: Ref, end_1: Ref): int;
axiom (forall Heap: HeapType, Mask: MaskType, this: Ref, end_1: Ref ::
  { state(Heap, Mask), lengthNodes'(Heap, this, end_1) } { state(Heap, Mask), lengthNodes#triggerStateless(this, end_1), lseg#trigger(Heap, lseg(this, end_1)) }
  state(Heap, Mask) ==> lengthNodes'(Heap, this, end_1) == lengthNodes#frame(Heap[null, lseg(this, end_1)], this, end_1)
);

// Postcondition axioms
axiom (forall Heap: HeapType, Mask: MaskType, this: Ref, end_1: Ref ::
  { state(Heap, Mask), lengthNodes'(Heap, this, end_1) }
  state(Heap, Mask) && (AssumeFunctionsAbove < 3 || lengthNodes#trigger(Heap[null, lseg(this, end_1)], this, end_1)) ==> lengthNodes'(Heap, this, end_1) == Seq#Length(contentNodes(Heap, this, end_1))
);

// Trigger function (controlling recursive postconditions)
function  lengthNodes#trigger(frame: FrameType, this: Ref, end_1: Ref): bool;

// State-independent trigger function
function  lengthNodes#triggerStateless(this: Ref, end_1: Ref): int;

// Check contract well-formedness and postcondition
procedure lengthNodes#definedness(this: Ref, end_1: Ref) returns (Result: int)
  modifies Heap, Mask;
{
  var perm: Perm;
  var UnfoldingHeap: HeapType;
  var UnfoldingMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var Unfolding1Heap: HeapType;
  var Unfolding1Mask: MaskType;
  var newPMask: PMaskType;
  var ExhaleHeap: HeapType;
  var ExhaleWellDef1Heap: HeapType;
  var ExhaleWellDef1Mask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume Heap[this, $allocated];
    assume Heap[end_1, $allocated];
    assume AssumeFunctionsAbove == 3;
  
  // -- Inhaling precondition (with checking)
    perm := FullPerm;
    Mask := Mask[null, lseg(this, end_1):=Mask[null, lseg(this, end_1)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Check definedness of function body
    
    // -- Check definedness of (unfolding acc(lseg(this, end), write) in (this == end ? 0 : 1 + lengthNodes(this.next, end)))
      UnfoldingHeap := Heap;
      UnfoldingMask := Mask;
      assume lseg#trigger(UnfoldingHeap, lseg(this, end_1));
      assume UnfoldingHeap[null, lseg(this, end_1)] == FrameFragment((if this != end_1 then CombineFrames(FrameFragment(UnfoldingHeap[this, data]), CombineFrames(FrameFragment(UnfoldingHeap[this, next]), UnfoldingHeap[null, lseg(UnfoldingHeap[this, next], end_1)])) else EmptyFrame));
      ExhaleWellDef0Heap := UnfoldingHeap;
      ExhaleWellDef0Mask := UnfoldingMask;
      perm := FullPerm;
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access lseg(this, end) (linked-list-predicates.vpr@34.1--41.2) [111920]"}
        NoPerm < perm ==> NoPerm < UnfoldingMask[null, lseg(this, end_1)];
      if (this != end_1) {
        perm := FullPerm;
        assume this != null;
        UnfoldingMask := UnfoldingMask[this, data:=UnfoldingMask[this, data] + perm];
        assume state(UnfoldingHeap, UnfoldingMask);
        perm := FullPerm;
        assume this != null;
        UnfoldingMask := UnfoldingMask[this, next:=UnfoldingMask[this, next] + perm];
        assume state(UnfoldingHeap, UnfoldingMask);
        perm := FullPerm;
        UnfoldingMask := UnfoldingMask[null, lseg(UnfoldingHeap[this, next], end_1):=UnfoldingMask[null, lseg(UnfoldingHeap[this, next], end_1)] + perm];
        
        // -- Extra unfolding of predicate
          assume InsidePredicate(lseg(this, end_1), UnfoldingHeap[null, lseg(this, end_1)], lseg(UnfoldingHeap[this, next], end_1), UnfoldingHeap[null, lseg(UnfoldingHeap[this, next], end_1)]);
        assume state(UnfoldingHeap, UnfoldingMask);
        
        // -- Execute unfolding (for extra information)
          Unfolding1Heap := UnfoldingHeap;
          Unfolding1Mask := UnfoldingMask;
          assume lseg#trigger(Unfolding1Heap, lseg(Unfolding1Heap[this, next], end_1));
          assume Unfolding1Heap[null, lseg(Unfolding1Heap[this, next], end_1)] == FrameFragment((if Unfolding1Heap[this, next] != end_1 then CombineFrames(FrameFragment(Unfolding1Heap[Unfolding1Heap[this, next], data]), CombineFrames(FrameFragment(Unfolding1Heap[Unfolding1Heap[this, next], next]), Unfolding1Heap[null, lseg(Unfolding1Heap[Unfolding1Heap[this, next], next], end_1)])) else EmptyFrame));
          ExhaleWellDef0Heap := Unfolding1Heap;
          ExhaleWellDef0Mask := Unfolding1Mask;
          perm := FullPerm;
          if (Unfolding1Heap[this, next] != end_1) {
            perm := FullPerm;
            assume Unfolding1Heap[this, next] != null;
            Unfolding1Mask := Unfolding1Mask[Unfolding1Heap[this, next], data:=Unfolding1Mask[Unfolding1Heap[this, next], data] + perm];
            assume state(Unfolding1Heap, Unfolding1Mask);
            perm := FullPerm;
            assume Unfolding1Heap[this, next] != null;
            Unfolding1Mask := Unfolding1Mask[Unfolding1Heap[this, next], next:=Unfolding1Mask[Unfolding1Heap[this, next], next] + perm];
            assume state(Unfolding1Heap, Unfolding1Mask);
            perm := FullPerm;
            Unfolding1Mask := Unfolding1Mask[null, lseg(Unfolding1Heap[Unfolding1Heap[this, next], next], end_1):=Unfolding1Mask[null, lseg(Unfolding1Heap[Unfolding1Heap[this, next], next], end_1)] + perm];
            
            // -- Extra unfolding of predicate
              assume InsidePredicate(lseg(Unfolding1Heap[this, next], end_1), Unfolding1Heap[null, lseg(Unfolding1Heap[this, next], end_1)], lseg(Unfolding1Heap[Unfolding1Heap[this, next], next], end_1), Unfolding1Heap[null, lseg(Unfolding1Heap[Unfolding1Heap[this, next], next], end_1)]);
            assume state(Unfolding1Heap, Unfolding1Mask);
            assume Unfolding1Heap[Unfolding1Heap[this, next], next] != end_1 ==> Unfolding1Heap[Unfolding1Heap[this, next], data] <= Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[this, next], next], data];
            
            // -- Free assumptions (inhale module)
              if (Unfolding1Heap[Unfolding1Heap[this, next], next] != end_1) {
                Unfolding1Heap := Unfolding1Heap[null, lseg#sm(Unfolding1Heap[Unfolding1Heap[this, next], next], end_1):=Unfolding1Heap[null, lseg#sm(Unfolding1Heap[Unfolding1Heap[this, next], next], end_1)][Unfolding1Heap[Unfolding1Heap[this, next], next], data:=true]];
                Unfolding1Heap := Unfolding1Heap[null, lseg#sm(Unfolding1Heap[Unfolding1Heap[this, next], next], end_1):=Unfolding1Heap[null, lseg#sm(Unfolding1Heap[Unfolding1Heap[this, next], next], end_1)][Unfolding1Heap[Unfolding1Heap[this, next], next], next:=true]];
                havoc newPMask;
                assume (forall <A, B> o_55: Ref, f_23: (Field A B) ::
                  { newPMask[o_55, f_23] }
                  Unfolding1Heap[null, lseg#sm(Unfolding1Heap[Unfolding1Heap[this, next], next], end_1)][o_55, f_23] || Unfolding1Heap[null, lseg#sm(Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[this, next], next], next], end_1)][o_55, f_23] ==> newPMask[o_55, f_23]
                );
                Unfolding1Heap := Unfolding1Heap[null, lseg#sm(Unfolding1Heap[Unfolding1Heap[this, next], next], end_1):=newPMask];
              }
              assume state(Unfolding1Heap, Unfolding1Mask);
          }
          assume state(Unfolding1Heap, Unfolding1Mask);
        assume UnfoldingHeap[this, next] != end_1 ==> UnfoldingHeap[this, data] <= UnfoldingHeap[UnfoldingHeap[this, next], data];
        
        // -- Free assumptions (inhale module)
          if (UnfoldingHeap[this, next] != end_1) {
            UnfoldingHeap := UnfoldingHeap[null, lseg#sm(UnfoldingHeap[this, next], end_1):=UnfoldingHeap[null, lseg#sm(UnfoldingHeap[this, next], end_1)][UnfoldingHeap[this, next], data:=true]];
            UnfoldingHeap := UnfoldingHeap[null, lseg#sm(UnfoldingHeap[this, next], end_1):=UnfoldingHeap[null, lseg#sm(UnfoldingHeap[this, next], end_1)][UnfoldingHeap[this, next], next:=true]];
            havoc newPMask;
            assume (forall <A, B> o_38: Ref, f_2: (Field A B) ::
              { newPMask[o_38, f_2] }
              UnfoldingHeap[null, lseg#sm(UnfoldingHeap[this, next], end_1)][o_38, f_2] || UnfoldingHeap[null, lseg#sm(UnfoldingHeap[UnfoldingHeap[this, next], next], end_1)][o_38, f_2] ==> newPMask[o_38, f_2]
            );
            UnfoldingHeap := UnfoldingHeap[null, lseg#sm(UnfoldingHeap[this, next], end_1):=newPMask];
          }
          assume state(UnfoldingHeap, UnfoldingMask);
      }
      assume state(UnfoldingHeap, UnfoldingMask);
      if (this == end_1) {
      } else {
        assert {:msg "  Function might not be well-formed. There might be insufficient permission to access this.next (linked-list-predicates.vpr@34.1--41.2) [111921]"}
          HasDirectPerm(UnfoldingMask, this, next);
        if (*) {
          // Exhale precondition of function application
          ExhaleWellDef0Heap := UnfoldingHeap;
          ExhaleWellDef0Mask := UnfoldingMask;
          perm := FullPerm;
          assert {:msg "  Precondition of function lengthNodes might not hold. There might be insufficient permission to access lseg(this.next, end) (linked-list-predicates.vpr@40.21--40.48) [111922]"}
            NoPerm < perm ==> NoPerm < UnfoldingMask[null, lseg(UnfoldingHeap[this, next], end_1)];
          // Finish exhale
          havoc ExhaleHeap;
          assume IdenticalOnKnownLocations(UnfoldingHeap, ExhaleHeap, UnfoldingMask);
          UnfoldingHeap := ExhaleHeap;
          // Stop execution
          assume false;
        } else {
          // Enable postcondition for recursive call
          assume lengthNodes#trigger(UnfoldingHeap[null, lseg(UnfoldingHeap[this, next], end_1)], UnfoldingHeap[this, next], end_1);
        }
      }
      
      // -- Free assumptions (exp module)
        if (this != end_1) {
          Heap := Heap[null, lseg#sm(this, end_1):=Heap[null, lseg#sm(this, end_1)][this, data:=true]];
          Heap := Heap[null, lseg#sm(this, end_1):=Heap[null, lseg#sm(this, end_1)][this, next:=true]];
          havoc newPMask;
          assume (forall <A, B> o_17: Ref, f_9: (Field A B) ::
            { newPMask[o_17, f_9] }
            Heap[null, lseg#sm(this, end_1)][o_17, f_9] || Heap[null, lseg#sm(Heap[this, next], end_1)][o_17, f_9] ==> newPMask[o_17, f_9]
          );
          Heap := Heap[null, lseg#sm(this, end_1):=newPMask];
        }
        assume state(Heap, Mask);
  
  // -- Translate function body
    Result := (if this == end_1 then 0 else 1 + lengthNodes(Heap, Heap[this, next], end_1));
  
  // -- Exhaling postcondition (with checking)
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of result == |contentNodes(this, end)|
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef1Heap := ExhaleWellDef0Heap;
        ExhaleWellDef1Mask := ExhaleWellDef0Mask;
        perm := FullPerm;
        assert {:msg "  Precondition of function contentNodes might not hold. There might be insufficient permission to access lseg(this, end) (linked-list-predicates.vpr@36.23--36.46) [111923]"}
          NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[null, lseg(this, end_1)];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(ExhaleWellDef0Heap, ExhaleHeap, ExhaleWellDef0Mask);
        ExhaleWellDef0Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assert {:msg "  Postcondition of lengthNodes might not hold. Assertion result == |contentNodes(this, end)| might not hold. (linked-list-predicates.vpr@36.12--36.47) [111924]"}
      Result == Seq#Length(contentNodes(Heap, this, end_1));
}

// ==================================================
// Translation of function content
// ==================================================

// Uninterpreted function definitions
function  content(Heap: HeapType, this: Ref): Seq int;
function  content'(Heap: HeapType, this: Ref): Seq int;
axiom (forall Heap: HeapType, this: Ref ::
  { content(Heap, this) }
  content(Heap, this) == content'(Heap, this) && dummyFunction(content#triggerStateless(this))
);
axiom (forall Heap: HeapType, this: Ref ::
  { content'(Heap, this) }
  dummyFunction(content#triggerStateless(this))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, this: Ref ::
  { state(Heap, Mask), content(Heap, this) } { state(Heap, Mask), content#triggerStateless(this), List#trigger(Heap, List(this)) }
  state(Heap, Mask) && AssumeFunctionsAbove < 2 ==> content(Heap, this) == contentNodes(Heap, Heap[this, head_3], null)
);

// Framing axioms
function  content#frame(frame: FrameType, this: Ref): Seq int;
axiom (forall Heap: HeapType, Mask: MaskType, this: Ref ::
  { state(Heap, Mask), content'(Heap, this) } { state(Heap, Mask), content#triggerStateless(this), List#trigger(Heap, List(this)) }
  state(Heap, Mask) ==> content'(Heap, this) == content#frame(Heap[null, List(this)], this)
);

// Postcondition axioms
axiom (forall Heap: HeapType, Mask: MaskType, this: Ref ::
  { state(Heap, Mask), content'(Heap, this) }
  state(Heap, Mask) && (AssumeFunctionsAbove < 2 || content#trigger(Heap[null, List(this)], this)) ==> (forall i: int, j: int ::
    { Seq#Index(content'(Heap, this), i), Seq#Index(content'(Heap, this), j) }
    0 <= i && (i < j && j < Seq#Length(content'(Heap, this))) ==> Seq#Index(content'(Heap, this), i) <= Seq#Index(content'(Heap, this), j)
  )
);

// Trigger function (controlling recursive postconditions)
function  content#trigger(frame: FrameType, this: Ref): bool;

// State-independent trigger function
function  content#triggerStateless(this: Ref): Seq int;

// Check contract well-formedness and postcondition
procedure content#definedness(this: Ref) returns (Result: (Seq int))
  modifies Heap, Mask;
{
  var perm: Perm;
  var UnfoldingHeap: HeapType;
  var UnfoldingMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleHeap: HeapType;
  var newPMask: PMaskType;
  var i_55: int;
  var j_34: int;
  var i_2: int;
  var j_2_2: int;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume Heap[this, $allocated];
    assume AssumeFunctionsAbove == 2;
  
  // -- Inhaling precondition (with checking)
    perm := FullPerm;
    Mask := Mask[null, List(this):=Mask[null, List(this)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Check definedness of function body
    
    // -- Check definedness of (unfolding acc(List(this), write) in contentNodes(this.head, null))
      UnfoldingHeap := Heap;
      UnfoldingMask := Mask;
      assume List#trigger(UnfoldingHeap, List(this));
      assume UnfoldingHeap[null, List(this)] == CombineFrames(FrameFragment(UnfoldingHeap[this, head_3]), UnfoldingHeap[null, lseg(UnfoldingHeap[this, head_3], null)]);
      ExhaleWellDef0Heap := UnfoldingHeap;
      ExhaleWellDef0Mask := UnfoldingMask;
      perm := FullPerm;
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access List(this) (linked-list-predicates.vpr@55.1--60.2) [111925]"}
        NoPerm < perm ==> NoPerm < UnfoldingMask[null, List(this)];
      perm := FullPerm;
      assume this != null;
      UnfoldingMask := UnfoldingMask[this, head_3:=UnfoldingMask[this, head_3] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      perm := FullPerm;
      UnfoldingMask := UnfoldingMask[null, lseg(UnfoldingHeap[this, head_3], null):=UnfoldingMask[null, lseg(UnfoldingHeap[this, head_3], null)] + perm];
      
      // -- Extra unfolding of predicate
        assume InsidePredicate(List(this), UnfoldingHeap[null, List(this)], lseg(UnfoldingHeap[this, head_3], null), UnfoldingHeap[null, lseg(UnfoldingHeap[this, head_3], null)]);
      assume state(UnfoldingHeap, UnfoldingMask);
      assume state(UnfoldingHeap, UnfoldingMask);
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access this.head (linked-list-predicates.vpr@55.1--60.2) [111926]"}
        HasDirectPerm(UnfoldingMask, this, head_3);
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Heap := UnfoldingHeap;
        ExhaleWellDef0Mask := UnfoldingMask;
        perm := FullPerm;
        assert {:msg "  Precondition of function contentNodes might not hold. There might be insufficient permission to access lseg(this.head, null) (linked-list-predicates.vpr@59.32--59.61) [111927]"}
          NoPerm < perm ==> NoPerm < UnfoldingMask[null, lseg(UnfoldingHeap[this, head_3], null)];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(UnfoldingHeap, ExhaleHeap, UnfoldingMask);
        UnfoldingHeap := ExhaleHeap;
        // Stop execution
        assume false;
      }
      
      // -- Free assumptions (exp module)
        Heap := Heap[null, List#sm(this):=Heap[null, List#sm(this)][this, head_3:=true]];
        havoc newPMask;
        assume (forall <A, B> o_39: Ref, f_19: (Field A B) ::
          { newPMask[o_39, f_19] }
          Heap[null, List#sm(this)][o_39, f_19] || Heap[null, lseg#sm(Heap[this, head_3], null)][o_39, f_19] ==> newPMask[o_39, f_19]
        );
        Heap := Heap[null, List#sm(this):=newPMask];
        assume state(Heap, Mask);
  
  // -- Translate function body
    Result := contentNodes(Heap, Heap[this, head_3], null);
  
  // -- Exhaling postcondition (with checking)
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of (forall i: Int, j: Int :: { result[i], result[j] } 0 <= i && (i < j && j < |result|) ==> result[i] <= result[j])
      if (*) {
        if (0 <= i_55 && (i_55 < j_34 && j_34 < Seq#Length(Result))) {
          assert {:msg "  Contract might not be well-formed. Index result[i] into result might be negative. (linked-list-predicates.vpr@57.12--57.95) [111928]"}
            i_55 >= 0;
          assert {:msg "  Contract might not be well-formed. Index result[i] into result might exceed sequence length. (linked-list-predicates.vpr@57.12--57.95) [111929]"}
            i_55 < Seq#Length(Result);
          assert {:msg "  Contract might not be well-formed. Index result[j] into result might be negative. (linked-list-predicates.vpr@57.12--57.95) [111930]"}
            j_34 >= 0;
          assert {:msg "  Contract might not be well-formed. Index result[j] into result might exceed sequence length. (linked-list-predicates.vpr@57.12--57.95) [111931]"}
            j_34 < Seq#Length(Result);
        }
        assume false;
      }
    if (*) {
      if (0 <= i_2 && (i_2 < j_2_2 && j_2_2 < Seq#Length(Result))) {
        assert {:msg "  Postcondition of content might not hold. Assertion result[i] <= result[j] might not hold. (linked-list-predicates.vpr@57.12--57.95) [111932]"}
          Seq#Index(Result, i_2) <= Seq#Index(Result, j_2_2);
      }
      assume false;
    }
    assume (forall i_3_1: int, j_3_1_1: int ::
      { Seq#Index(Result, i_3_1), Seq#Index(Result, j_3_1_1) }
      0 <= i_3_1 && (i_3_1 < j_3_1_1 && j_3_1_1 < Seq#Length(Result)) ==> Seq#Index(Result, i_3_1) <= Seq#Index(Result, j_3_1_1)
    );
}

// ==================================================
// Translation of function length
// ==================================================

// Uninterpreted function definitions
function  length_1(Heap: HeapType, this: Ref): int;
function  length'(Heap: HeapType, this: Ref): int;
axiom (forall Heap: HeapType, this: Ref ::
  { length_1(Heap, this) }
  length_1(Heap, this) == length'(Heap, this) && dummyFunction(length#triggerStateless(this))
);
axiom (forall Heap: HeapType, this: Ref ::
  { length'(Heap, this) }
  dummyFunction(length#triggerStateless(this))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, this: Ref ::
  { state(Heap, Mask), length_1(Heap, this) } { state(Heap, Mask), length#triggerStateless(this), List#trigger(Heap, List(this)) }
  state(Heap, Mask) && AssumeFunctionsAbove < 1 ==> length_1(Heap, this) == lengthNodes(Heap, Heap[this, head_3], null)
);

// Framing axioms
function  length#frame(frame: FrameType, this: Ref): int;
axiom (forall Heap: HeapType, Mask: MaskType, this: Ref ::
  { state(Heap, Mask), length'(Heap, this) } { state(Heap, Mask), length#triggerStateless(this), List#trigger(Heap, List(this)) }
  state(Heap, Mask) ==> length'(Heap, this) == length#frame(Heap[null, List(this)], this)
);

// Postcondition axioms
axiom (forall Heap: HeapType, Mask: MaskType, this: Ref ::
  { state(Heap, Mask), length'(Heap, this) }
  state(Heap, Mask) && (AssumeFunctionsAbove < 1 || length#trigger(Heap[null, List(this)], this)) ==> length'(Heap, this) == Seq#Length(content(Heap, this))
);

// Trigger function (controlling recursive postconditions)
function  length#trigger(frame: FrameType, this: Ref): bool;

// State-independent trigger function
function  length#triggerStateless(this: Ref): int;

// Check contract well-formedness and postcondition
procedure length#definedness(this: Ref) returns (Result: int)
  modifies Heap, Mask;
{
  var perm: Perm;
  var UnfoldingHeap: HeapType;
  var UnfoldingMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleHeap: HeapType;
  var newPMask: PMaskType;
  var ExhaleWellDef1Heap: HeapType;
  var ExhaleWellDef1Mask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume Heap[this, $allocated];
    assume AssumeFunctionsAbove == 1;
  
  // -- Inhaling precondition (with checking)
    perm := FullPerm;
    Mask := Mask[null, List(this):=Mask[null, List(this)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Check definedness of function body
    
    // -- Check definedness of (unfolding acc(List(this), write) in lengthNodes(this.head, null))
      UnfoldingHeap := Heap;
      UnfoldingMask := Mask;
      assume List#trigger(UnfoldingHeap, List(this));
      assume UnfoldingHeap[null, List(this)] == CombineFrames(FrameFragment(UnfoldingHeap[this, head_3]), UnfoldingHeap[null, lseg(UnfoldingHeap[this, head_3], null)]);
      ExhaleWellDef0Heap := UnfoldingHeap;
      ExhaleWellDef0Mask := UnfoldingMask;
      perm := FullPerm;
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access List(this) (linked-list-predicates.vpr@62.1--67.2) [111933]"}
        NoPerm < perm ==> NoPerm < UnfoldingMask[null, List(this)];
      perm := FullPerm;
      assume this != null;
      UnfoldingMask := UnfoldingMask[this, head_3:=UnfoldingMask[this, head_3] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      perm := FullPerm;
      UnfoldingMask := UnfoldingMask[null, lseg(UnfoldingHeap[this, head_3], null):=UnfoldingMask[null, lseg(UnfoldingHeap[this, head_3], null)] + perm];
      
      // -- Extra unfolding of predicate
        assume InsidePredicate(List(this), UnfoldingHeap[null, List(this)], lseg(UnfoldingHeap[this, head_3], null), UnfoldingHeap[null, lseg(UnfoldingHeap[this, head_3], null)]);
      assume state(UnfoldingHeap, UnfoldingMask);
      assume state(UnfoldingHeap, UnfoldingMask);
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access this.head (linked-list-predicates.vpr@62.1--67.2) [111934]"}
        HasDirectPerm(UnfoldingMask, this, head_3);
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Heap := UnfoldingHeap;
        ExhaleWellDef0Mask := UnfoldingMask;
        perm := FullPerm;
        assert {:msg "  Precondition of function lengthNodes might not hold. There might be insufficient permission to access lseg(this.head, null) (linked-list-predicates.vpr@66.32--66.60) [111935]"}
          NoPerm < perm ==> NoPerm < UnfoldingMask[null, lseg(UnfoldingHeap[this, head_3], null)];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(UnfoldingHeap, ExhaleHeap, UnfoldingMask);
        UnfoldingHeap := ExhaleHeap;
        // Stop execution
        assume false;
      }
      
      // -- Free assumptions (exp module)
        Heap := Heap[null, List#sm(this):=Heap[null, List#sm(this)][this, head_3:=true]];
        havoc newPMask;
        assume (forall <A, B> o_23: Ref, f_13: (Field A B) ::
          { newPMask[o_23, f_13] }
          Heap[null, List#sm(this)][o_23, f_13] || Heap[null, lseg#sm(Heap[this, head_3], null)][o_23, f_13] ==> newPMask[o_23, f_13]
        );
        Heap := Heap[null, List#sm(this):=newPMask];
        assume state(Heap, Mask);
  
  // -- Translate function body
    Result := lengthNodes(Heap, Heap[this, head_3], null);
  
  // -- Exhaling postcondition (with checking)
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of result == |content(this)|
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef1Heap := ExhaleWellDef0Heap;
        ExhaleWellDef1Mask := ExhaleWellDef0Mask;
        perm := FullPerm;
        assert {:msg "  Precondition of function content might not hold. There might be insufficient permission to access List(this) (linked-list-predicates.vpr@64.22--64.35) [111936]"}
          NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[null, List(this)];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(ExhaleWellDef0Heap, ExhaleHeap, ExhaleWellDef0Mask);
        ExhaleWellDef0Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assert {:msg "  Postcondition of length might not hold. Assertion result == |content(this)| might not hold. (linked-list-predicates.vpr@64.11--64.36) [111937]"}
      Result == Seq#Length(content(Heap, this));
}

// ==================================================
// Translation of function peek
// ==================================================

// Uninterpreted function definitions
function  peek(Heap: HeapType, this: Ref): int;
function  peek'(Heap: HeapType, this: Ref): int;
axiom (forall Heap: HeapType, this: Ref ::
  { peek(Heap, this) }
  peek(Heap, this) == peek'(Heap, this) && dummyFunction(peek#triggerStateless(this))
);
axiom (forall Heap: HeapType, this: Ref ::
  { peek'(Heap, this) }
  dummyFunction(peek#triggerStateless(this))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, this: Ref ::
  { state(Heap, Mask), peek(Heap, this) } { state(Heap, Mask), peek#triggerStateless(this), List#trigger(Heap, List(this)) }
  state(Heap, Mask) && AssumeFunctionsAbove < 0 ==> 0 < length_1(Heap, this) ==> peek(Heap, this) == Heap[Heap[this, head_3], data]
);

// Framing axioms
function  peek#frame(frame: FrameType, this: Ref): int;
axiom (forall Heap: HeapType, Mask: MaskType, this: Ref ::
  { state(Heap, Mask), peek'(Heap, this) }
  state(Heap, Mask) ==> peek'(Heap, this) == peek#frame(Heap[null, List(this)], this)
);

// Postcondition axioms
axiom (forall Heap: HeapType, Mask: MaskType, this: Ref ::
  { state(Heap, Mask), peek'(Heap, this) }
  state(Heap, Mask) && (AssumeFunctionsAbove < 0 || peek#trigger(Heap[null, List(this)], this)) ==> 0 < length_1(Heap, this) ==> peek'(Heap, this) == Seq#Index(content(Heap, this), 0)
);

// Trigger function (controlling recursive postconditions)
function  peek#trigger(frame: FrameType, this: Ref): bool;

// State-independent trigger function
function  peek#triggerStateless(this: Ref): int;

// Check contract well-formedness and postcondition
procedure peek#definedness(this: Ref) returns (Result: int)
  modifies Heap, Mask;
{
  var perm: Perm;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleHeap: HeapType;
  var UnfoldingHeap: HeapType;
  var UnfoldingMask: MaskType;
  var Unfolding1Heap: HeapType;
  var Unfolding1Mask: MaskType;
  var Unfolding2Heap: HeapType;
  var Unfolding2Mask: MaskType;
  var newPMask: PMaskType;
  var ExhaleWellDef1Heap: HeapType;
  var ExhaleWellDef1Mask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume Heap[this, $allocated];
    assume AssumeFunctionsAbove == 0;
  
  // -- Inhaling precondition (with checking)
    perm := FullPerm;
    Mask := Mask[null, List(this):=Mask[null, List(this)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of 0 < length(this)
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        perm := FullPerm;
        assert {:msg "  Precondition of function length might not hold. There might be insufficient permission to access List(this) (linked-list-predicates.vpr@71.16--71.28) [111938]"}
          NoPerm < perm ==> NoPerm < Mask[null, List(this)];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assume 0 < length_1(Heap, this);
    assume state(Heap, Mask);
  
  // -- Check definedness of function body
    
    // -- Check definedness of (unfolding acc(List(this), write) in (unfolding acc(lseg(this.head, null), write) in this.head.data))
      UnfoldingHeap := Heap;
      UnfoldingMask := Mask;
      assume List#trigger(UnfoldingHeap, List(this));
      assume UnfoldingHeap[null, List(this)] == CombineFrames(FrameFragment(UnfoldingHeap[this, head_3]), UnfoldingHeap[null, lseg(UnfoldingHeap[this, head_3], null)]);
      ExhaleWellDef0Heap := UnfoldingHeap;
      ExhaleWellDef0Mask := UnfoldingMask;
      perm := FullPerm;
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access List(this) (linked-list-predicates.vpr@69.1--75.2) [111939]"}
        NoPerm < perm ==> NoPerm < UnfoldingMask[null, List(this)];
      perm := FullPerm;
      assume this != null;
      UnfoldingMask := UnfoldingMask[this, head_3:=UnfoldingMask[this, head_3] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      perm := FullPerm;
      UnfoldingMask := UnfoldingMask[null, lseg(UnfoldingHeap[this, head_3], null):=UnfoldingMask[null, lseg(UnfoldingHeap[this, head_3], null)] + perm];
      
      // -- Extra unfolding of predicate
        assume InsidePredicate(List(this), UnfoldingHeap[null, List(this)], lseg(UnfoldingHeap[this, head_3], null), UnfoldingHeap[null, lseg(UnfoldingHeap[this, head_3], null)]);
      assume state(UnfoldingHeap, UnfoldingMask);
      assume state(UnfoldingHeap, UnfoldingMask);
      Unfolding1Heap := UnfoldingHeap;
      Unfolding1Mask := UnfoldingMask;
      assume lseg#trigger(Unfolding1Heap, lseg(Unfolding1Heap[this, head_3], null));
      assume Unfolding1Heap[null, lseg(Unfolding1Heap[this, head_3], null)] == FrameFragment((if Unfolding1Heap[this, head_3] != null then CombineFrames(FrameFragment(Unfolding1Heap[Unfolding1Heap[this, head_3], data]), CombineFrames(FrameFragment(Unfolding1Heap[Unfolding1Heap[this, head_3], next]), Unfolding1Heap[null, lseg(Unfolding1Heap[Unfolding1Heap[this, head_3], next], null)])) else EmptyFrame));
      ExhaleWellDef0Heap := Unfolding1Heap;
      ExhaleWellDef0Mask := Unfolding1Mask;
      perm := FullPerm;
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access lseg(this.head, null) (linked-list-predicates.vpr@69.1--75.2) [111940]"}
        NoPerm < perm ==> NoPerm < Unfolding1Mask[null, lseg(Unfolding1Heap[this, head_3], null)];
      if (Unfolding1Heap[this, head_3] != null) {
        perm := FullPerm;
        assume Unfolding1Heap[this, head_3] != null;
        Unfolding1Mask := Unfolding1Mask[Unfolding1Heap[this, head_3], data:=Unfolding1Mask[Unfolding1Heap[this, head_3], data] + perm];
        assume state(Unfolding1Heap, Unfolding1Mask);
        perm := FullPerm;
        assume Unfolding1Heap[this, head_3] != null;
        Unfolding1Mask := Unfolding1Mask[Unfolding1Heap[this, head_3], next:=Unfolding1Mask[Unfolding1Heap[this, head_3], next] + perm];
        assume state(Unfolding1Heap, Unfolding1Mask);
        perm := FullPerm;
        Unfolding1Mask := Unfolding1Mask[null, lseg(Unfolding1Heap[Unfolding1Heap[this, head_3], next], null):=Unfolding1Mask[null, lseg(Unfolding1Heap[Unfolding1Heap[this, head_3], next], null)] + perm];
        
        // -- Extra unfolding of predicate
          assume InsidePredicate(lseg(Unfolding1Heap[this, head_3], null), Unfolding1Heap[null, lseg(Unfolding1Heap[this, head_3], null)], lseg(Unfolding1Heap[Unfolding1Heap[this, head_3], next], null), Unfolding1Heap[null, lseg(Unfolding1Heap[Unfolding1Heap[this, head_3], next], null)]);
        assume state(Unfolding1Heap, Unfolding1Mask);
        
        // -- Execute unfolding (for extra information)
          Unfolding2Heap := Unfolding1Heap;
          Unfolding2Mask := Unfolding1Mask;
          assume lseg#trigger(Unfolding2Heap, lseg(Unfolding2Heap[Unfolding2Heap[this, head_3], next], null));
          assume Unfolding2Heap[null, lseg(Unfolding2Heap[Unfolding2Heap[this, head_3], next], null)] == FrameFragment((if Unfolding2Heap[Unfolding2Heap[this, head_3], next] != null then CombineFrames(FrameFragment(Unfolding2Heap[Unfolding2Heap[Unfolding2Heap[this, head_3], next], data]), CombineFrames(FrameFragment(Unfolding2Heap[Unfolding2Heap[Unfolding2Heap[this, head_3], next], next]), Unfolding2Heap[null, lseg(Unfolding2Heap[Unfolding2Heap[Unfolding2Heap[this, head_3], next], next], null)])) else EmptyFrame));
          ExhaleWellDef0Heap := Unfolding2Heap;
          ExhaleWellDef0Mask := Unfolding2Mask;
          perm := FullPerm;
          if (Unfolding2Heap[Unfolding2Heap[this, head_3], next] != null) {
            perm := FullPerm;
            assume Unfolding2Heap[Unfolding2Heap[this, head_3], next] != null;
            Unfolding2Mask := Unfolding2Mask[Unfolding2Heap[Unfolding2Heap[this, head_3], next], data:=Unfolding2Mask[Unfolding2Heap[Unfolding2Heap[this, head_3], next], data] + perm];
            assume state(Unfolding2Heap, Unfolding2Mask);
            perm := FullPerm;
            assume Unfolding2Heap[Unfolding2Heap[this, head_3], next] != null;
            Unfolding2Mask := Unfolding2Mask[Unfolding2Heap[Unfolding2Heap[this, head_3], next], next:=Unfolding2Mask[Unfolding2Heap[Unfolding2Heap[this, head_3], next], next] + perm];
            assume state(Unfolding2Heap, Unfolding2Mask);
            perm := FullPerm;
            Unfolding2Mask := Unfolding2Mask[null, lseg(Unfolding2Heap[Unfolding2Heap[Unfolding2Heap[this, head_3], next], next], null):=Unfolding2Mask[null, lseg(Unfolding2Heap[Unfolding2Heap[Unfolding2Heap[this, head_3], next], next], null)] + perm];
            
            // -- Extra unfolding of predicate
              assume InsidePredicate(lseg(Unfolding2Heap[Unfolding2Heap[this, head_3], next], null), Unfolding2Heap[null, lseg(Unfolding2Heap[Unfolding2Heap[this, head_3], next], null)], lseg(Unfolding2Heap[Unfolding2Heap[Unfolding2Heap[this, head_3], next], next], null), Unfolding2Heap[null, lseg(Unfolding2Heap[Unfolding2Heap[Unfolding2Heap[this, head_3], next], next], null)]);
            assume state(Unfolding2Heap, Unfolding2Mask);
            assume Unfolding2Heap[Unfolding2Heap[Unfolding2Heap[this, head_3], next], next] != null ==> Unfolding2Heap[Unfolding2Heap[Unfolding2Heap[this, head_3], next], data] <= Unfolding2Heap[Unfolding2Heap[Unfolding2Heap[Unfolding2Heap[this, head_3], next], next], data];
            
            // -- Free assumptions (inhale module)
              if (Unfolding2Heap[Unfolding2Heap[Unfolding2Heap[this, head_3], next], next] != null) {
                Unfolding2Heap := Unfolding2Heap[null, lseg#sm(Unfolding2Heap[Unfolding2Heap[Unfolding2Heap[this, head_3], next], next], null):=Unfolding2Heap[null, lseg#sm(Unfolding2Heap[Unfolding2Heap[Unfolding2Heap[this, head_3], next], next], null)][Unfolding2Heap[Unfolding2Heap[Unfolding2Heap[this, head_3], next], next], data:=true]];
                Unfolding2Heap := Unfolding2Heap[null, lseg#sm(Unfolding2Heap[Unfolding2Heap[Unfolding2Heap[this, head_3], next], next], null):=Unfolding2Heap[null, lseg#sm(Unfolding2Heap[Unfolding2Heap[Unfolding2Heap[this, head_3], next], next], null)][Unfolding2Heap[Unfolding2Heap[Unfolding2Heap[this, head_3], next], next], next:=true]];
                havoc newPMask;
                assume (forall <A, B> o_51: Ref, f_66: (Field A B) ::
                  { newPMask[o_51, f_66] }
                  Unfolding2Heap[null, lseg#sm(Unfolding2Heap[Unfolding2Heap[Unfolding2Heap[this, head_3], next], next], null)][o_51, f_66] || Unfolding2Heap[null, lseg#sm(Unfolding2Heap[Unfolding2Heap[Unfolding2Heap[Unfolding2Heap[this, head_3], next], next], next], null)][o_51, f_66] ==> newPMask[o_51, f_66]
                );
                Unfolding2Heap := Unfolding2Heap[null, lseg#sm(Unfolding2Heap[Unfolding2Heap[Unfolding2Heap[this, head_3], next], next], null):=newPMask];
              }
              assume state(Unfolding2Heap, Unfolding2Mask);
          }
          assume state(Unfolding2Heap, Unfolding2Mask);
        assume Unfolding1Heap[Unfolding1Heap[this, head_3], next] != null ==> Unfolding1Heap[Unfolding1Heap[this, head_3], data] <= Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[this, head_3], next], data];
        
        // -- Free assumptions (inhale module)
          if (Unfolding1Heap[Unfolding1Heap[this, head_3], next] != null) {
            Unfolding1Heap := Unfolding1Heap[null, lseg#sm(Unfolding1Heap[Unfolding1Heap[this, head_3], next], null):=Unfolding1Heap[null, lseg#sm(Unfolding1Heap[Unfolding1Heap[this, head_3], next], null)][Unfolding1Heap[Unfolding1Heap[this, head_3], next], data:=true]];
            Unfolding1Heap := Unfolding1Heap[null, lseg#sm(Unfolding1Heap[Unfolding1Heap[this, head_3], next], null):=Unfolding1Heap[null, lseg#sm(Unfolding1Heap[Unfolding1Heap[this, head_3], next], null)][Unfolding1Heap[Unfolding1Heap[this, head_3], next], next:=true]];
            havoc newPMask;
            assume (forall <A, B> o_13: Ref, f_65: (Field A B) ::
              { newPMask[o_13, f_65] }
              Unfolding1Heap[null, lseg#sm(Unfolding1Heap[Unfolding1Heap[this, head_3], next], null)][o_13, f_65] || Unfolding1Heap[null, lseg#sm(Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[this, head_3], next], next], null)][o_13, f_65] ==> newPMask[o_13, f_65]
            );
            Unfolding1Heap := Unfolding1Heap[null, lseg#sm(Unfolding1Heap[Unfolding1Heap[this, head_3], next], null):=newPMask];
          }
          assume state(Unfolding1Heap, Unfolding1Mask);
      }
      assume state(Unfolding1Heap, Unfolding1Mask);
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access this.head (linked-list-predicates.vpr@69.1--75.2) [111941]"}
        HasDirectPerm(Unfolding1Mask, this, head_3);
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access this.head (linked-list-predicates.vpr@69.1--75.2) [111942]"}
        HasDirectPerm(Unfolding1Mask, this, head_3);
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access this.head.data (linked-list-predicates.vpr@69.1--75.2) [111943]"}
        HasDirectPerm(Unfolding1Mask, Unfolding1Heap[this, head_3], data);
      
      // -- Free assumptions (exp module)
        if (UnfoldingHeap[this, head_3] != null) {
          UnfoldingHeap := UnfoldingHeap[null, lseg#sm(UnfoldingHeap[this, head_3], null):=UnfoldingHeap[null, lseg#sm(UnfoldingHeap[this, head_3], null)][UnfoldingHeap[this, head_3], data:=true]];
          UnfoldingHeap := UnfoldingHeap[null, lseg#sm(UnfoldingHeap[this, head_3], null):=UnfoldingHeap[null, lseg#sm(UnfoldingHeap[this, head_3], null)][UnfoldingHeap[this, head_3], next:=true]];
          havoc newPMask;
          assume (forall <A, B> o_52: Ref, f_14: (Field A B) ::
            { newPMask[o_52, f_14] }
            UnfoldingHeap[null, lseg#sm(UnfoldingHeap[this, head_3], null)][o_52, f_14] || UnfoldingHeap[null, lseg#sm(UnfoldingHeap[UnfoldingHeap[this, head_3], next], null)][o_52, f_14] ==> newPMask[o_52, f_14]
          );
          UnfoldingHeap := UnfoldingHeap[null, lseg#sm(UnfoldingHeap[this, head_3], null):=newPMask];
        }
        assume state(UnfoldingHeap, UnfoldingMask);
      
      // -- Free assumptions (exp module)
        Heap := Heap[null, List#sm(this):=Heap[null, List#sm(this)][this, head_3:=true]];
        havoc newPMask;
        assume (forall <A, B> o_20: Ref, f_50: (Field A B) ::
          { newPMask[o_20, f_50] }
          Heap[null, List#sm(this)][o_20, f_50] || Heap[null, lseg#sm(Heap[this, head_3], null)][o_20, f_50] ==> newPMask[o_20, f_50]
        );
        Heap := Heap[null, List#sm(this):=newPMask];
        assume state(Heap, Mask);
        if (Heap[this, head_3] != null) {
          Heap := Heap[null, lseg#sm(Heap[this, head_3], null):=Heap[null, lseg#sm(Heap[this, head_3], null)][Heap[this, head_3], data:=true]];
          Heap := Heap[null, lseg#sm(Heap[this, head_3], null):=Heap[null, lseg#sm(Heap[this, head_3], null)][Heap[this, head_3], next:=true]];
          havoc newPMask;
          assume (forall <A, B> o_58: Ref, f_30: (Field A B) ::
            { newPMask[o_58, f_30] }
            Heap[null, lseg#sm(Heap[this, head_3], null)][o_58, f_30] || Heap[null, lseg#sm(Heap[Heap[this, head_3], next], null)][o_58, f_30] ==> newPMask[o_58, f_30]
          );
          Heap := Heap[null, lseg#sm(Heap[this, head_3], null):=newPMask];
        }
        assume state(Heap, Mask);
  
  // -- Translate function body
    Result := Heap[Heap[this, head_3], data];
  
  // -- Exhaling postcondition (with checking)
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of result == content(this)[0]
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef1Heap := ExhaleWellDef0Heap;
        ExhaleWellDef1Mask := ExhaleWellDef0Mask;
        perm := FullPerm;
        assert {:msg "  Precondition of function content might not hold. There might be insufficient permission to access List(this) (linked-list-predicates.vpr@72.21--72.34) [111944]"}
          NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[null, List(this)];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(ExhaleWellDef0Heap, ExhaleHeap, ExhaleWellDef0Mask);
        ExhaleWellDef0Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
      assert {:msg "  Contract might not be well-formed. Index content(this)[0] into content(this) might exceed sequence length. (linked-list-predicates.vpr@72.11--72.37) [111945]"}
        0 < Seq#Length(content(Heap, this));
    assert {:msg "  Postcondition of peek might not hold. Assertion result == content(this)[0] might not hold. (linked-list-predicates.vpr@72.11--72.37) [111946]"}
      Result == Seq#Index(content(Heap, this), 0);
}

// ==================================================
// Translation of predicate lseg
// ==================================================

type PredicateType_lseg;
function  lseg(this: Ref, end_1: Ref): Field PredicateType_lseg FrameType;
function  lseg#sm(this: Ref, end_1: Ref): Field PredicateType_lseg PMaskType;
axiom (forall this: Ref, end_1: Ref ::
  { PredicateMaskField(lseg(this, end_1)) }
  PredicateMaskField(lseg(this, end_1)) == lseg#sm(this, end_1)
);
axiom (forall this: Ref, end_1: Ref ::
  { lseg(this, end_1) }
  IsPredicateField(lseg(this, end_1))
);
axiom (forall this: Ref, end_1: Ref ::
  { lseg(this, end_1) }
  getPredWandId(lseg(this, end_1)) == 0
);
function  lseg#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  lseg#everUsed<A>(pred: (Field A FrameType)): bool;
axiom (forall this: Ref, end_1: Ref, this2: Ref, end2: Ref ::
  { lseg(this, end_1), lseg(this2, end2) }
  lseg(this, end_1) == lseg(this2, end2) ==> this == this2 && end_1 == end2
);
axiom (forall this: Ref, end_1: Ref, this2: Ref, end2: Ref ::
  { lseg#sm(this, end_1), lseg#sm(this2, end2) }
  lseg#sm(this, end_1) == lseg#sm(this2, end2) ==> this == this2 && end_1 == end2
);

axiom (forall Heap: HeapType, this: Ref, end_1: Ref ::
  { lseg#trigger(Heap, lseg(this, end_1)) }
  lseg#everUsed(lseg(this, end_1))
);

procedure lseg#definedness(this: Ref, end_1: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var UnfoldingHeap: HeapType;
  var UnfoldingMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var Unfolding1Heap: HeapType;
  var Unfolding1Mask: MaskType;
  var newPMask: PMaskType;
  
  // -- Check definedness of predicate body of lseg
    
    // -- Initializing the state
      Mask := ZeroMask;
      assume state(Heap, Mask);
      assume AssumeFunctionsAbove == -1;
      assume AssumePermUpperBound;
      assume Heap[this, $allocated];
      assume Heap[end_1, $allocated];
    if (this != end_1) {
      perm := FullPerm;
      assume this != null;
      Mask := Mask[this, data:=Mask[this, data] + perm];
      assume state(Heap, Mask);
      perm := FullPerm;
      assume this != null;
      Mask := Mask[this, next:=Mask[this, next] + perm];
      assume state(Heap, Mask);
      
      // -- Check definedness of acc(lseg(this.next, end), write)
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.next (linked-list-predicates.vpr@13.1--18.2) [111947]"}
          HasDirectPerm(Mask, this, next);
      perm := FullPerm;
      Mask := Mask[null, lseg(Heap[this, next], end_1):=Mask[null, lseg(Heap[this, next], end_1)] + perm];
      assume state(Heap, Mask);
      
      // -- Check definedness of (unfolding acc(lseg(this.next, end), write) in this.next != end ==> this.data <= this.next.data)
        UnfoldingHeap := Heap;
        UnfoldingMask := Mask;
        assume lseg#trigger(UnfoldingHeap, lseg(UnfoldingHeap[this, next], end_1));
        assume UnfoldingHeap[null, lseg(UnfoldingHeap[this, next], end_1)] == FrameFragment((if UnfoldingHeap[this, next] != end_1 then CombineFrames(FrameFragment(UnfoldingHeap[UnfoldingHeap[this, next], data]), CombineFrames(FrameFragment(UnfoldingHeap[UnfoldingHeap[this, next], next]), UnfoldingHeap[null, lseg(UnfoldingHeap[UnfoldingHeap[this, next], next], end_1)])) else EmptyFrame));
        ExhaleWellDef0Heap := UnfoldingHeap;
        ExhaleWellDef0Mask := UnfoldingMask;
        perm := FullPerm;
        if (perm != NoPerm) {
          assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access lseg(this.next, end) (linked-list-predicates.vpr@13.1--18.2) [111948]"}
            perm <= UnfoldingMask[null, lseg(UnfoldingHeap[this, next], end_1)];
        }
        UnfoldingMask := UnfoldingMask[null, lseg(UnfoldingHeap[this, next], end_1):=UnfoldingMask[null, lseg(UnfoldingHeap[this, next], end_1)] - perm];
        if (UnfoldingHeap[this, next] != end_1) {
          perm := FullPerm;
          assume UnfoldingHeap[this, next] != null;
          UnfoldingMask := UnfoldingMask[UnfoldingHeap[this, next], data:=UnfoldingMask[UnfoldingHeap[this, next], data] + perm];
          assume state(UnfoldingHeap, UnfoldingMask);
          perm := FullPerm;
          assume UnfoldingHeap[this, next] != null;
          UnfoldingMask := UnfoldingMask[UnfoldingHeap[this, next], next:=UnfoldingMask[UnfoldingHeap[this, next], next] + perm];
          assume state(UnfoldingHeap, UnfoldingMask);
          perm := FullPerm;
          UnfoldingMask := UnfoldingMask[null, lseg(UnfoldingHeap[UnfoldingHeap[this, next], next], end_1):=UnfoldingMask[null, lseg(UnfoldingHeap[UnfoldingHeap[this, next], next], end_1)] + perm];
          
          // -- Extra unfolding of predicate
            assume InsidePredicate(lseg(UnfoldingHeap[this, next], end_1), UnfoldingHeap[null, lseg(UnfoldingHeap[this, next], end_1)], lseg(UnfoldingHeap[UnfoldingHeap[this, next], next], end_1), UnfoldingHeap[null, lseg(UnfoldingHeap[UnfoldingHeap[this, next], next], end_1)]);
          assume state(UnfoldingHeap, UnfoldingMask);
          
          // -- Execute unfolding (for extra information)
            Unfolding1Heap := UnfoldingHeap;
            Unfolding1Mask := UnfoldingMask;
            assume lseg#trigger(Unfolding1Heap, lseg(Unfolding1Heap[Unfolding1Heap[this, next], next], end_1));
            assume Unfolding1Heap[null, lseg(Unfolding1Heap[Unfolding1Heap[this, next], next], end_1)] == FrameFragment((if Unfolding1Heap[Unfolding1Heap[this, next], next] != end_1 then CombineFrames(FrameFragment(Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[this, next], next], data]), CombineFrames(FrameFragment(Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[this, next], next], next]), Unfolding1Heap[null, lseg(Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[this, next], next], next], end_1)])) else EmptyFrame));
            ExhaleWellDef0Heap := Unfolding1Heap;
            ExhaleWellDef0Mask := Unfolding1Mask;
            perm := FullPerm;
            Unfolding1Mask := Unfolding1Mask[null, lseg(Unfolding1Heap[Unfolding1Heap[this, next], next], end_1):=Unfolding1Mask[null, lseg(Unfolding1Heap[Unfolding1Heap[this, next], next], end_1)] - perm];
            if (Unfolding1Heap[Unfolding1Heap[this, next], next] != end_1) {
              perm := FullPerm;
              assume Unfolding1Heap[Unfolding1Heap[this, next], next] != null;
              Unfolding1Mask := Unfolding1Mask[Unfolding1Heap[Unfolding1Heap[this, next], next], data:=Unfolding1Mask[Unfolding1Heap[Unfolding1Heap[this, next], next], data] + perm];
              assume state(Unfolding1Heap, Unfolding1Mask);
              perm := FullPerm;
              assume Unfolding1Heap[Unfolding1Heap[this, next], next] != null;
              Unfolding1Mask := Unfolding1Mask[Unfolding1Heap[Unfolding1Heap[this, next], next], next:=Unfolding1Mask[Unfolding1Heap[Unfolding1Heap[this, next], next], next] + perm];
              assume state(Unfolding1Heap, Unfolding1Mask);
              perm := FullPerm;
              Unfolding1Mask := Unfolding1Mask[null, lseg(Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[this, next], next], next], end_1):=Unfolding1Mask[null, lseg(Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[this, next], next], next], end_1)] + perm];
              
              // -- Extra unfolding of predicate
                assume InsidePredicate(lseg(Unfolding1Heap[Unfolding1Heap[this, next], next], end_1), Unfolding1Heap[null, lseg(Unfolding1Heap[Unfolding1Heap[this, next], next], end_1)], lseg(Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[this, next], next], next], end_1), Unfolding1Heap[null, lseg(Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[this, next], next], next], end_1)]);
              assume state(Unfolding1Heap, Unfolding1Mask);
              assume Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[this, next], next], next] != end_1 ==> Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[this, next], next], data] <= Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[this, next], next], next], data];
              
              // -- Free assumptions (inhale module)
                if (Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[this, next], next], next] != end_1) {
                  Unfolding1Heap := Unfolding1Heap[null, lseg#sm(Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[this, next], next], next], end_1):=Unfolding1Heap[null, lseg#sm(Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[this, next], next], next], end_1)][Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[this, next], next], next], data:=true]];
                  Unfolding1Heap := Unfolding1Heap[null, lseg#sm(Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[this, next], next], next], end_1):=Unfolding1Heap[null, lseg#sm(Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[this, next], next], next], end_1)][Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[this, next], next], next], next:=true]];
                  havoc newPMask;
                  assume (forall <A, B> o_18: Ref, f_18: (Field A B) ::
                    { newPMask[o_18, f_18] }
                    Unfolding1Heap[null, lseg#sm(Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[this, next], next], next], end_1)][o_18, f_18] || Unfolding1Heap[null, lseg#sm(Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[this, next], next], next], next], end_1)][o_18, f_18] ==> newPMask[o_18, f_18]
                  );
                  Unfolding1Heap := Unfolding1Heap[null, lseg#sm(Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[this, next], next], next], end_1):=newPMask];
                }
                assume state(Unfolding1Heap, Unfolding1Mask);
            }
            assume state(Unfolding1Heap, Unfolding1Mask);
          assume UnfoldingHeap[UnfoldingHeap[this, next], next] != end_1 ==> UnfoldingHeap[UnfoldingHeap[this, next], data] <= UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[this, next], next], data];
          
          // -- Free assumptions (inhale module)
            if (UnfoldingHeap[UnfoldingHeap[this, next], next] != end_1) {
              UnfoldingHeap := UnfoldingHeap[null, lseg#sm(UnfoldingHeap[UnfoldingHeap[this, next], next], end_1):=UnfoldingHeap[null, lseg#sm(UnfoldingHeap[UnfoldingHeap[this, next], next], end_1)][UnfoldingHeap[UnfoldingHeap[this, next], next], data:=true]];
              UnfoldingHeap := UnfoldingHeap[null, lseg#sm(UnfoldingHeap[UnfoldingHeap[this, next], next], end_1):=UnfoldingHeap[null, lseg#sm(UnfoldingHeap[UnfoldingHeap[this, next], next], end_1)][UnfoldingHeap[UnfoldingHeap[this, next], next], next:=true]];
              havoc newPMask;
              assume (forall <A, B> o_10: Ref, f_67: (Field A B) ::
                { newPMask[o_10, f_67] }
                UnfoldingHeap[null, lseg#sm(UnfoldingHeap[UnfoldingHeap[this, next], next], end_1)][o_10, f_67] || UnfoldingHeap[null, lseg#sm(UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[this, next], next], next], end_1)][o_10, f_67] ==> newPMask[o_10, f_67]
              );
              UnfoldingHeap := UnfoldingHeap[null, lseg#sm(UnfoldingHeap[UnfoldingHeap[this, next], next], end_1):=newPMask];
            }
            assume state(UnfoldingHeap, UnfoldingMask);
        }
        assume state(UnfoldingHeap, UnfoldingMask);
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.next (linked-list-predicates.vpr@13.1--18.2) [111949]"}
          HasDirectPerm(UnfoldingMask, this, next);
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.next (linked-list-predicates.vpr@13.1--18.2) [111950]"}
          HasDirectPerm(UnfoldingMask, this, next);
        if (UnfoldingHeap[this, next] != end_1) {
          assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.data (linked-list-predicates.vpr@13.1--18.2) [111951]"}
            HasDirectPerm(UnfoldingMask, this, data);
          assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.next (linked-list-predicates.vpr@13.1--18.2) [111952]"}
            HasDirectPerm(UnfoldingMask, this, next);
          assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.next.data (linked-list-predicates.vpr@13.1--18.2) [111953]"}
            HasDirectPerm(UnfoldingMask, UnfoldingHeap[this, next], data);
        }
        
        // -- Free assumptions (exp module)
          if (Heap[this, next] != end_1) {
            Heap := Heap[null, lseg#sm(Heap[this, next], end_1):=Heap[null, lseg#sm(Heap[this, next], end_1)][Heap[this, next], data:=true]];
            Heap := Heap[null, lseg#sm(Heap[this, next], end_1):=Heap[null, lseg#sm(Heap[this, next], end_1)][Heap[this, next], next:=true]];
            havoc newPMask;
            assume (forall <A, B> o_66: Ref, f_28: (Field A B) ::
              { newPMask[o_66, f_28] }
              Heap[null, lseg#sm(Heap[this, next], end_1)][o_66, f_28] || Heap[null, lseg#sm(Heap[Heap[this, next], next], end_1)][o_66, f_28] ==> newPMask[o_66, f_28]
            );
            Heap := Heap[null, lseg#sm(Heap[this, next], end_1):=newPMask];
          }
          assume state(Heap, Mask);
      
      // -- Execute unfolding (for extra information)
        UnfoldingHeap := Heap;
        UnfoldingMask := Mask;
        assume lseg#trigger(UnfoldingHeap, lseg(UnfoldingHeap[this, next], end_1));
        assume UnfoldingHeap[null, lseg(UnfoldingHeap[this, next], end_1)] == FrameFragment((if UnfoldingHeap[this, next] != end_1 then CombineFrames(FrameFragment(UnfoldingHeap[UnfoldingHeap[this, next], data]), CombineFrames(FrameFragment(UnfoldingHeap[UnfoldingHeap[this, next], next]), UnfoldingHeap[null, lseg(UnfoldingHeap[UnfoldingHeap[this, next], next], end_1)])) else EmptyFrame));
        ExhaleWellDef0Heap := UnfoldingHeap;
        ExhaleWellDef0Mask := UnfoldingMask;
        perm := FullPerm;
        UnfoldingMask := UnfoldingMask[null, lseg(UnfoldingHeap[this, next], end_1):=UnfoldingMask[null, lseg(UnfoldingHeap[this, next], end_1)] - perm];
        if (UnfoldingHeap[this, next] != end_1) {
          perm := FullPerm;
          assume UnfoldingHeap[this, next] != null;
          UnfoldingMask := UnfoldingMask[UnfoldingHeap[this, next], data:=UnfoldingMask[UnfoldingHeap[this, next], data] + perm];
          assume state(UnfoldingHeap, UnfoldingMask);
          perm := FullPerm;
          assume UnfoldingHeap[this, next] != null;
          UnfoldingMask := UnfoldingMask[UnfoldingHeap[this, next], next:=UnfoldingMask[UnfoldingHeap[this, next], next] + perm];
          assume state(UnfoldingHeap, UnfoldingMask);
          perm := FullPerm;
          UnfoldingMask := UnfoldingMask[null, lseg(UnfoldingHeap[UnfoldingHeap[this, next], next], end_1):=UnfoldingMask[null, lseg(UnfoldingHeap[UnfoldingHeap[this, next], next], end_1)] + perm];
          
          // -- Extra unfolding of predicate
            assume InsidePredicate(lseg(UnfoldingHeap[this, next], end_1), UnfoldingHeap[null, lseg(UnfoldingHeap[this, next], end_1)], lseg(UnfoldingHeap[UnfoldingHeap[this, next], next], end_1), UnfoldingHeap[null, lseg(UnfoldingHeap[UnfoldingHeap[this, next], next], end_1)]);
          assume state(UnfoldingHeap, UnfoldingMask);
          assume UnfoldingHeap[UnfoldingHeap[this, next], next] != end_1 ==> UnfoldingHeap[UnfoldingHeap[this, next], data] <= UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[this, next], next], data];
          
          // -- Free assumptions (inhale module)
            if (UnfoldingHeap[UnfoldingHeap[this, next], next] != end_1) {
              UnfoldingHeap := UnfoldingHeap[null, lseg#sm(UnfoldingHeap[UnfoldingHeap[this, next], next], end_1):=UnfoldingHeap[null, lseg#sm(UnfoldingHeap[UnfoldingHeap[this, next], next], end_1)][UnfoldingHeap[UnfoldingHeap[this, next], next], data:=true]];
              UnfoldingHeap := UnfoldingHeap[null, lseg#sm(UnfoldingHeap[UnfoldingHeap[this, next], next], end_1):=UnfoldingHeap[null, lseg#sm(UnfoldingHeap[UnfoldingHeap[this, next], next], end_1)][UnfoldingHeap[UnfoldingHeap[this, next], next], next:=true]];
              havoc newPMask;
              assume (forall <A, B> o_11: Ref, f_34: (Field A B) ::
                { newPMask[o_11, f_34] }
                UnfoldingHeap[null, lseg#sm(UnfoldingHeap[UnfoldingHeap[this, next], next], end_1)][o_11, f_34] || UnfoldingHeap[null, lseg#sm(UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[this, next], next], next], end_1)][o_11, f_34] ==> newPMask[o_11, f_34]
              );
              UnfoldingHeap := UnfoldingHeap[null, lseg#sm(UnfoldingHeap[UnfoldingHeap[this, next], next], end_1):=newPMask];
            }
            assume state(UnfoldingHeap, UnfoldingMask);
        }
        assume state(UnfoldingHeap, UnfoldingMask);
      assume Heap[this, next] != end_1 ==> Heap[this, data] <= Heap[Heap[this, next], data];
    }
    assume state(Heap, Mask);
}

// ==================================================
// Translation of predicate List
// ==================================================

type PredicateType_List;
function  List(this: Ref): Field PredicateType_List FrameType;
function  List#sm(this: Ref): Field PredicateType_List PMaskType;
axiom (forall this: Ref ::
  { PredicateMaskField(List(this)) }
  PredicateMaskField(List(this)) == List#sm(this)
);
axiom (forall this: Ref ::
  { List(this) }
  IsPredicateField(List(this))
);
axiom (forall this: Ref ::
  { List(this) }
  getPredWandId(List(this)) == 1
);
function  List#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  List#everUsed<A>(pred: (Field A FrameType)): bool;
axiom (forall this: Ref, this2: Ref ::
  { List(this), List(this2) }
  List(this) == List(this2) ==> this == this2
);
axiom (forall this: Ref, this2: Ref ::
  { List#sm(this), List#sm(this2) }
  List#sm(this) == List#sm(this2) ==> this == this2
);

axiom (forall Heap: HeapType, this: Ref ::
  { List#trigger(Heap, List(this)) }
  List#everUsed(List(this))
);

procedure List#definedness(this: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  
  // -- Check definedness of predicate body of List
    
    // -- Initializing the state
      Mask := ZeroMask;
      assume state(Heap, Mask);
      assume AssumeFunctionsAbove == -1;
      assume AssumePermUpperBound;
      assume Heap[this, $allocated];
    perm := FullPerm;
    assume this != null;
    Mask := Mask[this, head_3:=Mask[this, head_3] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of acc(lseg(this.head, null), write)
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.head (linked-list-predicates.vpr@50.1--53.2) [111954]"}
        HasDirectPerm(Mask, this, head_3);
    perm := FullPerm;
    Mask := Mask[null, lseg(Heap[this, head_3], null):=Mask[null, lseg(Heap[this, head_3], null)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method create
// ==================================================

procedure create() returns (this: Ref)
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
  var freshObj: Ref;
  var UnfoldingHeap: HeapType;
  var UnfoldingMask: MaskType;
  var ExhaleWellDef1Heap: HeapType;
  var ExhaleWellDef1Mask: MaskType;
  var newPMask: PMaskType;
  var freshVersion: FrameType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
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
    PostMask := PostMask[null, List(this):=PostMask[null, List(this)] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of content(this) == Seq[Int]()
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Heap := PostHeap;
        ExhaleWellDef0Mask := PostMask;
        perm := FullPerm;
        assert {:msg "  Precondition of function content might not hold. There might be insufficient permission to access List(this) (linked-list-predicates.vpr@79.11--79.24) [111955]"}
          NoPerm < perm ==> NoPerm < PostMask[null, List(this)];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(PostHeap, ExhaleHeap, PostMask);
        PostHeap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assume Seq#Equal(content(PostHeap, this), (Seq#Empty(): Seq int));
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: this := new(data, next, head, held, changed) -- linked-list-predicates.vpr@81.3--81.17
    havoc freshObj;
    assume freshObj != null && !Heap[freshObj, $allocated];
    Heap := Heap[freshObj, $allocated:=true];
    this := freshObj;
    Mask := Mask[this, data:=Mask[this, data] + FullPerm];
    Mask := Mask[this, next:=Mask[this, next] + FullPerm];
    Mask := Mask[this, head_3:=Mask[this, head_3] + FullPerm];
    Mask := Mask[this, held:=Mask[this, held] + FullPerm];
    Mask := Mask[this, changed:=Mask[this, changed] + FullPerm];
    assume state(Heap, Mask);
  
  // -- Translating statement: this.head := null -- linked-list-predicates.vpr@82.3--82.20
    assert {:msg "  Assignment might fail. There might be insufficient permission to access this.head (linked-list-predicates.vpr@82.3--82.20) [111956]"}
      FullPerm == Mask[this, head_3];
    Heap := Heap[this, head_3:=null];
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(lseg(this.head, null), write) -- linked-list-predicates.vpr@83.3--83.34
    
    // -- Check definedness of acc(lseg(this.head, null), write)
      assert {:msg "  Folding lseg(this.head, null) might fail. There might be insufficient permission to access this.head (linked-list-predicates.vpr@83.3--83.34) [111957]"}
        HasDirectPerm(Mask, this, head_3);
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    if (Heap[this, head_3] != null) {
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Folding lseg(this.head, null) might fail. There might be insufficient permission to access this.head.data (linked-list-predicates.vpr@83.3--83.34) [111960]"}
          perm <= Mask[Heap[this, head_3], data];
      }
      Mask := Mask[Heap[this, head_3], data:=Mask[Heap[this, head_3], data] - perm];
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Folding lseg(this.head, null) might fail. There might be insufficient permission to access this.head.next (linked-list-predicates.vpr@83.3--83.34) [111962]"}
          perm <= Mask[Heap[this, head_3], next];
      }
      Mask := Mask[Heap[this, head_3], next:=Mask[Heap[this, head_3], next] - perm];
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Folding lseg(this.head, null) might fail. There might be insufficient permission to access lseg(this.head.next, null) (linked-list-predicates.vpr@83.3--83.34) [111964]"}
          perm <= Mask[null, lseg(Heap[Heap[this, head_3], next], null)];
      }
      Mask := Mask[null, lseg(Heap[Heap[this, head_3], next], null):=Mask[null, lseg(Heap[Heap[this, head_3], next], null)] - perm];
      
      // -- Record predicate instance information
        assume InsidePredicate(lseg(Heap[this, head_3], null), Heap[null, lseg(Heap[this, head_3], null)], lseg(Heap[Heap[this, head_3], next], null), Heap[null, lseg(Heap[Heap[this, head_3], next], null)]);
      
      // -- Execute unfolding (for extra information)
        UnfoldingHeap := ExhaleWellDef0Heap;
        UnfoldingMask := ExhaleWellDef0Mask;
        assume lseg#trigger(UnfoldingHeap, lseg(UnfoldingHeap[UnfoldingHeap[this, head_3], next], null));
        assume UnfoldingHeap[null, lseg(UnfoldingHeap[UnfoldingHeap[this, head_3], next], null)] == FrameFragment((if UnfoldingHeap[UnfoldingHeap[this, head_3], next] != null then CombineFrames(FrameFragment(UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[this, head_3], next], data]), CombineFrames(FrameFragment(UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[this, head_3], next], next]), UnfoldingHeap[null, lseg(UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[this, head_3], next], next], null)])) else EmptyFrame));
        ExhaleWellDef1Heap := UnfoldingHeap;
        ExhaleWellDef1Mask := UnfoldingMask;
        perm := FullPerm;
        if (perm != NoPerm) {
          assert {:msg "  Folding lseg(this.head, null) might fail. There might be insufficient permission to access lseg(this.head.next, null) (linked-list-predicates.vpr@83.3--83.34) [111967]"}
            perm <= UnfoldingMask[null, lseg(UnfoldingHeap[UnfoldingHeap[this, head_3], next], null)];
        }
        UnfoldingMask := UnfoldingMask[null, lseg(UnfoldingHeap[UnfoldingHeap[this, head_3], next], null):=UnfoldingMask[null, lseg(UnfoldingHeap[UnfoldingHeap[this, head_3], next], null)] - perm];
        if (UnfoldingHeap[UnfoldingHeap[this, head_3], next] != null) {
          perm := FullPerm;
          assume UnfoldingHeap[UnfoldingHeap[this, head_3], next] != null;
          UnfoldingMask := UnfoldingMask[UnfoldingHeap[UnfoldingHeap[this, head_3], next], data:=UnfoldingMask[UnfoldingHeap[UnfoldingHeap[this, head_3], next], data] + perm];
          assume state(UnfoldingHeap, UnfoldingMask);
          perm := FullPerm;
          assume UnfoldingHeap[UnfoldingHeap[this, head_3], next] != null;
          UnfoldingMask := UnfoldingMask[UnfoldingHeap[UnfoldingHeap[this, head_3], next], next:=UnfoldingMask[UnfoldingHeap[UnfoldingHeap[this, head_3], next], next] + perm];
          assume state(UnfoldingHeap, UnfoldingMask);
          perm := FullPerm;
          UnfoldingMask := UnfoldingMask[null, lseg(UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[this, head_3], next], next], null):=UnfoldingMask[null, lseg(UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[this, head_3], next], next], null)] + perm];
          
          // -- Extra unfolding of predicate
            assume InsidePredicate(lseg(UnfoldingHeap[UnfoldingHeap[this, head_3], next], null), UnfoldingHeap[null, lseg(UnfoldingHeap[UnfoldingHeap[this, head_3], next], null)], lseg(UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[this, head_3], next], next], null), UnfoldingHeap[null, lseg(UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[this, head_3], next], next], null)]);
          assume state(UnfoldingHeap, UnfoldingMask);
          assume UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[this, head_3], next], next] != null ==> UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[this, head_3], next], data] <= UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[this, head_3], next], next], data];
          
          // -- Free assumptions (inhale module)
            if (UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[this, head_3], next], next] != null) {
              UnfoldingHeap := UnfoldingHeap[null, lseg#sm(UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[this, head_3], next], next], null):=UnfoldingHeap[null, lseg#sm(UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[this, head_3], next], next], null)][UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[this, head_3], next], next], data:=true]];
              UnfoldingHeap := UnfoldingHeap[null, lseg#sm(UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[this, head_3], next], next], null):=UnfoldingHeap[null, lseg#sm(UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[this, head_3], next], next], null)][UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[this, head_3], next], next], next:=true]];
              havoc newPMask;
              assume (forall <A, B> o_19: Ref, f_57: (Field A B) ::
                { newPMask[o_19, f_57] }
                UnfoldingHeap[null, lseg#sm(UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[this, head_3], next], next], null)][o_19, f_57] || UnfoldingHeap[null, lseg#sm(UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[this, head_3], next], next], next], null)][o_19, f_57] ==> newPMask[o_19, f_57]
              );
              UnfoldingHeap := UnfoldingHeap[null, lseg#sm(UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[this, head_3], next], next], null):=newPMask];
            }
            assume state(UnfoldingHeap, UnfoldingMask);
        }
        assume state(UnfoldingHeap, UnfoldingMask);
      if (Heap[Heap[this, head_3], next] != null) {
        assert {:msg "  Folding lseg(this.head, null) might fail. Assertion this.head.data <= this.head.next.data might not hold. (linked-list-predicates.vpr@83.3--83.34) [111971]"}
          Heap[Heap[this, head_3], data] <= Heap[Heap[Heap[this, head_3], next], data];
      }
    }
    
    // -- Free assumptions (exhale module)
      if (Heap[Heap[this, head_3], next] != null) {
        Heap := Heap[null, lseg#sm(Heap[Heap[this, head_3], next], null):=Heap[null, lseg#sm(Heap[Heap[this, head_3], next], null)][Heap[Heap[this, head_3], next], data:=true]];
        Heap := Heap[null, lseg#sm(Heap[Heap[this, head_3], next], null):=Heap[null, lseg#sm(Heap[Heap[this, head_3], next], null)][Heap[Heap[this, head_3], next], next:=true]];
        havoc newPMask;
        assume (forall <A, B> o_21: Ref, f_58: (Field A B) ::
          { newPMask[o_21, f_58] }
          Heap[null, lseg#sm(Heap[Heap[this, head_3], next], null)][o_21, f_58] || Heap[null, lseg#sm(Heap[Heap[Heap[this, head_3], next], next], null)][o_21, f_58] ==> newPMask[o_21, f_58]
        );
        Heap := Heap[null, lseg#sm(Heap[Heap[this, head_3], next], null):=newPMask];
      }
      assume state(Heap, Mask);
    perm := FullPerm;
    Mask := Mask[null, lseg(Heap[this, head_3], null):=Mask[null, lseg(Heap[this, head_3], null)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume lseg#trigger(Heap, lseg(Heap[this, head_3], null));
    assume Heap[null, lseg(Heap[this, head_3], null)] == FrameFragment((if Heap[this, head_3] != null then CombineFrames(FrameFragment(Heap[Heap[this, head_3], data]), CombineFrames(FrameFragment(Heap[Heap[this, head_3], next]), Heap[null, lseg(Heap[Heap[this, head_3], next], null)])) else EmptyFrame));
    if (!HasDirectPerm(Mask, null, lseg(Heap[this, head_3], null))) {
      Heap := Heap[null, lseg#sm(Heap[this, head_3], null):=ZeroPMask];
      havoc freshVersion;
      Heap := Heap[null, lseg(Heap[this, head_3], null):=freshVersion];
    }
    if (Heap[this, head_3] != null) {
      Heap := Heap[null, lseg#sm(Heap[this, head_3], null):=Heap[null, lseg#sm(Heap[this, head_3], null)][Heap[this, head_3], data:=true]];
      Heap := Heap[null, lseg#sm(Heap[this, head_3], null):=Heap[null, lseg#sm(Heap[this, head_3], null)][Heap[this, head_3], next:=true]];
      havoc newPMask;
      assume (forall <A, B> o_43: Ref, f_33: (Field A B) ::
        { newPMask[o_43, f_33] }
        Heap[null, lseg#sm(Heap[this, head_3], null)][o_43, f_33] || Heap[null, lseg#sm(Heap[Heap[this, head_3], next], null)][o_43, f_33] ==> newPMask[o_43, f_33]
      );
      Heap := Heap[null, lseg#sm(Heap[this, head_3], null):=newPMask];
    }
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(List(this), write) -- linked-list-predicates.vpr@84.3--84.23
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding List(this) might fail. There might be insufficient permission to access this.head (linked-list-predicates.vpr@84.3--84.23) [111975]"}
        perm <= Mask[this, head_3];
    }
    Mask := Mask[this, head_3:=Mask[this, head_3] - perm];
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding List(this) might fail. There might be insufficient permission to access lseg(this.head, null) (linked-list-predicates.vpr@84.3--84.23) [111977]"}
        perm <= Mask[null, lseg(Heap[this, head_3], null)];
    }
    Mask := Mask[null, lseg(Heap[this, head_3], null):=Mask[null, lseg(Heap[this, head_3], null)] - perm];
    
    // -- Record predicate instance information
      assume InsidePredicate(List(this), Heap[null, List(this)], lseg(Heap[this, head_3], null), Heap[null, lseg(Heap[this, head_3], null)]);
    perm := FullPerm;
    Mask := Mask[null, List(this):=Mask[null, List(this)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume List#trigger(Heap, List(this));
    assume Heap[null, List(this)] == CombineFrames(FrameFragment(Heap[this, head_3]), Heap[null, lseg(Heap[this, head_3], null)]);
    if (!HasDirectPerm(Mask, null, List(this))) {
      Heap := Heap[null, List#sm(this):=ZeroPMask];
      havoc freshVersion;
      Heap := Heap[null, List(this):=freshVersion];
    }
    Heap := Heap[null, List#sm(this):=Heap[null, List#sm(this)][this, head_3:=true]];
    havoc newPMask;
    assume (forall <A, B> o_50: Ref, f_75: (Field A B) ::
      { newPMask[o_50, f_75] }
      Heap[null, List#sm(this)][o_50, f_75] || Heap[null, lseg#sm(Heap[this, head_3], null)][o_50, f_75] ==> newPMask[o_50, f_75]
    );
    Heap := Heap[null, List#sm(this):=newPMask];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of create might not hold. There might be insufficient permission to access List(this) (linked-list-predicates.vpr@78.11--78.26) [111979]"}
        perm <= Mask[null, List(this)];
    }
    Mask := Mask[null, List(this):=Mask[null, List(this)] - perm];
    assert {:msg "  Postcondition of create might not hold. Assertion content(this) == Seq[Int]() might not hold. (linked-list-predicates.vpr@79.11--79.38) [111980]"}
      Seq#Equal(content(Heap, this), (Seq#Empty(): Seq int));
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method concat
// ==================================================

procedure vconcat(this: Ref, ptr_2: Ref, end_1: Ref) returns ()
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
  var UnfoldingHeap: HeapType;
  var UnfoldingMask: MaskType;
  var newPMask: PMaskType;
  var PreCallHeap: HeapType;
  var PreCallMask: MaskType;
  var arg_this: Ref;
  var ExhaleWellDef1Heap: HeapType;
  var ExhaleWellDef1Mask: MaskType;
  var freshVersion: FrameType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[this, $allocated];
    assume Heap[ptr_2, $allocated];
    assume Heap[end_1, $allocated];
  
  // -- Checked inhaling of precondition
    perm := FullPerm;
    Mask := Mask[null, lseg(this, ptr_2):=Mask[null, lseg(this, ptr_2)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    perm := FullPerm;
    Mask := Mask[null, lseg(ptr_2, end_1):=Mask[null, lseg(ptr_2, end_1)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    if (end_1 != null) {
      perm := 1 / 2;
      assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (linked-list-predicates.vpr@90.12--90.46) [111981]"}
        perm >= NoPerm;
      assume perm > NoPerm ==> end_1 != null;
      Mask := Mask[end_1, next:=Mask[end_1, next] + perm];
      assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
    
    // -- Check definedness of 0 < |contentNodes(this, ptr)| && 0 < |contentNodes(ptr, end)|
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        perm := FullPerm;
        assert {:msg "  Precondition of function contentNodes might not hold. There might be insufficient permission to access lseg(this, ptr) (linked-list-predicates.vpr@91.17--91.40) [111982]"}
          NoPerm < perm ==> NoPerm < Mask[null, lseg(this, ptr_2)];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
      if (0 < Seq#Length(contentNodes(Heap, this, ptr_2))) {
        if (*) {
          // Exhale precondition of function application
          ExhaleWellDef0Heap := Heap;
          ExhaleWellDef0Mask := Mask;
          perm := FullPerm;
          assert {:msg "  Precondition of function contentNodes might not hold. There might be insufficient permission to access lseg(ptr, end) (linked-list-predicates.vpr@91.50--91.72) [111983]"}
            NoPerm < perm ==> NoPerm < Mask[null, lseg(ptr_2, end_1)];
          // Finish exhale
          havoc ExhaleHeap;
          assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
          Heap := ExhaleHeap;
          // Stop execution
          assume false;
        }
      }
    if (0 < Seq#Length(contentNodes(Heap, this, ptr_2)) && 0 < Seq#Length(contentNodes(Heap, ptr_2, end_1))) {
      assume state(Heap, Mask);
      
      // -- Check definedness of contentNodes(this, ptr)[|contentNodes(this, ptr)| - 1] <= contentNodes(ptr, end)[0]
        if (*) {
          // Exhale precondition of function application
          ExhaleWellDef0Heap := Heap;
          ExhaleWellDef0Mask := Mask;
          perm := FullPerm;
          assert {:msg "  Precondition of function contentNodes might not hold. There might be insufficient permission to access lseg(this, ptr) (linked-list-predicates.vpr@92.14--92.37) [111984]"}
            NoPerm < perm ==> NoPerm < Mask[null, lseg(this, ptr_2)];
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
          assert {:msg "  Precondition of function contentNodes might not hold. There might be insufficient permission to access lseg(this, ptr) (linked-list-predicates.vpr@92.39--92.62) [111985]"}
            NoPerm < perm ==> NoPerm < Mask[null, lseg(this, ptr_2)];
          // Finish exhale
          havoc ExhaleHeap;
          assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
          Heap := ExhaleHeap;
          // Stop execution
          assume false;
        }
        assert {:msg "  Contract might not be well-formed. Index contentNodes(this, ptr)[|contentNodes(this, ptr)| - 1] into contentNodes(this, ptr) might be negative. (linked-list-predicates.vpr@91.12--92.95) [111986]"}
          Seq#Length(contentNodes(Heap, this, ptr_2)) - 1 >= 0;
        assert {:msg "  Contract might not be well-formed. Index contentNodes(this, ptr)[|contentNodes(this, ptr)| - 1] into contentNodes(this, ptr) might exceed sequence length. (linked-list-predicates.vpr@91.12--92.95) [111987]"}
          Seq#Length(contentNodes(Heap, this, ptr_2)) - 1 < Seq#Length(contentNodes(Heap, this, ptr_2));
        if (*) {
          // Exhale precondition of function application
          ExhaleWellDef0Heap := Heap;
          ExhaleWellDef0Mask := Mask;
          perm := FullPerm;
          assert {:msg "  Precondition of function contentNodes might not hold. There might be insufficient permission to access lseg(ptr, end) (linked-list-predicates.vpr@92.70--92.92) [111988]"}
            NoPerm < perm ==> NoPerm < Mask[null, lseg(ptr_2, end_1)];
          // Finish exhale
          havoc ExhaleHeap;
          assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
          Heap := ExhaleHeap;
          // Stop execution
          assume false;
        }
        assert {:msg "  Contract might not be well-formed. Index contentNodes(ptr, end)[0] into contentNodes(ptr, end) might exceed sequence length. (linked-list-predicates.vpr@91.12--92.95) [111989]"}
          0 < Seq#Length(contentNodes(Heap, ptr_2, end_1));
      assume Seq#Index(contentNodes(Heap, this, ptr_2), Seq#Length(contentNodes(Heap, this, ptr_2)) - 1) <= Seq#Index(contentNodes(Heap, ptr_2, end_1), 0);
    }
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
    PostMask := PostMask[null, lseg(this, end_1):=PostMask[null, lseg(this, end_1)] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of contentNodes(this, end) == old(contentNodes(this, ptr) ++ contentNodes(ptr, end))
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Heap := PostHeap;
        ExhaleWellDef0Mask := PostMask;
        perm := FullPerm;
        assert {:msg "  Precondition of function contentNodes might not hold. There might be insufficient permission to access lseg(this, end) (linked-list-predicates.vpr@94.11--94.34) [111990]"}
          NoPerm < perm ==> NoPerm < PostMask[null, lseg(this, end_1)];
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
        assert {:msg "  Precondition of function contentNodes might not hold. There might be insufficient permission to access lseg(this, ptr) (linked-list-predicates.vpr@94.42--94.65) [111991]"}
          NoPerm < perm ==> NoPerm < oldMask[null, lseg(this, ptr_2)];
        // Finish exhale
        // Stop execution
        assume false;
      }
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Heap := oldHeap;
        ExhaleWellDef0Mask := oldMask;
        perm := FullPerm;
        assert {:msg "  Precondition of function contentNodes might not hold. There might be insufficient permission to access lseg(ptr, end) (linked-list-predicates.vpr@94.69--94.91) [111992]"}
          NoPerm < perm ==> NoPerm < oldMask[null, lseg(ptr_2, end_1)];
        // Finish exhale
        // Stop execution
        assume false;
      }
    assume Seq#Equal(contentNodes(PostHeap, this, end_1), Seq#Append(contentNodes(oldHeap, this, ptr_2), contentNodes(oldHeap, ptr_2, end_1)));
    assume state(PostHeap, PostMask);
    if (end_1 != null) {
      perm := 1 / 2;
      assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (linked-list-predicates.vpr@95.11--95.45) [111993]"}
        perm >= NoPerm;
      assume perm > NoPerm ==> end_1 != null;
      PostMask := PostMask[end_1, next:=PostMask[end_1, next] + perm];
      assume state(PostHeap, PostMask);
    }
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: if (this != ptr) -- linked-list-predicates.vpr@97.3--102.4
    if (this != ptr_2) {
      
      // -- Translating statement: unfold acc(lseg(this, ptr), write) -- linked-list-predicates.vpr@99.5--99.32
        assume lseg#trigger(Heap, lseg(this, ptr_2));
        assume Heap[null, lseg(this, ptr_2)] == FrameFragment((if this != ptr_2 then CombineFrames(FrameFragment(Heap[this, data]), CombineFrames(FrameFragment(Heap[this, next]), Heap[null, lseg(Heap[this, next], ptr_2)])) else EmptyFrame));
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        perm := FullPerm;
        if (perm != NoPerm) {
          assert {:msg "  Unfolding lseg(this, ptr) might fail. There might be insufficient permission to access lseg(this, ptr) (linked-list-predicates.vpr@99.5--99.32) [111996]"}
            perm <= Mask[null, lseg(this, ptr_2)];
        }
        Mask := Mask[null, lseg(this, ptr_2):=Mask[null, lseg(this, ptr_2)] - perm];
        
        // -- Update version of predicate
          if (!HasDirectPerm(Mask, null, lseg(this, ptr_2))) {
            havoc newVersion;
            Heap := Heap[null, lseg(this, ptr_2):=newVersion];
          }
        if (this != ptr_2) {
          perm := FullPerm;
          assume this != null;
          Mask := Mask[this, data:=Mask[this, data] + perm];
          assume state(Heap, Mask);
          perm := FullPerm;
          assume this != null;
          Mask := Mask[this, next:=Mask[this, next] + perm];
          assume state(Heap, Mask);
          perm := FullPerm;
          Mask := Mask[null, lseg(Heap[this, next], ptr_2):=Mask[null, lseg(Heap[this, next], ptr_2)] + perm];
          
          // -- Extra unfolding of predicate
            assume InsidePredicate(lseg(this, ptr_2), Heap[null, lseg(this, ptr_2)], lseg(Heap[this, next], ptr_2), Heap[null, lseg(Heap[this, next], ptr_2)]);
          assume state(Heap, Mask);
          
          // -- Execute unfolding (for extra information)
            UnfoldingHeap := Heap;
            UnfoldingMask := Mask;
            assume lseg#trigger(UnfoldingHeap, lseg(UnfoldingHeap[this, next], ptr_2));
            assume UnfoldingHeap[null, lseg(UnfoldingHeap[this, next], ptr_2)] == FrameFragment((if UnfoldingHeap[this, next] != ptr_2 then CombineFrames(FrameFragment(UnfoldingHeap[UnfoldingHeap[this, next], data]), CombineFrames(FrameFragment(UnfoldingHeap[UnfoldingHeap[this, next], next]), UnfoldingHeap[null, lseg(UnfoldingHeap[UnfoldingHeap[this, next], next], ptr_2)])) else EmptyFrame));
            ExhaleWellDef0Heap := UnfoldingHeap;
            ExhaleWellDef0Mask := UnfoldingMask;
            perm := FullPerm;
            UnfoldingMask := UnfoldingMask[null, lseg(UnfoldingHeap[this, next], ptr_2):=UnfoldingMask[null, lseg(UnfoldingHeap[this, next], ptr_2)] - perm];
            if (UnfoldingHeap[this, next] != ptr_2) {
              perm := FullPerm;
              assume UnfoldingHeap[this, next] != null;
              UnfoldingMask := UnfoldingMask[UnfoldingHeap[this, next], data:=UnfoldingMask[UnfoldingHeap[this, next], data] + perm];
              assume state(UnfoldingHeap, UnfoldingMask);
              perm := FullPerm;
              assume UnfoldingHeap[this, next] != null;
              UnfoldingMask := UnfoldingMask[UnfoldingHeap[this, next], next:=UnfoldingMask[UnfoldingHeap[this, next], next] + perm];
              assume state(UnfoldingHeap, UnfoldingMask);
              perm := FullPerm;
              UnfoldingMask := UnfoldingMask[null, lseg(UnfoldingHeap[UnfoldingHeap[this, next], next], ptr_2):=UnfoldingMask[null, lseg(UnfoldingHeap[UnfoldingHeap[this, next], next], ptr_2)] + perm];
              
              // -- Extra unfolding of predicate
                assume InsidePredicate(lseg(UnfoldingHeap[this, next], ptr_2), UnfoldingHeap[null, lseg(UnfoldingHeap[this, next], ptr_2)], lseg(UnfoldingHeap[UnfoldingHeap[this, next], next], ptr_2), UnfoldingHeap[null, lseg(UnfoldingHeap[UnfoldingHeap[this, next], next], ptr_2)]);
              assume state(UnfoldingHeap, UnfoldingMask);
              assume UnfoldingHeap[UnfoldingHeap[this, next], next] != ptr_2 ==> UnfoldingHeap[UnfoldingHeap[this, next], data] <= UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[this, next], next], data];
              
              // -- Free assumptions (inhale module)
                if (UnfoldingHeap[UnfoldingHeap[this, next], next] != ptr_2) {
                  UnfoldingHeap := UnfoldingHeap[null, lseg#sm(UnfoldingHeap[UnfoldingHeap[this, next], next], ptr_2):=UnfoldingHeap[null, lseg#sm(UnfoldingHeap[UnfoldingHeap[this, next], next], ptr_2)][UnfoldingHeap[UnfoldingHeap[this, next], next], data:=true]];
                  UnfoldingHeap := UnfoldingHeap[null, lseg#sm(UnfoldingHeap[UnfoldingHeap[this, next], next], ptr_2):=UnfoldingHeap[null, lseg#sm(UnfoldingHeap[UnfoldingHeap[this, next], next], ptr_2)][UnfoldingHeap[UnfoldingHeap[this, next], next], next:=true]];
                  havoc newPMask;
                  assume (forall <A, B> o_67: Ref, f_69: (Field A B) ::
                    { newPMask[o_67, f_69] }
                    UnfoldingHeap[null, lseg#sm(UnfoldingHeap[UnfoldingHeap[this, next], next], ptr_2)][o_67, f_69] || UnfoldingHeap[null, lseg#sm(UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[this, next], next], next], ptr_2)][o_67, f_69] ==> newPMask[o_67, f_69]
                  );
                  UnfoldingHeap := UnfoldingHeap[null, lseg#sm(UnfoldingHeap[UnfoldingHeap[this, next], next], ptr_2):=newPMask];
                }
                assume state(UnfoldingHeap, UnfoldingMask);
            }
            assume state(UnfoldingHeap, UnfoldingMask);
          assume Heap[this, next] != ptr_2 ==> Heap[this, data] <= Heap[Heap[this, next], data];
          
          // -- Free assumptions (inhale module)
            if (Heap[this, next] != ptr_2) {
              Heap := Heap[null, lseg#sm(Heap[this, next], ptr_2):=Heap[null, lseg#sm(Heap[this, next], ptr_2)][Heap[this, next], data:=true]];
              Heap := Heap[null, lseg#sm(Heap[this, next], ptr_2):=Heap[null, lseg#sm(Heap[this, next], ptr_2)][Heap[this, next], next:=true]];
              havoc newPMask;
              assume (forall <A, B> o_22: Ref, f_59: (Field A B) ::
                { newPMask[o_22, f_59] }
                Heap[null, lseg#sm(Heap[this, next], ptr_2)][o_22, f_59] || Heap[null, lseg#sm(Heap[Heap[this, next], next], ptr_2)][o_22, f_59] ==> newPMask[o_22, f_59]
              );
              Heap := Heap[null, lseg#sm(Heap[this, next], ptr_2):=newPMask];
            }
            assume state(Heap, Mask);
        }
        assume state(Heap, Mask);
        assume state(Heap, Mask);
      
      // -- Translating statement: concat(this.next, ptr, end) -- linked-list-predicates.vpr@100.5--100.32
        PreCallHeap := Heap;
        PreCallMask := Mask;
        
        // -- Check definedness of this.next
          assert {:msg "  Method call might fail. There might be insufficient permission to access this.next (linked-list-predicates.vpr@100.5--100.32) [112000]"}
            HasDirectPerm(Mask, this, next);
        arg_this := Heap[this, next];
        
        // -- Exhaling precondition
          ExhaleWellDef0Heap := Heap;
          ExhaleWellDef0Mask := Mask;
          perm := FullPerm;
          if (perm != NoPerm) {
            assert {:msg "  The precondition of method concat might not hold. There might be insufficient permission to access lseg(this.next, ptr) (linked-list-predicates.vpr@100.5--100.32) [112001]"}
              perm <= Mask[null, lseg(arg_this, ptr_2)];
          }
          Mask := Mask[null, lseg(arg_this, ptr_2):=Mask[null, lseg(arg_this, ptr_2)] - perm];
          perm := FullPerm;
          if (perm != NoPerm) {
            assert {:msg "  The precondition of method concat might not hold. There might be insufficient permission to access lseg(ptr, end) (linked-list-predicates.vpr@100.5--100.32) [112002]"}
              perm <= Mask[null, lseg(ptr_2, end_1)];
          }
          Mask := Mask[null, lseg(ptr_2, end_1):=Mask[null, lseg(ptr_2, end_1)] - perm];
          if (end_1 != null) {
            perm := 1 / 2;
            assert {:msg "  The precondition of method concat might not hold. Fraction 1 / 2 might be negative. (linked-list-predicates.vpr@100.5--100.32) [112003]"}
              perm >= NoPerm;
            if (perm != NoPerm) {
              assert {:msg "  The precondition of method concat might not hold. There might be insufficient permission to access end.next (linked-list-predicates.vpr@100.5--100.32) [112004]"}
                perm <= Mask[end_1, next];
            }
            Mask := Mask[end_1, next:=Mask[end_1, next] - perm];
          }
          if (0 < Seq#Length(contentNodes(Heap, arg_this, ptr_2)) && 0 < Seq#Length(contentNodes(Heap, ptr_2, end_1))) {
            assert {:msg "  The precondition of method concat might not hold. Assertion contentNodes(this.next, ptr)[|contentNodes(this.next, ptr)| - 1] <= contentNodes(ptr, end)[0] might not hold. (linked-list-predicates.vpr@100.5--100.32) [112005]"}
              Seq#Index(contentNodes(Heap, arg_this, ptr_2), Seq#Length(contentNodes(Heap, arg_this, ptr_2)) - 1) <= Seq#Index(contentNodes(Heap, ptr_2, end_1), 0);
          }
          // Finish exhale
          havoc ExhaleHeap;
          assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
          Heap := ExhaleHeap;
        
        // -- Inhaling postcondition
          perm := FullPerm;
          Mask := Mask[null, lseg(arg_this, end_1):=Mask[null, lseg(arg_this, end_1)] + perm];
          assume state(Heap, Mask);
          assume state(Heap, Mask);
          assume Seq#Equal(contentNodes(Heap, arg_this, end_1), Seq#Append(contentNodes(PreCallHeap, arg_this, ptr_2), contentNodes(PreCallHeap, ptr_2, end_1)));
          if (end_1 != null) {
            perm := 1 / 2;
            assert {:msg "  Method call might fail. Fraction 1 / 2 might be negative. (linked-list-predicates.vpr@100.5--100.32) [112006]"}
              perm >= NoPerm;
            assume perm > NoPerm ==> end_1 != null;
            Mask := Mask[end_1, next:=Mask[end_1, next] + perm];
            assume state(Heap, Mask);
          }
          assume state(Heap, Mask);
        assume state(Heap, Mask);
      
      // -- Translating statement: fold acc(lseg(this, end), write) -- linked-list-predicates.vpr@101.5--101.30
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        if (this != end_1) {
          perm := FullPerm;
          if (perm != NoPerm) {
            assert {:msg "  Folding lseg(this, end) might fail. There might be insufficient permission to access this.data (linked-list-predicates.vpr@101.5--101.30) [112009]"}
              perm <= Mask[this, data];
          }
          Mask := Mask[this, data:=Mask[this, data] - perm];
          perm := FullPerm;
          if (perm != NoPerm) {
            assert {:msg "  Folding lseg(this, end) might fail. There might be insufficient permission to access this.next (linked-list-predicates.vpr@101.5--101.30) [112011]"}
              perm <= Mask[this, next];
          }
          Mask := Mask[this, next:=Mask[this, next] - perm];
          perm := FullPerm;
          if (perm != NoPerm) {
            assert {:msg "  Folding lseg(this, end) might fail. There might be insufficient permission to access lseg(this.next, end) (linked-list-predicates.vpr@101.5--101.30) [112013]"}
              perm <= Mask[null, lseg(Heap[this, next], end_1)];
          }
          Mask := Mask[null, lseg(Heap[this, next], end_1):=Mask[null, lseg(Heap[this, next], end_1)] - perm];
          
          // -- Record predicate instance information
            assume InsidePredicate(lseg(this, end_1), Heap[null, lseg(this, end_1)], lseg(Heap[this, next], end_1), Heap[null, lseg(Heap[this, next], end_1)]);
          
          // -- Execute unfolding (for extra information)
            UnfoldingHeap := ExhaleWellDef0Heap;
            UnfoldingMask := ExhaleWellDef0Mask;
            assume lseg#trigger(UnfoldingHeap, lseg(UnfoldingHeap[this, next], end_1));
            assume UnfoldingHeap[null, lseg(UnfoldingHeap[this, next], end_1)] == FrameFragment((if UnfoldingHeap[this, next] != end_1 then CombineFrames(FrameFragment(UnfoldingHeap[UnfoldingHeap[this, next], data]), CombineFrames(FrameFragment(UnfoldingHeap[UnfoldingHeap[this, next], next]), UnfoldingHeap[null, lseg(UnfoldingHeap[UnfoldingHeap[this, next], next], end_1)])) else EmptyFrame));
            ExhaleWellDef1Heap := UnfoldingHeap;
            ExhaleWellDef1Mask := UnfoldingMask;
            perm := FullPerm;
            if (perm != NoPerm) {
              assert {:msg "  Folding lseg(this, end) might fail. There might be insufficient permission to access lseg(this.next, end) (linked-list-predicates.vpr@101.5--101.30) [112016]"}
                perm <= UnfoldingMask[null, lseg(UnfoldingHeap[this, next], end_1)];
            }
            UnfoldingMask := UnfoldingMask[null, lseg(UnfoldingHeap[this, next], end_1):=UnfoldingMask[null, lseg(UnfoldingHeap[this, next], end_1)] - perm];
            if (UnfoldingHeap[this, next] != end_1) {
              perm := FullPerm;
              assume UnfoldingHeap[this, next] != null;
              UnfoldingMask := UnfoldingMask[UnfoldingHeap[this, next], data:=UnfoldingMask[UnfoldingHeap[this, next], data] + perm];
              assume state(UnfoldingHeap, UnfoldingMask);
              perm := FullPerm;
              assume UnfoldingHeap[this, next] != null;
              UnfoldingMask := UnfoldingMask[UnfoldingHeap[this, next], next:=UnfoldingMask[UnfoldingHeap[this, next], next] + perm];
              assume state(UnfoldingHeap, UnfoldingMask);
              perm := FullPerm;
              UnfoldingMask := UnfoldingMask[null, lseg(UnfoldingHeap[UnfoldingHeap[this, next], next], end_1):=UnfoldingMask[null, lseg(UnfoldingHeap[UnfoldingHeap[this, next], next], end_1)] + perm];
              
              // -- Extra unfolding of predicate
                assume InsidePredicate(lseg(UnfoldingHeap[this, next], end_1), UnfoldingHeap[null, lseg(UnfoldingHeap[this, next], end_1)], lseg(UnfoldingHeap[UnfoldingHeap[this, next], next], end_1), UnfoldingHeap[null, lseg(UnfoldingHeap[UnfoldingHeap[this, next], next], end_1)]);
              assume state(UnfoldingHeap, UnfoldingMask);
              assume UnfoldingHeap[UnfoldingHeap[this, next], next] != end_1 ==> UnfoldingHeap[UnfoldingHeap[this, next], data] <= UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[this, next], next], data];
              
              // -- Free assumptions (inhale module)
                if (UnfoldingHeap[UnfoldingHeap[this, next], next] != end_1) {
                  UnfoldingHeap := UnfoldingHeap[null, lseg#sm(UnfoldingHeap[UnfoldingHeap[this, next], next], end_1):=UnfoldingHeap[null, lseg#sm(UnfoldingHeap[UnfoldingHeap[this, next], next], end_1)][UnfoldingHeap[UnfoldingHeap[this, next], next], data:=true]];
                  UnfoldingHeap := UnfoldingHeap[null, lseg#sm(UnfoldingHeap[UnfoldingHeap[this, next], next], end_1):=UnfoldingHeap[null, lseg#sm(UnfoldingHeap[UnfoldingHeap[this, next], next], end_1)][UnfoldingHeap[UnfoldingHeap[this, next], next], next:=true]];
                  havoc newPMask;
                  assume (forall <A, B> o_68: Ref, f_76: (Field A B) ::
                    { newPMask[o_68, f_76] }
                    UnfoldingHeap[null, lseg#sm(UnfoldingHeap[UnfoldingHeap[this, next], next], end_1)][o_68, f_76] || UnfoldingHeap[null, lseg#sm(UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[this, next], next], next], end_1)][o_68, f_76] ==> newPMask[o_68, f_76]
                  );
                  UnfoldingHeap := UnfoldingHeap[null, lseg#sm(UnfoldingHeap[UnfoldingHeap[this, next], next], end_1):=newPMask];
                }
                assume state(UnfoldingHeap, UnfoldingMask);
            }
            assume state(UnfoldingHeap, UnfoldingMask);
          if (Heap[this, next] != end_1) {
            assert {:msg "  Folding lseg(this, end) might fail. Assertion this.data <= this.next.data might not hold. (linked-list-predicates.vpr@101.5--101.30) [112020]"}
              Heap[this, data] <= Heap[Heap[this, next], data];
          }
        }
        
        // -- Free assumptions (exhale module)
          if (Heap[this, next] != end_1) {
            Heap := Heap[null, lseg#sm(Heap[this, next], end_1):=Heap[null, lseg#sm(Heap[this, next], end_1)][Heap[this, next], data:=true]];
            Heap := Heap[null, lseg#sm(Heap[this, next], end_1):=Heap[null, lseg#sm(Heap[this, next], end_1)][Heap[this, next], next:=true]];
            havoc newPMask;
            assume (forall <A, B> o_69: Ref, f_77: (Field A B) ::
              { newPMask[o_69, f_77] }
              Heap[null, lseg#sm(Heap[this, next], end_1)][o_69, f_77] || Heap[null, lseg#sm(Heap[Heap[this, next], next], end_1)][o_69, f_77] ==> newPMask[o_69, f_77]
            );
            Heap := Heap[null, lseg#sm(Heap[this, next], end_1):=newPMask];
          }
          assume state(Heap, Mask);
        perm := FullPerm;
        Mask := Mask[null, lseg(this, end_1):=Mask[null, lseg(this, end_1)] + perm];
        assume state(Heap, Mask);
        assume state(Heap, Mask);
        assume lseg#trigger(Heap, lseg(this, end_1));
        assume Heap[null, lseg(this, end_1)] == FrameFragment((if this != end_1 then CombineFrames(FrameFragment(Heap[this, data]), CombineFrames(FrameFragment(Heap[this, next]), Heap[null, lseg(Heap[this, next], end_1)])) else EmptyFrame));
        if (!HasDirectPerm(Mask, null, lseg(this, end_1))) {
          Heap := Heap[null, lseg#sm(this, end_1):=ZeroPMask];
          havoc freshVersion;
          Heap := Heap[null, lseg(this, end_1):=freshVersion];
        }
        if (this != end_1) {
          Heap := Heap[null, lseg#sm(this, end_1):=Heap[null, lseg#sm(this, end_1)][this, data:=true]];
          Heap := Heap[null, lseg#sm(this, end_1):=Heap[null, lseg#sm(this, end_1)][this, next:=true]];
          havoc newPMask;
          assume (forall <A, B> o_70: Ref, f_78: (Field A B) ::
            { newPMask[o_70, f_78] }
            Heap[null, lseg#sm(this, end_1)][o_70, f_78] || Heap[null, lseg#sm(Heap[this, next], end_1)][o_70, f_78] ==> newPMask[o_70, f_78]
          );
          Heap := Heap[null, lseg#sm(this, end_1):=newPMask];
        }
        assume state(Heap, Mask);
        assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of concat might not hold. There might be insufficient permission to access lseg(this, end) (linked-list-predicates.vpr@93.12--93.32) [112022]"}
        perm <= Mask[null, lseg(this, end_1)];
    }
    Mask := Mask[null, lseg(this, end_1):=Mask[null, lseg(this, end_1)] - perm];
    assert {:msg "  Postcondition of concat might not hold. Assertion contentNodes(this, end) == old(contentNodes(this, ptr) ++ contentNodes(ptr, end)) might not hold. (linked-list-predicates.vpr@94.11--94.92) [112023]"}
      Seq#Equal(contentNodes(Heap, this, end_1), Seq#Append(contentNodes(oldHeap, this, ptr_2), contentNodes(oldHeap, ptr_2, end_1)));
    if (end_1 != null) {
      perm := 1 / 2;
      assert {:msg "  Postcondition of concat might not hold. Fraction 1 / 2 might be negative. (linked-list-predicates.vpr@95.11--95.45) [112024]"}
        perm >= NoPerm;
      if (perm != NoPerm) {
        assert {:msg "  Postcondition of concat might not hold. There might be insufficient permission to access end.next (linked-list-predicates.vpr@95.11--95.45) [112025]"}
          perm <= Mask[end_1, next];
      }
      Mask := Mask[end_1, next:=Mask[end_1, next] - perm];
    }
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method insert
// ==================================================

procedure insert(this: Ref, elem_1: int) returns (index: int)
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
  var tmp: Ref;
  var newVersion: FrameType;
  var UnfoldingHeap: HeapType;
  var UnfoldingMask: MaskType;
  var newPMask: PMaskType;
  var freshObj: Ref;
  var ExhaleWellDef1Heap: HeapType;
  var ExhaleWellDef1Mask: MaskType;
  var freshVersion: FrameType;
  var ptr_2: Ref;
  var i: int;
  var i_2: int;
  var i_57: int;
  var i_63: int;
  var loopHeap: HeapType;
  var loopMask: MaskType;
  var Unfolding1Heap: HeapType;
  var Unfolding1Mask: MaskType;
  var ptrn: Ref;
  var PreCallHeap: HeapType;
  var PreCallMask: MaskType;
  var arg_this: Ref;
  var i_10_1: int;
  var i_12_1: int;
  var arg_this_1: Ref;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[this, $allocated];
  
  // -- Checked inhaling of precondition
    perm := FullPerm;
    Mask := Mask[null, List(this):=Mask[null, List(this)] + perm];
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
    perm := FullPerm;
    PostMask := PostMask[null, List(this):=PostMask[null, List(this)] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    assume 0 <= index;
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of index <= |old(content(this))|
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Heap := oldHeap;
        ExhaleWellDef0Mask := oldMask;
        perm := FullPerm;
        assert {:msg "  Precondition of function content might not hold. There might be insufficient permission to access List(this) (linked-list-predicates.vpr@108.39--108.52) [112026]"}
          NoPerm < perm ==> NoPerm < oldMask[null, List(this)];
        // Finish exhale
        // Stop execution
        assume false;
      }
    assume index <= Seq#Length(content(oldHeap, this));
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of content(this) == old(content(this))[0..index] ++ Seq(elem) ++ old(content(this))[index..]
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Heap := PostHeap;
        ExhaleWellDef0Mask := PostMask;
        perm := FullPerm;
        assert {:msg "  Precondition of function content might not hold. There might be insufficient permission to access List(this) (linked-list-predicates.vpr@109.11--109.24) [112027]"}
          NoPerm < perm ==> NoPerm < PostMask[null, List(this)];
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
        assert {:msg "  Precondition of function content might not hold. There might be insufficient permission to access List(this) (linked-list-predicates.vpr@109.32--109.45) [112028]"}
          NoPerm < perm ==> NoPerm < oldMask[null, List(this)];
        // Finish exhale
        // Stop execution
        assume false;
      }
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Heap := oldHeap;
        ExhaleWellDef0Mask := oldMask;
        perm := FullPerm;
        assert {:msg "  Precondition of function content might not hold. There might be insufficient permission to access List(this) (linked-list-predicates.vpr@109.77--109.90) [112029]"}
          NoPerm < perm ==> NoPerm < oldMask[null, List(this)];
        // Finish exhale
        // Stop execution
        assume false;
      }
    assume Seq#Equal(content(PostHeap, this), Seq#Append(Seq#Append(Seq#Drop(Seq#Take(content(oldHeap, this), index), 0), Seq#Singleton(elem_1)), Seq#Drop(content(oldHeap, this), index)));
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Assumptions about local variables
    assume Heap[tmp, $allocated];
  
  // -- Translating statement: index := 0 -- linked-list-predicates.vpr@112.3--112.13
    index := 0;
    assume state(Heap, Mask);
  
  // -- Translating statement: unfold acc(List(this), write) -- linked-list-predicates.vpr@114.3--114.25
    assume List#trigger(Heap, List(this));
    assume Heap[null, List(this)] == CombineFrames(FrameFragment(Heap[this, head_3]), Heap[null, lseg(Heap[this, head_3], null)]);
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Unfolding List(this) might fail. There might be insufficient permission to access List(this) (linked-list-predicates.vpr@114.3--114.25) [112032]"}
        perm <= Mask[null, List(this)];
    }
    Mask := Mask[null, List(this):=Mask[null, List(this)] - perm];
    
    // -- Update version of predicate
      if (!HasDirectPerm(Mask, null, List(this))) {
        havoc newVersion;
        Heap := Heap[null, List(this):=newVersion];
      }
    perm := FullPerm;
    assume this != null;
    Mask := Mask[this, head_3:=Mask[this, head_3] + perm];
    assume state(Heap, Mask);
    perm := FullPerm;
    Mask := Mask[null, lseg(Heap[this, head_3], null):=Mask[null, lseg(Heap[this, head_3], null)] + perm];
    
    // -- Extra unfolding of predicate
      assume InsidePredicate(List(this), Heap[null, List(this)], lseg(Heap[this, head_3], null), Heap[null, lseg(Heap[this, head_3], null)]);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: if (this.head != null) -- linked-list-predicates.vpr@116.3--118.4
    
    // -- Check definedness of this.head != null
      assert {:msg "  Conditional statement might fail. There might be insufficient permission to access this.head (linked-list-predicates.vpr@116.6--116.23) [112035]"}
        HasDirectPerm(Mask, this, head_3);
    if (Heap[this, head_3] != null) {
      
      // -- Translating statement: unfold acc(lseg(this.head, null), write) -- linked-list-predicates.vpr@117.5--117.38
        
        // -- Check definedness of acc(lseg(this.head, null), write)
          assert {:msg "  Unfolding lseg(this.head, null) might fail. There might be insufficient permission to access this.head (linked-list-predicates.vpr@117.5--117.38) [112036]"}
            HasDirectPerm(Mask, this, head_3);
        assume lseg#trigger(Heap, lseg(Heap[this, head_3], null));
        assume Heap[null, lseg(Heap[this, head_3], null)] == FrameFragment((if Heap[this, head_3] != null then CombineFrames(FrameFragment(Heap[Heap[this, head_3], data]), CombineFrames(FrameFragment(Heap[Heap[this, head_3], next]), Heap[null, lseg(Heap[Heap[this, head_3], next], null)])) else EmptyFrame));
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        perm := FullPerm;
        if (perm != NoPerm) {
          assert {:msg "  Unfolding lseg(this.head, null) might fail. There might be insufficient permission to access lseg(this.head, null) (linked-list-predicates.vpr@117.5--117.38) [112039]"}
            perm <= Mask[null, lseg(Heap[this, head_3], null)];
        }
        Mask := Mask[null, lseg(Heap[this, head_3], null):=Mask[null, lseg(Heap[this, head_3], null)] - perm];
        
        // -- Update version of predicate
          if (!HasDirectPerm(Mask, null, lseg(Heap[this, head_3], null))) {
            havoc newVersion;
            Heap := Heap[null, lseg(Heap[this, head_3], null):=newVersion];
          }
        if (Heap[this, head_3] != null) {
          perm := FullPerm;
          assume Heap[this, head_3] != null;
          Mask := Mask[Heap[this, head_3], data:=Mask[Heap[this, head_3], data] + perm];
          assume state(Heap, Mask);
          perm := FullPerm;
          assume Heap[this, head_3] != null;
          Mask := Mask[Heap[this, head_3], next:=Mask[Heap[this, head_3], next] + perm];
          assume state(Heap, Mask);
          perm := FullPerm;
          Mask := Mask[null, lseg(Heap[Heap[this, head_3], next], null):=Mask[null, lseg(Heap[Heap[this, head_3], next], null)] + perm];
          
          // -- Extra unfolding of predicate
            assume InsidePredicate(lseg(Heap[this, head_3], null), Heap[null, lseg(Heap[this, head_3], null)], lseg(Heap[Heap[this, head_3], next], null), Heap[null, lseg(Heap[Heap[this, head_3], next], null)]);
          assume state(Heap, Mask);
          
          // -- Execute unfolding (for extra information)
            UnfoldingHeap := Heap;
            UnfoldingMask := Mask;
            assume lseg#trigger(UnfoldingHeap, lseg(UnfoldingHeap[UnfoldingHeap[this, head_3], next], null));
            assume UnfoldingHeap[null, lseg(UnfoldingHeap[UnfoldingHeap[this, head_3], next], null)] == FrameFragment((if UnfoldingHeap[UnfoldingHeap[this, head_3], next] != null then CombineFrames(FrameFragment(UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[this, head_3], next], data]), CombineFrames(FrameFragment(UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[this, head_3], next], next]), UnfoldingHeap[null, lseg(UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[this, head_3], next], next], null)])) else EmptyFrame));
            ExhaleWellDef0Heap := UnfoldingHeap;
            ExhaleWellDef0Mask := UnfoldingMask;
            perm := FullPerm;
            UnfoldingMask := UnfoldingMask[null, lseg(UnfoldingHeap[UnfoldingHeap[this, head_3], next], null):=UnfoldingMask[null, lseg(UnfoldingHeap[UnfoldingHeap[this, head_3], next], null)] - perm];
            if (UnfoldingHeap[UnfoldingHeap[this, head_3], next] != null) {
              perm := FullPerm;
              assume UnfoldingHeap[UnfoldingHeap[this, head_3], next] != null;
              UnfoldingMask := UnfoldingMask[UnfoldingHeap[UnfoldingHeap[this, head_3], next], data:=UnfoldingMask[UnfoldingHeap[UnfoldingHeap[this, head_3], next], data] + perm];
              assume state(UnfoldingHeap, UnfoldingMask);
              perm := FullPerm;
              assume UnfoldingHeap[UnfoldingHeap[this, head_3], next] != null;
              UnfoldingMask := UnfoldingMask[UnfoldingHeap[UnfoldingHeap[this, head_3], next], next:=UnfoldingMask[UnfoldingHeap[UnfoldingHeap[this, head_3], next], next] + perm];
              assume state(UnfoldingHeap, UnfoldingMask);
              perm := FullPerm;
              UnfoldingMask := UnfoldingMask[null, lseg(UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[this, head_3], next], next], null):=UnfoldingMask[null, lseg(UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[this, head_3], next], next], null)] + perm];
              
              // -- Extra unfolding of predicate
                assume InsidePredicate(lseg(UnfoldingHeap[UnfoldingHeap[this, head_3], next], null), UnfoldingHeap[null, lseg(UnfoldingHeap[UnfoldingHeap[this, head_3], next], null)], lseg(UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[this, head_3], next], next], null), UnfoldingHeap[null, lseg(UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[this, head_3], next], next], null)]);
              assume state(UnfoldingHeap, UnfoldingMask);
              assume UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[this, head_3], next], next] != null ==> UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[this, head_3], next], data] <= UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[this, head_3], next], next], data];
              
              // -- Free assumptions (inhale module)
                if (UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[this, head_3], next], next] != null) {
                  UnfoldingHeap := UnfoldingHeap[null, lseg#sm(UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[this, head_3], next], next], null):=UnfoldingHeap[null, lseg#sm(UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[this, head_3], next], next], null)][UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[this, head_3], next], next], data:=true]];
                  UnfoldingHeap := UnfoldingHeap[null, lseg#sm(UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[this, head_3], next], next], null):=UnfoldingHeap[null, lseg#sm(UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[this, head_3], next], next], null)][UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[this, head_3], next], next], next:=true]];
                  havoc newPMask;
                  assume (forall <A, B> o_72: Ref, f_79: (Field A B) ::
                    { newPMask[o_72, f_79] }
                    UnfoldingHeap[null, lseg#sm(UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[this, head_3], next], next], null)][o_72, f_79] || UnfoldingHeap[null, lseg#sm(UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[this, head_3], next], next], next], null)][o_72, f_79] ==> newPMask[o_72, f_79]
                  );
                  UnfoldingHeap := UnfoldingHeap[null, lseg#sm(UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[this, head_3], next], next], null):=newPMask];
                }
                assume state(UnfoldingHeap, UnfoldingMask);
            }
            assume state(UnfoldingHeap, UnfoldingMask);
          assume Heap[Heap[this, head_3], next] != null ==> Heap[Heap[this, head_3], data] <= Heap[Heap[Heap[this, head_3], next], data];
          
          // -- Free assumptions (inhale module)
            if (Heap[Heap[this, head_3], next] != null) {
              Heap := Heap[null, lseg#sm(Heap[Heap[this, head_3], next], null):=Heap[null, lseg#sm(Heap[Heap[this, head_3], next], null)][Heap[Heap[this, head_3], next], data:=true]];
              Heap := Heap[null, lseg#sm(Heap[Heap[this, head_3], next], null):=Heap[null, lseg#sm(Heap[Heap[this, head_3], next], null)][Heap[Heap[this, head_3], next], next:=true]];
              havoc newPMask;
              assume (forall <A, B> o_71: Ref, f_35: (Field A B) ::
                { newPMask[o_71, f_35] }
                Heap[null, lseg#sm(Heap[Heap[this, head_3], next], null)][o_71, f_35] || Heap[null, lseg#sm(Heap[Heap[Heap[this, head_3], next], next], null)][o_71, f_35] ==> newPMask[o_71, f_35]
              );
              Heap := Heap[null, lseg#sm(Heap[Heap[this, head_3], next], null):=newPMask];
            }
            assume state(Heap, Mask);
        }
        assume state(Heap, Mask);
        assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
  
  // -- Translating statement: if (this.head == null || elem <= this.head.data) -- linked-list-predicates.vpr@120.3--163.4
    
    // -- Check definedness of this.head == null || elem <= this.head.data
      assert {:msg "  Conditional statement might fail. There might be insufficient permission to access this.head (linked-list-predicates.vpr@120.6--120.49) [112043]"}
        HasDirectPerm(Mask, this, head_3);
      if (!(Heap[this, head_3] == null)) {
        assert {:msg "  Conditional statement might fail. There might be insufficient permission to access this.head (linked-list-predicates.vpr@120.6--120.49) [112044]"}
          HasDirectPerm(Mask, this, head_3);
        assert {:msg "  Conditional statement might fail. There might be insufficient permission to access this.head.data (linked-list-predicates.vpr@120.6--120.49) [112045]"}
          HasDirectPerm(Mask, Heap[this, head_3], data);
      }
    if (Heap[this, head_3] == null || elem_1 <= Heap[Heap[this, head_3], data]) {
      
      // -- Translating statement: tmp := new(data, next, head, held, changed) -- linked-list-predicates.vpr@121.5--121.18
        havoc freshObj;
        assume freshObj != null && !Heap[freshObj, $allocated];
        Heap := Heap[freshObj, $allocated:=true];
        tmp := freshObj;
        Mask := Mask[tmp, data:=Mask[tmp, data] + FullPerm];
        Mask := Mask[tmp, next:=Mask[tmp, next] + FullPerm];
        Mask := Mask[tmp, head_3:=Mask[tmp, head_3] + FullPerm];
        Mask := Mask[tmp, held:=Mask[tmp, held] + FullPerm];
        Mask := Mask[tmp, changed:=Mask[tmp, changed] + FullPerm];
        assume state(Heap, Mask);
      
      // -- Translating statement: tmp.data := elem -- linked-list-predicates.vpr@122.5--122.21
        assert {:msg "  Assignment might fail. There might be insufficient permission to access tmp.data (linked-list-predicates.vpr@122.5--122.21) [112046]"}
          FullPerm == Mask[tmp, data];
        Heap := Heap[tmp, data:=elem_1];
        assume state(Heap, Mask);
      
      // -- Translating statement: tmp.next := this.head -- linked-list-predicates.vpr@123.5--123.26
        
        // -- Check definedness of this.head
          assert {:msg "  Assignment might fail. There might be insufficient permission to access this.head (linked-list-predicates.vpr@123.5--123.26) [112047]"}
            HasDirectPerm(Mask, this, head_3);
        assert {:msg "  Assignment might fail. There might be insufficient permission to access tmp.next (linked-list-predicates.vpr@123.5--123.26) [112048]"}
          FullPerm == Mask[tmp, next];
        Heap := Heap[tmp, next:=Heap[this, head_3]];
        assume state(Heap, Mask);
      
      // -- Translating statement: fold acc(lseg(this.head, null), write) -- linked-list-predicates.vpr@124.5--124.36
        
        // -- Check definedness of acc(lseg(this.head, null), write)
          assert {:msg "  Folding lseg(this.head, null) might fail. There might be insufficient permission to access this.head (linked-list-predicates.vpr@124.5--124.36) [112049]"}
            HasDirectPerm(Mask, this, head_3);
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        if (Heap[this, head_3] != null) {
          perm := FullPerm;
          if (perm != NoPerm) {
            assert {:msg "  Folding lseg(this.head, null) might fail. There might be insufficient permission to access this.head.data (linked-list-predicates.vpr@124.5--124.36) [112052]"}
              perm <= Mask[Heap[this, head_3], data];
          }
          Mask := Mask[Heap[this, head_3], data:=Mask[Heap[this, head_3], data] - perm];
          perm := FullPerm;
          if (perm != NoPerm) {
            assert {:msg "  Folding lseg(this.head, null) might fail. There might be insufficient permission to access this.head.next (linked-list-predicates.vpr@124.5--124.36) [112054]"}
              perm <= Mask[Heap[this, head_3], next];
          }
          Mask := Mask[Heap[this, head_3], next:=Mask[Heap[this, head_3], next] - perm];
          perm := FullPerm;
          if (perm != NoPerm) {
            assert {:msg "  Folding lseg(this.head, null) might fail. There might be insufficient permission to access lseg(this.head.next, null) (linked-list-predicates.vpr@124.5--124.36) [112056]"}
              perm <= Mask[null, lseg(Heap[Heap[this, head_3], next], null)];
          }
          Mask := Mask[null, lseg(Heap[Heap[this, head_3], next], null):=Mask[null, lseg(Heap[Heap[this, head_3], next], null)] - perm];
          
          // -- Record predicate instance information
            assume InsidePredicate(lseg(Heap[this, head_3], null), Heap[null, lseg(Heap[this, head_3], null)], lseg(Heap[Heap[this, head_3], next], null), Heap[null, lseg(Heap[Heap[this, head_3], next], null)]);
          
          // -- Execute unfolding (for extra information)
            UnfoldingHeap := ExhaleWellDef0Heap;
            UnfoldingMask := ExhaleWellDef0Mask;
            assume lseg#trigger(UnfoldingHeap, lseg(UnfoldingHeap[UnfoldingHeap[this, head_3], next], null));
            assume UnfoldingHeap[null, lseg(UnfoldingHeap[UnfoldingHeap[this, head_3], next], null)] == FrameFragment((if UnfoldingHeap[UnfoldingHeap[this, head_3], next] != null then CombineFrames(FrameFragment(UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[this, head_3], next], data]), CombineFrames(FrameFragment(UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[this, head_3], next], next]), UnfoldingHeap[null, lseg(UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[this, head_3], next], next], null)])) else EmptyFrame));
            ExhaleWellDef1Heap := UnfoldingHeap;
            ExhaleWellDef1Mask := UnfoldingMask;
            perm := FullPerm;
            if (perm != NoPerm) {
              assert {:msg "  Folding lseg(this.head, null) might fail. There might be insufficient permission to access lseg(this.head.next, null) (linked-list-predicates.vpr@124.5--124.36) [112059]"}
                perm <= UnfoldingMask[null, lseg(UnfoldingHeap[UnfoldingHeap[this, head_3], next], null)];
            }
            UnfoldingMask := UnfoldingMask[null, lseg(UnfoldingHeap[UnfoldingHeap[this, head_3], next], null):=UnfoldingMask[null, lseg(UnfoldingHeap[UnfoldingHeap[this, head_3], next], null)] - perm];
            if (UnfoldingHeap[UnfoldingHeap[this, head_3], next] != null) {
              perm := FullPerm;
              assume UnfoldingHeap[UnfoldingHeap[this, head_3], next] != null;
              UnfoldingMask := UnfoldingMask[UnfoldingHeap[UnfoldingHeap[this, head_3], next], data:=UnfoldingMask[UnfoldingHeap[UnfoldingHeap[this, head_3], next], data] + perm];
              assume state(UnfoldingHeap, UnfoldingMask);
              perm := FullPerm;
              assume UnfoldingHeap[UnfoldingHeap[this, head_3], next] != null;
              UnfoldingMask := UnfoldingMask[UnfoldingHeap[UnfoldingHeap[this, head_3], next], next:=UnfoldingMask[UnfoldingHeap[UnfoldingHeap[this, head_3], next], next] + perm];
              assume state(UnfoldingHeap, UnfoldingMask);
              perm := FullPerm;
              UnfoldingMask := UnfoldingMask[null, lseg(UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[this, head_3], next], next], null):=UnfoldingMask[null, lseg(UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[this, head_3], next], next], null)] + perm];
              
              // -- Extra unfolding of predicate
                assume InsidePredicate(lseg(UnfoldingHeap[UnfoldingHeap[this, head_3], next], null), UnfoldingHeap[null, lseg(UnfoldingHeap[UnfoldingHeap[this, head_3], next], null)], lseg(UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[this, head_3], next], next], null), UnfoldingHeap[null, lseg(UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[this, head_3], next], next], null)]);
              assume state(UnfoldingHeap, UnfoldingMask);
              assume UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[this, head_3], next], next] != null ==> UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[this, head_3], next], data] <= UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[this, head_3], next], next], data];
              
              // -- Free assumptions (inhale module)
                if (UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[this, head_3], next], next] != null) {
                  UnfoldingHeap := UnfoldingHeap[null, lseg#sm(UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[this, head_3], next], next], null):=UnfoldingHeap[null, lseg#sm(UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[this, head_3], next], next], null)][UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[this, head_3], next], next], data:=true]];
                  UnfoldingHeap := UnfoldingHeap[null, lseg#sm(UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[this, head_3], next], next], null):=UnfoldingHeap[null, lseg#sm(UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[this, head_3], next], next], null)][UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[this, head_3], next], next], next:=true]];
                  havoc newPMask;
                  assume (forall <A, B> o_30: Ref, f_80: (Field A B) ::
                    { newPMask[o_30, f_80] }
                    UnfoldingHeap[null, lseg#sm(UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[this, head_3], next], next], null)][o_30, f_80] || UnfoldingHeap[null, lseg#sm(UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[this, head_3], next], next], next], null)][o_30, f_80] ==> newPMask[o_30, f_80]
                  );
                  UnfoldingHeap := UnfoldingHeap[null, lseg#sm(UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[this, head_3], next], next], null):=newPMask];
                }
                assume state(UnfoldingHeap, UnfoldingMask);
            }
            assume state(UnfoldingHeap, UnfoldingMask);
          if (Heap[Heap[this, head_3], next] != null) {
            assert {:msg "  Folding lseg(this.head, null) might fail. Assertion this.head.data <= this.head.next.data might not hold. (linked-list-predicates.vpr@124.5--124.36) [112063]"}
              Heap[Heap[this, head_3], data] <= Heap[Heap[Heap[this, head_3], next], data];
          }
        }
        
        // -- Free assumptions (exhale module)
          if (Heap[Heap[this, head_3], next] != null) {
            Heap := Heap[null, lseg#sm(Heap[Heap[this, head_3], next], null):=Heap[null, lseg#sm(Heap[Heap[this, head_3], next], null)][Heap[Heap[this, head_3], next], data:=true]];
            Heap := Heap[null, lseg#sm(Heap[Heap[this, head_3], next], null):=Heap[null, lseg#sm(Heap[Heap[this, head_3], next], null)][Heap[Heap[this, head_3], next], next:=true]];
            havoc newPMask;
            assume (forall <A, B> o_79: Ref, f_36: (Field A B) ::
              { newPMask[o_79, f_36] }
              Heap[null, lseg#sm(Heap[Heap[this, head_3], next], null)][o_79, f_36] || Heap[null, lseg#sm(Heap[Heap[Heap[this, head_3], next], next], null)][o_79, f_36] ==> newPMask[o_79, f_36]
            );
            Heap := Heap[null, lseg#sm(Heap[Heap[this, head_3], next], null):=newPMask];
          }
          assume state(Heap, Mask);
        perm := FullPerm;
        Mask := Mask[null, lseg(Heap[this, head_3], null):=Mask[null, lseg(Heap[this, head_3], null)] + perm];
        assume state(Heap, Mask);
        assume state(Heap, Mask);
        assume lseg#trigger(Heap, lseg(Heap[this, head_3], null));
        assume Heap[null, lseg(Heap[this, head_3], null)] == FrameFragment((if Heap[this, head_3] != null then CombineFrames(FrameFragment(Heap[Heap[this, head_3], data]), CombineFrames(FrameFragment(Heap[Heap[this, head_3], next]), Heap[null, lseg(Heap[Heap[this, head_3], next], null)])) else EmptyFrame));
        if (!HasDirectPerm(Mask, null, lseg(Heap[this, head_3], null))) {
          Heap := Heap[null, lseg#sm(Heap[this, head_3], null):=ZeroPMask];
          havoc freshVersion;
          Heap := Heap[null, lseg(Heap[this, head_3], null):=freshVersion];
        }
        if (Heap[this, head_3] != null) {
          Heap := Heap[null, lseg#sm(Heap[this, head_3], null):=Heap[null, lseg#sm(Heap[this, head_3], null)][Heap[this, head_3], data:=true]];
          Heap := Heap[null, lseg#sm(Heap[this, head_3], null):=Heap[null, lseg#sm(Heap[this, head_3], null)][Heap[this, head_3], next:=true]];
          havoc newPMask;
          assume (forall <A, B> o_80: Ref, f_88: (Field A B) ::
            { newPMask[o_80, f_88] }
            Heap[null, lseg#sm(Heap[this, head_3], null)][o_80, f_88] || Heap[null, lseg#sm(Heap[Heap[this, head_3], next], null)][o_80, f_88] ==> newPMask[o_80, f_88]
          );
          Heap := Heap[null, lseg#sm(Heap[this, head_3], null):=newPMask];
        }
        assume state(Heap, Mask);
        assume state(Heap, Mask);
      
      // -- Translating statement: fold acc(lseg(tmp, null), write) -- linked-list-predicates.vpr@125.5--125.30
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        if (tmp != null) {
          perm := FullPerm;
          if (perm != NoPerm) {
            assert {:msg "  Folding lseg(tmp, null) might fail. There might be insufficient permission to access tmp.data (linked-list-predicates.vpr@125.5--125.30) [112067]"}
              perm <= Mask[tmp, data];
          }
          Mask := Mask[tmp, data:=Mask[tmp, data] - perm];
          perm := FullPerm;
          if (perm != NoPerm) {
            assert {:msg "  Folding lseg(tmp, null) might fail. There might be insufficient permission to access tmp.next (linked-list-predicates.vpr@125.5--125.30) [112069]"}
              perm <= Mask[tmp, next];
          }
          Mask := Mask[tmp, next:=Mask[tmp, next] - perm];
          perm := FullPerm;
          if (perm != NoPerm) {
            assert {:msg "  Folding lseg(tmp, null) might fail. There might be insufficient permission to access lseg(tmp.next, null) (linked-list-predicates.vpr@125.5--125.30) [112071]"}
              perm <= Mask[null, lseg(Heap[tmp, next], null)];
          }
          Mask := Mask[null, lseg(Heap[tmp, next], null):=Mask[null, lseg(Heap[tmp, next], null)] - perm];
          
          // -- Record predicate instance information
            assume InsidePredicate(lseg(tmp, null), Heap[null, lseg(tmp, null)], lseg(Heap[tmp, next], null), Heap[null, lseg(Heap[tmp, next], null)]);
          
          // -- Execute unfolding (for extra information)
            UnfoldingHeap := ExhaleWellDef0Heap;
            UnfoldingMask := ExhaleWellDef0Mask;
            assume lseg#trigger(UnfoldingHeap, lseg(UnfoldingHeap[tmp, next], null));
            assume UnfoldingHeap[null, lseg(UnfoldingHeap[tmp, next], null)] == FrameFragment((if UnfoldingHeap[tmp, next] != null then CombineFrames(FrameFragment(UnfoldingHeap[UnfoldingHeap[tmp, next], data]), CombineFrames(FrameFragment(UnfoldingHeap[UnfoldingHeap[tmp, next], next]), UnfoldingHeap[null, lseg(UnfoldingHeap[UnfoldingHeap[tmp, next], next], null)])) else EmptyFrame));
            ExhaleWellDef1Heap := UnfoldingHeap;
            ExhaleWellDef1Mask := UnfoldingMask;
            perm := FullPerm;
            if (perm != NoPerm) {
              assert {:msg "  Folding lseg(tmp, null) might fail. There might be insufficient permission to access lseg(tmp.next, null) (linked-list-predicates.vpr@125.5--125.30) [112074]"}
                perm <= UnfoldingMask[null, lseg(UnfoldingHeap[tmp, next], null)];
            }
            UnfoldingMask := UnfoldingMask[null, lseg(UnfoldingHeap[tmp, next], null):=UnfoldingMask[null, lseg(UnfoldingHeap[tmp, next], null)] - perm];
            if (UnfoldingHeap[tmp, next] != null) {
              perm := FullPerm;
              assume UnfoldingHeap[tmp, next] != null;
              UnfoldingMask := UnfoldingMask[UnfoldingHeap[tmp, next], data:=UnfoldingMask[UnfoldingHeap[tmp, next], data] + perm];
              assume state(UnfoldingHeap, UnfoldingMask);
              perm := FullPerm;
              assume UnfoldingHeap[tmp, next] != null;
              UnfoldingMask := UnfoldingMask[UnfoldingHeap[tmp, next], next:=UnfoldingMask[UnfoldingHeap[tmp, next], next] + perm];
              assume state(UnfoldingHeap, UnfoldingMask);
              perm := FullPerm;
              UnfoldingMask := UnfoldingMask[null, lseg(UnfoldingHeap[UnfoldingHeap[tmp, next], next], null):=UnfoldingMask[null, lseg(UnfoldingHeap[UnfoldingHeap[tmp, next], next], null)] + perm];
              
              // -- Extra unfolding of predicate
                assume InsidePredicate(lseg(UnfoldingHeap[tmp, next], null), UnfoldingHeap[null, lseg(UnfoldingHeap[tmp, next], null)], lseg(UnfoldingHeap[UnfoldingHeap[tmp, next], next], null), UnfoldingHeap[null, lseg(UnfoldingHeap[UnfoldingHeap[tmp, next], next], null)]);
              assume state(UnfoldingHeap, UnfoldingMask);
              assume UnfoldingHeap[UnfoldingHeap[tmp, next], next] != null ==> UnfoldingHeap[UnfoldingHeap[tmp, next], data] <= UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[tmp, next], next], data];
              
              // -- Free assumptions (inhale module)
                if (UnfoldingHeap[UnfoldingHeap[tmp, next], next] != null) {
                  UnfoldingHeap := UnfoldingHeap[null, lseg#sm(UnfoldingHeap[UnfoldingHeap[tmp, next], next], null):=UnfoldingHeap[null, lseg#sm(UnfoldingHeap[UnfoldingHeap[tmp, next], next], null)][UnfoldingHeap[UnfoldingHeap[tmp, next], next], data:=true]];
                  UnfoldingHeap := UnfoldingHeap[null, lseg#sm(UnfoldingHeap[UnfoldingHeap[tmp, next], next], null):=UnfoldingHeap[null, lseg#sm(UnfoldingHeap[UnfoldingHeap[tmp, next], next], null)][UnfoldingHeap[UnfoldingHeap[tmp, next], next], next:=true]];
                  havoc newPMask;
                  assume (forall <A, B> o_31: Ref, f_89: (Field A B) ::
                    { newPMask[o_31, f_89] }
                    UnfoldingHeap[null, lseg#sm(UnfoldingHeap[UnfoldingHeap[tmp, next], next], null)][o_31, f_89] || UnfoldingHeap[null, lseg#sm(UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[tmp, next], next], next], null)][o_31, f_89] ==> newPMask[o_31, f_89]
                  );
                  UnfoldingHeap := UnfoldingHeap[null, lseg#sm(UnfoldingHeap[UnfoldingHeap[tmp, next], next], null):=newPMask];
                }
                assume state(UnfoldingHeap, UnfoldingMask);
            }
            assume state(UnfoldingHeap, UnfoldingMask);
          if (Heap[tmp, next] != null) {
            assert {:msg "  Folding lseg(tmp, null) might fail. Assertion tmp.data <= tmp.next.data might not hold. (linked-list-predicates.vpr@125.5--125.30) [112078]"}
              Heap[tmp, data] <= Heap[Heap[tmp, next], data];
          }
        }
        
        // -- Free assumptions (exhale module)
          if (Heap[tmp, next] != null) {
            Heap := Heap[null, lseg#sm(Heap[tmp, next], null):=Heap[null, lseg#sm(Heap[tmp, next], null)][Heap[tmp, next], data:=true]];
            Heap := Heap[null, lseg#sm(Heap[tmp, next], null):=Heap[null, lseg#sm(Heap[tmp, next], null)][Heap[tmp, next], next:=true]];
            havoc newPMask;
            assume (forall <A, B> o_81: Ref, f_90: (Field A B) ::
              { newPMask[o_81, f_90] }
              Heap[null, lseg#sm(Heap[tmp, next], null)][o_81, f_90] || Heap[null, lseg#sm(Heap[Heap[tmp, next], next], null)][o_81, f_90] ==> newPMask[o_81, f_90]
            );
            Heap := Heap[null, lseg#sm(Heap[tmp, next], null):=newPMask];
          }
          assume state(Heap, Mask);
        perm := FullPerm;
        Mask := Mask[null, lseg(tmp, null):=Mask[null, lseg(tmp, null)] + perm];
        assume state(Heap, Mask);
        assume state(Heap, Mask);
        assume lseg#trigger(Heap, lseg(tmp, null));
        assume Heap[null, lseg(tmp, null)] == FrameFragment((if tmp != null then CombineFrames(FrameFragment(Heap[tmp, data]), CombineFrames(FrameFragment(Heap[tmp, next]), Heap[null, lseg(Heap[tmp, next], null)])) else EmptyFrame));
        if (!HasDirectPerm(Mask, null, lseg(tmp, null))) {
          Heap := Heap[null, lseg#sm(tmp, null):=ZeroPMask];
          havoc freshVersion;
          Heap := Heap[null, lseg(tmp, null):=freshVersion];
        }
        if (tmp != null) {
          Heap := Heap[null, lseg#sm(tmp, null):=Heap[null, lseg#sm(tmp, null)][tmp, data:=true]];
          Heap := Heap[null, lseg#sm(tmp, null):=Heap[null, lseg#sm(tmp, null)][tmp, next:=true]];
          havoc newPMask;
          assume (forall <A, B> o_82: Ref, f_91: (Field A B) ::
            { newPMask[o_82, f_91] }
            Heap[null, lseg#sm(tmp, null)][o_82, f_91] || Heap[null, lseg#sm(Heap[tmp, next], null)][o_82, f_91] ==> newPMask[o_82, f_91]
          );
          Heap := Heap[null, lseg#sm(tmp, null):=newPMask];
        }
        assume state(Heap, Mask);
        assume state(Heap, Mask);
      
      // -- Translating statement: this.head := tmp -- linked-list-predicates.vpr@126.5--126.21
        assert {:msg "  Assignment might fail. There might be insufficient permission to access this.head (linked-list-predicates.vpr@126.5--126.21) [112080]"}
          FullPerm == Mask[this, head_3];
        Heap := Heap[this, head_3:=tmp];
        assume state(Heap, Mask);
    } else {
      
      // -- Assumptions about local variables
        assume Heap[ptr_2, $allocated];
      
      // -- Translating statement: ptr := this.head -- linked-list-predicates.vpr@128.5--128.30
        
        // -- Check definedness of this.head
          assert {:msg "  Assignment might fail. There might be insufficient permission to access this.head (linked-list-predicates.vpr@128.5--128.30) [112081]"}
            HasDirectPerm(Mask, this, head_3);
        ptr_2 := Heap[this, head_3];
        assume state(Heap, Mask);
      
      // -- Translating statement: fold acc(lseg(this.head, ptr), write) -- linked-list-predicates.vpr@129.5--129.35
        
        // -- Check definedness of acc(lseg(this.head, ptr), write)
          assert {:msg "  Folding lseg(this.head, ptr) might fail. There might be insufficient permission to access this.head (linked-list-predicates.vpr@129.5--129.35) [112082]"}
            HasDirectPerm(Mask, this, head_3);
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        if (Heap[this, head_3] != ptr_2) {
          perm := FullPerm;
          if (perm != NoPerm) {
            assert {:msg "  Folding lseg(this.head, ptr) might fail. There might be insufficient permission to access this.head.data (linked-list-predicates.vpr@129.5--129.35) [112085]"}
              perm <= Mask[Heap[this, head_3], data];
          }
          Mask := Mask[Heap[this, head_3], data:=Mask[Heap[this, head_3], data] - perm];
          perm := FullPerm;
          if (perm != NoPerm) {
            assert {:msg "  Folding lseg(this.head, ptr) might fail. There might be insufficient permission to access this.head.next (linked-list-predicates.vpr@129.5--129.35) [112087]"}
              perm <= Mask[Heap[this, head_3], next];
          }
          Mask := Mask[Heap[this, head_3], next:=Mask[Heap[this, head_3], next] - perm];
          perm := FullPerm;
          if (perm != NoPerm) {
            assert {:msg "  Folding lseg(this.head, ptr) might fail. There might be insufficient permission to access lseg(this.head.next, ptr) (linked-list-predicates.vpr@129.5--129.35) [112089]"}
              perm <= Mask[null, lseg(Heap[Heap[this, head_3], next], ptr_2)];
          }
          Mask := Mask[null, lseg(Heap[Heap[this, head_3], next], ptr_2):=Mask[null, lseg(Heap[Heap[this, head_3], next], ptr_2)] - perm];
          
          // -- Record predicate instance information
            assume InsidePredicate(lseg(Heap[this, head_3], ptr_2), Heap[null, lseg(Heap[this, head_3], ptr_2)], lseg(Heap[Heap[this, head_3], next], ptr_2), Heap[null, lseg(Heap[Heap[this, head_3], next], ptr_2)]);
          
          // -- Execute unfolding (for extra information)
            UnfoldingHeap := ExhaleWellDef0Heap;
            UnfoldingMask := ExhaleWellDef0Mask;
            assume lseg#trigger(UnfoldingHeap, lseg(UnfoldingHeap[UnfoldingHeap[this, head_3], next], ptr_2));
            assume UnfoldingHeap[null, lseg(UnfoldingHeap[UnfoldingHeap[this, head_3], next], ptr_2)] == FrameFragment((if UnfoldingHeap[UnfoldingHeap[this, head_3], next] != ptr_2 then CombineFrames(FrameFragment(UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[this, head_3], next], data]), CombineFrames(FrameFragment(UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[this, head_3], next], next]), UnfoldingHeap[null, lseg(UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[this, head_3], next], next], ptr_2)])) else EmptyFrame));
            ExhaleWellDef1Heap := UnfoldingHeap;
            ExhaleWellDef1Mask := UnfoldingMask;
            perm := FullPerm;
            if (perm != NoPerm) {
              assert {:msg "  Folding lseg(this.head, ptr) might fail. There might be insufficient permission to access lseg(this.head.next, ptr) (linked-list-predicates.vpr@129.5--129.35) [112092]"}
                perm <= UnfoldingMask[null, lseg(UnfoldingHeap[UnfoldingHeap[this, head_3], next], ptr_2)];
            }
            UnfoldingMask := UnfoldingMask[null, lseg(UnfoldingHeap[UnfoldingHeap[this, head_3], next], ptr_2):=UnfoldingMask[null, lseg(UnfoldingHeap[UnfoldingHeap[this, head_3], next], ptr_2)] - perm];
            if (UnfoldingHeap[UnfoldingHeap[this, head_3], next] != ptr_2) {
              perm := FullPerm;
              assume UnfoldingHeap[UnfoldingHeap[this, head_3], next] != null;
              UnfoldingMask := UnfoldingMask[UnfoldingHeap[UnfoldingHeap[this, head_3], next], data:=UnfoldingMask[UnfoldingHeap[UnfoldingHeap[this, head_3], next], data] + perm];
              assume state(UnfoldingHeap, UnfoldingMask);
              perm := FullPerm;
              assume UnfoldingHeap[UnfoldingHeap[this, head_3], next] != null;
              UnfoldingMask := UnfoldingMask[UnfoldingHeap[UnfoldingHeap[this, head_3], next], next:=UnfoldingMask[UnfoldingHeap[UnfoldingHeap[this, head_3], next], next] + perm];
              assume state(UnfoldingHeap, UnfoldingMask);
              perm := FullPerm;
              UnfoldingMask := UnfoldingMask[null, lseg(UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[this, head_3], next], next], ptr_2):=UnfoldingMask[null, lseg(UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[this, head_3], next], next], ptr_2)] + perm];
              
              // -- Extra unfolding of predicate
                assume InsidePredicate(lseg(UnfoldingHeap[UnfoldingHeap[this, head_3], next], ptr_2), UnfoldingHeap[null, lseg(UnfoldingHeap[UnfoldingHeap[this, head_3], next], ptr_2)], lseg(UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[this, head_3], next], next], ptr_2), UnfoldingHeap[null, lseg(UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[this, head_3], next], next], ptr_2)]);
              assume state(UnfoldingHeap, UnfoldingMask);
              assume UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[this, head_3], next], next] != ptr_2 ==> UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[this, head_3], next], data] <= UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[this, head_3], next], next], data];
              
              // -- Free assumptions (inhale module)
                if (UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[this, head_3], next], next] != ptr_2) {
                  UnfoldingHeap := UnfoldingHeap[null, lseg#sm(UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[this, head_3], next], next], ptr_2):=UnfoldingHeap[null, lseg#sm(UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[this, head_3], next], next], ptr_2)][UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[this, head_3], next], next], data:=true]];
                  UnfoldingHeap := UnfoldingHeap[null, lseg#sm(UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[this, head_3], next], next], ptr_2):=UnfoldingHeap[null, lseg#sm(UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[this, head_3], next], next], ptr_2)][UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[this, head_3], next], next], next:=true]];
                  havoc newPMask;
                  assume (forall <A, B> o_62: Ref, f_47: (Field A B) ::
                    { newPMask[o_62, f_47] }
                    UnfoldingHeap[null, lseg#sm(UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[this, head_3], next], next], ptr_2)][o_62, f_47] || UnfoldingHeap[null, lseg#sm(UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[this, head_3], next], next], next], ptr_2)][o_62, f_47] ==> newPMask[o_62, f_47]
                  );
                  UnfoldingHeap := UnfoldingHeap[null, lseg#sm(UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[this, head_3], next], next], ptr_2):=newPMask];
                }
                assume state(UnfoldingHeap, UnfoldingMask);
            }
            assume state(UnfoldingHeap, UnfoldingMask);
          if (Heap[Heap[this, head_3], next] != ptr_2) {
            assert {:msg "  Folding lseg(this.head, ptr) might fail. Assertion this.head.data <= this.head.next.data might not hold. (linked-list-predicates.vpr@129.5--129.35) [112096]"}
              Heap[Heap[this, head_3], data] <= Heap[Heap[Heap[this, head_3], next], data];
          }
        }
        
        // -- Free assumptions (exhale module)
          if (Heap[Heap[this, head_3], next] != ptr_2) {
            Heap := Heap[null, lseg#sm(Heap[Heap[this, head_3], next], ptr_2):=Heap[null, lseg#sm(Heap[Heap[this, head_3], next], ptr_2)][Heap[Heap[this, head_3], next], data:=true]];
            Heap := Heap[null, lseg#sm(Heap[Heap[this, head_3], next], ptr_2):=Heap[null, lseg#sm(Heap[Heap[this, head_3], next], ptr_2)][Heap[Heap[this, head_3], next], next:=true]];
            havoc newPMask;
            assume (forall <A, B> o_83: Ref, f_72: (Field A B) ::
              { newPMask[o_83, f_72] }
              Heap[null, lseg#sm(Heap[Heap[this, head_3], next], ptr_2)][o_83, f_72] || Heap[null, lseg#sm(Heap[Heap[Heap[this, head_3], next], next], ptr_2)][o_83, f_72] ==> newPMask[o_83, f_72]
            );
            Heap := Heap[null, lseg#sm(Heap[Heap[this, head_3], next], ptr_2):=newPMask];
          }
          assume state(Heap, Mask);
        perm := FullPerm;
        Mask := Mask[null, lseg(Heap[this, head_3], ptr_2):=Mask[null, lseg(Heap[this, head_3], ptr_2)] + perm];
        assume state(Heap, Mask);
        assume state(Heap, Mask);
        assume lseg#trigger(Heap, lseg(Heap[this, head_3], ptr_2));
        assume Heap[null, lseg(Heap[this, head_3], ptr_2)] == FrameFragment((if Heap[this, head_3] != ptr_2 then CombineFrames(FrameFragment(Heap[Heap[this, head_3], data]), CombineFrames(FrameFragment(Heap[Heap[this, head_3], next]), Heap[null, lseg(Heap[Heap[this, head_3], next], ptr_2)])) else EmptyFrame));
        if (!HasDirectPerm(Mask, null, lseg(Heap[this, head_3], ptr_2))) {
          Heap := Heap[null, lseg#sm(Heap[this, head_3], ptr_2):=ZeroPMask];
          havoc freshVersion;
          Heap := Heap[null, lseg(Heap[this, head_3], ptr_2):=freshVersion];
        }
        if (Heap[this, head_3] != ptr_2) {
          Heap := Heap[null, lseg#sm(Heap[this, head_3], ptr_2):=Heap[null, lseg#sm(Heap[this, head_3], ptr_2)][Heap[this, head_3], data:=true]];
          Heap := Heap[null, lseg#sm(Heap[this, head_3], ptr_2):=Heap[null, lseg#sm(Heap[this, head_3], ptr_2)][Heap[this, head_3], next:=true]];
          havoc newPMask;
          assume (forall <A, B> o_84: Ref, f_92: (Field A B) ::
            { newPMask[o_84, f_92] }
            Heap[null, lseg#sm(Heap[this, head_3], ptr_2)][o_84, f_92] || Heap[null, lseg#sm(Heap[Heap[this, head_3], next], ptr_2)][o_84, f_92] ==> newPMask[o_84, f_92]
          );
          Heap := Heap[null, lseg#sm(Heap[this, head_3], ptr_2):=newPMask];
        }
        assume state(Heap, Mask);
        assume state(Heap, Mask);
      
      // -- Translating statement: index := index + 1 -- linked-list-predicates.vpr@130.5--130.23
        index := index + 1;
        assume state(Heap, Mask);
      
      // -- Translating statement: while (ptr.next != null && (unfolding acc(lseg(ptr.next, null), write) in ptr.next.data < elem)) -- linked-list-predicates.vpr@132.5--152.6
        
        // -- Before loop head
          
          // -- Exhale loop invariant before loop
            ExhaleWellDef0Heap := Heap;
            ExhaleWellDef0Mask := Mask;
            perm := FullPerm;
            if (perm != NoPerm) {
              assert {:msg "  Loop invariant acc(this.head, write) might not hold on entry. There might be insufficient permission to access this.head (linked-list-predicates.vpr@133.17--133.31) [112098]"}
                perm <= Mask[this, head_3];
            }
            Mask := Mask[this, head_3:=Mask[this, head_3] - perm];
            perm := FullPerm;
            if (perm != NoPerm) {
              assert {:msg "  Loop invariant acc(ptr.next, write) && (acc(ptr.data, write) && ptr.data <= elem) might not hold on entry. There might be insufficient permission to access ptr.next (linked-list-predicates.vpr@134.17--134.67) [112099]"}
                perm <= Mask[ptr_2, next];
            }
            Mask := Mask[ptr_2, next:=Mask[ptr_2, next] - perm];
            perm := FullPerm;
            if (perm != NoPerm) {
              assert {:msg "  Loop invariant acc(ptr.next, write) && (acc(ptr.data, write) && ptr.data <= elem) might not hold on entry. There might be insufficient permission to access ptr.data (linked-list-predicates.vpr@134.17--134.67) [112100]"}
                perm <= Mask[ptr_2, data];
            }
            Mask := Mask[ptr_2, data:=Mask[ptr_2, data] - perm];
            assert {:msg "  Loop invariant acc(ptr.next, write) && (acc(ptr.data, write) && ptr.data <= elem) might not hold on entry. Assertion ptr.data <= elem might not hold. (linked-list-predicates.vpr@134.17--134.67) [112101]"}
              Heap[ptr_2, data] <= elem_1;
            perm := FullPerm;
            if (perm != NoPerm) {
              assert {:msg "  Loop invariant acc(lseg(ptr.next, null), write) might not hold on entry. There might be insufficient permission to access lseg(ptr.next, null) (linked-list-predicates.vpr@135.17--135.42) [112102]"}
                perm <= Mask[null, lseg(Heap[ptr_2, next], null)];
            }
            Mask := Mask[null, lseg(Heap[ptr_2, next], null):=Mask[null, lseg(Heap[ptr_2, next], null)] - perm];
            perm := FullPerm;
            if (perm != NoPerm) {
              assert {:msg "  Loop invariant acc(lseg(this.head, ptr), write) might not hold on entry. There might be insufficient permission to access lseg(this.head, ptr) (linked-list-predicates.vpr@136.17--136.42) [112103]"}
                perm <= Mask[null, lseg(Heap[this, head_3], ptr_2)];
            }
            Mask := Mask[null, lseg(Heap[this, head_3], ptr_2):=Mask[null, lseg(Heap[this, head_3], ptr_2)] - perm];
            if (*) {
              if (0 <= i && i < Seq#Length(contentNodes(Heap, Heap[this, head_3], ptr_2))) {
                assert {:msg "  Loop invariant (forall i: Int :: { contentNodes(this.head, ptr)[i] } 0 <= i && i < |contentNodes(this.head, ptr)| ==> contentNodes(this.head, ptr)[i] <= ptr.data) might not hold on entry. Assertion contentNodes(this.head, ptr)[i] <= ptr.data might not hold. (linked-list-predicates.vpr@137.17--138.62) [112104]"}
                  Seq#Index(contentNodes(Heap, Heap[this, head_3], ptr_2), i) <= Heap[ptr_2, data];
              }
              assume false;
            }
            assume (forall i_1_1_1: int ::
              { Seq#Index(contentNodes#frame(Heap[null, lseg(Heap[this, head_3], ptr_2)], Heap[this, head_3], ptr_2), i_1_1_1) }
              0 <= i_1_1_1 && i_1_1_1 < Seq#Length(contentNodes(Heap, Heap[this, head_3], ptr_2)) ==> Seq#Index(contentNodes(Heap, Heap[this, head_3], ptr_2), i_1_1_1) <= Heap[ptr_2, data]
            );
            if (*) {
              if (0 <= i_2 && i_2 < Seq#Length(contentNodes(Heap, Heap[ptr_2, next], null))) {
                assert {:msg "  Loop invariant (forall i: Int :: { contentNodes(ptr.next, null)[i] } 0 <= i && i < |contentNodes(ptr.next, null)| ==> ptr.data <= contentNodes(ptr.next, null)[i]) might not hold on entry. Assertion ptr.data <= contentNodes(ptr.next, null)[i] might not hold. (linked-list-predicates.vpr@139.17--140.62) [112105]"}
                  Heap[ptr_2, data] <= Seq#Index(contentNodes(Heap, Heap[ptr_2, next], null), i_2);
              }
              assume false;
            }
            assume (forall i_3_1: int ::
              { Seq#Index(contentNodes#frame(Heap[null, lseg(Heap[ptr_2, next], null)], Heap[ptr_2, next], null), i_3_1) }
              0 <= i_3_1 && i_3_1 < Seq#Length(contentNodes(Heap, Heap[ptr_2, next], null)) ==> Heap[ptr_2, data] <= Seq#Index(contentNodes(Heap, Heap[ptr_2, next], null), i_3_1)
            );
            assert {:msg "  Loop invariant index - 1 == |contentNodes(this.head, ptr)| might not hold on entry. Assertion index - 1 == |contentNodes(this.head, ptr)| might not hold. (linked-list-predicates.vpr@141.17--141.58) [112106]"}
              index - 1 == Seq#Length(contentNodes(Heap, Heap[this, head_3], ptr_2));
            assert {:msg "  Loop invariant old(content(this)) == contentNodes(this.head, ptr) ++ Seq(ptr.data) ++ contentNodes(ptr.next, null) might not hold on entry. Assertion old(content(this)) == contentNodes(this.head, ptr) ++ Seq(ptr.data) ++ contentNodes(ptr.next, null) might not hold. (linked-list-predicates.vpr@143.9--143.108) [112107]"}
              Seq#Equal(content(oldHeap, this), Seq#Append(Seq#Append(contentNodes(Heap, Heap[this, head_3], ptr_2), Seq#Singleton(Heap[ptr_2, data])), contentNodes(Heap, Heap[ptr_2, next], null)));
            // Finish exhale
            havoc ExhaleHeap;
            assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
            Heap := ExhaleHeap;
        
        // -- Havoc loop written variables (except locals)
          havoc ptr_2, index;
          assume Heap[ptr_2, $allocated];
        
        // -- Check definedness of invariant
          if (*) {
            perm := FullPerm;
            assume this != null;
            Mask := Mask[this, head_3:=Mask[this, head_3] + perm];
            assume state(Heap, Mask);
            assume state(Heap, Mask);
            perm := FullPerm;
            assume ptr_2 != null;
            Mask := Mask[ptr_2, next:=Mask[ptr_2, next] + perm];
            assume state(Heap, Mask);
            perm := FullPerm;
            assume ptr_2 != null;
            Mask := Mask[ptr_2, data:=Mask[ptr_2, data] + perm];
            assume state(Heap, Mask);
            
            // -- Check definedness of ptr.data <= elem
              assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access ptr.data (linked-list-predicates.vpr@134.17--134.67) [112108]"}
                HasDirectPerm(Mask, ptr_2, data);
            assume Heap[ptr_2, data] <= elem_1;
            assume state(Heap, Mask);
            
            // -- Check definedness of acc(lseg(ptr.next, null), write)
              assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access ptr.next (linked-list-predicates.vpr@135.17--135.42) [112109]"}
                HasDirectPerm(Mask, ptr_2, next);
            perm := FullPerm;
            Mask := Mask[null, lseg(Heap[ptr_2, next], null):=Mask[null, lseg(Heap[ptr_2, next], null)] + perm];
            assume state(Heap, Mask);
            assume state(Heap, Mask);
            
            // -- Check definedness of acc(lseg(this.head, ptr), write)
              assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.head (linked-list-predicates.vpr@136.17--136.42) [112110]"}
                HasDirectPerm(Mask, this, head_3);
            perm := FullPerm;
            Mask := Mask[null, lseg(Heap[this, head_3], ptr_2):=Mask[null, lseg(Heap[this, head_3], ptr_2)] + perm];
            assume state(Heap, Mask);
            assume state(Heap, Mask);
            assume state(Heap, Mask);
            
            // -- Check definedness of (forall i: Int :: { contentNodes(this.head, ptr)[i] } 0 <= i && i < |contentNodes(this.head, ptr)| ==> contentNodes(this.head, ptr)[i] <= ptr.data)
              if (*) {
                if (0 <= i_57) {
                  assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.head (linked-list-predicates.vpr@137.17--138.62) [112111]"}
                    HasDirectPerm(Mask, this, head_3);
                  if (*) {
                    // Exhale precondition of function application
                    ExhaleWellDef0Heap := Heap;
                    ExhaleWellDef0Mask := Mask;
                    perm := FullPerm;
                    assert {:msg "  Precondition of function contentNodes might not hold. There might be insufficient permission to access lseg(this.head, ptr) (linked-list-predicates.vpr@137.49--137.77) [112112]"}
                      NoPerm < perm ==> NoPerm < Mask[null, lseg(Heap[this, head_3], ptr_2)];
                    // Finish exhale
                    havoc ExhaleHeap;
                    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
                    Heap := ExhaleHeap;
                    // Stop execution
                    assume false;
                  }
                }
                if (0 <= i_57 && i_57 < Seq#Length(contentNodes(Heap, Heap[this, head_3], ptr_2))) {
                  assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.head (linked-list-predicates.vpr@137.17--138.62) [112113]"}
                    HasDirectPerm(Mask, this, head_3);
                  if (*) {
                    // Exhale precondition of function application
                    ExhaleWellDef0Heap := Heap;
                    ExhaleWellDef0Mask := Mask;
                    perm := FullPerm;
                    assert {:msg "  Precondition of function contentNodes might not hold. There might be insufficient permission to access lseg(this.head, ptr) (linked-list-predicates.vpr@138.19--138.47) [112114]"}
                      NoPerm < perm ==> NoPerm < Mask[null, lseg(Heap[this, head_3], ptr_2)];
                    // Finish exhale
                    havoc ExhaleHeap;
                    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
                    Heap := ExhaleHeap;
                    // Stop execution
                    assume false;
                  }
                  assert {:msg "  Contract might not be well-formed. Index contentNodes(this.head, ptr)[i] into contentNodes(this.head, ptr) might be negative. (linked-list-predicates.vpr@137.17--138.62) [112115]"}
                    i_57 >= 0;
                  assert {:msg "  Contract might not be well-formed. Index contentNodes(this.head, ptr)[i] into contentNodes(this.head, ptr) might exceed sequence length. (linked-list-predicates.vpr@137.17--138.62) [112116]"}
                    i_57 < Seq#Length(contentNodes(Heap, Heap[this, head_3], ptr_2));
                  assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access ptr.data (linked-list-predicates.vpr@137.17--138.62) [112117]"}
                    HasDirectPerm(Mask, ptr_2, data);
                }
                assume false;
              }
            assume (forall i_5_1: int ::
              { Seq#Index(contentNodes#frame(Heap[null, lseg(Heap[this, head_3], ptr_2)], Heap[this, head_3], ptr_2), i_5_1) }
              0 <= i_5_1 && i_5_1 < Seq#Length(contentNodes(Heap, Heap[this, head_3], ptr_2)) ==> Seq#Index(contentNodes(Heap, Heap[this, head_3], ptr_2), i_5_1) <= Heap[ptr_2, data]
            );
            assume state(Heap, Mask);
            assume state(Heap, Mask);
            
            // -- Check definedness of (forall i: Int :: { contentNodes(ptr.next, null)[i] } 0 <= i && i < |contentNodes(ptr.next, null)| ==> ptr.data <= contentNodes(ptr.next, null)[i])
              if (*) {
                if (0 <= i_63) {
                  assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access ptr.next (linked-list-predicates.vpr@139.17--140.62) [112118]"}
                    HasDirectPerm(Mask, ptr_2, next);
                  if (*) {
                    // Exhale precondition of function application
                    ExhaleWellDef0Heap := Heap;
                    ExhaleWellDef0Mask := Mask;
                    perm := FullPerm;
                    assert {:msg "  Precondition of function contentNodes might not hold. There might be insufficient permission to access lseg(ptr.next, null) (linked-list-predicates.vpr@139.49--139.77) [112119]"}
                      NoPerm < perm ==> NoPerm < Mask[null, lseg(Heap[ptr_2, next], null)];
                    // Finish exhale
                    havoc ExhaleHeap;
                    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
                    Heap := ExhaleHeap;
                    // Stop execution
                    assume false;
                  }
                }
                if (0 <= i_63 && i_63 < Seq#Length(contentNodes(Heap, Heap[ptr_2, next], null))) {
                  assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access ptr.data (linked-list-predicates.vpr@139.17--140.62) [112120]"}
                    HasDirectPerm(Mask, ptr_2, data);
                  assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access ptr.next (linked-list-predicates.vpr@139.17--140.62) [112121]"}
                    HasDirectPerm(Mask, ptr_2, next);
                  if (*) {
                    // Exhale precondition of function application
                    ExhaleWellDef0Heap := Heap;
                    ExhaleWellDef0Mask := Mask;
                    perm := FullPerm;
                    assert {:msg "  Precondition of function contentNodes might not hold. There might be insufficient permission to access lseg(ptr.next, null) (linked-list-predicates.vpr@140.31--140.59) [112122]"}
                      NoPerm < perm ==> NoPerm < Mask[null, lseg(Heap[ptr_2, next], null)];
                    // Finish exhale
                    havoc ExhaleHeap;
                    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
                    Heap := ExhaleHeap;
                    // Stop execution
                    assume false;
                  }
                  assert {:msg "  Contract might not be well-formed. Index contentNodes(ptr.next, null)[i] into contentNodes(ptr.next, null) might be negative. (linked-list-predicates.vpr@139.17--140.62) [112123]"}
                    i_63 >= 0;
                  assert {:msg "  Contract might not be well-formed. Index contentNodes(ptr.next, null)[i] into contentNodes(ptr.next, null) might exceed sequence length. (linked-list-predicates.vpr@139.17--140.62) [112124]"}
                    i_63 < Seq#Length(contentNodes(Heap, Heap[ptr_2, next], null));
                }
                assume false;
              }
            assume (forall i_7_1: int ::
              { Seq#Index(contentNodes#frame(Heap[null, lseg(Heap[ptr_2, next], null)], Heap[ptr_2, next], null), i_7_1) }
              0 <= i_7_1 && i_7_1 < Seq#Length(contentNodes(Heap, Heap[ptr_2, next], null)) ==> Heap[ptr_2, data] <= Seq#Index(contentNodes(Heap, Heap[ptr_2, next], null), i_7_1)
            );
            assume state(Heap, Mask);
            assume state(Heap, Mask);
            
            // -- Check definedness of index - 1 == |contentNodes(this.head, ptr)|
              assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.head (linked-list-predicates.vpr@141.17--141.58) [112125]"}
                HasDirectPerm(Mask, this, head_3);
              if (*) {
                // Exhale precondition of function application
                ExhaleWellDef0Heap := Heap;
                ExhaleWellDef0Mask := Mask;
                perm := FullPerm;
                assert {:msg "  Precondition of function contentNodes might not hold. There might be insufficient permission to access lseg(this.head, ptr) (linked-list-predicates.vpr@141.29--141.57) [112126]"}
                  NoPerm < perm ==> NoPerm < Mask[null, lseg(Heap[this, head_3], ptr_2)];
                // Finish exhale
                havoc ExhaleHeap;
                assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
                Heap := ExhaleHeap;
                // Stop execution
                assume false;
              }
            assume index - 1 == Seq#Length(contentNodes(Heap, Heap[this, head_3], ptr_2));
            assume state(Heap, Mask);
            assume state(Heap, Mask);
            
            // -- Check definedness of old(content(this)) == contentNodes(this.head, ptr) ++ Seq(ptr.data) ++ contentNodes(ptr.next, null)
              if (*) {
                // Exhale precondition of function application
                ExhaleWellDef0Heap := oldHeap;
                ExhaleWellDef0Mask := oldMask;
                perm := FullPerm;
                assert {:msg "  Precondition of function content might not hold. There might be insufficient permission to access List(this) (linked-list-predicates.vpr@143.13--143.26) [112127]"}
                  NoPerm < perm ==> NoPerm < oldMask[null, List(this)];
                // Finish exhale
                // Stop execution
                assume false;
              }
              assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.head (linked-list-predicates.vpr@143.9--143.108) [112128]"}
                HasDirectPerm(Mask, this, head_3);
              if (*) {
                // Exhale precondition of function application
                ExhaleWellDef0Heap := Heap;
                ExhaleWellDef0Mask := Mask;
                perm := FullPerm;
                assert {:msg "  Precondition of function contentNodes might not hold. There might be insufficient permission to access lseg(this.head, ptr) (linked-list-predicates.vpr@143.31--143.59) [112129]"}
                  NoPerm < perm ==> NoPerm < Mask[null, lseg(Heap[this, head_3], ptr_2)];
                // Finish exhale
                havoc ExhaleHeap;
                assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
                Heap := ExhaleHeap;
                // Stop execution
                assume false;
              }
              assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access ptr.data (linked-list-predicates.vpr@143.9--143.108) [112130]"}
                HasDirectPerm(Mask, ptr_2, data);
              assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access ptr.next (linked-list-predicates.vpr@143.9--143.108) [112131]"}
                HasDirectPerm(Mask, ptr_2, next);
              if (*) {
                // Exhale precondition of function application
                ExhaleWellDef0Heap := Heap;
                ExhaleWellDef0Mask := Mask;
                perm := FullPerm;
                assert {:msg "  Precondition of function contentNodes might not hold. There might be insufficient permission to access lseg(ptr.next, null) (linked-list-predicates.vpr@143.80--143.108) [112132]"}
                  NoPerm < perm ==> NoPerm < Mask[null, lseg(Heap[ptr_2, next], null)];
                // Finish exhale
                havoc ExhaleHeap;
                assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
                Heap := ExhaleHeap;
                // Stop execution
                assume false;
              }
            assume Seq#Equal(content(oldHeap, this), Seq#Append(Seq#Append(contentNodes(Heap, Heap[this, head_3], ptr_2), Seq#Singleton(Heap[ptr_2, data])), contentNodes(Heap, Heap[ptr_2, next], null)));
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
            assume this != null;
            Mask := Mask[this, head_3:=Mask[this, head_3] + perm];
            assume state(Heap, Mask);
            perm := FullPerm;
            assume ptr_2 != null;
            Mask := Mask[ptr_2, next:=Mask[ptr_2, next] + perm];
            assume state(Heap, Mask);
            perm := FullPerm;
            assume ptr_2 != null;
            Mask := Mask[ptr_2, data:=Mask[ptr_2, data] + perm];
            assume state(Heap, Mask);
            assume Heap[ptr_2, data] <= elem_1;
            perm := FullPerm;
            Mask := Mask[null, lseg(Heap[ptr_2, next], null):=Mask[null, lseg(Heap[ptr_2, next], null)] + perm];
            assume state(Heap, Mask);
            perm := FullPerm;
            Mask := Mask[null, lseg(Heap[this, head_3], ptr_2):=Mask[null, lseg(Heap[this, head_3], ptr_2)] + perm];
            assume state(Heap, Mask);
            assume state(Heap, Mask);
            assume (forall i_8_1: int ::
              { Seq#Index(contentNodes#frame(Heap[null, lseg(Heap[this, head_3], ptr_2)], Heap[this, head_3], ptr_2), i_8_1) }
              0 <= i_8_1 && i_8_1 < Seq#Length(contentNodes(Heap, Heap[this, head_3], ptr_2)) ==> Seq#Index(contentNodes(Heap, Heap[this, head_3], ptr_2), i_8_1) <= Heap[ptr_2, data]
            );
            assume state(Heap, Mask);
            assume (forall i_9_1: int ::
              { Seq#Index(contentNodes#frame(Heap[null, lseg(Heap[ptr_2, next], null)], Heap[ptr_2, next], null), i_9_1) }
              0 <= i_9_1 && i_9_1 < Seq#Length(contentNodes(Heap, Heap[ptr_2, next], null)) ==> Heap[ptr_2, data] <= Seq#Index(contentNodes(Heap, Heap[ptr_2, next], null), i_9_1)
            );
            assume state(Heap, Mask);
            assume index - 1 == Seq#Length(contentNodes(Heap, Heap[this, head_3], ptr_2));
            assume state(Heap, Mask);
            assume Seq#Equal(content(oldHeap, this), Seq#Append(Seq#Append(contentNodes(Heap, Heap[this, head_3], ptr_2), Seq#Singleton(Heap[ptr_2, data])), contentNodes(Heap, Heap[ptr_2, next], null)));
            assume state(Heap, Mask);
            // Check and assume guard
            
            // -- Check definedness of ptr.next != null && (unfolding acc(lseg(ptr.next, null), write) in ptr.next.data < elem)
              assert {:msg "  While statement might fail. There might be insufficient permission to access ptr.next (linked-list-predicates.vpr@132.11--132.90) [112133]"}
                HasDirectPerm(Mask, ptr_2, next);
              if (Heap[ptr_2, next] != null) {
                UnfoldingHeap := Heap;
                UnfoldingMask := Mask;
                assume lseg#trigger(UnfoldingHeap, lseg(UnfoldingHeap[ptr_2, next], null));
                assume UnfoldingHeap[null, lseg(UnfoldingHeap[ptr_2, next], null)] == FrameFragment((if UnfoldingHeap[ptr_2, next] != null then CombineFrames(FrameFragment(UnfoldingHeap[UnfoldingHeap[ptr_2, next], data]), CombineFrames(FrameFragment(UnfoldingHeap[UnfoldingHeap[ptr_2, next], next]), UnfoldingHeap[null, lseg(UnfoldingHeap[UnfoldingHeap[ptr_2, next], next], null)])) else EmptyFrame));
                ExhaleWellDef0Heap := UnfoldingHeap;
                ExhaleWellDef0Mask := UnfoldingMask;
                perm := FullPerm;
                if (perm != NoPerm) {
                  assert {:msg "  While statement might fail. There might be insufficient permission to access lseg(ptr.next, null) (linked-list-predicates.vpr@132.11--132.90) [112134]"}
                    perm <= UnfoldingMask[null, lseg(UnfoldingHeap[ptr_2, next], null)];
                }
                UnfoldingMask := UnfoldingMask[null, lseg(UnfoldingHeap[ptr_2, next], null):=UnfoldingMask[null, lseg(UnfoldingHeap[ptr_2, next], null)] - perm];
                if (UnfoldingHeap[ptr_2, next] != null) {
                  perm := FullPerm;
                  assume UnfoldingHeap[ptr_2, next] != null;
                  UnfoldingMask := UnfoldingMask[UnfoldingHeap[ptr_2, next], data:=UnfoldingMask[UnfoldingHeap[ptr_2, next], data] + perm];
                  assume state(UnfoldingHeap, UnfoldingMask);
                  perm := FullPerm;
                  assume UnfoldingHeap[ptr_2, next] != null;
                  UnfoldingMask := UnfoldingMask[UnfoldingHeap[ptr_2, next], next:=UnfoldingMask[UnfoldingHeap[ptr_2, next], next] + perm];
                  assume state(UnfoldingHeap, UnfoldingMask);
                  perm := FullPerm;
                  UnfoldingMask := UnfoldingMask[null, lseg(UnfoldingHeap[UnfoldingHeap[ptr_2, next], next], null):=UnfoldingMask[null, lseg(UnfoldingHeap[UnfoldingHeap[ptr_2, next], next], null)] + perm];
                  
                  // -- Extra unfolding of predicate
                    assume InsidePredicate(lseg(UnfoldingHeap[ptr_2, next], null), UnfoldingHeap[null, lseg(UnfoldingHeap[ptr_2, next], null)], lseg(UnfoldingHeap[UnfoldingHeap[ptr_2, next], next], null), UnfoldingHeap[null, lseg(UnfoldingHeap[UnfoldingHeap[ptr_2, next], next], null)]);
                  assume state(UnfoldingHeap, UnfoldingMask);
                  
                  // -- Execute unfolding (for extra information)
                    Unfolding1Heap := UnfoldingHeap;
                    Unfolding1Mask := UnfoldingMask;
                    assume lseg#trigger(Unfolding1Heap, lseg(Unfolding1Heap[Unfolding1Heap[ptr_2, next], next], null));
                    assume Unfolding1Heap[null, lseg(Unfolding1Heap[Unfolding1Heap[ptr_2, next], next], null)] == FrameFragment((if Unfolding1Heap[Unfolding1Heap[ptr_2, next], next] != null then CombineFrames(FrameFragment(Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[ptr_2, next], next], data]), CombineFrames(FrameFragment(Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[ptr_2, next], next], next]), Unfolding1Heap[null, lseg(Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[ptr_2, next], next], next], null)])) else EmptyFrame));
                    ExhaleWellDef0Heap := Unfolding1Heap;
                    ExhaleWellDef0Mask := Unfolding1Mask;
                    perm := FullPerm;
                    Unfolding1Mask := Unfolding1Mask[null, lseg(Unfolding1Heap[Unfolding1Heap[ptr_2, next], next], null):=Unfolding1Mask[null, lseg(Unfolding1Heap[Unfolding1Heap[ptr_2, next], next], null)] - perm];
                    if (Unfolding1Heap[Unfolding1Heap[ptr_2, next], next] != null) {
                      perm := FullPerm;
                      assume Unfolding1Heap[Unfolding1Heap[ptr_2, next], next] != null;
                      Unfolding1Mask := Unfolding1Mask[Unfolding1Heap[Unfolding1Heap[ptr_2, next], next], data:=Unfolding1Mask[Unfolding1Heap[Unfolding1Heap[ptr_2, next], next], data] + perm];
                      assume state(Unfolding1Heap, Unfolding1Mask);
                      perm := FullPerm;
                      assume Unfolding1Heap[Unfolding1Heap[ptr_2, next], next] != null;
                      Unfolding1Mask := Unfolding1Mask[Unfolding1Heap[Unfolding1Heap[ptr_2, next], next], next:=Unfolding1Mask[Unfolding1Heap[Unfolding1Heap[ptr_2, next], next], next] + perm];
                      assume state(Unfolding1Heap, Unfolding1Mask);
                      perm := FullPerm;
                      Unfolding1Mask := Unfolding1Mask[null, lseg(Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[ptr_2, next], next], next], null):=Unfolding1Mask[null, lseg(Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[ptr_2, next], next], next], null)] + perm];
                      
                      // -- Extra unfolding of predicate
                        assume InsidePredicate(lseg(Unfolding1Heap[Unfolding1Heap[ptr_2, next], next], null), Unfolding1Heap[null, lseg(Unfolding1Heap[Unfolding1Heap[ptr_2, next], next], null)], lseg(Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[ptr_2, next], next], next], null), Unfolding1Heap[null, lseg(Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[ptr_2, next], next], next], null)]);
                      assume state(Unfolding1Heap, Unfolding1Mask);
                      assume Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[ptr_2, next], next], next] != null ==> Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[ptr_2, next], next], data] <= Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[ptr_2, next], next], next], data];
                      
                      // -- Free assumptions (inhale module)
                        if (Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[ptr_2, next], next], next] != null) {
                          Unfolding1Heap := Unfolding1Heap[null, lseg#sm(Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[ptr_2, next], next], next], null):=Unfolding1Heap[null, lseg#sm(Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[ptr_2, next], next], next], null)][Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[ptr_2, next], next], next], data:=true]];
                          Unfolding1Heap := Unfolding1Heap[null, lseg#sm(Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[ptr_2, next], next], next], null):=Unfolding1Heap[null, lseg#sm(Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[ptr_2, next], next], next], null)][Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[ptr_2, next], next], next], next:=true]];
                          havoc newPMask;
                          assume (forall <A, B> o_85: Ref, f_41: (Field A B) ::
                            { newPMask[o_85, f_41] }
                            Unfolding1Heap[null, lseg#sm(Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[ptr_2, next], next], next], null)][o_85, f_41] || Unfolding1Heap[null, lseg#sm(Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[ptr_2, next], next], next], next], null)][o_85, f_41] ==> newPMask[o_85, f_41]
                          );
                          Unfolding1Heap := Unfolding1Heap[null, lseg#sm(Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[ptr_2, next], next], next], null):=newPMask];
                        }
                        assume state(Unfolding1Heap, Unfolding1Mask);
                    }
                    assume state(Unfolding1Heap, Unfolding1Mask);
                  assume UnfoldingHeap[UnfoldingHeap[ptr_2, next], next] != null ==> UnfoldingHeap[UnfoldingHeap[ptr_2, next], data] <= UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[ptr_2, next], next], data];
                  
                  // -- Free assumptions (inhale module)
                    if (UnfoldingHeap[UnfoldingHeap[ptr_2, next], next] != null) {
                      UnfoldingHeap := UnfoldingHeap[null, lseg#sm(UnfoldingHeap[UnfoldingHeap[ptr_2, next], next], null):=UnfoldingHeap[null, lseg#sm(UnfoldingHeap[UnfoldingHeap[ptr_2, next], next], null)][UnfoldingHeap[UnfoldingHeap[ptr_2, next], next], data:=true]];
                      UnfoldingHeap := UnfoldingHeap[null, lseg#sm(UnfoldingHeap[UnfoldingHeap[ptr_2, next], next], null):=UnfoldingHeap[null, lseg#sm(UnfoldingHeap[UnfoldingHeap[ptr_2, next], next], null)][UnfoldingHeap[UnfoldingHeap[ptr_2, next], next], next:=true]];
                      havoc newPMask;
                      assume (forall <A, B> o_28: Ref, f_93: (Field A B) ::
                        { newPMask[o_28, f_93] }
                        UnfoldingHeap[null, lseg#sm(UnfoldingHeap[UnfoldingHeap[ptr_2, next], next], null)][o_28, f_93] || UnfoldingHeap[null, lseg#sm(UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[ptr_2, next], next], next], null)][o_28, f_93] ==> newPMask[o_28, f_93]
                      );
                      UnfoldingHeap := UnfoldingHeap[null, lseg#sm(UnfoldingHeap[UnfoldingHeap[ptr_2, next], next], null):=newPMask];
                    }
                    assume state(UnfoldingHeap, UnfoldingMask);
                }
                assume state(UnfoldingHeap, UnfoldingMask);
                assert {:msg "  While statement might fail. There might be insufficient permission to access ptr.next (linked-list-predicates.vpr@132.11--132.90) [112135]"}
                  HasDirectPerm(UnfoldingMask, ptr_2, next);
                assert {:msg "  While statement might fail. There might be insufficient permission to access ptr.next (linked-list-predicates.vpr@132.11--132.90) [112136]"}
                  HasDirectPerm(UnfoldingMask, ptr_2, next);
                assert {:msg "  While statement might fail. There might be insufficient permission to access ptr.next.data (linked-list-predicates.vpr@132.11--132.90) [112137]"}
                  HasDirectPerm(UnfoldingMask, UnfoldingHeap[ptr_2, next], data);
                
                // -- Free assumptions (exp module)
                  if (Heap[ptr_2, next] != null) {
                    Heap := Heap[null, lseg#sm(Heap[ptr_2, next], null):=Heap[null, lseg#sm(Heap[ptr_2, next], null)][Heap[ptr_2, next], data:=true]];
                    Heap := Heap[null, lseg#sm(Heap[ptr_2, next], null):=Heap[null, lseg#sm(Heap[ptr_2, next], null)][Heap[ptr_2, next], next:=true]];
                    havoc newPMask;
                    assume (forall <A, B> o_86: Ref, f_94: (Field A B) ::
                      { newPMask[o_86, f_94] }
                      Heap[null, lseg#sm(Heap[ptr_2, next], null)][o_86, f_94] || Heap[null, lseg#sm(Heap[Heap[ptr_2, next], next], null)][o_86, f_94] ==> newPMask[o_86, f_94]
                    );
                    Heap := Heap[null, lseg#sm(Heap[ptr_2, next], null):=newPMask];
                  }
                  assume state(Heap, Mask);
              }
            assume Heap[ptr_2, next] != null && Heap[Heap[ptr_2, next], data] < elem_1;
            assume state(Heap, Mask);
            
            // -- Translate loop body
              
              // -- Assumptions about local variables
                assume Heap[ptrn, $allocated];
              
              // -- Translating statement: unfold acc(lseg(ptr.next, null), write) -- linked-list-predicates.vpr@145.7--145.39
                
                // -- Check definedness of acc(lseg(ptr.next, null), write)
                  assert {:msg "  Unfolding lseg(ptr.next, null) might fail. There might be insufficient permission to access ptr.next (linked-list-predicates.vpr@145.7--145.39) [112138]"}
                    HasDirectPerm(Mask, ptr_2, next);
                assume lseg#trigger(Heap, lseg(Heap[ptr_2, next], null));
                assume Heap[null, lseg(Heap[ptr_2, next], null)] == FrameFragment((if Heap[ptr_2, next] != null then CombineFrames(FrameFragment(Heap[Heap[ptr_2, next], data]), CombineFrames(FrameFragment(Heap[Heap[ptr_2, next], next]), Heap[null, lseg(Heap[Heap[ptr_2, next], next], null)])) else EmptyFrame));
                ExhaleWellDef0Heap := Heap;
                ExhaleWellDef0Mask := Mask;
                perm := FullPerm;
                if (perm != NoPerm) {
                  assert {:msg "  Unfolding lseg(ptr.next, null) might fail. There might be insufficient permission to access lseg(ptr.next, null) (linked-list-predicates.vpr@145.7--145.39) [112139]"}
                    perm <= Mask[null, lseg(Heap[ptr_2, next], null)];
                }
                Mask := Mask[null, lseg(Heap[ptr_2, next], null):=Mask[null, lseg(Heap[ptr_2, next], null)] - perm];
                
                // -- Update version of predicate
                  if (!HasDirectPerm(Mask, null, lseg(Heap[ptr_2, next], null))) {
                    havoc newVersion;
                    Heap := Heap[null, lseg(Heap[ptr_2, next], null):=newVersion];
                  }
                if (Heap[ptr_2, next] != null) {
                  perm := FullPerm;
                  assume Heap[ptr_2, next] != null;
                  Mask := Mask[Heap[ptr_2, next], data:=Mask[Heap[ptr_2, next], data] + perm];
                  assume state(Heap, Mask);
                  perm := FullPerm;
                  assume Heap[ptr_2, next] != null;
                  Mask := Mask[Heap[ptr_2, next], next:=Mask[Heap[ptr_2, next], next] + perm];
                  assume state(Heap, Mask);
                  perm := FullPerm;
                  Mask := Mask[null, lseg(Heap[Heap[ptr_2, next], next], null):=Mask[null, lseg(Heap[Heap[ptr_2, next], next], null)] + perm];
                  
                  // -- Extra unfolding of predicate
                    assume InsidePredicate(lseg(Heap[ptr_2, next], null), Heap[null, lseg(Heap[ptr_2, next], null)], lseg(Heap[Heap[ptr_2, next], next], null), Heap[null, lseg(Heap[Heap[ptr_2, next], next], null)]);
                  assume state(Heap, Mask);
                  
                  // -- Execute unfolding (for extra information)
                    UnfoldingHeap := Heap;
                    UnfoldingMask := Mask;
                    assume lseg#trigger(UnfoldingHeap, lseg(UnfoldingHeap[UnfoldingHeap[ptr_2, next], next], null));
                    assume UnfoldingHeap[null, lseg(UnfoldingHeap[UnfoldingHeap[ptr_2, next], next], null)] == FrameFragment((if UnfoldingHeap[UnfoldingHeap[ptr_2, next], next] != null then CombineFrames(FrameFragment(UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[ptr_2, next], next], data]), CombineFrames(FrameFragment(UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[ptr_2, next], next], next]), UnfoldingHeap[null, lseg(UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[ptr_2, next], next], next], null)])) else EmptyFrame));
                    ExhaleWellDef0Heap := UnfoldingHeap;
                    ExhaleWellDef0Mask := UnfoldingMask;
                    perm := FullPerm;
                    UnfoldingMask := UnfoldingMask[null, lseg(UnfoldingHeap[UnfoldingHeap[ptr_2, next], next], null):=UnfoldingMask[null, lseg(UnfoldingHeap[UnfoldingHeap[ptr_2, next], next], null)] - perm];
                    if (UnfoldingHeap[UnfoldingHeap[ptr_2, next], next] != null) {
                      perm := FullPerm;
                      assume UnfoldingHeap[UnfoldingHeap[ptr_2, next], next] != null;
                      UnfoldingMask := UnfoldingMask[UnfoldingHeap[UnfoldingHeap[ptr_2, next], next], data:=UnfoldingMask[UnfoldingHeap[UnfoldingHeap[ptr_2, next], next], data] + perm];
                      assume state(UnfoldingHeap, UnfoldingMask);
                      perm := FullPerm;
                      assume UnfoldingHeap[UnfoldingHeap[ptr_2, next], next] != null;
                      UnfoldingMask := UnfoldingMask[UnfoldingHeap[UnfoldingHeap[ptr_2, next], next], next:=UnfoldingMask[UnfoldingHeap[UnfoldingHeap[ptr_2, next], next], next] + perm];
                      assume state(UnfoldingHeap, UnfoldingMask);
                      perm := FullPerm;
                      UnfoldingMask := UnfoldingMask[null, lseg(UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[ptr_2, next], next], next], null):=UnfoldingMask[null, lseg(UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[ptr_2, next], next], next], null)] + perm];
                      
                      // -- Extra unfolding of predicate
                        assume InsidePredicate(lseg(UnfoldingHeap[UnfoldingHeap[ptr_2, next], next], null), UnfoldingHeap[null, lseg(UnfoldingHeap[UnfoldingHeap[ptr_2, next], next], null)], lseg(UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[ptr_2, next], next], next], null), UnfoldingHeap[null, lseg(UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[ptr_2, next], next], next], null)]);
                      assume state(UnfoldingHeap, UnfoldingMask);
                      assume UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[ptr_2, next], next], next] != null ==> UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[ptr_2, next], next], data] <= UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[ptr_2, next], next], next], data];
                      
                      // -- Free assumptions (inhale module)
                        if (UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[ptr_2, next], next], next] != null) {
                          UnfoldingHeap := UnfoldingHeap[null, lseg#sm(UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[ptr_2, next], next], next], null):=UnfoldingHeap[null, lseg#sm(UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[ptr_2, next], next], next], null)][UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[ptr_2, next], next], next], data:=true]];
                          UnfoldingHeap := UnfoldingHeap[null, lseg#sm(UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[ptr_2, next], next], next], null):=UnfoldingHeap[null, lseg#sm(UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[ptr_2, next], next], next], null)][UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[ptr_2, next], next], next], next:=true]];
                          havoc newPMask;
                          assume (forall <A, B> o_87: Ref, f_96: (Field A B) ::
                            { newPMask[o_87, f_96] }
                            UnfoldingHeap[null, lseg#sm(UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[ptr_2, next], next], next], null)][o_87, f_96] || UnfoldingHeap[null, lseg#sm(UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[ptr_2, next], next], next], next], null)][o_87, f_96] ==> newPMask[o_87, f_96]
                          );
                          UnfoldingHeap := UnfoldingHeap[null, lseg#sm(UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[ptr_2, next], next], next], null):=newPMask];
                        }
                        assume state(UnfoldingHeap, UnfoldingMask);
                    }
                    assume state(UnfoldingHeap, UnfoldingMask);
                  assume Heap[Heap[ptr_2, next], next] != null ==> Heap[Heap[ptr_2, next], data] <= Heap[Heap[Heap[ptr_2, next], next], data];
                  
                  // -- Free assumptions (inhale module)
                    if (Heap[Heap[ptr_2, next], next] != null) {
                      Heap := Heap[null, lseg#sm(Heap[Heap[ptr_2, next], next], null):=Heap[null, lseg#sm(Heap[Heap[ptr_2, next], next], null)][Heap[Heap[ptr_2, next], next], data:=true]];
                      Heap := Heap[null, lseg#sm(Heap[Heap[ptr_2, next], next], null):=Heap[null, lseg#sm(Heap[Heap[ptr_2, next], next], null)][Heap[Heap[ptr_2, next], next], next:=true]];
                      havoc newPMask;
                      assume (forall <A, B> o_29: Ref, f_95: (Field A B) ::
                        { newPMask[o_29, f_95] }
                        Heap[null, lseg#sm(Heap[Heap[ptr_2, next], next], null)][o_29, f_95] || Heap[null, lseg#sm(Heap[Heap[Heap[ptr_2, next], next], next], null)][o_29, f_95] ==> newPMask[o_29, f_95]
                      );
                      Heap := Heap[null, lseg#sm(Heap[Heap[ptr_2, next], next], null):=newPMask];
                    }
                    assume state(Heap, Mask);
                }
                assume state(Heap, Mask);
                assume state(Heap, Mask);
              
              // -- Translating statement: index := index + 1 -- linked-list-predicates.vpr@146.7--146.25
                index := index + 1;
                assume state(Heap, Mask);
              
              // -- Translating statement: ptrn := ptr.next -- linked-list-predicates.vpr@147.7--147.32
                
                // -- Check definedness of ptr.next
                  assert {:msg "  Assignment might fail. There might be insufficient permission to access ptr.next (linked-list-predicates.vpr@147.7--147.32) [112140]"}
                    HasDirectPerm(Mask, ptr_2, next);
                ptrn := Heap[ptr_2, next];
                assume state(Heap, Mask);
              
              // -- Translating statement: fold acc(lseg(ptrn, ptrn), write) -- linked-list-predicates.vpr@148.7--148.33
                ExhaleWellDef0Heap := Heap;
                ExhaleWellDef0Mask := Mask;
                if (ptrn != ptrn) {
                  perm := FullPerm;
                  if (perm != NoPerm) {
                    assert {:msg "  Folding lseg(ptrn, ptrn) might fail. There might be insufficient permission to access ptrn.data (linked-list-predicates.vpr@148.7--148.33) [112141]"}
                      perm <= Mask[ptrn, data];
                  }
                  Mask := Mask[ptrn, data:=Mask[ptrn, data] - perm];
                  perm := FullPerm;
                  if (perm != NoPerm) {
                    assert {:msg "  Folding lseg(ptrn, ptrn) might fail. There might be insufficient permission to access ptrn.next (linked-list-predicates.vpr@148.7--148.33) [112142]"}
                      perm <= Mask[ptrn, next];
                  }
                  Mask := Mask[ptrn, next:=Mask[ptrn, next] - perm];
                  perm := FullPerm;
                  if (perm != NoPerm) {
                    assert {:msg "  Folding lseg(ptrn, ptrn) might fail. There might be insufficient permission to access lseg(ptrn.next, ptrn) (linked-list-predicates.vpr@148.7--148.33) [112143]"}
                      perm <= Mask[null, lseg(Heap[ptrn, next], ptrn)];
                  }
                  Mask := Mask[null, lseg(Heap[ptrn, next], ptrn):=Mask[null, lseg(Heap[ptrn, next], ptrn)] - perm];
                  
                  // -- Record predicate instance information
                    assume InsidePredicate(lseg(ptrn, ptrn), Heap[null, lseg(ptrn, ptrn)], lseg(Heap[ptrn, next], ptrn), Heap[null, lseg(Heap[ptrn, next], ptrn)]);
                  
                  // -- Execute unfolding (for extra information)
                    UnfoldingHeap := ExhaleWellDef0Heap;
                    UnfoldingMask := ExhaleWellDef0Mask;
                    assume lseg#trigger(UnfoldingHeap, lseg(UnfoldingHeap[ptrn, next], ptrn));
                    assume UnfoldingHeap[null, lseg(UnfoldingHeap[ptrn, next], ptrn)] == FrameFragment((if UnfoldingHeap[ptrn, next] != ptrn then CombineFrames(FrameFragment(UnfoldingHeap[UnfoldingHeap[ptrn, next], data]), CombineFrames(FrameFragment(UnfoldingHeap[UnfoldingHeap[ptrn, next], next]), UnfoldingHeap[null, lseg(UnfoldingHeap[UnfoldingHeap[ptrn, next], next], ptrn)])) else EmptyFrame));
                    ExhaleWellDef1Heap := UnfoldingHeap;
                    ExhaleWellDef1Mask := UnfoldingMask;
                    perm := FullPerm;
                    if (perm != NoPerm) {
                      assert {:msg "  Folding lseg(ptrn, ptrn) might fail. There might be insufficient permission to access lseg(ptrn.next, ptrn) (linked-list-predicates.vpr@148.7--148.33) [112144]"}
                        perm <= UnfoldingMask[null, lseg(UnfoldingHeap[ptrn, next], ptrn)];
                    }
                    UnfoldingMask := UnfoldingMask[null, lseg(UnfoldingHeap[ptrn, next], ptrn):=UnfoldingMask[null, lseg(UnfoldingHeap[ptrn, next], ptrn)] - perm];
                    if (UnfoldingHeap[ptrn, next] != ptrn) {
                      perm := FullPerm;
                      assume UnfoldingHeap[ptrn, next] != null;
                      UnfoldingMask := UnfoldingMask[UnfoldingHeap[ptrn, next], data:=UnfoldingMask[UnfoldingHeap[ptrn, next], data] + perm];
                      assume state(UnfoldingHeap, UnfoldingMask);
                      perm := FullPerm;
                      assume UnfoldingHeap[ptrn, next] != null;
                      UnfoldingMask := UnfoldingMask[UnfoldingHeap[ptrn, next], next:=UnfoldingMask[UnfoldingHeap[ptrn, next], next] + perm];
                      assume state(UnfoldingHeap, UnfoldingMask);
                      perm := FullPerm;
                      UnfoldingMask := UnfoldingMask[null, lseg(UnfoldingHeap[UnfoldingHeap[ptrn, next], next], ptrn):=UnfoldingMask[null, lseg(UnfoldingHeap[UnfoldingHeap[ptrn, next], next], ptrn)] + perm];
                      
                      // -- Extra unfolding of predicate
                        assume InsidePredicate(lseg(UnfoldingHeap[ptrn, next], ptrn), UnfoldingHeap[null, lseg(UnfoldingHeap[ptrn, next], ptrn)], lseg(UnfoldingHeap[UnfoldingHeap[ptrn, next], next], ptrn), UnfoldingHeap[null, lseg(UnfoldingHeap[UnfoldingHeap[ptrn, next], next], ptrn)]);
                      assume state(UnfoldingHeap, UnfoldingMask);
                      assume UnfoldingHeap[UnfoldingHeap[ptrn, next], next] != ptrn ==> UnfoldingHeap[UnfoldingHeap[ptrn, next], data] <= UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[ptrn, next], next], data];
                      
                      // -- Free assumptions (inhale module)
                        if (UnfoldingHeap[UnfoldingHeap[ptrn, next], next] != ptrn) {
                          UnfoldingHeap := UnfoldingHeap[null, lseg#sm(UnfoldingHeap[UnfoldingHeap[ptrn, next], next], ptrn):=UnfoldingHeap[null, lseg#sm(UnfoldingHeap[UnfoldingHeap[ptrn, next], next], ptrn)][UnfoldingHeap[UnfoldingHeap[ptrn, next], next], data:=true]];
                          UnfoldingHeap := UnfoldingHeap[null, lseg#sm(UnfoldingHeap[UnfoldingHeap[ptrn, next], next], ptrn):=UnfoldingHeap[null, lseg#sm(UnfoldingHeap[UnfoldingHeap[ptrn, next], next], ptrn)][UnfoldingHeap[UnfoldingHeap[ptrn, next], next], next:=true]];
                          havoc newPMask;
                          assume (forall <A, B> o_88: Ref, f_97: (Field A B) ::
                            { newPMask[o_88, f_97] }
                            UnfoldingHeap[null, lseg#sm(UnfoldingHeap[UnfoldingHeap[ptrn, next], next], ptrn)][o_88, f_97] || UnfoldingHeap[null, lseg#sm(UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[ptrn, next], next], next], ptrn)][o_88, f_97] ==> newPMask[o_88, f_97]
                          );
                          UnfoldingHeap := UnfoldingHeap[null, lseg#sm(UnfoldingHeap[UnfoldingHeap[ptrn, next], next], ptrn):=newPMask];
                        }
                        assume state(UnfoldingHeap, UnfoldingMask);
                    }
                    assume state(UnfoldingHeap, UnfoldingMask);
                  if (Heap[ptrn, next] != ptrn) {
                    assert {:msg "  Folding lseg(ptrn, ptrn) might fail. Assertion ptrn.data <= ptrn.next.data might not hold. (linked-list-predicates.vpr@148.7--148.33) [112145]"}
                      Heap[ptrn, data] <= Heap[Heap[ptrn, next], data];
                  }
                }
                
                // -- Free assumptions (exhale module)
                  if (Heap[ptrn, next] != ptrn) {
                    Heap := Heap[null, lseg#sm(Heap[ptrn, next], ptrn):=Heap[null, lseg#sm(Heap[ptrn, next], ptrn)][Heap[ptrn, next], data:=true]];
                    Heap := Heap[null, lseg#sm(Heap[ptrn, next], ptrn):=Heap[null, lseg#sm(Heap[ptrn, next], ptrn)][Heap[ptrn, next], next:=true]];
                    havoc newPMask;
                    assume (forall <A, B> o_89: Ref, f_98: (Field A B) ::
                      { newPMask[o_89, f_98] }
                      Heap[null, lseg#sm(Heap[ptrn, next], ptrn)][o_89, f_98] || Heap[null, lseg#sm(Heap[Heap[ptrn, next], next], ptrn)][o_89, f_98] ==> newPMask[o_89, f_98]
                    );
                    Heap := Heap[null, lseg#sm(Heap[ptrn, next], ptrn):=newPMask];
                  }
                  assume state(Heap, Mask);
                perm := FullPerm;
                Mask := Mask[null, lseg(ptrn, ptrn):=Mask[null, lseg(ptrn, ptrn)] + perm];
                assume state(Heap, Mask);
                assume state(Heap, Mask);
                assume lseg#trigger(Heap, lseg(ptrn, ptrn));
                assume Heap[null, lseg(ptrn, ptrn)] == FrameFragment((if ptrn != ptrn then CombineFrames(FrameFragment(Heap[ptrn, data]), CombineFrames(FrameFragment(Heap[ptrn, next]), Heap[null, lseg(Heap[ptrn, next], ptrn)])) else EmptyFrame));
                if (!HasDirectPerm(Mask, null, lseg(ptrn, ptrn))) {
                  Heap := Heap[null, lseg#sm(ptrn, ptrn):=ZeroPMask];
                  havoc freshVersion;
                  Heap := Heap[null, lseg(ptrn, ptrn):=freshVersion];
                }
                if (ptrn != ptrn) {
                  Heap := Heap[null, lseg#sm(ptrn, ptrn):=Heap[null, lseg#sm(ptrn, ptrn)][ptrn, data:=true]];
                  Heap := Heap[null, lseg#sm(ptrn, ptrn):=Heap[null, lseg#sm(ptrn, ptrn)][ptrn, next:=true]];
                  havoc newPMask;
                  assume (forall <A, B> o_90: Ref, f_99: (Field A B) ::
                    { newPMask[o_90, f_99] }
                    Heap[null, lseg#sm(ptrn, ptrn)][o_90, f_99] || Heap[null, lseg#sm(Heap[ptrn, next], ptrn)][o_90, f_99] ==> newPMask[o_90, f_99]
                  );
                  Heap := Heap[null, lseg#sm(ptrn, ptrn):=newPMask];
                }
                assume state(Heap, Mask);
                assume state(Heap, Mask);
              
              // -- Translating statement: fold acc(lseg(ptr, ptrn), write) -- linked-list-predicates.vpr@149.7--149.32
                ExhaleWellDef0Heap := Heap;
                ExhaleWellDef0Mask := Mask;
                if (ptr_2 != ptrn) {
                  perm := FullPerm;
                  if (perm != NoPerm) {
                    assert {:msg "  Folding lseg(ptr, ptrn) might fail. There might be insufficient permission to access ptr.data (linked-list-predicates.vpr@149.7--149.32) [112146]"}
                      perm <= Mask[ptr_2, data];
                  }
                  Mask := Mask[ptr_2, data:=Mask[ptr_2, data] - perm];
                  perm := FullPerm;
                  if (perm != NoPerm) {
                    assert {:msg "  Folding lseg(ptr, ptrn) might fail. There might be insufficient permission to access ptr.next (linked-list-predicates.vpr@149.7--149.32) [112147]"}
                      perm <= Mask[ptr_2, next];
                  }
                  Mask := Mask[ptr_2, next:=Mask[ptr_2, next] - perm];
                  perm := FullPerm;
                  if (perm != NoPerm) {
                    assert {:msg "  Folding lseg(ptr, ptrn) might fail. There might be insufficient permission to access lseg(ptr.next, ptrn) (linked-list-predicates.vpr@149.7--149.32) [112148]"}
                      perm <= Mask[null, lseg(Heap[ptr_2, next], ptrn)];
                  }
                  Mask := Mask[null, lseg(Heap[ptr_2, next], ptrn):=Mask[null, lseg(Heap[ptr_2, next], ptrn)] - perm];
                  
                  // -- Record predicate instance information
                    assume InsidePredicate(lseg(ptr_2, ptrn), Heap[null, lseg(ptr_2, ptrn)], lseg(Heap[ptr_2, next], ptrn), Heap[null, lseg(Heap[ptr_2, next], ptrn)]);
                  
                  // -- Execute unfolding (for extra information)
                    UnfoldingHeap := ExhaleWellDef0Heap;
                    UnfoldingMask := ExhaleWellDef0Mask;
                    assume lseg#trigger(UnfoldingHeap, lseg(UnfoldingHeap[ptr_2, next], ptrn));
                    assume UnfoldingHeap[null, lseg(UnfoldingHeap[ptr_2, next], ptrn)] == FrameFragment((if UnfoldingHeap[ptr_2, next] != ptrn then CombineFrames(FrameFragment(UnfoldingHeap[UnfoldingHeap[ptr_2, next], data]), CombineFrames(FrameFragment(UnfoldingHeap[UnfoldingHeap[ptr_2, next], next]), UnfoldingHeap[null, lseg(UnfoldingHeap[UnfoldingHeap[ptr_2, next], next], ptrn)])) else EmptyFrame));
                    ExhaleWellDef1Heap := UnfoldingHeap;
                    ExhaleWellDef1Mask := UnfoldingMask;
                    perm := FullPerm;
                    if (perm != NoPerm) {
                      assert {:msg "  Folding lseg(ptr, ptrn) might fail. There might be insufficient permission to access lseg(ptr.next, ptrn) (linked-list-predicates.vpr@149.7--149.32) [112149]"}
                        perm <= UnfoldingMask[null, lseg(UnfoldingHeap[ptr_2, next], ptrn)];
                    }
                    UnfoldingMask := UnfoldingMask[null, lseg(UnfoldingHeap[ptr_2, next], ptrn):=UnfoldingMask[null, lseg(UnfoldingHeap[ptr_2, next], ptrn)] - perm];
                    if (UnfoldingHeap[ptr_2, next] != ptrn) {
                      perm := FullPerm;
                      assume UnfoldingHeap[ptr_2, next] != null;
                      UnfoldingMask := UnfoldingMask[UnfoldingHeap[ptr_2, next], data:=UnfoldingMask[UnfoldingHeap[ptr_2, next], data] + perm];
                      assume state(UnfoldingHeap, UnfoldingMask);
                      perm := FullPerm;
                      assume UnfoldingHeap[ptr_2, next] != null;
                      UnfoldingMask := UnfoldingMask[UnfoldingHeap[ptr_2, next], next:=UnfoldingMask[UnfoldingHeap[ptr_2, next], next] + perm];
                      assume state(UnfoldingHeap, UnfoldingMask);
                      perm := FullPerm;
                      UnfoldingMask := UnfoldingMask[null, lseg(UnfoldingHeap[UnfoldingHeap[ptr_2, next], next], ptrn):=UnfoldingMask[null, lseg(UnfoldingHeap[UnfoldingHeap[ptr_2, next], next], ptrn)] + perm];
                      
                      // -- Extra unfolding of predicate
                        assume InsidePredicate(lseg(UnfoldingHeap[ptr_2, next], ptrn), UnfoldingHeap[null, lseg(UnfoldingHeap[ptr_2, next], ptrn)], lseg(UnfoldingHeap[UnfoldingHeap[ptr_2, next], next], ptrn), UnfoldingHeap[null, lseg(UnfoldingHeap[UnfoldingHeap[ptr_2, next], next], ptrn)]);
                      assume state(UnfoldingHeap, UnfoldingMask);
                      assume UnfoldingHeap[UnfoldingHeap[ptr_2, next], next] != ptrn ==> UnfoldingHeap[UnfoldingHeap[ptr_2, next], data] <= UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[ptr_2, next], next], data];
                      
                      // -- Free assumptions (inhale module)
                        if (UnfoldingHeap[UnfoldingHeap[ptr_2, next], next] != ptrn) {
                          UnfoldingHeap := UnfoldingHeap[null, lseg#sm(UnfoldingHeap[UnfoldingHeap[ptr_2, next], next], ptrn):=UnfoldingHeap[null, lseg#sm(UnfoldingHeap[UnfoldingHeap[ptr_2, next], next], ptrn)][UnfoldingHeap[UnfoldingHeap[ptr_2, next], next], data:=true]];
                          UnfoldingHeap := UnfoldingHeap[null, lseg#sm(UnfoldingHeap[UnfoldingHeap[ptr_2, next], next], ptrn):=UnfoldingHeap[null, lseg#sm(UnfoldingHeap[UnfoldingHeap[ptr_2, next], next], ptrn)][UnfoldingHeap[UnfoldingHeap[ptr_2, next], next], next:=true]];
                          havoc newPMask;
                          assume (forall <A, B> o_93: Ref, f_105: (Field A B) ::
                            { newPMask[o_93, f_105] }
                            UnfoldingHeap[null, lseg#sm(UnfoldingHeap[UnfoldingHeap[ptr_2, next], next], ptrn)][o_93, f_105] || UnfoldingHeap[null, lseg#sm(UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[ptr_2, next], next], next], ptrn)][o_93, f_105] ==> newPMask[o_93, f_105]
                          );
                          UnfoldingHeap := UnfoldingHeap[null, lseg#sm(UnfoldingHeap[UnfoldingHeap[ptr_2, next], next], ptrn):=newPMask];
                        }
                        assume state(UnfoldingHeap, UnfoldingMask);
                    }
                    assume state(UnfoldingHeap, UnfoldingMask);
                  if (Heap[ptr_2, next] != ptrn) {
                    assert {:msg "  Folding lseg(ptr, ptrn) might fail. Assertion ptr.data <= ptr.next.data might not hold. (linked-list-predicates.vpr@149.7--149.32) [112150]"}
                      Heap[ptr_2, data] <= Heap[Heap[ptr_2, next], data];
                  }
                }
                
                // -- Free assumptions (exhale module)
                  if (Heap[ptr_2, next] != ptrn) {
                    Heap := Heap[null, lseg#sm(Heap[ptr_2, next], ptrn):=Heap[null, lseg#sm(Heap[ptr_2, next], ptrn)][Heap[ptr_2, next], data:=true]];
                    Heap := Heap[null, lseg#sm(Heap[ptr_2, next], ptrn):=Heap[null, lseg#sm(Heap[ptr_2, next], ptrn)][Heap[ptr_2, next], next:=true]];
                    havoc newPMask;
                    assume (forall <A, B> o_94: Ref, f_44: (Field A B) ::
                      { newPMask[o_94, f_44] }
                      Heap[null, lseg#sm(Heap[ptr_2, next], ptrn)][o_94, f_44] || Heap[null, lseg#sm(Heap[Heap[ptr_2, next], next], ptrn)][o_94, f_44] ==> newPMask[o_94, f_44]
                    );
                    Heap := Heap[null, lseg#sm(Heap[ptr_2, next], ptrn):=newPMask];
                  }
                  assume state(Heap, Mask);
                perm := FullPerm;
                Mask := Mask[null, lseg(ptr_2, ptrn):=Mask[null, lseg(ptr_2, ptrn)] + perm];
                assume state(Heap, Mask);
                assume state(Heap, Mask);
                assume lseg#trigger(Heap, lseg(ptr_2, ptrn));
                assume Heap[null, lseg(ptr_2, ptrn)] == FrameFragment((if ptr_2 != ptrn then CombineFrames(FrameFragment(Heap[ptr_2, data]), CombineFrames(FrameFragment(Heap[ptr_2, next]), Heap[null, lseg(Heap[ptr_2, next], ptrn)])) else EmptyFrame));
                if (!HasDirectPerm(Mask, null, lseg(ptr_2, ptrn))) {
                  Heap := Heap[null, lseg#sm(ptr_2, ptrn):=ZeroPMask];
                  havoc freshVersion;
                  Heap := Heap[null, lseg(ptr_2, ptrn):=freshVersion];
                }
                if (ptr_2 != ptrn) {
                  Heap := Heap[null, lseg#sm(ptr_2, ptrn):=Heap[null, lseg#sm(ptr_2, ptrn)][ptr_2, data:=true]];
                  Heap := Heap[null, lseg#sm(ptr_2, ptrn):=Heap[null, lseg#sm(ptr_2, ptrn)][ptr_2, next:=true]];
                  havoc newPMask;
                  assume (forall <A, B> o_97: Ref, f_107: (Field A B) ::
                    { newPMask[o_97, f_107] }
                    Heap[null, lseg#sm(ptr_2, ptrn)][o_97, f_107] || Heap[null, lseg#sm(Heap[ptr_2, next], ptrn)][o_97, f_107] ==> newPMask[o_97, f_107]
                  );
                  Heap := Heap[null, lseg#sm(ptr_2, ptrn):=newPMask];
                }
                assume state(Heap, Mask);
                assume state(Heap, Mask);
              
              // -- Translating statement: concat(this.head, ptr, ptrn) -- linked-list-predicates.vpr@150.7--150.35
                PreCallHeap := Heap;
                PreCallMask := Mask;
                
                // -- Check definedness of this.head
                  assert {:msg "  Method call might fail. There might be insufficient permission to access this.head (linked-list-predicates.vpr@150.7--150.35) [112151]"}
                    HasDirectPerm(Mask, this, head_3);
                arg_this := Heap[this, head_3];
                
                // -- Exhaling precondition
                  ExhaleWellDef0Heap := Heap;
                  ExhaleWellDef0Mask := Mask;
                  perm := FullPerm;
                  if (perm != NoPerm) {
                    assert {:msg "  The precondition of method concat might not hold. There might be insufficient permission to access lseg(this.head, ptr) (linked-list-predicates.vpr@150.7--150.35) [112152]"}
                      perm <= Mask[null, lseg(arg_this, ptr_2)];
                  }
                  Mask := Mask[null, lseg(arg_this, ptr_2):=Mask[null, lseg(arg_this, ptr_2)] - perm];
                  perm := FullPerm;
                  if (perm != NoPerm) {
                    assert {:msg "  The precondition of method concat might not hold. There might be insufficient permission to access lseg(ptr, ptrn) (linked-list-predicates.vpr@150.7--150.35) [112153]"}
                      perm <= Mask[null, lseg(ptr_2, ptrn)];
                  }
                  Mask := Mask[null, lseg(ptr_2, ptrn):=Mask[null, lseg(ptr_2, ptrn)] - perm];
                  if (ptrn != null) {
                    perm := 1 / 2;
                    assert {:msg "  The precondition of method concat might not hold. Fraction 1 / 2 might be negative. (linked-list-predicates.vpr@150.7--150.35) [112154]"}
                      perm >= NoPerm;
                    if (perm != NoPerm) {
                      assert {:msg "  The precondition of method concat might not hold. There might be insufficient permission to access ptrn.next (linked-list-predicates.vpr@150.7--150.35) [112155]"}
                        perm <= Mask[ptrn, next];
                    }
                    Mask := Mask[ptrn, next:=Mask[ptrn, next] - perm];
                  }
                  if (0 < Seq#Length(contentNodes(Heap, arg_this, ptr_2)) && 0 < Seq#Length(contentNodes(Heap, ptr_2, ptrn))) {
                    assert {:msg "  The precondition of method concat might not hold. Assertion contentNodes(this.head, ptr)[|contentNodes(this.head, ptr)| - 1] <= contentNodes(ptr, ptrn)[0] might not hold. (linked-list-predicates.vpr@150.7--150.35) [112156]"}
                      Seq#Index(contentNodes(Heap, arg_this, ptr_2), Seq#Length(contentNodes(Heap, arg_this, ptr_2)) - 1) <= Seq#Index(contentNodes(Heap, ptr_2, ptrn), 0);
                  }
                  // Finish exhale
                  havoc ExhaleHeap;
                  assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
                  Heap := ExhaleHeap;
                
                // -- Inhaling postcondition
                  perm := FullPerm;
                  Mask := Mask[null, lseg(arg_this, ptrn):=Mask[null, lseg(arg_this, ptrn)] + perm];
                  assume state(Heap, Mask);
                  assume state(Heap, Mask);
                  assume Seq#Equal(contentNodes(Heap, arg_this, ptrn), Seq#Append(contentNodes(PreCallHeap, arg_this, ptr_2), contentNodes(PreCallHeap, ptr_2, ptrn)));
                  if (ptrn != null) {
                    perm := 1 / 2;
                    assert {:msg "  Method call might fail. Fraction 1 / 2 might be negative. (linked-list-predicates.vpr@150.7--150.35) [112157]"}
                      perm >= NoPerm;
                    assume perm > NoPerm ==> ptrn != null;
                    Mask := Mask[ptrn, next:=Mask[ptrn, next] + perm];
                    assume state(Heap, Mask);
                  }
                  assume state(Heap, Mask);
                assume state(Heap, Mask);
              
              // -- Translating statement: ptr := ptrn -- linked-list-predicates.vpr@151.7--151.18
                ptr_2 := ptrn;
                assume state(Heap, Mask);
            // Exhale invariant
            ExhaleWellDef0Heap := Heap;
            ExhaleWellDef0Mask := Mask;
            perm := FullPerm;
            if (perm != NoPerm) {
              assert {:msg "  Loop invariant acc(this.head, write) might not be preserved. There might be insufficient permission to access this.head (linked-list-predicates.vpr@133.17--133.31) [112158]"}
                perm <= Mask[this, head_3];
            }
            Mask := Mask[this, head_3:=Mask[this, head_3] - perm];
            perm := FullPerm;
            if (perm != NoPerm) {
              assert {:msg "  Loop invariant acc(ptr.next, write) && (acc(ptr.data, write) && ptr.data <= elem) might not be preserved. There might be insufficient permission to access ptr.next (linked-list-predicates.vpr@134.17--134.67) [112159]"}
                perm <= Mask[ptr_2, next];
            }
            Mask := Mask[ptr_2, next:=Mask[ptr_2, next] - perm];
            perm := FullPerm;
            if (perm != NoPerm) {
              assert {:msg "  Loop invariant acc(ptr.next, write) && (acc(ptr.data, write) && ptr.data <= elem) might not be preserved. There might be insufficient permission to access ptr.data (linked-list-predicates.vpr@134.17--134.67) [112160]"}
                perm <= Mask[ptr_2, data];
            }
            Mask := Mask[ptr_2, data:=Mask[ptr_2, data] - perm];
            assert {:msg "  Loop invariant acc(ptr.next, write) && (acc(ptr.data, write) && ptr.data <= elem) might not be preserved. Assertion ptr.data <= elem might not hold. (linked-list-predicates.vpr@134.17--134.67) [112161]"}
              Heap[ptr_2, data] <= elem_1;
            perm := FullPerm;
            if (perm != NoPerm) {
              assert {:msg "  Loop invariant acc(lseg(ptr.next, null), write) might not be preserved. There might be insufficient permission to access lseg(ptr.next, null) (linked-list-predicates.vpr@135.17--135.42) [112162]"}
                perm <= Mask[null, lseg(Heap[ptr_2, next], null)];
            }
            Mask := Mask[null, lseg(Heap[ptr_2, next], null):=Mask[null, lseg(Heap[ptr_2, next], null)] - perm];
            perm := FullPerm;
            if (perm != NoPerm) {
              assert {:msg "  Loop invariant acc(lseg(this.head, ptr), write) might not be preserved. There might be insufficient permission to access lseg(this.head, ptr) (linked-list-predicates.vpr@136.17--136.42) [112163]"}
                perm <= Mask[null, lseg(Heap[this, head_3], ptr_2)];
            }
            Mask := Mask[null, lseg(Heap[this, head_3], ptr_2):=Mask[null, lseg(Heap[this, head_3], ptr_2)] - perm];
            if (*) {
              if (0 <= i_10_1 && i_10_1 < Seq#Length(contentNodes(Heap, Heap[this, head_3], ptr_2))) {
                assert {:msg "  Loop invariant (forall i: Int :: { contentNodes(this.head, ptr)[i] } 0 <= i && i < |contentNodes(this.head, ptr)| ==> contentNodes(this.head, ptr)[i] <= ptr.data) might not be preserved. Assertion contentNodes(this.head, ptr)[i] <= ptr.data might not hold. (linked-list-predicates.vpr@137.17--138.62) [112164]"}
                  Seq#Index(contentNodes(Heap, Heap[this, head_3], ptr_2), i_10_1) <= Heap[ptr_2, data];
              }
              assume false;
            }
            assume (forall i_11_1_1: int ::
              { Seq#Index(contentNodes#frame(Heap[null, lseg(Heap[this, head_3], ptr_2)], Heap[this, head_3], ptr_2), i_11_1_1) }
              0 <= i_11_1_1 && i_11_1_1 < Seq#Length(contentNodes(Heap, Heap[this, head_3], ptr_2)) ==> Seq#Index(contentNodes(Heap, Heap[this, head_3], ptr_2), i_11_1_1) <= Heap[ptr_2, data]
            );
            if (*) {
              if (0 <= i_12_1 && i_12_1 < Seq#Length(contentNodes(Heap, Heap[ptr_2, next], null))) {
                assert {:msg "  Loop invariant (forall i: Int :: { contentNodes(ptr.next, null)[i] } 0 <= i && i < |contentNodes(ptr.next, null)| ==> ptr.data <= contentNodes(ptr.next, null)[i]) might not be preserved. Assertion ptr.data <= contentNodes(ptr.next, null)[i] might not hold. (linked-list-predicates.vpr@139.17--140.62) [112165]"}
                  Heap[ptr_2, data] <= Seq#Index(contentNodes(Heap, Heap[ptr_2, next], null), i_12_1);
              }
              assume false;
            }
            assume (forall i_13_1_1: int ::
              { Seq#Index(contentNodes#frame(Heap[null, lseg(Heap[ptr_2, next], null)], Heap[ptr_2, next], null), i_13_1_1) }
              0 <= i_13_1_1 && i_13_1_1 < Seq#Length(contentNodes(Heap, Heap[ptr_2, next], null)) ==> Heap[ptr_2, data] <= Seq#Index(contentNodes(Heap, Heap[ptr_2, next], null), i_13_1_1)
            );
            assert {:msg "  Loop invariant index - 1 == |contentNodes(this.head, ptr)| might not be preserved. Assertion index - 1 == |contentNodes(this.head, ptr)| might not hold. (linked-list-predicates.vpr@141.17--141.58) [112166]"}
              index - 1 == Seq#Length(contentNodes(Heap, Heap[this, head_3], ptr_2));
            assert {:msg "  Loop invariant old(content(this)) == contentNodes(this.head, ptr) ++ Seq(ptr.data) ++ contentNodes(ptr.next, null) might not be preserved. Assertion old(content(this)) == contentNodes(this.head, ptr) ++ Seq(ptr.data) ++ contentNodes(ptr.next, null) might not hold. (linked-list-predicates.vpr@143.9--143.108) [112167]"}
              Seq#Equal(content(oldHeap, this), Seq#Append(Seq#Append(contentNodes(Heap, Heap[this, head_3], ptr_2), Seq#Singleton(Heap[ptr_2, data])), contentNodes(Heap, Heap[ptr_2, next], null)));
            // Finish exhale
            havoc ExhaleHeap;
            assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
            Heap := ExhaleHeap;
            // Terminate execution
            assume false;
          }
        
        // -- Inhale loop invariant after loop, and assume guard
          assume !(Heap[ptr_2, next] != null && Heap[Heap[ptr_2, next], data] < elem_1);
          assume state(Heap, Mask);
          perm := FullPerm;
          assume this != null;
          Mask := Mask[this, head_3:=Mask[this, head_3] + perm];
          assume state(Heap, Mask);
          perm := FullPerm;
          assume ptr_2 != null;
          Mask := Mask[ptr_2, next:=Mask[ptr_2, next] + perm];
          assume state(Heap, Mask);
          perm := FullPerm;
          assume ptr_2 != null;
          Mask := Mask[ptr_2, data:=Mask[ptr_2, data] + perm];
          assume state(Heap, Mask);
          assume Heap[ptr_2, data] <= elem_1;
          perm := FullPerm;
          Mask := Mask[null, lseg(Heap[ptr_2, next], null):=Mask[null, lseg(Heap[ptr_2, next], null)] + perm];
          assume state(Heap, Mask);
          perm := FullPerm;
          Mask := Mask[null, lseg(Heap[this, head_3], ptr_2):=Mask[null, lseg(Heap[this, head_3], ptr_2)] + perm];
          assume state(Heap, Mask);
          assume state(Heap, Mask);
          assume (forall i_14_1: int ::
            { Seq#Index(contentNodes#frame(Heap[null, lseg(Heap[this, head_3], ptr_2)], Heap[this, head_3], ptr_2), i_14_1) }
            0 <= i_14_1 && i_14_1 < Seq#Length(contentNodes(Heap, Heap[this, head_3], ptr_2)) ==> Seq#Index(contentNodes(Heap, Heap[this, head_3], ptr_2), i_14_1) <= Heap[ptr_2, data]
          );
          assume state(Heap, Mask);
          assume (forall i_15_1: int ::
            { Seq#Index(contentNodes#frame(Heap[null, lseg(Heap[ptr_2, next], null)], Heap[ptr_2, next], null), i_15_1) }
            0 <= i_15_1 && i_15_1 < Seq#Length(contentNodes(Heap, Heap[ptr_2, next], null)) ==> Heap[ptr_2, data] <= Seq#Index(contentNodes(Heap, Heap[ptr_2, next], null), i_15_1)
          );
          assume state(Heap, Mask);
          assume index - 1 == Seq#Length(contentNodes(Heap, Heap[this, head_3], ptr_2));
          assume state(Heap, Mask);
          assume Seq#Equal(content(oldHeap, this), Seq#Append(Seq#Append(contentNodes(Heap, Heap[this, head_3], ptr_2), Seq#Singleton(Heap[ptr_2, data])), contentNodes(Heap, Heap[ptr_2, next], null)));
          assume state(Heap, Mask);
        assume state(Heap, Mask);
      
      // -- Translating statement: tmp := new(data, next, head, held, changed) -- linked-list-predicates.vpr@154.5--154.18
        havoc freshObj;
        assume freshObj != null && !Heap[freshObj, $allocated];
        Heap := Heap[freshObj, $allocated:=true];
        tmp := freshObj;
        Mask := Mask[tmp, data:=Mask[tmp, data] + FullPerm];
        Mask := Mask[tmp, next:=Mask[tmp, next] + FullPerm];
        Mask := Mask[tmp, head_3:=Mask[tmp, head_3] + FullPerm];
        Mask := Mask[tmp, held:=Mask[tmp, held] + FullPerm];
        Mask := Mask[tmp, changed:=Mask[tmp, changed] + FullPerm];
        assume state(Heap, Mask);
      
      // -- Translating statement: tmp.data := elem -- linked-list-predicates.vpr@155.5--155.21
        assert {:msg "  Assignment might fail. There might be insufficient permission to access tmp.data (linked-list-predicates.vpr@155.5--155.21) [112168]"}
          FullPerm == Mask[tmp, data];
        Heap := Heap[tmp, data:=elem_1];
        assume state(Heap, Mask);
      
      // -- Translating statement: tmp.next := ptr.next -- linked-list-predicates.vpr@156.5--156.25
        
        // -- Check definedness of ptr.next
          assert {:msg "  Assignment might fail. There might be insufficient permission to access ptr.next (linked-list-predicates.vpr@156.5--156.25) [112169]"}
            HasDirectPerm(Mask, ptr_2, next);
        assert {:msg "  Assignment might fail. There might be insufficient permission to access tmp.next (linked-list-predicates.vpr@156.5--156.25) [112170]"}
          FullPerm == Mask[tmp, next];
        Heap := Heap[tmp, next:=Heap[ptr_2, next]];
        assume state(Heap, Mask);
      
      // -- Translating statement: ptr.next := tmp -- linked-list-predicates.vpr@157.5--157.20
        assert {:msg "  Assignment might fail. There might be insufficient permission to access ptr.next (linked-list-predicates.vpr@157.5--157.20) [112171]"}
          FullPerm == Mask[ptr_2, next];
        Heap := Heap[ptr_2, next:=tmp];
        assume state(Heap, Mask);
      
      // -- Translating statement: fold acc(lseg(ptr.next, null), write) -- linked-list-predicates.vpr@158.5--158.35
        
        // -- Check definedness of acc(lseg(ptr.next, null), write)
          assert {:msg "  Folding lseg(ptr.next, null) might fail. There might be insufficient permission to access ptr.next (linked-list-predicates.vpr@158.5--158.35) [112172]"}
            HasDirectPerm(Mask, ptr_2, next);
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        if (Heap[ptr_2, next] != null) {
          perm := FullPerm;
          if (perm != NoPerm) {
            assert {:msg "  Folding lseg(ptr.next, null) might fail. There might be insufficient permission to access ptr.next.data (linked-list-predicates.vpr@158.5--158.35) [112175]"}
              perm <= Mask[Heap[ptr_2, next], data];
          }
          Mask := Mask[Heap[ptr_2, next], data:=Mask[Heap[ptr_2, next], data] - perm];
          perm := FullPerm;
          if (perm != NoPerm) {
            assert {:msg "  Folding lseg(ptr.next, null) might fail. There might be insufficient permission to access ptr.next.next (linked-list-predicates.vpr@158.5--158.35) [112177]"}
              perm <= Mask[Heap[ptr_2, next], next];
          }
          Mask := Mask[Heap[ptr_2, next], next:=Mask[Heap[ptr_2, next], next] - perm];
          perm := FullPerm;
          if (perm != NoPerm) {
            assert {:msg "  Folding lseg(ptr.next, null) might fail. There might be insufficient permission to access lseg(ptr.next.next, null) (linked-list-predicates.vpr@158.5--158.35) [112179]"}
              perm <= Mask[null, lseg(Heap[Heap[ptr_2, next], next], null)];
          }
          Mask := Mask[null, lseg(Heap[Heap[ptr_2, next], next], null):=Mask[null, lseg(Heap[Heap[ptr_2, next], next], null)] - perm];
          
          // -- Record predicate instance information
            assume InsidePredicate(lseg(Heap[ptr_2, next], null), Heap[null, lseg(Heap[ptr_2, next], null)], lseg(Heap[Heap[ptr_2, next], next], null), Heap[null, lseg(Heap[Heap[ptr_2, next], next], null)]);
          
          // -- Execute unfolding (for extra information)
            UnfoldingHeap := ExhaleWellDef0Heap;
            UnfoldingMask := ExhaleWellDef0Mask;
            assume lseg#trigger(UnfoldingHeap, lseg(UnfoldingHeap[UnfoldingHeap[ptr_2, next], next], null));
            assume UnfoldingHeap[null, lseg(UnfoldingHeap[UnfoldingHeap[ptr_2, next], next], null)] == FrameFragment((if UnfoldingHeap[UnfoldingHeap[ptr_2, next], next] != null then CombineFrames(FrameFragment(UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[ptr_2, next], next], data]), CombineFrames(FrameFragment(UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[ptr_2, next], next], next]), UnfoldingHeap[null, lseg(UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[ptr_2, next], next], next], null)])) else EmptyFrame));
            ExhaleWellDef1Heap := UnfoldingHeap;
            ExhaleWellDef1Mask := UnfoldingMask;
            perm := FullPerm;
            if (perm != NoPerm) {
              assert {:msg "  Folding lseg(ptr.next, null) might fail. There might be insufficient permission to access lseg(ptr.next.next, null) (linked-list-predicates.vpr@158.5--158.35) [112182]"}
                perm <= UnfoldingMask[null, lseg(UnfoldingHeap[UnfoldingHeap[ptr_2, next], next], null)];
            }
            UnfoldingMask := UnfoldingMask[null, lseg(UnfoldingHeap[UnfoldingHeap[ptr_2, next], next], null):=UnfoldingMask[null, lseg(UnfoldingHeap[UnfoldingHeap[ptr_2, next], next], null)] - perm];
            if (UnfoldingHeap[UnfoldingHeap[ptr_2, next], next] != null) {
              perm := FullPerm;
              assume UnfoldingHeap[UnfoldingHeap[ptr_2, next], next] != null;
              UnfoldingMask := UnfoldingMask[UnfoldingHeap[UnfoldingHeap[ptr_2, next], next], data:=UnfoldingMask[UnfoldingHeap[UnfoldingHeap[ptr_2, next], next], data] + perm];
              assume state(UnfoldingHeap, UnfoldingMask);
              perm := FullPerm;
              assume UnfoldingHeap[UnfoldingHeap[ptr_2, next], next] != null;
              UnfoldingMask := UnfoldingMask[UnfoldingHeap[UnfoldingHeap[ptr_2, next], next], next:=UnfoldingMask[UnfoldingHeap[UnfoldingHeap[ptr_2, next], next], next] + perm];
              assume state(UnfoldingHeap, UnfoldingMask);
              perm := FullPerm;
              UnfoldingMask := UnfoldingMask[null, lseg(UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[ptr_2, next], next], next], null):=UnfoldingMask[null, lseg(UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[ptr_2, next], next], next], null)] + perm];
              
              // -- Extra unfolding of predicate
                assume InsidePredicate(lseg(UnfoldingHeap[UnfoldingHeap[ptr_2, next], next], null), UnfoldingHeap[null, lseg(UnfoldingHeap[UnfoldingHeap[ptr_2, next], next], null)], lseg(UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[ptr_2, next], next], next], null), UnfoldingHeap[null, lseg(UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[ptr_2, next], next], next], null)]);
              assume state(UnfoldingHeap, UnfoldingMask);
              assume UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[ptr_2, next], next], next] != null ==> UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[ptr_2, next], next], data] <= UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[ptr_2, next], next], next], data];
              
              // -- Free assumptions (inhale module)
                if (UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[ptr_2, next], next], next] != null) {
                  UnfoldingHeap := UnfoldingHeap[null, lseg#sm(UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[ptr_2, next], next], next], null):=UnfoldingHeap[null, lseg#sm(UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[ptr_2, next], next], next], null)][UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[ptr_2, next], next], next], data:=true]];
                  UnfoldingHeap := UnfoldingHeap[null, lseg#sm(UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[ptr_2, next], next], next], null):=UnfoldingHeap[null, lseg#sm(UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[ptr_2, next], next], next], null)][UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[ptr_2, next], next], next], next:=true]];
                  havoc newPMask;
                  assume (forall <A, B> o_95: Ref, f_106: (Field A B) ::
                    { newPMask[o_95, f_106] }
                    UnfoldingHeap[null, lseg#sm(UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[ptr_2, next], next], next], null)][o_95, f_106] || UnfoldingHeap[null, lseg#sm(UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[ptr_2, next], next], next], next], null)][o_95, f_106] ==> newPMask[o_95, f_106]
                  );
                  UnfoldingHeap := UnfoldingHeap[null, lseg#sm(UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[ptr_2, next], next], next], null):=newPMask];
                }
                assume state(UnfoldingHeap, UnfoldingMask);
            }
            assume state(UnfoldingHeap, UnfoldingMask);
          if (Heap[Heap[ptr_2, next], next] != null) {
            assert {:msg "  Folding lseg(ptr.next, null) might fail. Assertion ptr.next.data <= ptr.next.next.data might not hold. (linked-list-predicates.vpr@158.5--158.35) [112186]"}
              Heap[Heap[ptr_2, next], data] <= Heap[Heap[Heap[ptr_2, next], next], data];
          }
        }
        
        // -- Free assumptions (exhale module)
          if (Heap[Heap[ptr_2, next], next] != null) {
            Heap := Heap[null, lseg#sm(Heap[Heap[ptr_2, next], next], null):=Heap[null, lseg#sm(Heap[Heap[ptr_2, next], next], null)][Heap[Heap[ptr_2, next], next], data:=true]];
            Heap := Heap[null, lseg#sm(Heap[Heap[ptr_2, next], next], null):=Heap[null, lseg#sm(Heap[Heap[ptr_2, next], next], null)][Heap[Heap[ptr_2, next], next], next:=true]];
            havoc newPMask;
            assume (forall <A, B> o_96: Ref, f_45: (Field A B) ::
              { newPMask[o_96, f_45] }
              Heap[null, lseg#sm(Heap[Heap[ptr_2, next], next], null)][o_96, f_45] || Heap[null, lseg#sm(Heap[Heap[Heap[ptr_2, next], next], next], null)][o_96, f_45] ==> newPMask[o_96, f_45]
            );
            Heap := Heap[null, lseg#sm(Heap[Heap[ptr_2, next], next], null):=newPMask];
          }
          assume state(Heap, Mask);
        perm := FullPerm;
        Mask := Mask[null, lseg(Heap[ptr_2, next], null):=Mask[null, lseg(Heap[ptr_2, next], null)] + perm];
        assume state(Heap, Mask);
        assume state(Heap, Mask);
        assume lseg#trigger(Heap, lseg(Heap[ptr_2, next], null));
        assume Heap[null, lseg(Heap[ptr_2, next], null)] == FrameFragment((if Heap[ptr_2, next] != null then CombineFrames(FrameFragment(Heap[Heap[ptr_2, next], data]), CombineFrames(FrameFragment(Heap[Heap[ptr_2, next], next]), Heap[null, lseg(Heap[Heap[ptr_2, next], next], null)])) else EmptyFrame));
        if (!HasDirectPerm(Mask, null, lseg(Heap[ptr_2, next], null))) {
          Heap := Heap[null, lseg#sm(Heap[ptr_2, next], null):=ZeroPMask];
          havoc freshVersion;
          Heap := Heap[null, lseg(Heap[ptr_2, next], null):=freshVersion];
        }
        if (Heap[ptr_2, next] != null) {
          Heap := Heap[null, lseg#sm(Heap[ptr_2, next], null):=Heap[null, lseg#sm(Heap[ptr_2, next], null)][Heap[ptr_2, next], data:=true]];
          Heap := Heap[null, lseg#sm(Heap[ptr_2, next], null):=Heap[null, lseg#sm(Heap[ptr_2, next], null)][Heap[ptr_2, next], next:=true]];
          havoc newPMask;
          assume (forall <A, B> o_77: Ref, f_109: (Field A B) ::
            { newPMask[o_77, f_109] }
            Heap[null, lseg#sm(Heap[ptr_2, next], null)][o_77, f_109] || Heap[null, lseg#sm(Heap[Heap[ptr_2, next], next], null)][o_77, f_109] ==> newPMask[o_77, f_109]
          );
          Heap := Heap[null, lseg#sm(Heap[ptr_2, next], null):=newPMask];
        }
        assume state(Heap, Mask);
        assume state(Heap, Mask);
      
      // -- Translating statement: fold acc(lseg(ptr, null), write) -- linked-list-predicates.vpr@161.5--161.30
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        if (ptr_2 != null) {
          perm := FullPerm;
          if (perm != NoPerm) {
            assert {:msg "  Folding lseg(ptr, null) might fail. There might be insufficient permission to access ptr.data (linked-list-predicates.vpr@161.5--161.30) [112190]"}
              perm <= Mask[ptr_2, data];
          }
          Mask := Mask[ptr_2, data:=Mask[ptr_2, data] - perm];
          perm := FullPerm;
          if (perm != NoPerm) {
            assert {:msg "  Folding lseg(ptr, null) might fail. There might be insufficient permission to access ptr.next (linked-list-predicates.vpr@161.5--161.30) [112192]"}
              perm <= Mask[ptr_2, next];
          }
          Mask := Mask[ptr_2, next:=Mask[ptr_2, next] - perm];
          perm := FullPerm;
          if (perm != NoPerm) {
            assert {:msg "  Folding lseg(ptr, null) might fail. There might be insufficient permission to access lseg(ptr.next, null) (linked-list-predicates.vpr@161.5--161.30) [112194]"}
              perm <= Mask[null, lseg(Heap[ptr_2, next], null)];
          }
          Mask := Mask[null, lseg(Heap[ptr_2, next], null):=Mask[null, lseg(Heap[ptr_2, next], null)] - perm];
          
          // -- Record predicate instance information
            assume InsidePredicate(lseg(ptr_2, null), Heap[null, lseg(ptr_2, null)], lseg(Heap[ptr_2, next], null), Heap[null, lseg(Heap[ptr_2, next], null)]);
          
          // -- Execute unfolding (for extra information)
            UnfoldingHeap := ExhaleWellDef0Heap;
            UnfoldingMask := ExhaleWellDef0Mask;
            assume lseg#trigger(UnfoldingHeap, lseg(UnfoldingHeap[ptr_2, next], null));
            assume UnfoldingHeap[null, lseg(UnfoldingHeap[ptr_2, next], null)] == FrameFragment((if UnfoldingHeap[ptr_2, next] != null then CombineFrames(FrameFragment(UnfoldingHeap[UnfoldingHeap[ptr_2, next], data]), CombineFrames(FrameFragment(UnfoldingHeap[UnfoldingHeap[ptr_2, next], next]), UnfoldingHeap[null, lseg(UnfoldingHeap[UnfoldingHeap[ptr_2, next], next], null)])) else EmptyFrame));
            ExhaleWellDef1Heap := UnfoldingHeap;
            ExhaleWellDef1Mask := UnfoldingMask;
            perm := FullPerm;
            if (perm != NoPerm) {
              assert {:msg "  Folding lseg(ptr, null) might fail. There might be insufficient permission to access lseg(ptr.next, null) (linked-list-predicates.vpr@161.5--161.30) [112197]"}
                perm <= UnfoldingMask[null, lseg(UnfoldingHeap[ptr_2, next], null)];
            }
            UnfoldingMask := UnfoldingMask[null, lseg(UnfoldingHeap[ptr_2, next], null):=UnfoldingMask[null, lseg(UnfoldingHeap[ptr_2, next], null)] - perm];
            if (UnfoldingHeap[ptr_2, next] != null) {
              perm := FullPerm;
              assume UnfoldingHeap[ptr_2, next] != null;
              UnfoldingMask := UnfoldingMask[UnfoldingHeap[ptr_2, next], data:=UnfoldingMask[UnfoldingHeap[ptr_2, next], data] + perm];
              assume state(UnfoldingHeap, UnfoldingMask);
              perm := FullPerm;
              assume UnfoldingHeap[ptr_2, next] != null;
              UnfoldingMask := UnfoldingMask[UnfoldingHeap[ptr_2, next], next:=UnfoldingMask[UnfoldingHeap[ptr_2, next], next] + perm];
              assume state(UnfoldingHeap, UnfoldingMask);
              perm := FullPerm;
              UnfoldingMask := UnfoldingMask[null, lseg(UnfoldingHeap[UnfoldingHeap[ptr_2, next], next], null):=UnfoldingMask[null, lseg(UnfoldingHeap[UnfoldingHeap[ptr_2, next], next], null)] + perm];
              
              // -- Extra unfolding of predicate
                assume InsidePredicate(lseg(UnfoldingHeap[ptr_2, next], null), UnfoldingHeap[null, lseg(UnfoldingHeap[ptr_2, next], null)], lseg(UnfoldingHeap[UnfoldingHeap[ptr_2, next], next], null), UnfoldingHeap[null, lseg(UnfoldingHeap[UnfoldingHeap[ptr_2, next], next], null)]);
              assume state(UnfoldingHeap, UnfoldingMask);
              assume UnfoldingHeap[UnfoldingHeap[ptr_2, next], next] != null ==> UnfoldingHeap[UnfoldingHeap[ptr_2, next], data] <= UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[ptr_2, next], next], data];
              
              // -- Free assumptions (inhale module)
                if (UnfoldingHeap[UnfoldingHeap[ptr_2, next], next] != null) {
                  UnfoldingHeap := UnfoldingHeap[null, lseg#sm(UnfoldingHeap[UnfoldingHeap[ptr_2, next], next], null):=UnfoldingHeap[null, lseg#sm(UnfoldingHeap[UnfoldingHeap[ptr_2, next], next], null)][UnfoldingHeap[UnfoldingHeap[ptr_2, next], next], data:=true]];
                  UnfoldingHeap := UnfoldingHeap[null, lseg#sm(UnfoldingHeap[UnfoldingHeap[ptr_2, next], next], null):=UnfoldingHeap[null, lseg#sm(UnfoldingHeap[UnfoldingHeap[ptr_2, next], next], null)][UnfoldingHeap[UnfoldingHeap[ptr_2, next], next], next:=true]];
                  havoc newPMask;
                  assume (forall <A, B> o_98: Ref, f_87: (Field A B) ::
                    { newPMask[o_98, f_87] }
                    UnfoldingHeap[null, lseg#sm(UnfoldingHeap[UnfoldingHeap[ptr_2, next], next], null)][o_98, f_87] || UnfoldingHeap[null, lseg#sm(UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[ptr_2, next], next], next], null)][o_98, f_87] ==> newPMask[o_98, f_87]
                  );
                  UnfoldingHeap := UnfoldingHeap[null, lseg#sm(UnfoldingHeap[UnfoldingHeap[ptr_2, next], next], null):=newPMask];
                }
                assume state(UnfoldingHeap, UnfoldingMask);
            }
            assume state(UnfoldingHeap, UnfoldingMask);
          if (Heap[ptr_2, next] != null) {
            assert {:msg "  Folding lseg(ptr, null) might fail. Assertion ptr.data <= ptr.next.data might not hold. (linked-list-predicates.vpr@161.5--161.30) [112201]"}
              Heap[ptr_2, data] <= Heap[Heap[ptr_2, next], data];
          }
        }
        
        // -- Free assumptions (exhale module)
          if (Heap[ptr_2, next] != null) {
            Heap := Heap[null, lseg#sm(Heap[ptr_2, next], null):=Heap[null, lseg#sm(Heap[ptr_2, next], null)][Heap[ptr_2, next], data:=true]];
            Heap := Heap[null, lseg#sm(Heap[ptr_2, next], null):=Heap[null, lseg#sm(Heap[ptr_2, next], null)][Heap[ptr_2, next], next:=true]];
            havoc newPMask;
            assume (forall <A, B> o_99: Ref, f_108: (Field A B) ::
              { newPMask[o_99, f_108] }
              Heap[null, lseg#sm(Heap[ptr_2, next], null)][o_99, f_108] || Heap[null, lseg#sm(Heap[Heap[ptr_2, next], next], null)][o_99, f_108] ==> newPMask[o_99, f_108]
            );
            Heap := Heap[null, lseg#sm(Heap[ptr_2, next], null):=newPMask];
          }
          assume state(Heap, Mask);
        perm := FullPerm;
        Mask := Mask[null, lseg(ptr_2, null):=Mask[null, lseg(ptr_2, null)] + perm];
        assume state(Heap, Mask);
        assume state(Heap, Mask);
        assume lseg#trigger(Heap, lseg(ptr_2, null));
        assume Heap[null, lseg(ptr_2, null)] == FrameFragment((if ptr_2 != null then CombineFrames(FrameFragment(Heap[ptr_2, data]), CombineFrames(FrameFragment(Heap[ptr_2, next]), Heap[null, lseg(Heap[ptr_2, next], null)])) else EmptyFrame));
        if (!HasDirectPerm(Mask, null, lseg(ptr_2, null))) {
          Heap := Heap[null, lseg#sm(ptr_2, null):=ZeroPMask];
          havoc freshVersion;
          Heap := Heap[null, lseg(ptr_2, null):=freshVersion];
        }
        if (ptr_2 != null) {
          Heap := Heap[null, lseg#sm(ptr_2, null):=Heap[null, lseg#sm(ptr_2, null)][ptr_2, data:=true]];
          Heap := Heap[null, lseg#sm(ptr_2, null):=Heap[null, lseg#sm(ptr_2, null)][ptr_2, next:=true]];
          havoc newPMask;
          assume (forall <A, B> o_78: Ref, f_110: (Field A B) ::
            { newPMask[o_78, f_110] }
            Heap[null, lseg#sm(ptr_2, null)][o_78, f_110] || Heap[null, lseg#sm(Heap[ptr_2, next], null)][o_78, f_110] ==> newPMask[o_78, f_110]
          );
          Heap := Heap[null, lseg#sm(ptr_2, null):=newPMask];
        }
        assume state(Heap, Mask);
        assume state(Heap, Mask);
      
      // -- Translating statement: concat(this.head, ptr, null) -- linked-list-predicates.vpr@162.5--162.33
        PreCallHeap := Heap;
        PreCallMask := Mask;
        
        // -- Check definedness of this.head
          assert {:msg "  Method call might fail. There might be insufficient permission to access this.head (linked-list-predicates.vpr@162.5--162.33) [112203]"}
            HasDirectPerm(Mask, this, head_3);
        arg_this_1 := Heap[this, head_3];
        
        // -- Exhaling precondition
          ExhaleWellDef0Heap := Heap;
          ExhaleWellDef0Mask := Mask;
          perm := FullPerm;
          if (perm != NoPerm) {
            assert {:msg "  The precondition of method concat might not hold. There might be insufficient permission to access lseg(this.head, ptr) (linked-list-predicates.vpr@162.5--162.33) [112204]"}
              perm <= Mask[null, lseg(arg_this_1, ptr_2)];
          }
          Mask := Mask[null, lseg(arg_this_1, ptr_2):=Mask[null, lseg(arg_this_1, ptr_2)] - perm];
          perm := FullPerm;
          if (perm != NoPerm) {
            assert {:msg "  The precondition of method concat might not hold. There might be insufficient permission to access lseg(ptr, null) (linked-list-predicates.vpr@162.5--162.33) [112205]"}
              perm <= Mask[null, lseg(ptr_2, null)];
          }
          Mask := Mask[null, lseg(ptr_2, null):=Mask[null, lseg(ptr_2, null)] - perm];
          if (null != null) {
            perm := 1 / 2;
            assert {:msg "  The precondition of method concat might not hold. Fraction 1 / 2 might be negative. (linked-list-predicates.vpr@162.5--162.33) [112206]"}
              perm >= NoPerm;
            if (perm != NoPerm) {
              assert {:msg "  The precondition of method concat might not hold. There might be insufficient permission to access null.next (linked-list-predicates.vpr@162.5--162.33) [112207]"}
                perm <= Mask[null, next];
            }
            Mask := Mask[null, next:=Mask[null, next] - perm];
          }
          if (0 < Seq#Length(contentNodes(Heap, arg_this_1, ptr_2)) && 0 < Seq#Length(contentNodes(Heap, ptr_2, null))) {
            assert {:msg "  The precondition of method concat might not hold. Assertion contentNodes(this.head, ptr)[|contentNodes(this.head, ptr)| - 1] <= contentNodes(ptr, null)[0] might not hold. (linked-list-predicates.vpr@162.5--162.33) [112208]"}
              Seq#Index(contentNodes(Heap, arg_this_1, ptr_2), Seq#Length(contentNodes(Heap, arg_this_1, ptr_2)) - 1) <= Seq#Index(contentNodes(Heap, ptr_2, null), 0);
          }
          // Finish exhale
          havoc ExhaleHeap;
          assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
          Heap := ExhaleHeap;
        
        // -- Inhaling postcondition
          perm := FullPerm;
          Mask := Mask[null, lseg(arg_this_1, null):=Mask[null, lseg(arg_this_1, null)] + perm];
          assume state(Heap, Mask);
          assume state(Heap, Mask);
          assume Seq#Equal(contentNodes(Heap, arg_this_1, null), Seq#Append(contentNodes(PreCallHeap, arg_this_1, ptr_2), contentNodes(PreCallHeap, ptr_2, null)));
          if (null != null) {
            perm := 1 / 2;
            assert {:msg "  Method call might fail. Fraction 1 / 2 might be negative. (linked-list-predicates.vpr@162.5--162.33) [112209]"}
              perm >= NoPerm;
            assume perm > NoPerm ==> null != null;
            Mask := Mask[null, next:=Mask[null, next] + perm];
            assume state(Heap, Mask);
          }
          assume state(Heap, Mask);
        assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(List(this), write) -- linked-list-predicates.vpr@165.3--165.23
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding List(this) might fail. There might be insufficient permission to access this.head (linked-list-predicates.vpr@165.3--165.23) [112212]"}
        perm <= Mask[this, head_3];
    }
    Mask := Mask[this, head_3:=Mask[this, head_3] - perm];
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding List(this) might fail. There might be insufficient permission to access lseg(this.head, null) (linked-list-predicates.vpr@165.3--165.23) [112214]"}
        perm <= Mask[null, lseg(Heap[this, head_3], null)];
    }
    Mask := Mask[null, lseg(Heap[this, head_3], null):=Mask[null, lseg(Heap[this, head_3], null)] - perm];
    
    // -- Record predicate instance information
      assume InsidePredicate(List(this), Heap[null, List(this)], lseg(Heap[this, head_3], null), Heap[null, lseg(Heap[this, head_3], null)]);
    perm := FullPerm;
    Mask := Mask[null, List(this):=Mask[null, List(this)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume List#trigger(Heap, List(this));
    assume Heap[null, List(this)] == CombineFrames(FrameFragment(Heap[this, head_3]), Heap[null, lseg(Heap[this, head_3], null)]);
    if (!HasDirectPerm(Mask, null, List(this))) {
      Heap := Heap[null, List#sm(this):=ZeroPMask];
      havoc freshVersion;
      Heap := Heap[null, List(this):=freshVersion];
    }
    Heap := Heap[null, List#sm(this):=Heap[null, List#sm(this)][this, head_3:=true]];
    havoc newPMask;
    assume (forall <A, B> o_100: Ref, f_111: (Field A B) ::
      { newPMask[o_100, f_111] }
      Heap[null, List#sm(this)][o_100, f_111] || Heap[null, lseg#sm(Heap[this, head_3], null)][o_100, f_111] ==> newPMask[o_100, f_111]
    );
    Heap := Heap[null, List#sm(this):=newPMask];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of insert might not hold. There might be insufficient permission to access List(this) (linked-list-predicates.vpr@107.11--107.26) [112216]"}
        perm <= Mask[null, List(this)];
    }
    Mask := Mask[null, List(this):=Mask[null, List(this)] - perm];
    assert {:msg "  Postcondition of insert might not hold. Assertion 0 <= index might not hold. (linked-list-predicates.vpr@108.11--108.54) [112217]"}
      0 <= index;
    assert {:msg "  Postcondition of insert might not hold. Assertion index <= |old(content(this))| might not hold. (linked-list-predicates.vpr@108.11--108.54) [112218]"}
      index <= Seq#Length(content(oldHeap, this));
    assert {:msg "  Postcondition of insert might not hold. Assertion content(this) == old(content(this))[0..index] ++ Seq(elem) ++ old(content(this))[index..] might not hold. (linked-list-predicates.vpr@109.11--109.100) [112219]"}
      Seq#Equal(content(Heap, this), Seq#Append(Seq#Append(Seq#Drop(Seq#Take(content(oldHeap, this), index), 0), Seq#Singleton(elem_1)), Seq#Drop(content(oldHeap, this), index)));
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method dequeue
// ==================================================

procedure dequeue(this: Ref) returns (res: int)
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
  var UnfoldingHeap: HeapType;
  var UnfoldingMask: MaskType;
  var newPMask: PMaskType;
  var freshVersion: FrameType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[this, $allocated];
  
  // -- Checked inhaling of precondition
    perm := FullPerm;
    Mask := Mask[null, List(this):=Mask[null, List(this)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of 0 < length(this)
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        perm := FullPerm;
        assert {:msg "  Precondition of function length might not hold. There might be insufficient permission to access List(this) (linked-list-predicates.vpr@170.16--170.28) [112220]"}
          NoPerm < perm ==> NoPerm < Mask[null, List(this)];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assume 0 < length_1(Heap, this);
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
    PostMask := PostMask[null, List(this):=PostMask[null, List(this)] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of res == old(content(this)[0])
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Heap := oldHeap;
        ExhaleWellDef0Mask := oldMask;
        perm := FullPerm;
        assert {:msg "  Precondition of function content might not hold. There might be insufficient permission to access List(this) (linked-list-predicates.vpr@172.22--172.35) [112221]"}
          NoPerm < perm ==> NoPerm < oldMask[null, List(this)];
        // Finish exhale
        // Stop execution
        assume false;
      }
      assert {:msg "  Contract might not be well-formed. Index content(this)[0] into content(this) might exceed sequence length. (linked-list-predicates.vpr@172.11--172.39) [112222]"}
        0 < Seq#Length(content(oldHeap, this));
    assume res == Seq#Index(content(oldHeap, this), 0);
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of content(this) == old(content(this)[1..])
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Heap := PostHeap;
        ExhaleWellDef0Mask := PostMask;
        perm := FullPerm;
        assert {:msg "  Precondition of function content might not hold. There might be insufficient permission to access List(this) (linked-list-predicates.vpr@173.11--173.24) [112223]"}
          NoPerm < perm ==> NoPerm < PostMask[null, List(this)];
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
        assert {:msg "  Precondition of function content might not hold. There might be insufficient permission to access List(this) (linked-list-predicates.vpr@173.32--173.45) [112224]"}
          NoPerm < perm ==> NoPerm < oldMask[null, List(this)];
        // Finish exhale
        // Stop execution
        assume false;
      }
    assume Seq#Equal(content(PostHeap, this), Seq#Drop(content(oldHeap, this), 1));
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: unfold acc(List(this), write) -- linked-list-predicates.vpr@175.3--175.25
    assume List#trigger(Heap, List(this));
    assume Heap[null, List(this)] == CombineFrames(FrameFragment(Heap[this, head_3]), Heap[null, lseg(Heap[this, head_3], null)]);
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Unfolding List(this) might fail. There might be insufficient permission to access List(this) (linked-list-predicates.vpr@175.3--175.25) [112227]"}
        perm <= Mask[null, List(this)];
    }
    Mask := Mask[null, List(this):=Mask[null, List(this)] - perm];
    
    // -- Update version of predicate
      if (!HasDirectPerm(Mask, null, List(this))) {
        havoc newVersion;
        Heap := Heap[null, List(this):=newVersion];
      }
    perm := FullPerm;
    assume this != null;
    Mask := Mask[this, head_3:=Mask[this, head_3] + perm];
    assume state(Heap, Mask);
    perm := FullPerm;
    Mask := Mask[null, lseg(Heap[this, head_3], null):=Mask[null, lseg(Heap[this, head_3], null)] + perm];
    
    // -- Extra unfolding of predicate
      assume InsidePredicate(List(this), Heap[null, List(this)], lseg(Heap[this, head_3], null), Heap[null, lseg(Heap[this, head_3], null)]);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: unfold acc(lseg(this.head, null), write) -- linked-list-predicates.vpr@176.3--176.36
    
    // -- Check definedness of acc(lseg(this.head, null), write)
      assert {:msg "  Unfolding lseg(this.head, null) might fail. There might be insufficient permission to access this.head (linked-list-predicates.vpr@176.3--176.36) [112230]"}
        HasDirectPerm(Mask, this, head_3);
    assume lseg#trigger(Heap, lseg(Heap[this, head_3], null));
    assume Heap[null, lseg(Heap[this, head_3], null)] == FrameFragment((if Heap[this, head_3] != null then CombineFrames(FrameFragment(Heap[Heap[this, head_3], data]), CombineFrames(FrameFragment(Heap[Heap[this, head_3], next]), Heap[null, lseg(Heap[Heap[this, head_3], next], null)])) else EmptyFrame));
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Unfolding lseg(this.head, null) might fail. There might be insufficient permission to access lseg(this.head, null) (linked-list-predicates.vpr@176.3--176.36) [112233]"}
        perm <= Mask[null, lseg(Heap[this, head_3], null)];
    }
    Mask := Mask[null, lseg(Heap[this, head_3], null):=Mask[null, lseg(Heap[this, head_3], null)] - perm];
    
    // -- Update version of predicate
      if (!HasDirectPerm(Mask, null, lseg(Heap[this, head_3], null))) {
        havoc newVersion;
        Heap := Heap[null, lseg(Heap[this, head_3], null):=newVersion];
      }
    if (Heap[this, head_3] != null) {
      perm := FullPerm;
      assume Heap[this, head_3] != null;
      Mask := Mask[Heap[this, head_3], data:=Mask[Heap[this, head_3], data] + perm];
      assume state(Heap, Mask);
      perm := FullPerm;
      assume Heap[this, head_3] != null;
      Mask := Mask[Heap[this, head_3], next:=Mask[Heap[this, head_3], next] + perm];
      assume state(Heap, Mask);
      perm := FullPerm;
      Mask := Mask[null, lseg(Heap[Heap[this, head_3], next], null):=Mask[null, lseg(Heap[Heap[this, head_3], next], null)] + perm];
      
      // -- Extra unfolding of predicate
        assume InsidePredicate(lseg(Heap[this, head_3], null), Heap[null, lseg(Heap[this, head_3], null)], lseg(Heap[Heap[this, head_3], next], null), Heap[null, lseg(Heap[Heap[this, head_3], next], null)]);
      assume state(Heap, Mask);
      
      // -- Execute unfolding (for extra information)
        UnfoldingHeap := Heap;
        UnfoldingMask := Mask;
        assume lseg#trigger(UnfoldingHeap, lseg(UnfoldingHeap[UnfoldingHeap[this, head_3], next], null));
        assume UnfoldingHeap[null, lseg(UnfoldingHeap[UnfoldingHeap[this, head_3], next], null)] == FrameFragment((if UnfoldingHeap[UnfoldingHeap[this, head_3], next] != null then CombineFrames(FrameFragment(UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[this, head_3], next], data]), CombineFrames(FrameFragment(UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[this, head_3], next], next]), UnfoldingHeap[null, lseg(UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[this, head_3], next], next], null)])) else EmptyFrame));
        ExhaleWellDef0Heap := UnfoldingHeap;
        ExhaleWellDef0Mask := UnfoldingMask;
        perm := FullPerm;
        UnfoldingMask := UnfoldingMask[null, lseg(UnfoldingHeap[UnfoldingHeap[this, head_3], next], null):=UnfoldingMask[null, lseg(UnfoldingHeap[UnfoldingHeap[this, head_3], next], null)] - perm];
        if (UnfoldingHeap[UnfoldingHeap[this, head_3], next] != null) {
          perm := FullPerm;
          assume UnfoldingHeap[UnfoldingHeap[this, head_3], next] != null;
          UnfoldingMask := UnfoldingMask[UnfoldingHeap[UnfoldingHeap[this, head_3], next], data:=UnfoldingMask[UnfoldingHeap[UnfoldingHeap[this, head_3], next], data] + perm];
          assume state(UnfoldingHeap, UnfoldingMask);
          perm := FullPerm;
          assume UnfoldingHeap[UnfoldingHeap[this, head_3], next] != null;
          UnfoldingMask := UnfoldingMask[UnfoldingHeap[UnfoldingHeap[this, head_3], next], next:=UnfoldingMask[UnfoldingHeap[UnfoldingHeap[this, head_3], next], next] + perm];
          assume state(UnfoldingHeap, UnfoldingMask);
          perm := FullPerm;
          UnfoldingMask := UnfoldingMask[null, lseg(UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[this, head_3], next], next], null):=UnfoldingMask[null, lseg(UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[this, head_3], next], next], null)] + perm];
          
          // -- Extra unfolding of predicate
            assume InsidePredicate(lseg(UnfoldingHeap[UnfoldingHeap[this, head_3], next], null), UnfoldingHeap[null, lseg(UnfoldingHeap[UnfoldingHeap[this, head_3], next], null)], lseg(UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[this, head_3], next], next], null), UnfoldingHeap[null, lseg(UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[this, head_3], next], next], null)]);
          assume state(UnfoldingHeap, UnfoldingMask);
          assume UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[this, head_3], next], next] != null ==> UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[this, head_3], next], data] <= UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[this, head_3], next], next], data];
          
          // -- Free assumptions (inhale module)
            if (UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[this, head_3], next], next] != null) {
              UnfoldingHeap := UnfoldingHeap[null, lseg#sm(UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[this, head_3], next], next], null):=UnfoldingHeap[null, lseg#sm(UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[this, head_3], next], next], null)][UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[this, head_3], next], next], data:=true]];
              UnfoldingHeap := UnfoldingHeap[null, lseg#sm(UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[this, head_3], next], next], null):=UnfoldingHeap[null, lseg#sm(UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[this, head_3], next], next], null)][UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[this, head_3], next], next], next:=true]];
              havoc newPMask;
              assume (forall <A, B> o_102: Ref, f_113: (Field A B) ::
                { newPMask[o_102, f_113] }
                UnfoldingHeap[null, lseg#sm(UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[this, head_3], next], next], null)][o_102, f_113] || UnfoldingHeap[null, lseg#sm(UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[this, head_3], next], next], next], null)][o_102, f_113] ==> newPMask[o_102, f_113]
              );
              UnfoldingHeap := UnfoldingHeap[null, lseg#sm(UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[this, head_3], next], next], null):=newPMask];
            }
            assume state(UnfoldingHeap, UnfoldingMask);
        }
        assume state(UnfoldingHeap, UnfoldingMask);
      assume Heap[Heap[this, head_3], next] != null ==> Heap[Heap[this, head_3], data] <= Heap[Heap[Heap[this, head_3], next], data];
      
      // -- Free assumptions (inhale module)
        if (Heap[Heap[this, head_3], next] != null) {
          Heap := Heap[null, lseg#sm(Heap[Heap[this, head_3], next], null):=Heap[null, lseg#sm(Heap[Heap[this, head_3], next], null)][Heap[Heap[this, head_3], next], data:=true]];
          Heap := Heap[null, lseg#sm(Heap[Heap[this, head_3], next], null):=Heap[null, lseg#sm(Heap[Heap[this, head_3], next], null)][Heap[Heap[this, head_3], next], next:=true]];
          havoc newPMask;
          assume (forall <A, B> o_101: Ref, f_112: (Field A B) ::
            { newPMask[o_101, f_112] }
            Heap[null, lseg#sm(Heap[Heap[this, head_3], next], null)][o_101, f_112] || Heap[null, lseg#sm(Heap[Heap[Heap[this, head_3], next], next], null)][o_101, f_112] ==> newPMask[o_101, f_112]
          );
          Heap := Heap[null, lseg#sm(Heap[Heap[this, head_3], next], null):=newPMask];
        }
        assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: res := this.head.data -- linked-list-predicates.vpr@177.3--177.24
    
    // -- Check definedness of this.head.data
      assert {:msg "  Assignment might fail. There might be insufficient permission to access this.head (linked-list-predicates.vpr@177.3--177.24) [112237]"}
        HasDirectPerm(Mask, this, head_3);
      assert {:msg "  Assignment might fail. There might be insufficient permission to access this.head.data (linked-list-predicates.vpr@177.3--177.24) [112238]"}
        HasDirectPerm(Mask, Heap[this, head_3], data);
    res := Heap[Heap[this, head_3], data];
    assume state(Heap, Mask);
  
  // -- Translating statement: this.head := this.head.next -- linked-list-predicates.vpr@178.3--178.30
    
    // -- Check definedness of this.head.next
      assert {:msg "  Assignment might fail. There might be insufficient permission to access this.head (linked-list-predicates.vpr@178.3--178.30) [112239]"}
        HasDirectPerm(Mask, this, head_3);
      assert {:msg "  Assignment might fail. There might be insufficient permission to access this.head.next (linked-list-predicates.vpr@178.3--178.30) [112240]"}
        HasDirectPerm(Mask, Heap[this, head_3], next);
    assert {:msg "  Assignment might fail. There might be insufficient permission to access this.head (linked-list-predicates.vpr@178.3--178.30) [112241]"}
      FullPerm == Mask[this, head_3];
    Heap := Heap[this, head_3:=Heap[Heap[this, head_3], next]];
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(List(this), write) -- linked-list-predicates.vpr@179.3--179.23
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding List(this) might fail. There might be insufficient permission to access this.head (linked-list-predicates.vpr@179.3--179.23) [112244]"}
        perm <= Mask[this, head_3];
    }
    Mask := Mask[this, head_3:=Mask[this, head_3] - perm];
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding List(this) might fail. There might be insufficient permission to access lseg(this.head, null) (linked-list-predicates.vpr@179.3--179.23) [112246]"}
        perm <= Mask[null, lseg(Heap[this, head_3], null)];
    }
    Mask := Mask[null, lseg(Heap[this, head_3], null):=Mask[null, lseg(Heap[this, head_3], null)] - perm];
    
    // -- Record predicate instance information
      assume InsidePredicate(List(this), Heap[null, List(this)], lseg(Heap[this, head_3], null), Heap[null, lseg(Heap[this, head_3], null)]);
    perm := FullPerm;
    Mask := Mask[null, List(this):=Mask[null, List(this)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume List#trigger(Heap, List(this));
    assume Heap[null, List(this)] == CombineFrames(FrameFragment(Heap[this, head_3]), Heap[null, lseg(Heap[this, head_3], null)]);
    if (!HasDirectPerm(Mask, null, List(this))) {
      Heap := Heap[null, List#sm(this):=ZeroPMask];
      havoc freshVersion;
      Heap := Heap[null, List(this):=freshVersion];
    }
    Heap := Heap[null, List#sm(this):=Heap[null, List#sm(this)][this, head_3:=true]];
    havoc newPMask;
    assume (forall <A, B> o_103: Ref, f_114: (Field A B) ::
      { newPMask[o_103, f_114] }
      Heap[null, List#sm(this)][o_103, f_114] || Heap[null, lseg#sm(Heap[this, head_3], null)][o_103, f_114] ==> newPMask[o_103, f_114]
    );
    Heap := Heap[null, List#sm(this):=newPMask];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of dequeue might not hold. There might be insufficient permission to access List(this) (linked-list-predicates.vpr@171.11--171.26) [112248]"}
        perm <= Mask[null, List(this)];
    }
    Mask := Mask[null, List(this):=Mask[null, List(this)] - perm];
    assert {:msg "  Postcondition of dequeue might not hold. Assertion res == old(content(this)[0]) might not hold. (linked-list-predicates.vpr@172.11--172.39) [112249]"}
      res == Seq#Index(content(oldHeap, this), 0);
    assert {:msg "  Postcondition of dequeue might not hold. Assertion content(this) == old(content(this)[1..]) might not hold. (linked-list-predicates.vpr@173.11--173.51) [112250]"}
      Seq#Equal(content(Heap, this), Seq#Drop(content(oldHeap, this), 1));
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method test
// ==================================================

procedure test_1(lock: Ref) returns ()
  modifies Heap, Mask;
{
  var acq_lblGuard: bool;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var r_54: Ref;
  var perm: Perm;
  var LabelacqHeap: HeapType;
  var LabelacqMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleHeap: HeapType;
  var PreCallHeap: HeapType;
  var PreCallMask: MaskType;
  var r1: int;
  var ExhaleWellDef1Heap: HeapType;
  var ExhaleWellDef1Mask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
    acq_lblGuard := false;
  
  // -- Assumptions about method arguments
    assume Heap[lock, $allocated];
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  if (*) {
    havoc PostHeap;
    PostMask := ZeroMask;
    assume state(PostHeap, PostMask);
    // Checked inhaling of postcondition to check definedness
    
    // -- Do welldefinedness check of the inhale part.
      if (*) {
        assume state(PostHeap, PostMask);
        assume false;
      }
    
    // -- Normally inhale the exhale part.
      
      // -- Check definedness of (forperm r: Ref [r.held] :: false)
        if (*) {
          if (HasDirectPerm(PostMask, r_54, held)) {
            assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access r.held (linked-list-predicates.vpr@197.11--197.51) [112251]"}
              HasDirectPerm(PostMask, r_54, held);
          }
          assume false;
        }
      assume (forall r_1_1: Ref ::
        { PostMask[r_1_1, held] } { PostHeap[r_1_1, held] }
        HasDirectPerm(PostMask, r_1_1, held) ==> false
      );
      assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: inhale acc(List(lock), write) &&
  //   (acc(lock.held, write) && acc(lock.changed, write)) -- linked-list-predicates.vpr@200.3--200.64
    perm := FullPerm;
    Mask := Mask[null, List(lock):=Mask[null, List(lock)] + perm];
    assume state(Heap, Mask);
    perm := FullPerm;
    assume lock != null;
    Mask := Mask[lock, held:=Mask[lock, held] + perm];
    assume state(Heap, Mask);
    perm := FullPerm;
    assume lock != null;
    Mask := Mask[lock, changed:=Mask[lock, changed] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: label acq -- linked-list-predicates.vpr@201.1--201.10
    acq_1:
    LabelacqHeap := Heap;
    LabelacqMask := Mask;
    acq_lblGuard := true;
    assume state(Heap, Mask);
  
  // -- Translating statement: if (2 <= length(lock)) -- linked-list-predicates.vpr@203.3--210.4
    
    // -- Check definedness of 2 <= length(lock)
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        perm := FullPerm;
        assert {:msg "  Precondition of function length might not hold. There might be insufficient permission to access List(lock) (linked-list-predicates.vpr@203.11--203.23) [112255]"}
          NoPerm < perm ==> NoPerm < Mask[null, List(lock)];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    if (2 <= length_1(Heap, lock)) {
      
      // -- Translating statement: r1 := dequeue(lock) -- linked-list-predicates.vpr@205.5--205.24
        PreCallHeap := Heap;
        PreCallMask := Mask;
        
        // -- Exhaling precondition
          ExhaleWellDef0Heap := Heap;
          ExhaleWellDef0Mask := Mask;
          perm := FullPerm;
          if (perm != NoPerm) {
            assert {:msg "  The precondition of method dequeue might not hold. There might be insufficient permission to access List(lock) (linked-list-predicates.vpr@205.5--205.24) [112256]"}
              perm <= Mask[null, List(lock)];
          }
          Mask := Mask[null, List(lock):=Mask[null, List(lock)] - perm];
          assert {:msg "  The precondition of method dequeue might not hold. Assertion 0 < length(lock) might not hold. (linked-list-predicates.vpr@205.5--205.24) [112257]"}
            0 < length_1(Heap, lock);
          // Finish exhale
          havoc ExhaleHeap;
          assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
          Heap := ExhaleHeap;
        
        // -- Havocing target variables
          havoc r1;
        
        // -- Inhaling postcondition
          perm := FullPerm;
          Mask := Mask[null, List(lock):=Mask[null, List(lock)] + perm];
          assume state(Heap, Mask);
          assume state(Heap, Mask);
          assume r1 == Seq#Index(content(PreCallHeap, lock), 0);
          assume state(Heap, Mask);
          assume Seq#Equal(content(Heap, lock), Seq#Drop(content(PreCallHeap, lock), 1));
          assume state(Heap, Mask);
        assume state(Heap, Mask);
      
      // -- Translating statement: assert r1 <= peek(lock) -- linked-list-predicates.vpr@207.5--207.28
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        
        // -- Check definedness of r1 <= peek(lock)
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef1Heap := ExhaleWellDef0Heap;
            ExhaleWellDef1Mask := ExhaleWellDef0Mask;
            perm := FullPerm;
            assert {:msg "  Precondition of function peek might not hold. There might be insufficient permission to access List(lock) (linked-list-predicates.vpr@207.18--207.28) [112258]"}
              NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[null, List(lock)];
            assert {:msg "  Precondition of function peek might not hold. Assertion 0 < length(lock) might not hold. (linked-list-predicates.vpr@207.18--207.28) [112259]"}
              0 < length_1(ExhaleWellDef0Heap, lock);
            // Finish exhale
            havoc ExhaleHeap;
            assume IdenticalOnKnownLocations(ExhaleWellDef0Heap, ExhaleHeap, ExhaleWellDef0Mask);
            ExhaleWellDef0Heap := ExhaleHeap;
            // Stop execution
            assume false;
          }
        assert {:msg "  Assert might fail. Assertion r1 <= peek(lock) might not hold. (linked-list-predicates.vpr@207.12--207.28) [112260]"}
          r1 <= peek(Heap, lock);
        assume state(Heap, Mask);
      
      // -- Translating statement: lock.changed := true -- linked-list-predicates.vpr@209.5--209.25
        assert {:msg "  Assignment might fail. There might be insufficient permission to access lock.changed (linked-list-predicates.vpr@209.5--209.25) [112261]"}
          FullPerm == Mask[lock, changed];
        Heap := Heap[lock, changed:=true];
        assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
  
  // -- Translating statement: exhale acc(List(lock), write) &&
  //   (acc(lock.held, write) &&
  //   (acc(lock.changed, write) &&
  //   (old[acq](content(lock)) == content(lock) || lock.changed))) -- linked-list-predicates.vpr@213.3--214.71
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Exhale might fail. There might be insufficient permission to access List(lock) (linked-list-predicates.vpr@213.13--214.71) [112263]"}
        perm <= Mask[null, List(lock)];
    }
    Mask := Mask[null, List(lock):=Mask[null, List(lock)] - perm];
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Exhale might fail. There might be insufficient permission to access lock.held (linked-list-predicates.vpr@213.13--214.71) [112265]"}
        perm <= Mask[lock, held];
    }
    Mask := Mask[lock, held:=Mask[lock, held] - perm];
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Exhale might fail. There might be insufficient permission to access lock.changed (linked-list-predicates.vpr@213.13--214.71) [112267]"}
        perm <= Mask[lock, changed];
    }
    Mask := Mask[lock, changed:=Mask[lock, changed] - perm];
    
    // -- Check definedness of old[acq](content(lock)) == content(lock) || lock.changed
      assert {:msg "  Exhale might fail. Did not reach labelled state acq required to evaluate old[acq](content(lock)). (linked-list-predicates.vpr@213.13--214.71) [112268]"}
        acq_lblGuard;
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef1Heap := LabelacqHeap;
        ExhaleWellDef1Mask := LabelacqMask;
        perm := FullPerm;
        assert {:msg "  Precondition of function content might not hold. There might be insufficient permission to access List(lock) (linked-list-predicates.vpr@214.23--214.36) [112269]"}
          NoPerm < perm ==> NoPerm < LabelacqMask[null, List(lock)];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(LabelacqHeap, ExhaleHeap, LabelacqMask);
        LabelacqHeap := ExhaleHeap;
        // Stop execution
        assume false;
      }
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef1Heap := ExhaleWellDef0Heap;
        ExhaleWellDef1Mask := ExhaleWellDef0Mask;
        perm := FullPerm;
        assert {:msg "  Precondition of function content might not hold. There might be insufficient permission to access List(lock) (linked-list-predicates.vpr@214.41--214.54) [112270]"}
          NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[null, List(lock)];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(ExhaleWellDef0Heap, ExhaleHeap, ExhaleWellDef0Mask);
        ExhaleWellDef0Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
      if (!Seq#Equal(content(LabelacqHeap, lock), content(Heap, lock))) {
        assert {:msg "  Exhale might fail. There might be insufficient permission to access lock.changed (linked-list-predicates.vpr@213.13--214.71) [112271]"}
          HasDirectPerm(ExhaleWellDef0Mask, lock, changed);
      }
    assert {:msg "  Exhale might fail. Assertion old[acq](content(lock)) == content(lock) || lock.changed might not hold. (linked-list-predicates.vpr@213.13--214.71) [112272]"}
      Seq#Equal(content(LabelacqHeap, lock), content(Heap, lock)) || Heap[lock, changed];
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Postcondition of test might not hold. Assertion (forperm r: Ref [r.held] :: false) might not hold. (linked-list-predicates.vpr@197.11--197.51) [112273]"}
      (forall r_2: Ref ::
      { Mask[r_2, held] } { Heap[r_2, held] }
      HasDirectPerm(Mask, r_2, held) ==> false
    );
}