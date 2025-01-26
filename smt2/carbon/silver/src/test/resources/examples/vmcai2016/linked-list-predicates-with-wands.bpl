// 
// Translation of Viper program.
// 
// Date:         2025-01-26 21:43:54
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/examples/vmcai2016/linked-list-predicates-with-wands.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/examples/vmcai2016/linked-list-predicates-with-wands-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
axiom (forall o_139: Ref, f_149: (Field NormalField Ref), Heap: HeapType ::
  { Heap[o_139, f_149] }
  Heap[o_139, $allocated] ==> Heap[Heap[o_139, f_149], $allocated]
);
function  succHeap(Heap0: HeapType, Heap1: HeapType): bool;
function  succHeapTrans(Heap0: HeapType, Heap1: HeapType): bool;
function  IdenticalOnKnownLocations(Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType): bool;
function  IsPredicateField<A, B>(f_1: (Field A B)): bool;
function  IsWandField<A, B>(f_1: (Field A B)): bool;
function  getPredWandId<A, B>(f_1: (Field A B)): int;
// Frame all locations with direct permissions
axiom (forall <A, B> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_140: Ref, f_152: (Field A B) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_140, f_152] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, o_140, f_152) ==> Heap[o_140, f_152] == ExhaleHeap[o_140, f_152]
);
// Frame all predicate mask locations of predicates with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_49: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_49), ExhaleHeap[null, PredicateMaskField(pm_f_49)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_49) && IsPredicateField(pm_f_49) ==> Heap[null, PredicateMaskField(pm_f_49)] == ExhaleHeap[null, PredicateMaskField(pm_f_49)]
);
// Frame all locations with known folded permissions
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_49: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_49) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_49) && IsPredicateField(pm_f_49) ==> (forall <A, B> o2_50: Ref, f_152: (Field A B) ::
    { ExhaleHeap[o2_50, f_152] }
    Heap[null, PredicateMaskField(pm_f_49)][o2_50, f_152] ==> Heap[o2_50, f_152] == ExhaleHeap[o2_50, f_152]
  )
);
// Frame all wand mask locations of wands with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_49: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_49), ExhaleHeap[null, WandMaskField(pm_f_49)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_49) && IsWandField(pm_f_49) ==> Heap[null, WandMaskField(pm_f_49)] == ExhaleHeap[null, WandMaskField(pm_f_49)]
);
// Frame all locations in the footprint of magic wands
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_49: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_49) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_49) && IsWandField(pm_f_49) ==> (forall <A, B> o2_50: Ref, f_152: (Field A B) ::
    { ExhaleHeap[o2_50, f_152] }
    Heap[null, WandMaskField(pm_f_49)][o2_50, f_152] ==> Heap[o2_50, f_152] == ExhaleHeap[o2_50, f_152]
  )
);
// All previously-allocated references are still allocated
axiom (forall Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_140: Ref ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_140, $allocated] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> Heap[o_140, $allocated] ==> ExhaleHeap[o_140, $allocated]
);
// Updated Heaps are Successor Heaps
axiom (forall <A, B> Heap: HeapType, o_139: Ref, f_157: (Field A B), v: B ::
  { Heap[o_139, f_157:=v] }
  succHeap(Heap, Heap[o_139, f_157:=v])
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
// Preamble of Wand Module.
// ==================================================

type WandType_wand;
function  wand(arg1: Ref, arg2: Ref, arg3: Ref, arg4: Ref, arg5: int, arg6: int, arg7: Ref, arg8: Ref, arg9: Ref, arg10: Ref, arg11: (Seq int), arg12: Ref, arg13: Ref): Field WandType_wand int;
function  wand#sm(arg1: Ref, arg2: Ref, arg3: Ref, arg4: Ref, arg5: int, arg6: int, arg7: Ref, arg8: Ref, arg9: Ref, arg10: Ref, arg11: (Seq int), arg12: Ref, arg13: Ref): Field WandType_wand PMaskType;
function  wand#ft(arg1: Ref, arg2: Ref, arg3: Ref, arg4: Ref, arg5: int, arg6: int, arg7: Ref, arg8: Ref, arg9: Ref, arg10: Ref, arg11: (Seq int), arg12: Ref, arg13: Ref): Field WandType_wand FrameType;
axiom (forall arg1: Ref, arg2: Ref, arg3: Ref, arg4: Ref, arg5: int, arg6: int, arg7: Ref, arg8: Ref, arg9: Ref, arg10: Ref, arg11: (Seq int), arg12: Ref, arg13: Ref ::
  { wand(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, arg13) }
  IsWandField(wand(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, arg13))
);
axiom (forall arg1: Ref, arg2: Ref, arg3: Ref, arg4: Ref, arg5: int, arg6: int, arg7: Ref, arg8: Ref, arg9: Ref, arg10: Ref, arg11: (Seq int), arg12: Ref, arg13: Ref ::
  { wand#ft(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, arg13) }
  IsWandField(wand#ft(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, arg13))
);
axiom (forall arg1: Ref, arg2: Ref, arg3: Ref, arg4: Ref, arg5: int, arg6: int, arg7: Ref, arg8: Ref, arg9: Ref, arg10: Ref, arg11: (Seq int), arg12: Ref, arg13: Ref ::
  { wand(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, arg13) }
  !IsPredicateField(wand(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, arg13))
);
axiom (forall arg1: Ref, arg2: Ref, arg3: Ref, arg4: Ref, arg5: int, arg6: int, arg7: Ref, arg8: Ref, arg9: Ref, arg10: Ref, arg11: (Seq int), arg12: Ref, arg13: Ref ::
  { wand#ft(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, arg13) }
  !IsPredicateField(wand#ft(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, arg13))
);
axiom (forall arg1: Ref, arg2: Ref, arg3: Ref, arg4: Ref, arg5: int, arg6: int, arg7: Ref, arg8: Ref, arg9: Ref, arg10: Ref, arg11: (Seq int), arg12: Ref, arg13: Ref ::
  { WandMaskField(wand#ft(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, arg13)) }
  wand#sm(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, arg13) == WandMaskField(wand#ft(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, arg13))
);
axiom (forall arg1: Ref, arg2: Ref, arg3: Ref, arg4: Ref, arg5: int, arg6: int, arg7: Ref, arg8: Ref, arg9: Ref, arg10: Ref, arg11: (Seq int), arg12: Ref, arg13: Ref ::
  { wand(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, arg13) }
  getPredWandId(wand(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, arg13)) == 2
);
axiom (forall arg1: Ref, arg2: Ref, arg3: Ref, arg4: Ref, arg5: int, arg6: int, arg7: Ref, arg8: Ref, arg9: Ref, arg10: Ref, arg11: (Seq int), arg12: Ref, arg13: Ref, arg1_2: Ref, arg2_2: Ref, arg3_2: Ref, arg4_2: Ref, arg5_2: int, arg6_2: int, arg7_2: Ref, arg8_2: Ref, arg9_2: Ref, arg10_2: Ref, arg11_2: (Seq int), arg12_2: Ref, arg13_2: Ref ::
  { wand(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, arg13), wand(arg1_2, arg2_2, arg3_2, arg4_2, arg5_2, arg6_2, arg7_2, arg8_2, arg9_2, arg10_2, arg11_2, arg12_2, arg13_2) }
  wand(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, arg13) == wand(arg1_2, arg2_2, arg3_2, arg4_2, arg5_2, arg6_2, arg7_2, arg8_2, arg9_2, arg10_2, arg11_2, arg12_2, arg13_2) ==> arg1 == arg1_2 && (arg2 == arg2_2 && (arg3 == arg3_2 && (arg4 == arg4_2 && (arg5 == arg5_2 && (arg6 == arg6_2 && (arg7 == arg7_2 && (arg8 == arg8_2 && (arg9 == arg9_2 && (arg10 == arg10_2 && (arg11 == arg11_2 && (arg12 == arg12_2 && arg13 == arg13_2)))))))))))
);

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
  state(Heap, Mask) && (AssumeFunctionsAbove < 4 || contentNodes#trigger(Heap[null, lseg(this, end_1)], this, end_1)) ==> this != end_1 ==> Seq#Length(contentNodes'(Heap, this, end_1)) > 0 && Seq#Index(contentNodes'(Heap, this, end_1), 0) == Heap[this, data]
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
        assert {:msg "  Function might not be well-formed. There might be insufficient permission to access lseg(this, end) (linked-list-predicates-with-wands.vpr@21.1--31.2) [110421]"}
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
        assert {:msg "  Function might not be well-formed. There might be insufficient permission to access this.data (linked-list-predicates-with-wands.vpr@21.1--31.2) [110422]"}
          HasDirectPerm(UnfoldingMask, this, data);
        assert {:msg "  Function might not be well-formed. There might be insufficient permission to access this.next (linked-list-predicates-with-wands.vpr@21.1--31.2) [110423]"}
          HasDirectPerm(UnfoldingMask, this, next);
        if (*) {
          // Exhale precondition of function application
          ExhaleWellDef0Heap := UnfoldingHeap;
          ExhaleWellDef0Mask := UnfoldingMask;
          perm := FullPerm;
          assert {:msg "  Precondition of function contentNodes might not hold. There might be insufficient permission to access lseg(this.next, end) (linked-list-predicates-with-wands.vpr@29.39--29.67) [110424]"}
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
      assert {:msg "  Postcondition of contentNodes might not hold. Assertion result == Seq[Int]() might not hold. (linked-list-predicates-with-wands.vpr@23.12--23.48) [110425]"}
        Seq#Equal(Result, (Seq#Empty(): Seq int));
    }
    if (this != end_1) {
      assert {:msg "  Postcondition of contentNodes might not hold. Assertion |result| > 0 might not hold. (linked-list-predicates-with-wands.vpr@24.12--24.100) [110426]"}
        Seq#Length(Result) > 0;
      
      // -- Check definedness of result[0] == (unfolding acc(lseg(this, end), write) in this.data)
        assert {:msg "  Contract might not be well-formed. Index result[0] into result might exceed sequence length. (linked-list-predicates-with-wands.vpr@24.12--24.100) [110427]"}
          0 < Seq#Length(Result);
        UnfoldingHeap := ExhaleWellDef0Heap;
        UnfoldingMask := ExhaleWellDef0Mask;
        assume lseg#trigger(UnfoldingHeap, lseg(this, end_1));
        assume UnfoldingHeap[null, lseg(this, end_1)] == FrameFragment((if this != end_1 then CombineFrames(FrameFragment(UnfoldingHeap[this, data]), CombineFrames(FrameFragment(UnfoldingHeap[this, next]), UnfoldingHeap[null, lseg(UnfoldingHeap[this, next], end_1)])) else EmptyFrame));
        ExhaleWellDef1Heap := UnfoldingHeap;
        ExhaleWellDef1Mask := UnfoldingMask;
        perm := FullPerm;
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access lseg(this, end) (linked-list-predicates-with-wands.vpr@24.12--24.100) [110428]"}
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
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.data (linked-list-predicates-with-wands.vpr@24.12--24.100) [110429]"}
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
      assert {:msg "  Postcondition of contentNodes might not hold. Assertion result[0] == (unfolding acc(lseg(this, end), write) in this.data) might not hold. (linked-list-predicates-with-wands.vpr@24.12--24.100) [110430]"}
        Seq#Index(Result, 0) == Heap[this, data];
    }
    
    // -- Check definedness of (forall i: Int, j: Int :: { result[i], result[j] } 0 <= i && (i < j && j < |result|) ==> result[i] <= result[j])
      if (*) {
        if (0 <= i_12 && (i_12 < j_23 && j_23 < Seq#Length(Result))) {
          assert {:msg "  Contract might not be well-formed. Index result[i] into result might be negative. (linked-list-predicates-with-wands.vpr@25.12--25.95) [110431]"}
            i_12 >= 0;
          assert {:msg "  Contract might not be well-formed. Index result[i] into result might exceed sequence length. (linked-list-predicates-with-wands.vpr@25.12--25.95) [110432]"}
            i_12 < Seq#Length(Result);
          assert {:msg "  Contract might not be well-formed. Index result[j] into result might be negative. (linked-list-predicates-with-wands.vpr@25.12--25.95) [110433]"}
            j_23 >= 0;
          assert {:msg "  Contract might not be well-formed. Index result[j] into result might exceed sequence length. (linked-list-predicates-with-wands.vpr@25.12--25.95) [110434]"}
            j_23 < Seq#Length(Result);
        }
        assume false;
      }
    if (*) {
      if (0 <= i_2 && (i_2 < j_2_2 && j_2_2 < Seq#Length(Result))) {
        assert {:msg "  Postcondition of contentNodes might not hold. Assertion result[i] <= result[j] might not hold. (linked-list-predicates-with-wands.vpr@25.12--25.95) [110435]"}
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
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access lseg(this, end) (linked-list-predicates-with-wands.vpr@33.1--40.2) [110436]"}
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
        assert {:msg "  Function might not be well-formed. There might be insufficient permission to access this.next (linked-list-predicates-with-wands.vpr@33.1--40.2) [110437]"}
          HasDirectPerm(UnfoldingMask, this, next);
        if (*) {
          // Exhale precondition of function application
          ExhaleWellDef0Heap := UnfoldingHeap;
          ExhaleWellDef0Mask := UnfoldingMask;
          perm := FullPerm;
          assert {:msg "  Precondition of function lengthNodes might not hold. There might be insufficient permission to access lseg(this.next, end) (linked-list-predicates-with-wands.vpr@39.21--39.48) [110438]"}
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
        assert {:msg "  Precondition of function contentNodes might not hold. There might be insufficient permission to access lseg(this, end) (linked-list-predicates-with-wands.vpr@35.23--35.46) [110439]"}
          NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[null, lseg(this, end_1)];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(ExhaleWellDef0Heap, ExhaleHeap, ExhaleWellDef0Mask);
        ExhaleWellDef0Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assert {:msg "  Postcondition of lengthNodes might not hold. Assertion result == |contentNodes(this, end)| might not hold. (linked-list-predicates-with-wands.vpr@35.12--35.47) [110440]"}
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
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access List(this) (linked-list-predicates-with-wands.vpr@54.1--59.2) [110441]"}
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
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access this.head (linked-list-predicates-with-wands.vpr@54.1--59.2) [110442]"}
        HasDirectPerm(UnfoldingMask, this, head_3);
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Heap := UnfoldingHeap;
        ExhaleWellDef0Mask := UnfoldingMask;
        perm := FullPerm;
        assert {:msg "  Precondition of function contentNodes might not hold. There might be insufficient permission to access lseg(this.head, null) (linked-list-predicates-with-wands.vpr@58.32--58.61) [110443]"}
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
          assert {:msg "  Contract might not be well-formed. Index result[i] into result might be negative. (linked-list-predicates-with-wands.vpr@56.12--56.95) [110444]"}
            i_55 >= 0;
          assert {:msg "  Contract might not be well-formed. Index result[i] into result might exceed sequence length. (linked-list-predicates-with-wands.vpr@56.12--56.95) [110445]"}
            i_55 < Seq#Length(Result);
          assert {:msg "  Contract might not be well-formed. Index result[j] into result might be negative. (linked-list-predicates-with-wands.vpr@56.12--56.95) [110446]"}
            j_34 >= 0;
          assert {:msg "  Contract might not be well-formed. Index result[j] into result might exceed sequence length. (linked-list-predicates-with-wands.vpr@56.12--56.95) [110447]"}
            j_34 < Seq#Length(Result);
        }
        assume false;
      }
    if (*) {
      if (0 <= i_2 && (i_2 < j_2_2 && j_2_2 < Seq#Length(Result))) {
        assert {:msg "  Postcondition of content might not hold. Assertion result[i] <= result[j] might not hold. (linked-list-predicates-with-wands.vpr@56.12--56.95) [110448]"}
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
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access List(this) (linked-list-predicates-with-wands.vpr@61.1--66.2) [110449]"}
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
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access this.head (linked-list-predicates-with-wands.vpr@61.1--66.2) [110450]"}
        HasDirectPerm(UnfoldingMask, this, head_3);
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Heap := UnfoldingHeap;
        ExhaleWellDef0Mask := UnfoldingMask;
        perm := FullPerm;
        assert {:msg "  Precondition of function lengthNodes might not hold. There might be insufficient permission to access lseg(this.head, null) (linked-list-predicates-with-wands.vpr@65.32--65.60) [110451]"}
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
        assert {:msg "  Precondition of function content might not hold. There might be insufficient permission to access List(this) (linked-list-predicates-with-wands.vpr@63.22--63.35) [110452]"}
          NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[null, List(this)];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(ExhaleWellDef0Heap, ExhaleHeap, ExhaleWellDef0Mask);
        ExhaleWellDef0Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assert {:msg "  Postcondition of length might not hold. Assertion result == |content(this)| might not hold. (linked-list-predicates-with-wands.vpr@63.11--63.36) [110453]"}
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
        assert {:msg "  Precondition of function length might not hold. There might be insufficient permission to access List(this) (linked-list-predicates-with-wands.vpr@70.16--70.28) [110454]"}
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
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access List(this) (linked-list-predicates-with-wands.vpr@68.1--74.2) [110455]"}
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
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access lseg(this.head, null) (linked-list-predicates-with-wands.vpr@68.1--74.2) [110456]"}
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
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access this.head (linked-list-predicates-with-wands.vpr@68.1--74.2) [110457]"}
        HasDirectPerm(Unfolding1Mask, this, head_3);
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access this.head (linked-list-predicates-with-wands.vpr@68.1--74.2) [110458]"}
        HasDirectPerm(Unfolding1Mask, this, head_3);
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access this.head.data (linked-list-predicates-with-wands.vpr@68.1--74.2) [110459]"}
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
        assert {:msg "  Precondition of function content might not hold. There might be insufficient permission to access List(this) (linked-list-predicates-with-wands.vpr@71.21--71.34) [110460]"}
          NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[null, List(this)];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(ExhaleWellDef0Heap, ExhaleHeap, ExhaleWellDef0Mask);
        ExhaleWellDef0Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
      assert {:msg "  Contract might not be well-formed. Index content(this)[0] into content(this) might exceed sequence length. (linked-list-predicates-with-wands.vpr@71.11--71.37) [110461]"}
        0 < Seq#Length(content(Heap, this));
    assert {:msg "  Postcondition of peek might not hold. Assertion result == content(this)[0] might not hold. (linked-list-predicates-with-wands.vpr@71.11--71.37) [110462]"}
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
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.next (linked-list-predicates-with-wands.vpr@14.1--19.2) [110463]"}
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
          assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access lseg(this.next, end) (linked-list-predicates-with-wands.vpr@14.1--19.2) [110464]"}
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
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.next (linked-list-predicates-with-wands.vpr@14.1--19.2) [110465]"}
          HasDirectPerm(UnfoldingMask, this, next);
        assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.next (linked-list-predicates-with-wands.vpr@14.1--19.2) [110466]"}
          HasDirectPerm(UnfoldingMask, this, next);
        if (UnfoldingHeap[this, next] != end_1) {
          assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.data (linked-list-predicates-with-wands.vpr@14.1--19.2) [110467]"}
            HasDirectPerm(UnfoldingMask, this, data);
          assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.next (linked-list-predicates-with-wands.vpr@14.1--19.2) [110468]"}
            HasDirectPerm(UnfoldingMask, this, next);
          assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.next.data (linked-list-predicates-with-wands.vpr@14.1--19.2) [110469]"}
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
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access this.head (linked-list-predicates-with-wands.vpr@49.1--52.2) [110470]"}
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
        assert {:msg "  Precondition of function content might not hold. There might be insufficient permission to access List(this) (linked-list-predicates-with-wands.vpr@78.11--78.24) [110471]"}
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
  
  // -- Translating statement: this := new(data, next, head, held, changed) -- linked-list-predicates-with-wands.vpr@80.3--80.17
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
  
  // -- Translating statement: this.head := null -- linked-list-predicates-with-wands.vpr@81.3--81.20
    assert {:msg "  Assignment might fail. There might be insufficient permission to access this.head (linked-list-predicates-with-wands.vpr@81.3--81.20) [110472]"}
      FullPerm == Mask[this, head_3];
    Heap := Heap[this, head_3:=null];
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(lseg(this.head, null), write) -- linked-list-predicates-with-wands.vpr@82.3--82.34
    
    // -- Check definedness of acc(lseg(this.head, null), write)
      assert {:msg "  Folding lseg(this.head, null) might fail. There might be insufficient permission to access this.head (linked-list-predicates-with-wands.vpr@82.3--82.34) [110473]"}
        HasDirectPerm(Mask, this, head_3);
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    if (Heap[this, head_3] != null) {
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Folding lseg(this.head, null) might fail. There might be insufficient permission to access this.head.data (linked-list-predicates-with-wands.vpr@82.3--82.34) [110476]"}
          perm <= Mask[Heap[this, head_3], data];
      }
      Mask := Mask[Heap[this, head_3], data:=Mask[Heap[this, head_3], data] - perm];
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Folding lseg(this.head, null) might fail. There might be insufficient permission to access this.head.next (linked-list-predicates-with-wands.vpr@82.3--82.34) [110478]"}
          perm <= Mask[Heap[this, head_3], next];
      }
      Mask := Mask[Heap[this, head_3], next:=Mask[Heap[this, head_3], next] - perm];
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Folding lseg(this.head, null) might fail. There might be insufficient permission to access lseg(this.head.next, null) (linked-list-predicates-with-wands.vpr@82.3--82.34) [110480]"}
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
          assert {:msg "  Folding lseg(this.head, null) might fail. There might be insufficient permission to access lseg(this.head.next, null) (linked-list-predicates-with-wands.vpr@82.3--82.34) [110483]"}
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
        assert {:msg "  Folding lseg(this.head, null) might fail. Assertion this.head.data <= this.head.next.data might not hold. (linked-list-predicates-with-wands.vpr@82.3--82.34) [110487]"}
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
  
  // -- Translating statement: fold acc(List(this), write) -- linked-list-predicates-with-wands.vpr@83.3--83.23
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding List(this) might fail. There might be insufficient permission to access this.head (linked-list-predicates-with-wands.vpr@83.3--83.23) [110491]"}
        perm <= Mask[this, head_3];
    }
    Mask := Mask[this, head_3:=Mask[this, head_3] - perm];
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding List(this) might fail. There might be insufficient permission to access lseg(this.head, null) (linked-list-predicates-with-wands.vpr@83.3--83.23) [110493]"}
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
      assert {:msg "  Postcondition of create might not hold. There might be insufficient permission to access List(this) (linked-list-predicates-with-wands.vpr@77.11--77.26) [110495]"}
        perm <= Mask[null, List(this)];
    }
    Mask := Mask[null, List(this):=Mask[null, List(this)] - perm];
    assert {:msg "  Postcondition of create might not hold. Assertion content(this) == Seq[Int]() might not hold. (linked-list-predicates-with-wands.vpr@78.11--78.38) [110496]"}
      Seq#Equal(content(Heap, this), (Seq#Empty(): Seq int));
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
  var hd: Ref;
  var ptr_2: Ref;
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
  var arg: Ref;
  var arg_1_13: Ref;
  var neededTransfer: Perm;
  var initNeededTransfer: Perm;
  var accVar2: bool;
  var maskTransfer: Perm;
  var takeTransfer: Perm;
  var TempMask: MaskType;
  var b_3: bool;
  var ResultHeap: HeapType;
  var ResultMask: MaskType;
  var Unfolding1Heap: HeapType;
  var Unfolding1Mask: MaskType;
  var WandDefLHSHeap: HeapType;
  var WandDefLHSMask: MaskType;
  var Labellhs3Heap: HeapType;
  var Labellhs3Mask: MaskType;
  var WandDefRHSHeap: HeapType;
  var WandDefRHSMask: MaskType;
  var loopHeap: HeapType;
  var loopMask: MaskType;
  var prev: Ref;
  var AssertHeap: HeapType;
  var AssertMask: MaskType;
  var Labellhs4Heap: HeapType;
  var Labellhs4Mask: MaskType;
  var Ops_3Heap: HeapType;
  var Ops_3Mask: MaskType;
  var b_5: bool;
  var Used_2Heap: HeapType;
  var Used_2Mask: MaskType;
  var b_4: bool;
  var Labellhs5Heap: HeapType;
  var Labellhs5Mask: MaskType;
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
  var arg_2_13: Ref;
  var arg_3_13: Ref;
  var b_9: bool;
  var Result_3Heap: HeapType;
  var Result_3Mask: MaskType;
  var b_10: bool;
  var Result_4Heap: HeapType;
  var Result_4Mask: MaskType;
  var Used_4Heap: HeapType;
  var Used_4Mask: MaskType;
  var b_11: bool;
  var Labellhs8Heap: HeapType;
  var Labellhs8Mask: MaskType;
  var b_12: bool;
  var Result_5Heap: HeapType;
  var Result_5Mask: MaskType;
  var Used_5Heap: HeapType;
  var Used_5Mask: MaskType;
  var b_13: bool;
  var arg_4_13: Ref;
  var arg_5_12: Ref;
  var b_14: bool;
  var Result_6Heap: HeapType;
  var Result_6Mask: MaskType;
  var Labellhs7Heap: HeapType;
  var Used_6Heap: HeapType;
  var Used_6Mask: MaskType;
  var b_15: bool;
  var arg_6_12: Ref;
  var arg_7_12: Ref;
  var b_16: bool;
  var Result_7Heap: HeapType;
  var Result_7Mask: MaskType;
  var Labellhs9Heap: HeapType;
  
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
        assert {:msg "  Precondition of function content might not hold. There might be insufficient permission to access List(this) (linked-list-predicates-with-wands.vpr@89.39--89.52) [110497]"}
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
        assert {:msg "  Precondition of function content might not hold. There might be insufficient permission to access List(this) (linked-list-predicates-with-wands.vpr@90.11--90.24) [110498]"}
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
        assert {:msg "  Precondition of function content might not hold. There might be insufficient permission to access List(this) (linked-list-predicates-with-wands.vpr@90.32--90.45) [110499]"}
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
        assert {:msg "  Precondition of function content might not hold. There might be insufficient permission to access List(this) (linked-list-predicates-with-wands.vpr@90.77--90.90) [110500]"}
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
  
  // -- Translating statement: index := 0 -- linked-list-predicates-with-wands.vpr@93.3--93.13
    index := 0;
    assume state(Heap, Mask);
  
  // -- Translating statement: unfold acc(List(this), write) -- linked-list-predicates-with-wands.vpr@95.3--95.25
    assume List#trigger(Heap, List(this));
    assume Heap[null, List(this)] == CombineFrames(FrameFragment(Heap[this, head_3]), Heap[null, lseg(Heap[this, head_3], null)]);
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Unfolding List(this) might fail. There might be insufficient permission to access List(this) (linked-list-predicates-with-wands.vpr@95.3--95.25) [110503]"}
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
  
  // -- Translating statement: if (this.head != null) -- linked-list-predicates-with-wands.vpr@97.3--99.4
    
    // -- Check definedness of this.head != null
      assert {:msg "  Conditional statement might fail. There might be insufficient permission to access this.head (linked-list-predicates-with-wands.vpr@97.6--97.23) [110506]"}
        HasDirectPerm(Mask, this, head_3);
    if (Heap[this, head_3] != null) {
      
      // -- Translating statement: unfold acc(lseg(this.head, null), write) -- linked-list-predicates-with-wands.vpr@98.5--98.38
        
        // -- Check definedness of acc(lseg(this.head, null), write)
          assert {:msg "  Unfolding lseg(this.head, null) might fail. There might be insufficient permission to access this.head (linked-list-predicates-with-wands.vpr@98.5--98.38) [110507]"}
            HasDirectPerm(Mask, this, head_3);
        assume lseg#trigger(Heap, lseg(Heap[this, head_3], null));
        assume Heap[null, lseg(Heap[this, head_3], null)] == FrameFragment((if Heap[this, head_3] != null then CombineFrames(FrameFragment(Heap[Heap[this, head_3], data]), CombineFrames(FrameFragment(Heap[Heap[this, head_3], next]), Heap[null, lseg(Heap[Heap[this, head_3], next], null)])) else EmptyFrame));
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        perm := FullPerm;
        if (perm != NoPerm) {
          assert {:msg "  Unfolding lseg(this.head, null) might fail. There might be insufficient permission to access lseg(this.head, null) (linked-list-predicates-with-wands.vpr@98.5--98.38) [110510]"}
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
                  assume (forall <A, B> o_67: Ref, f_69: (Field A B) ::
                    { newPMask[o_67, f_69] }
                    UnfoldingHeap[null, lseg#sm(UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[this, head_3], next], next], null)][o_67, f_69] || UnfoldingHeap[null, lseg#sm(UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[this, head_3], next], next], next], null)][o_67, f_69] ==> newPMask[o_67, f_69]
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
              assume (forall <A, B> o_22: Ref, f_59: (Field A B) ::
                { newPMask[o_22, f_59] }
                Heap[null, lseg#sm(Heap[Heap[this, head_3], next], null)][o_22, f_59] || Heap[null, lseg#sm(Heap[Heap[Heap[this, head_3], next], next], null)][o_22, f_59] ==> newPMask[o_22, f_59]
              );
              Heap := Heap[null, lseg#sm(Heap[Heap[this, head_3], next], null):=newPMask];
            }
            assume state(Heap, Mask);
        }
        assume state(Heap, Mask);
        assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
  
  // -- Translating statement: if (this.head == null || elem <= this.head.data) -- linked-list-predicates-with-wands.vpr@101.3--166.4
    
    // -- Check definedness of this.head == null || elem <= this.head.data
      assert {:msg "  Conditional statement might fail. There might be insufficient permission to access this.head (linked-list-predicates-with-wands.vpr@101.6--101.49) [110514]"}
        HasDirectPerm(Mask, this, head_3);
      if (!(Heap[this, head_3] == null)) {
        assert {:msg "  Conditional statement might fail. There might be insufficient permission to access this.head (linked-list-predicates-with-wands.vpr@101.6--101.49) [110515]"}
          HasDirectPerm(Mask, this, head_3);
        assert {:msg "  Conditional statement might fail. There might be insufficient permission to access this.head.data (linked-list-predicates-with-wands.vpr@101.6--101.49) [110516]"}
          HasDirectPerm(Mask, Heap[this, head_3], data);
      }
    if (Heap[this, head_3] == null || elem_1 <= Heap[Heap[this, head_3], data]) {
      
      // -- Translating statement: tmp := new(data, next, head, held, changed) -- linked-list-predicates-with-wands.vpr@102.5--102.18
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
      
      // -- Translating statement: tmp.data := elem -- linked-list-predicates-with-wands.vpr@103.5--103.21
        assert {:msg "  Assignment might fail. There might be insufficient permission to access tmp.data (linked-list-predicates-with-wands.vpr@103.5--103.21) [110517]"}
          FullPerm == Mask[tmp, data];
        Heap := Heap[tmp, data:=elem_1];
        assume state(Heap, Mask);
      
      // -- Translating statement: tmp.next := this.head -- linked-list-predicates-with-wands.vpr@104.5--104.26
        
        // -- Check definedness of this.head
          assert {:msg "  Assignment might fail. There might be insufficient permission to access this.head (linked-list-predicates-with-wands.vpr@104.5--104.26) [110518]"}
            HasDirectPerm(Mask, this, head_3);
        assert {:msg "  Assignment might fail. There might be insufficient permission to access tmp.next (linked-list-predicates-with-wands.vpr@104.5--104.26) [110519]"}
          FullPerm == Mask[tmp, next];
        Heap := Heap[tmp, next:=Heap[this, head_3]];
        assume state(Heap, Mask);
      
      // -- Translating statement: fold acc(lseg(this.head, null), write) -- linked-list-predicates-with-wands.vpr@105.5--105.36
        
        // -- Check definedness of acc(lseg(this.head, null), write)
          assert {:msg "  Folding lseg(this.head, null) might fail. There might be insufficient permission to access this.head (linked-list-predicates-with-wands.vpr@105.5--105.36) [110520]"}
            HasDirectPerm(Mask, this, head_3);
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        if (Heap[this, head_3] != null) {
          perm := FullPerm;
          if (perm != NoPerm) {
            assert {:msg "  Folding lseg(this.head, null) might fail. There might be insufficient permission to access this.head.data (linked-list-predicates-with-wands.vpr@105.5--105.36) [110523]"}
              perm <= Mask[Heap[this, head_3], data];
          }
          Mask := Mask[Heap[this, head_3], data:=Mask[Heap[this, head_3], data] - perm];
          perm := FullPerm;
          if (perm != NoPerm) {
            assert {:msg "  Folding lseg(this.head, null) might fail. There might be insufficient permission to access this.head.next (linked-list-predicates-with-wands.vpr@105.5--105.36) [110525]"}
              perm <= Mask[Heap[this, head_3], next];
          }
          Mask := Mask[Heap[this, head_3], next:=Mask[Heap[this, head_3], next] - perm];
          perm := FullPerm;
          if (perm != NoPerm) {
            assert {:msg "  Folding lseg(this.head, null) might fail. There might be insufficient permission to access lseg(this.head.next, null) (linked-list-predicates-with-wands.vpr@105.5--105.36) [110527]"}
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
              assert {:msg "  Folding lseg(this.head, null) might fail. There might be insufficient permission to access lseg(this.head.next, null) (linked-list-predicates-with-wands.vpr@105.5--105.36) [110530]"}
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
                  assume (forall <A, B> o_68: Ref, f_76: (Field A B) ::
                    { newPMask[o_68, f_76] }
                    UnfoldingHeap[null, lseg#sm(UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[this, head_3], next], next], null)][o_68, f_76] || UnfoldingHeap[null, lseg#sm(UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[this, head_3], next], next], next], null)][o_68, f_76] ==> newPMask[o_68, f_76]
                  );
                  UnfoldingHeap := UnfoldingHeap[null, lseg#sm(UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[this, head_3], next], next], null):=newPMask];
                }
                assume state(UnfoldingHeap, UnfoldingMask);
            }
            assume state(UnfoldingHeap, UnfoldingMask);
          if (Heap[Heap[this, head_3], next] != null) {
            assert {:msg "  Folding lseg(this.head, null) might fail. Assertion this.head.data <= this.head.next.data might not hold. (linked-list-predicates-with-wands.vpr@105.5--105.36) [110534]"}
              Heap[Heap[this, head_3], data] <= Heap[Heap[Heap[this, head_3], next], data];
          }
        }
        
        // -- Free assumptions (exhale module)
          if (Heap[Heap[this, head_3], next] != null) {
            Heap := Heap[null, lseg#sm(Heap[Heap[this, head_3], next], null):=Heap[null, lseg#sm(Heap[Heap[this, head_3], next], null)][Heap[Heap[this, head_3], next], data:=true]];
            Heap := Heap[null, lseg#sm(Heap[Heap[this, head_3], next], null):=Heap[null, lseg#sm(Heap[Heap[this, head_3], next], null)][Heap[Heap[this, head_3], next], next:=true]];
            havoc newPMask;
            assume (forall <A, B> o_69: Ref, f_77: (Field A B) ::
              { newPMask[o_69, f_77] }
              Heap[null, lseg#sm(Heap[Heap[this, head_3], next], null)][o_69, f_77] || Heap[null, lseg#sm(Heap[Heap[Heap[this, head_3], next], next], null)][o_69, f_77] ==> newPMask[o_69, f_77]
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
          assume (forall <A, B> o_70: Ref, f_78: (Field A B) ::
            { newPMask[o_70, f_78] }
            Heap[null, lseg#sm(Heap[this, head_3], null)][o_70, f_78] || Heap[null, lseg#sm(Heap[Heap[this, head_3], next], null)][o_70, f_78] ==> newPMask[o_70, f_78]
          );
          Heap := Heap[null, lseg#sm(Heap[this, head_3], null):=newPMask];
        }
        assume state(Heap, Mask);
        assume state(Heap, Mask);
      
      // -- Translating statement: fold acc(lseg(tmp, null), write) -- linked-list-predicates-with-wands.vpr@106.5--106.30
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        if (tmp != null) {
          perm := FullPerm;
          if (perm != NoPerm) {
            assert {:msg "  Folding lseg(tmp, null) might fail. There might be insufficient permission to access tmp.data (linked-list-predicates-with-wands.vpr@106.5--106.30) [110538]"}
              perm <= Mask[tmp, data];
          }
          Mask := Mask[tmp, data:=Mask[tmp, data] - perm];
          perm := FullPerm;
          if (perm != NoPerm) {
            assert {:msg "  Folding lseg(tmp, null) might fail. There might be insufficient permission to access tmp.next (linked-list-predicates-with-wands.vpr@106.5--106.30) [110540]"}
              perm <= Mask[tmp, next];
          }
          Mask := Mask[tmp, next:=Mask[tmp, next] - perm];
          perm := FullPerm;
          if (perm != NoPerm) {
            assert {:msg "  Folding lseg(tmp, null) might fail. There might be insufficient permission to access lseg(tmp.next, null) (linked-list-predicates-with-wands.vpr@106.5--106.30) [110542]"}
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
              assert {:msg "  Folding lseg(tmp, null) might fail. There might be insufficient permission to access lseg(tmp.next, null) (linked-list-predicates-with-wands.vpr@106.5--106.30) [110545]"}
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
                  assume (forall <A, B> o_71: Ref, f_35: (Field A B) ::
                    { newPMask[o_71, f_35] }
                    UnfoldingHeap[null, lseg#sm(UnfoldingHeap[UnfoldingHeap[tmp, next], next], null)][o_71, f_35] || UnfoldingHeap[null, lseg#sm(UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[tmp, next], next], next], null)][o_71, f_35] ==> newPMask[o_71, f_35]
                  );
                  UnfoldingHeap := UnfoldingHeap[null, lseg#sm(UnfoldingHeap[UnfoldingHeap[tmp, next], next], null):=newPMask];
                }
                assume state(UnfoldingHeap, UnfoldingMask);
            }
            assume state(UnfoldingHeap, UnfoldingMask);
          if (Heap[tmp, next] != null) {
            assert {:msg "  Folding lseg(tmp, null) might fail. Assertion tmp.data <= tmp.next.data might not hold. (linked-list-predicates-with-wands.vpr@106.5--106.30) [110549]"}
              Heap[tmp, data] <= Heap[Heap[tmp, next], data];
          }
        }
        
        // -- Free assumptions (exhale module)
          if (Heap[tmp, next] != null) {
            Heap := Heap[null, lseg#sm(Heap[tmp, next], null):=Heap[null, lseg#sm(Heap[tmp, next], null)][Heap[tmp, next], data:=true]];
            Heap := Heap[null, lseg#sm(Heap[tmp, next], null):=Heap[null, lseg#sm(Heap[tmp, next], null)][Heap[tmp, next], next:=true]];
            havoc newPMask;
            assume (forall <A, B> o_72: Ref, f_79: (Field A B) ::
              { newPMask[o_72, f_79] }
              Heap[null, lseg#sm(Heap[tmp, next], null)][o_72, f_79] || Heap[null, lseg#sm(Heap[Heap[tmp, next], next], null)][o_72, f_79] ==> newPMask[o_72, f_79]
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
          assume (forall <A, B> o_30: Ref, f_80: (Field A B) ::
            { newPMask[o_30, f_80] }
            Heap[null, lseg#sm(tmp, null)][o_30, f_80] || Heap[null, lseg#sm(Heap[tmp, next], null)][o_30, f_80] ==> newPMask[o_30, f_80]
          );
          Heap := Heap[null, lseg#sm(tmp, null):=newPMask];
        }
        assume state(Heap, Mask);
        assume state(Heap, Mask);
      
      // -- Translating statement: this.head := tmp -- linked-list-predicates-with-wands.vpr@107.5--107.21
        assert {:msg "  Assignment might fail. There might be insufficient permission to access this.head (linked-list-predicates-with-wands.vpr@107.5--107.21) [110551]"}
          FullPerm == Mask[this, head_3];
        Heap := Heap[this, head_3:=tmp];
        assume state(Heap, Mask);
    } else {
      
      // -- Assumptions about local variables
        assume Heap[hd, $allocated];
        assume Heap[ptr_2, $allocated];
      
      // -- Translating statement: hd := this.head -- linked-list-predicates-with-wands.vpr@109.5--109.29
        
        // -- Check definedness of this.head
          assert {:msg "  Assignment might fail. There might be insufficient permission to access this.head (linked-list-predicates-with-wands.vpr@109.5--109.29) [110552]"}
            HasDirectPerm(Mask, this, head_3);
        hd := Heap[this, head_3];
        assume state(Heap, Mask);
      
      // -- Translating statement: ptr := hd -- linked-list-predicates-with-wands.vpr@110.5--110.23
        ptr_2 := hd;
        assume state(Heap, Mask);
      
      // -- Translating statement: fold acc(lseg(this.head, ptr), write) -- linked-list-predicates-with-wands.vpr@111.5--111.35
        
        // -- Check definedness of acc(lseg(this.head, ptr), write)
          assert {:msg "  Folding lseg(this.head, ptr) might fail. There might be insufficient permission to access this.head (linked-list-predicates-with-wands.vpr@111.5--111.35) [110553]"}
            HasDirectPerm(Mask, this, head_3);
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        if (Heap[this, head_3] != ptr_2) {
          perm := FullPerm;
          if (perm != NoPerm) {
            assert {:msg "  Folding lseg(this.head, ptr) might fail. There might be insufficient permission to access this.head.data (linked-list-predicates-with-wands.vpr@111.5--111.35) [110556]"}
              perm <= Mask[Heap[this, head_3], data];
          }
          Mask := Mask[Heap[this, head_3], data:=Mask[Heap[this, head_3], data] - perm];
          perm := FullPerm;
          if (perm != NoPerm) {
            assert {:msg "  Folding lseg(this.head, ptr) might fail. There might be insufficient permission to access this.head.next (linked-list-predicates-with-wands.vpr@111.5--111.35) [110558]"}
              perm <= Mask[Heap[this, head_3], next];
          }
          Mask := Mask[Heap[this, head_3], next:=Mask[Heap[this, head_3], next] - perm];
          perm := FullPerm;
          if (perm != NoPerm) {
            assert {:msg "  Folding lseg(this.head, ptr) might fail. There might be insufficient permission to access lseg(this.head.next, ptr) (linked-list-predicates-with-wands.vpr@111.5--111.35) [110560]"}
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
              assert {:msg "  Folding lseg(this.head, ptr) might fail. There might be insufficient permission to access lseg(this.head.next, ptr) (linked-list-predicates-with-wands.vpr@111.5--111.35) [110563]"}
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
                  assume (forall <A, B> o_79: Ref, f_36: (Field A B) ::
                    { newPMask[o_79, f_36] }
                    UnfoldingHeap[null, lseg#sm(UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[this, head_3], next], next], ptr_2)][o_79, f_36] || UnfoldingHeap[null, lseg#sm(UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[this, head_3], next], next], next], ptr_2)][o_79, f_36] ==> newPMask[o_79, f_36]
                  );
                  UnfoldingHeap := UnfoldingHeap[null, lseg#sm(UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[this, head_3], next], next], ptr_2):=newPMask];
                }
                assume state(UnfoldingHeap, UnfoldingMask);
            }
            assume state(UnfoldingHeap, UnfoldingMask);
          if (Heap[Heap[this, head_3], next] != ptr_2) {
            assert {:msg "  Folding lseg(this.head, ptr) might fail. Assertion this.head.data <= this.head.next.data might not hold. (linked-list-predicates-with-wands.vpr@111.5--111.35) [110567]"}
              Heap[Heap[this, head_3], data] <= Heap[Heap[Heap[this, head_3], next], data];
          }
        }
        
        // -- Free assumptions (exhale module)
          if (Heap[Heap[this, head_3], next] != ptr_2) {
            Heap := Heap[null, lseg#sm(Heap[Heap[this, head_3], next], ptr_2):=Heap[null, lseg#sm(Heap[Heap[this, head_3], next], ptr_2)][Heap[Heap[this, head_3], next], data:=true]];
            Heap := Heap[null, lseg#sm(Heap[Heap[this, head_3], next], ptr_2):=Heap[null, lseg#sm(Heap[Heap[this, head_3], next], ptr_2)][Heap[Heap[this, head_3], next], next:=true]];
            havoc newPMask;
            assume (forall <A, B> o_80: Ref, f_88: (Field A B) ::
              { newPMask[o_80, f_88] }
              Heap[null, lseg#sm(Heap[Heap[this, head_3], next], ptr_2)][o_80, f_88] || Heap[null, lseg#sm(Heap[Heap[Heap[this, head_3], next], next], ptr_2)][o_80, f_88] ==> newPMask[o_80, f_88]
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
          assume (forall <A, B> o_31: Ref, f_89: (Field A B) ::
            { newPMask[o_31, f_89] }
            Heap[null, lseg#sm(Heap[this, head_3], ptr_2)][o_31, f_89] || Heap[null, lseg#sm(Heap[Heap[this, head_3], next], ptr_2)][o_31, f_89] ==> newPMask[o_31, f_89]
          );
          Heap := Heap[null, lseg#sm(Heap[this, head_3], ptr_2):=newPMask];
        }
        assume state(Heap, Mask);
        assume state(Heap, Mask);
      
      // -- Translating statement: index := index + 1 -- linked-list-predicates-with-wands.vpr@112.5--112.23
        index := index + 1;
        assume state(Heap, Mask);
      
      // -- Translating statement: package acc(lseg(ptr, null), write) &&
  // contentNodes(ptr, null)[0] == old(content(this))[index - 1] --*
  // acc(lseg(hd, null), write) &&
  // contentNodes(hd, null) ==
  // old(content(this))[0..index - 1] ++ old[lhs](contentNodes(ptr, null)) {
  // } -- linked-list-predicates-with-wands.vpr@129.5--129.20
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
            Ops_1Mask := Ops_1Mask[null, lseg(ptr_2, null):=Ops_1Mask[null, lseg(ptr_2, null)] + perm];
            b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
          }
          if (b_1_1) {
            b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
            if (b_1_1) {
              
              // -- Check definedness of contentNodes(ptr, null)[0] == old(content(this))[index - 1]
                if (*) {
                  // Exhale precondition of function application
                  ExhaleWellDef0Heap := Ops_1Heap;
                  ExhaleWellDef0Mask := Ops_1Mask;
                  perm := FullPerm;
                  assert {:msg "  Precondition of function contentNodes might not hold. There might be insufficient permission to access lseg(ptr, null) (linked-list-predicates-with-wands.vpr@129.13--129.14) [110569]"}
                    NoPerm < perm ==> NoPerm < Ops_1Mask[null, lseg(ptr_2, null)];
                  // Finish exhale
                  havoc ExhaleHeap;
                  b_1_1 := b_1_1 && IdenticalOnKnownLocations(Ops_1Heap, ExhaleHeap, Ops_1Mask);
                  Ops_1Heap := ExhaleHeap;
                  // Stop execution
                  b_1_1 := false;
                }
                assert {:msg "  Packaging wand might fail. Index contentNodes(ptr, null)[0] into contentNodes(ptr, null) might exceed sequence length. (linked-list-predicates-with-wands.vpr@129.5--129.20) [110570]"}
                  0 < Seq#Length(contentNodes(Ops_1Heap, ptr_2, null));
                if (*) {
                  // Exhale precondition of function application
                  ExhaleWellDef0Heap := oldHeap;
                  ExhaleWellDef0Mask := oldMask;
                  perm := FullPerm;
                  assert {:msg "  Precondition of function content might not hold. There might be insufficient permission to access List(this) (linked-list-predicates-with-wands.vpr@129.13--129.14) [110571]"}
                    NoPerm < perm ==> NoPerm < oldMask[null, List(this)];
                  // Finish exhale
                  // Stop execution
                  b_1_1 := false;
                }
                assert {:msg "  Packaging wand might fail. Index old(content(this))[index - 1] into old(content(this)) might be negative. (linked-list-predicates-with-wands.vpr@129.5--129.20) [110572]"}
                  index - 1 >= 0;
                assert {:msg "  Packaging wand might fail. Index old(content(this))[index - 1] into old(content(this)) might exceed sequence length. (linked-list-predicates-with-wands.vpr@129.5--129.20) [110573]"}
                  index - 1 < Seq#Length(content(oldHeap, this));
            }
            b_1_1 := b_1_1 && Seq#Index(contentNodes(Ops_1Heap, ptr_2, null), 0) == Seq#Index(content(oldHeap, this), index - 1);
          }
        }
        b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
        
        // -- Translating statement: label lhs1 -- linked-list-predicates-with-wands.vpr@129.13--129.20
          lhs1:
          Labellhs1Heap := Ops_1Heap;
          Labellhs1Mask := Ops_1Mask;
          b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
        boolCur := true;
        // Translating exec of non-ghost operationacc(lseg(hd, null), write) && contentNodes(hd, null) == old(content(this))[0..index - 1] ++ old[lhs](contentNodes(ptr, null))
        havoc Used_1Heap;
        Used_1Mask := ZeroMask;
        b_2_1 := b_2_1 && state(Used_1Heap, Used_1Mask);
        
        // -- Transfer of acc(lseg(hd, null), write)
          arg := hd;
          arg_1_13 := null;
          neededTransfer := FullPerm;
          initNeededTransfer := Used_1Mask[null, lseg(arg, arg_1_13)] + neededTransfer;
          assert {:msg "  Packaging wand might fail. Fraction acc(lseg(hd, null), write) might be negative. (linked-list-predicates-with-wands.vpr@129.5--129.20) [110574]"}
            neededTransfer >= 0.000000000;
          
          // -- transfer code for top state of stack
            // accumulate constraints which need to be satisfied for transfer to occur
            accVar2 := true;
            // actual code for the transfer from current state on stack
            if ((((b_1_1 && b_1_1) && b_2_1) && accVar2) && neededTransfer > 0.000000000) {
              maskTransfer := Ops_1Mask[null, lseg(arg, arg_1_13)];
              if (neededTransfer <= maskTransfer) {
                takeTransfer := neededTransfer;
              } else {
                takeTransfer := maskTransfer;
              }
              if (takeTransfer > 0.000000000) {
                neededTransfer := neededTransfer - takeTransfer;
                Used_1Mask := Used_1Mask[null, lseg(arg, arg_1_13):=Used_1Mask[null, lseg(arg, arg_1_13)] + takeTransfer];
                b_2_1 := b_2_1 && state(Used_1Heap, Used_1Mask);
                TempMask := ZeroMask[null, lseg(arg, arg_1_13):=FullPerm];
                b_2_1 := b_2_1 && IdenticalOnKnownLocations(Ops_1Heap, Used_1Heap, TempMask);
                Ops_1Mask := Ops_1Mask[null, lseg(arg, arg_1_13):=Ops_1Mask[null, lseg(arg, arg_1_13)] - takeTransfer];
              }
            }
          
          // -- transfer code for top state of stack
            // accumulate constraints which need to be satisfied for transfer to occur
            accVar2 := true;
            // actual code for the transfer from current state on stack
            if ((((b_1_1 && b_1_1) && b_2_1) && accVar2) && neededTransfer > 0.000000000) {
              maskTransfer := Mask[null, lseg(arg, arg_1_13)];
              if (neededTransfer <= maskTransfer) {
                takeTransfer := neededTransfer;
              } else {
                takeTransfer := maskTransfer;
              }
              if (takeTransfer > 0.000000000) {
                neededTransfer := neededTransfer - takeTransfer;
                Used_1Mask := Used_1Mask[null, lseg(arg, arg_1_13):=Used_1Mask[null, lseg(arg, arg_1_13)] + takeTransfer];
                b_2_1 := b_2_1 && state(Used_1Heap, Used_1Mask);
                TempMask := ZeroMask[null, lseg(arg, arg_1_13):=FullPerm];
                b_2_1 := b_2_1 && IdenticalOnKnownLocations(Heap, Used_1Heap, TempMask);
                Mask := Mask[null, lseg(arg, arg_1_13):=Mask[null, lseg(arg, arg_1_13)] - takeTransfer];
                havoc newPMask;
                assume (forall <A, B> o_81: Ref, f_90: (Field A B) ::
                  { newPMask[o_81, f_90] }
                  Heap[null, wand#sm(ptr_2, null, ptr_2, null, 0, Seq#Index(content(oldHeap, this), index - 1), hd, null, hd, null, Seq#Drop(Seq#Take(content(oldHeap, this), index - 1), 0), ptr_2, null)][o_81, f_90] || Heap[null, lseg#sm(hd, null)][o_81, f_90] ==> newPMask[o_81, f_90]
                );
                Heap := Heap[null, wand#sm(ptr_2, null, ptr_2, null, 0, Seq#Index(content(oldHeap, this), index - 1), hd, null, hd, null, Seq#Drop(Seq#Take(content(oldHeap, this), index - 1), 0), ptr_2, null):=newPMask];
              }
            }
          assert {:msg "  Packaging wand might fail. There might be insufficient permission to access lseg(hd, null) (linked-list-predicates-with-wands.vpr@129.5--129.20) [110575]"}
            (b_1_1 && b_1_1) && b_2_1 ==> neededTransfer == 0.000000000 && Used_1Mask[null, lseg(arg, arg_1_13)] == initNeededTransfer;
          
          // -- Creating state which is the sum of the two previously built up states
            b_3 := b_1_1 && b_2_1;
            b_3 := b_3 && state(ResultHeap, ResultMask);
            b_3 := b_3 && sumMask(ResultMask, Ops_1Mask, Used_1Mask);
            b_3 := (b_3 && IdenticalOnKnownLocations(Ops_1Heap, ResultHeap, Ops_1Mask)) && IdenticalOnKnownLocations(Used_1Heap, ResultHeap, Used_1Mask);
            b_3 := b_3 && state(ResultHeap, ResultMask);
          b_1_1 := b_1_1 && b_3;
        if ((b_1_1 && b_1_1) && b_2_1) {
          if (b_1_1) {
            
            // -- Check definedness of contentNodes(hd, null) == old(content(this))[0..index - 1] ++ old[lhs](contentNodes(ptr, null))
              if (*) {
                // Exhale precondition of function application
                ExhaleWellDef0Heap := ResultHeap;
                ExhaleWellDef0Mask := ResultMask;
                perm := FullPerm;
                assert {:msg "  Precondition of function contentNodes might not hold. There might be insufficient permission to access lseg(hd, null) (linked-list-predicates-with-wands.vpr@129.19--129.20) [110576]"}
                  NoPerm < perm ==> NoPerm < ResultMask[null, lseg(hd, null)];
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
                assert {:msg "  Precondition of function content might not hold. There might be insufficient permission to access List(this) (linked-list-predicates-with-wands.vpr@129.19--129.20) [110577]"}
                  NoPerm < perm ==> NoPerm < oldMask[null, List(this)];
                // Finish exhale
                // Stop execution
                assume false;
              }
              if (*) {
                // Exhale precondition of function application
                ExhaleWellDef0Heap := Labellhs1Heap;
                ExhaleWellDef0Mask := Labellhs1Mask;
                perm := FullPerm;
                assert {:msg "  Precondition of function contentNodes might not hold. There might be insufficient permission to access lseg(ptr, null) (linked-list-predicates-with-wands.vpr@129.19--129.20) [110578]"}
                  NoPerm < perm ==> NoPerm < Labellhs1Mask[null, lseg(ptr_2, null)];
                // Finish exhale
                havoc ExhaleHeap;
                assume IdenticalOnKnownLocations(Labellhs1Heap, ExhaleHeap, Labellhs1Mask);
                Labellhs1Heap := ExhaleHeap;
                // Stop execution
                assume false;
              }
          }
        }
        assert {:msg "  Packaging wand might fail. Assertion contentNodes(hd, null) == old(content(this))[0..index - 1] ++ old[lhs](contentNodes(ptr, null)) might not hold. (linked-list-predicates-with-wands.vpr@129.5--129.20) [110579]"}
          (b_1_1 && b_1_1) && b_2_1 ==> Seq#Equal(contentNodes(ResultHeap, hd, null), Seq#Append(Seq#Drop(Seq#Take(content(oldHeap, this), index - 1), 0), contentNodes(Labellhs1Heap, ptr_2, null)));
        assume state(Heap, Mask);
        Mask := Mask[null, wand(ptr_2, null, ptr_2, null, 0, Seq#Index(content(oldHeap, this), index - 1), hd, null, hd, null, Seq#Drop(Seq#Take(content(oldHeap, this), index - 1), 0), ptr_2, null):=Mask[null, wand(ptr_2, null, ptr_2, null, 0, Seq#Index(content(oldHeap, this), index - 1), hd, null, hd, null, Seq#Drop(Seq#Take(content(oldHeap, this), index - 1), 0), ptr_2, null)] + FullPerm];
        assume state(Heap, Mask);
        assume state(Heap, Mask);
        assume state(Heap, Mask);
      
      // -- Translating statement: while (ptr.next != null && (unfolding acc(lseg(ptr.next, null), write) in ptr.next.data < elem)) -- linked-list-predicates-with-wands.vpr@131.5--154.6
        
        // -- Before loop head
          
          // -- Exhale loop invariant before loop
            
            // -- Execute definedness check of ptr.next != null ==> ptr.data <= (unfolding acc(lseg(ptr.next, null), write) in ptr.next.data) without enforcing the checks (e.g., to gain more information)
              if (Heap[ptr_2, next] != null) {
                UnfoldingHeap := Heap;
                UnfoldingMask := Mask;
                assume lseg#trigger(UnfoldingHeap, lseg(UnfoldingHeap[ptr_2, next], null));
                assume UnfoldingHeap[null, lseg(UnfoldingHeap[ptr_2, next], null)] == FrameFragment((if UnfoldingHeap[ptr_2, next] != null then CombineFrames(FrameFragment(UnfoldingHeap[UnfoldingHeap[ptr_2, next], data]), CombineFrames(FrameFragment(UnfoldingHeap[UnfoldingHeap[ptr_2, next], next]), UnfoldingHeap[null, lseg(UnfoldingHeap[UnfoldingHeap[ptr_2, next], next], null)])) else EmptyFrame));
                ExhaleWellDef0Heap := UnfoldingHeap;
                ExhaleWellDef0Mask := UnfoldingMask;
                perm := FullPerm;
                if (perm != NoPerm) {
                  assert {:msg "  Loop invariant ptr.next != null ==> ptr.data <= (unfolding acc(lseg(ptr.next, null), write) in ptr.next.data) might not hold on entry. There might be insufficient permission to access lseg(ptr.next, null) (linked-list-predicates-with-wands.vpr@138.17--138.102) [110580]"}
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
                          assume (forall <A, B> o_62: Ref, f_47: (Field A B) ::
                            { newPMask[o_62, f_47] }
                            Unfolding1Heap[null, lseg#sm(Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[ptr_2, next], next], next], null)][o_62, f_47] || Unfolding1Heap[null, lseg#sm(Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[ptr_2, next], next], next], next], null)][o_62, f_47] ==> newPMask[o_62, f_47]
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
                      assume (forall <A, B> o_82: Ref, f_91: (Field A B) ::
                        { newPMask[o_82, f_91] }
                        UnfoldingHeap[null, lseg#sm(UnfoldingHeap[UnfoldingHeap[ptr_2, next], next], null)][o_82, f_91] || UnfoldingHeap[null, lseg#sm(UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[ptr_2, next], next], next], null)][o_82, f_91] ==> newPMask[o_82, f_91]
                      );
                      UnfoldingHeap := UnfoldingHeap[null, lseg#sm(UnfoldingHeap[UnfoldingHeap[ptr_2, next], next], null):=newPMask];
                    }
                    assume state(UnfoldingHeap, UnfoldingMask);
                }
                assume state(UnfoldingHeap, UnfoldingMask);
                
                // -- Free assumptions (exp module)
                  if (Heap[ptr_2, next] != null) {
                    Heap := Heap[null, lseg#sm(Heap[ptr_2, next], null):=Heap[null, lseg#sm(Heap[ptr_2, next], null)][Heap[ptr_2, next], data:=true]];
                    Heap := Heap[null, lseg#sm(Heap[ptr_2, next], null):=Heap[null, lseg#sm(Heap[ptr_2, next], null)][Heap[ptr_2, next], next:=true]];
                    havoc newPMask;
                    assume (forall <A, B> o_83: Ref, f_72: (Field A B) ::
                      { newPMask[o_83, f_72] }
                      Heap[null, lseg#sm(Heap[ptr_2, next], null)][o_83, f_72] || Heap[null, lseg#sm(Heap[Heap[ptr_2, next], next], null)][o_83, f_72] ==> newPMask[o_83, f_72]
                    );
                    Heap := Heap[null, lseg#sm(Heap[ptr_2, next], null):=newPMask];
                  }
                  assume state(Heap, Mask);
                
                // -- Free assumptions (exp module)
                  if (Heap[ptr_2, next] != null) {
                    Heap := Heap[null, lseg#sm(Heap[ptr_2, next], null):=Heap[null, lseg#sm(Heap[ptr_2, next], null)][Heap[ptr_2, next], data:=true]];
                    Heap := Heap[null, lseg#sm(Heap[ptr_2, next], null):=Heap[null, lseg#sm(Heap[ptr_2, next], null)][Heap[ptr_2, next], next:=true]];
                    havoc newPMask;
                    assume (forall <A, B> o_84: Ref, f_92: (Field A B) ::
                      { newPMask[o_84, f_92] }
                      Heap[null, lseg#sm(Heap[ptr_2, next], null)][o_84, f_92] || Heap[null, lseg#sm(Heap[Heap[ptr_2, next], next], null)][o_84, f_92] ==> newPMask[o_84, f_92]
                    );
                    Heap := Heap[null, lseg#sm(Heap[ptr_2, next], null):=newPMask];
                  }
                  assume state(Heap, Mask);
              }
            ExhaleWellDef0Heap := Heap;
            ExhaleWellDef0Mask := Mask;
            perm := FullPerm;
            if (perm != NoPerm) {
              assert {:msg "  Loop invariant acc(ptr.next, write) && (acc(ptr.data, write) && acc(lseg(ptr.next, null), write)) might not hold on entry. There might be insufficient permission to access ptr.next (linked-list-predicates-with-wands.vpr@132.17--132.76) [110581]"}
                perm <= Mask[ptr_2, next];
            }
            Mask := Mask[ptr_2, next:=Mask[ptr_2, next] - perm];
            perm := FullPerm;
            if (perm != NoPerm) {
              assert {:msg "  Loop invariant acc(ptr.next, write) && (acc(ptr.data, write) && acc(lseg(ptr.next, null), write)) might not hold on entry. There might be insufficient permission to access ptr.data (linked-list-predicates-with-wands.vpr@132.17--132.76) [110582]"}
                perm <= Mask[ptr_2, data];
            }
            Mask := Mask[ptr_2, data:=Mask[ptr_2, data] - perm];
            perm := FullPerm;
            if (perm != NoPerm) {
              assert {:msg "  Loop invariant acc(ptr.next, write) && (acc(ptr.data, write) && acc(lseg(ptr.next, null), write)) might not hold on entry. There might be insufficient permission to access lseg(ptr.next, null) (linked-list-predicates-with-wands.vpr@132.17--132.76) [110583]"}
                perm <= Mask[null, lseg(Heap[ptr_2, next], null)];
            }
            Mask := Mask[null, lseg(Heap[ptr_2, next], null):=Mask[null, lseg(Heap[ptr_2, next], null)] - perm];
            assert {:msg "  Loop invariant 1 <= index && index <= |old(content(this))| might not hold on entry. Assertion 1 <= index might not hold. (linked-list-predicates-with-wands.vpr@133.17--133.60) [110584]"}
              1 <= index;
            assert {:msg "  Loop invariant 1 <= index && index <= |old(content(this))| might not hold on entry. Assertion index <= |old(content(this))| might not hold. (linked-list-predicates-with-wands.vpr@133.17--133.60) [110585]"}
              index <= Seq#Length(content(oldHeap, this));
            if (Heap[ptr_2, next] == null) {
              assert {:msg "  Loop invariant ptr.next == null ==> index == |old(content(this))| might not hold on entry. Assertion index == |old(content(this))| might not hold. (linked-list-predicates-with-wands.vpr@134.17--134.67) [110586]"}
                index == Seq#Length(content(oldHeap, this));
            }
            assert {:msg "  Loop invariant ptr.data == old(content(this))[index - 1] might not hold on entry. Assertion ptr.data == old(content(this))[index - 1] might not hold. (linked-list-predicates-with-wands.vpr@135.17--135.56) [110587]"}
              Heap[ptr_2, data] == Seq#Index(content(oldHeap, this), index - 1);
            if (Heap[ptr_2, next] != null) {
              assert {:msg "  Loop invariant ptr.next != null ==> contentNodes(ptr.next, null) == old(content(this))[index..] might not hold on entry. Assertion contentNodes(ptr.next, null) == old(content(this))[index..] might not hold. (linked-list-predicates-with-wands.vpr@136.17--136.97) [110588]"}
                Seq#Equal(contentNodes(Heap, Heap[ptr_2, next], null), Seq#Drop(content(oldHeap, this), index));
            }
            assert {:msg "  Loop invariant ptr.data < elem might not hold on entry. Assertion ptr.data < elem might not hold. (linked-list-predicates-with-wands.vpr@137.17--137.32) [110589]"}
              Heap[ptr_2, data] < elem_1;
            if (Heap[ptr_2, next] != null) {
              assert {:msg "  Loop invariant ptr.next != null ==> ptr.data <= (unfolding acc(lseg(ptr.next, null), write) in ptr.next.data) might not hold on entry. Assertion ptr.data <= (unfolding acc(lseg(ptr.next, null), write) in ptr.next.data) might not hold. (linked-list-predicates-with-wands.vpr@138.17--138.102) [110590]"}
                Heap[ptr_2, data] <= Heap[Heap[ptr_2, next], data];
            }
            // permLe
            assert {:msg "  Loop invariant acc(lseg(ptr, null), write) && contentNodes(ptr, null)[0] == old(content(this))[index - 1] --* acc(lseg(hd, null), write) && contentNodes(hd, null) == old(content(this))[0..index - 1] ++ old[lhs](contentNodes(ptr, null)) might not hold on entry. Magic wand instance not found. (linked-list-predicates-with-wands.vpr@139.17--139.24) [110591]"}
              FullPerm <= Mask[null, wand(ptr_2, null, ptr_2, null, 0, Seq#Index(content(oldHeap, this), index - 1), hd, null, hd, null, Seq#Drop(Seq#Take(content(oldHeap, this), index - 1), 0), ptr_2, null)];
            Mask := Mask[null, wand(ptr_2, null, ptr_2, null, 0, Seq#Index(content(oldHeap, this), index - 1), hd, null, hd, null, Seq#Drop(Seq#Take(content(oldHeap, this), index - 1), 0), ptr_2, null):=Mask[null, wand(ptr_2, null, ptr_2, null, 0, Seq#Index(content(oldHeap, this), index - 1), hd, null, hd, null, Seq#Drop(Seq#Take(content(oldHeap, this), index - 1), 0), ptr_2, null)] - FullPerm];
            
            // -- Free assumptions (exhale module)
              if (Heap[ptr_2, next] != null) {
                Heap := Heap[null, lseg#sm(Heap[ptr_2, next], null):=Heap[null, lseg#sm(Heap[ptr_2, next], null)][Heap[ptr_2, next], data:=true]];
                Heap := Heap[null, lseg#sm(Heap[ptr_2, next], null):=Heap[null, lseg#sm(Heap[ptr_2, next], null)][Heap[ptr_2, next], next:=true]];
                havoc newPMask;
                assume (forall <A, B> o_63: Ref, f_48: (Field A B) ::
                  { newPMask[o_63, f_48] }
                  Heap[null, lseg#sm(Heap[ptr_2, next], null)][o_63, f_48] || Heap[null, lseg#sm(Heap[Heap[ptr_2, next], next], null)][o_63, f_48] ==> newPMask[o_63, f_48]
                );
                Heap := Heap[null, lseg#sm(Heap[ptr_2, next], null):=newPMask];
              }
              assume state(Heap, Mask);
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
            assume ptr_2 != null;
            Mask := Mask[ptr_2, next:=Mask[ptr_2, next] + perm];
            assume state(Heap, Mask);
            perm := FullPerm;
            assume ptr_2 != null;
            Mask := Mask[ptr_2, data:=Mask[ptr_2, data] + perm];
            assume state(Heap, Mask);
            
            // -- Check definedness of acc(lseg(ptr.next, null), write)
              assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access ptr.next (linked-list-predicates-with-wands.vpr@132.17--132.76) [110592]"}
                HasDirectPerm(Mask, ptr_2, next);
            perm := FullPerm;
            Mask := Mask[null, lseg(Heap[ptr_2, next], null):=Mask[null, lseg(Heap[ptr_2, next], null)] + perm];
            assume state(Heap, Mask);
            assume state(Heap, Mask);
            assume 1 <= index;
            assume state(Heap, Mask);
            
            // -- Check definedness of index <= |old(content(this))|
              if (*) {
                // Exhale precondition of function application
                ExhaleWellDef0Heap := oldHeap;
                ExhaleWellDef0Mask := oldMask;
                perm := FullPerm;
                assert {:msg "  Precondition of function content might not hold. There might be insufficient permission to access List(this) (linked-list-predicates-with-wands.vpr@133.45--133.58) [110593]"}
                  NoPerm < perm ==> NoPerm < oldMask[null, List(this)];
                // Finish exhale
                // Stop execution
                assume false;
              }
            assume index <= Seq#Length(content(oldHeap, this));
            assume state(Heap, Mask);
            
            // -- Check definedness of ptr.next == null
              assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access ptr.next (linked-list-predicates-with-wands.vpr@134.17--134.67) [110594]"}
                HasDirectPerm(Mask, ptr_2, next);
            if (Heap[ptr_2, next] == null) {
              assume state(Heap, Mask);
              
              // -- Check definedness of index == |old(content(this))|
                if (*) {
                  // Exhale precondition of function application
                  ExhaleWellDef0Heap := oldHeap;
                  ExhaleWellDef0Mask := oldMask;
                  perm := FullPerm;
                  assert {:msg "  Precondition of function content might not hold. There might be insufficient permission to access List(this) (linked-list-predicates-with-wands.vpr@134.52--134.65) [110595]"}
                    NoPerm < perm ==> NoPerm < oldMask[null, List(this)];
                  // Finish exhale
                  // Stop execution
                  assume false;
                }
              assume index == Seq#Length(content(oldHeap, this));
            }
            assume state(Heap, Mask);
            assume state(Heap, Mask);
            
            // -- Check definedness of ptr.data == old(content(this))[index - 1]
              assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access ptr.data (linked-list-predicates-with-wands.vpr@135.17--135.56) [110596]"}
                HasDirectPerm(Mask, ptr_2, data);
              if (*) {
                // Exhale precondition of function application
                ExhaleWellDef0Heap := oldHeap;
                ExhaleWellDef0Mask := oldMask;
                perm := FullPerm;
                assert {:msg "  Precondition of function content might not hold. There might be insufficient permission to access List(this) (linked-list-predicates-with-wands.vpr@135.33--135.46) [110597]"}
                  NoPerm < perm ==> NoPerm < oldMask[null, List(this)];
                // Finish exhale
                // Stop execution
                assume false;
              }
              assert {:msg "  Contract might not be well-formed. Index old(content(this))[index - 1] into old(content(this)) might be negative. (linked-list-predicates-with-wands.vpr@135.17--135.56) [110598]"}
                index - 1 >= 0;
              assert {:msg "  Contract might not be well-formed. Index old(content(this))[index - 1] into old(content(this)) might exceed sequence length. (linked-list-predicates-with-wands.vpr@135.17--135.56) [110599]"}
                index - 1 < Seq#Length(content(oldHeap, this));
            assume Heap[ptr_2, data] == Seq#Index(content(oldHeap, this), index - 1);
            assume state(Heap, Mask);
            
            // -- Check definedness of ptr.next != null
              assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access ptr.next (linked-list-predicates-with-wands.vpr@136.17--136.97) [110600]"}
                HasDirectPerm(Mask, ptr_2, next);
            if (Heap[ptr_2, next] != null) {
              assume state(Heap, Mask);
              
              // -- Check definedness of contentNodes(ptr.next, null) == old(content(this))[index..]
                assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access ptr.next (linked-list-predicates-with-wands.vpr@136.17--136.97) [110601]"}
                  HasDirectPerm(Mask, ptr_2, next);
                if (*) {
                  // Exhale precondition of function application
                  ExhaleWellDef0Heap := Heap;
                  ExhaleWellDef0Mask := Mask;
                  perm := FullPerm;
                  assert {:msg "  Precondition of function contentNodes might not hold. There might be insufficient permission to access lseg(ptr.next, null) (linked-list-predicates-with-wands.vpr@136.38--136.66) [110602]"}
                    NoPerm < perm ==> NoPerm < Mask[null, lseg(Heap[ptr_2, next], null)];
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
                  assert {:msg "  Precondition of function content might not hold. There might be insufficient permission to access List(this) (linked-list-predicates-with-wands.vpr@136.74--136.87) [110603]"}
                    NoPerm < perm ==> NoPerm < oldMask[null, List(this)];
                  // Finish exhale
                  // Stop execution
                  assume false;
                }
              assume Seq#Equal(contentNodes(Heap, Heap[ptr_2, next], null), Seq#Drop(content(oldHeap, this), index));
            }
            assume state(Heap, Mask);
            
            // -- Check definedness of ptr.data < elem
              assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access ptr.data (linked-list-predicates-with-wands.vpr@137.17--137.32) [110604]"}
                HasDirectPerm(Mask, ptr_2, data);
            assume Heap[ptr_2, data] < elem_1;
            assume state(Heap, Mask);
            
            // -- Check definedness of ptr.next != null
              assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access ptr.next (linked-list-predicates-with-wands.vpr@138.17--138.102) [110605]"}
                HasDirectPerm(Mask, ptr_2, next);
            if (Heap[ptr_2, next] != null) {
              
              // -- Check definedness of ptr.data <= (unfolding acc(lseg(ptr.next, null), write) in ptr.next.data)
                assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access ptr.data (linked-list-predicates-with-wands.vpr@138.17--138.102) [110606]"}
                  HasDirectPerm(Mask, ptr_2, data);
                UnfoldingHeap := Heap;
                UnfoldingMask := Mask;
                assume lseg#trigger(UnfoldingHeap, lseg(UnfoldingHeap[ptr_2, next], null));
                assume UnfoldingHeap[null, lseg(UnfoldingHeap[ptr_2, next], null)] == FrameFragment((if UnfoldingHeap[ptr_2, next] != null then CombineFrames(FrameFragment(UnfoldingHeap[UnfoldingHeap[ptr_2, next], data]), CombineFrames(FrameFragment(UnfoldingHeap[UnfoldingHeap[ptr_2, next], next]), UnfoldingHeap[null, lseg(UnfoldingHeap[UnfoldingHeap[ptr_2, next], next], null)])) else EmptyFrame));
                ExhaleWellDef0Heap := UnfoldingHeap;
                ExhaleWellDef0Mask := UnfoldingMask;
                perm := FullPerm;
                if (perm != NoPerm) {
                  assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access lseg(ptr.next, null) (linked-list-predicates-with-wands.vpr@138.17--138.102) [110607]"}
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
                assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access ptr.next (linked-list-predicates-with-wands.vpr@138.17--138.102) [110608]"}
                  HasDirectPerm(UnfoldingMask, ptr_2, next);
                assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access ptr.next (linked-list-predicates-with-wands.vpr@138.17--138.102) [110609]"}
                  HasDirectPerm(UnfoldingMask, ptr_2, next);
                assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access ptr.next.data (linked-list-predicates-with-wands.vpr@138.17--138.102) [110610]"}
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
                
                // -- Free assumptions (exp module)
                  if (Heap[ptr_2, next] != null) {
                    Heap := Heap[null, lseg#sm(Heap[ptr_2, next], null):=Heap[null, lseg#sm(Heap[ptr_2, next], null)][Heap[ptr_2, next], data:=true]];
                    Heap := Heap[null, lseg#sm(Heap[ptr_2, next], null):=Heap[null, lseg#sm(Heap[ptr_2, next], null)][Heap[ptr_2, next], next:=true]];
                    havoc newPMask;
                    assume (forall <A, B> o_29: Ref, f_95: (Field A B) ::
                      { newPMask[o_29, f_95] }
                      Heap[null, lseg#sm(Heap[ptr_2, next], null)][o_29, f_95] || Heap[null, lseg#sm(Heap[Heap[ptr_2, next], next], null)][o_29, f_95] ==> newPMask[o_29, f_95]
                    );
                    Heap := Heap[null, lseg#sm(Heap[ptr_2, next], null):=newPMask];
                  }
                  assume state(Heap, Mask);
              assume Heap[ptr_2, data] <= Heap[Heap[ptr_2, next], data];
            }
            assume state(Heap, Mask);
            assume state(Heap, Mask);
            
            // -- Check definedness of acc(lseg(ptr, null), write) && contentNodes(ptr, null)[0] == old(content(this))[index - 1] --* acc(lseg(hd, null), write) && contentNodes(hd, null) == old(content(this))[0..index - 1] ++ old[lhs](contentNodes(ptr, null))
              if (*) {
                havoc WandDefLHSHeap;
                WandDefLHSMask := ZeroMask;
                perm := FullPerm;
                WandDefLHSMask := WandDefLHSMask[null, lseg(ptr_2, null):=WandDefLHSMask[null, lseg(ptr_2, null)] + perm];
                assume state(WandDefLHSHeap, WandDefLHSMask);
                assume state(WandDefLHSHeap, WandDefLHSMask);
                
                // -- Check definedness of contentNodes(ptr, null)[0] == old(content(this))[index - 1]
                  if (*) {
                    // Exhale precondition of function application
                    ExhaleWellDef0Heap := WandDefLHSHeap;
                    ExhaleWellDef0Mask := WandDefLHSMask;
                    perm := FullPerm;
                    assert {:msg "  Precondition of function contentNodes might not hold. There might be insufficient permission to access lseg(ptr, null) (linked-list-predicates-with-wands.vpr@139.17--139.18) [110611]"}
                      NoPerm < perm ==> NoPerm < WandDefLHSMask[null, lseg(ptr_2, null)];
                    // Finish exhale
                    havoc ExhaleHeap;
                    assume IdenticalOnKnownLocations(WandDefLHSHeap, ExhaleHeap, WandDefLHSMask);
                    WandDefLHSHeap := ExhaleHeap;
                    // Stop execution
                    assume false;
                  }
                  assert {:msg "  Contract might not be well-formed. Index contentNodes(ptr, null)[0] into contentNodes(ptr, null) might exceed sequence length. (linked-list-predicates-with-wands.vpr@139.17--139.24) [110612]"}
                    0 < Seq#Length(contentNodes(WandDefLHSHeap, ptr_2, null));
                  if (*) {
                    // Exhale precondition of function application
                    ExhaleWellDef0Heap := oldHeap;
                    ExhaleWellDef0Mask := oldMask;
                    perm := FullPerm;
                    assert {:msg "  Precondition of function content might not hold. There might be insufficient permission to access List(this) (linked-list-predicates-with-wands.vpr@139.17--139.18) [110613]"}
                      NoPerm < perm ==> NoPerm < oldMask[null, List(this)];
                    // Finish exhale
                    // Stop execution
                    assume false;
                  }
                  assert {:msg "  Contract might not be well-formed. Index old(content(this))[index - 1] into old(content(this)) might be negative. (linked-list-predicates-with-wands.vpr@139.17--139.24) [110614]"}
                    index - 1 >= 0;
                  assert {:msg "  Contract might not be well-formed. Index old(content(this))[index - 1] into old(content(this)) might exceed sequence length. (linked-list-predicates-with-wands.vpr@139.17--139.24) [110615]"}
                    index - 1 < Seq#Length(content(oldHeap, this));
                assume Seq#Index(contentNodes(WandDefLHSHeap, ptr_2, null), 0) == Seq#Index(content(oldHeap, this), index - 1);
                assume state(WandDefLHSHeap, WandDefLHSMask);
                
                // -- Translating statement: label lhs3 -- linked-list-predicates-with-wands.vpr@139.17--139.24
                  lhs3:
                  Labellhs3Heap := WandDefLHSHeap;
                  Labellhs3Mask := WandDefLHSMask;
                  assume state(WandDefLHSHeap, WandDefLHSMask);
                havoc WandDefRHSHeap;
                WandDefRHSMask := ZeroMask;
                perm := FullPerm;
                WandDefRHSMask := WandDefRHSMask[null, lseg(hd, null):=WandDefRHSMask[null, lseg(hd, null)] + perm];
                assume state(WandDefRHSHeap, WandDefRHSMask);
                assume state(WandDefRHSHeap, WandDefRHSMask);
                
                // -- Check definedness of contentNodes(hd, null) == old(content(this))[0..index - 1] ++ old[lhs](contentNodes(ptr, null))
                  if (*) {
                    // Exhale precondition of function application
                    ExhaleWellDef0Heap := WandDefRHSHeap;
                    ExhaleWellDef0Mask := WandDefRHSMask;
                    perm := FullPerm;
                    assert {:msg "  Precondition of function contentNodes might not hold. There might be insufficient permission to access lseg(hd, null) (linked-list-predicates-with-wands.vpr@139.23--139.24) [110616]"}
                      NoPerm < perm ==> NoPerm < WandDefRHSMask[null, lseg(hd, null)];
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
                    assert {:msg "  Precondition of function content might not hold. There might be insufficient permission to access List(this) (linked-list-predicates-with-wands.vpr@139.23--139.24) [110617]"}
                      NoPerm < perm ==> NoPerm < oldMask[null, List(this)];
                    // Finish exhale
                    // Stop execution
                    assume false;
                  }
                  if (*) {
                    // Exhale precondition of function application
                    ExhaleWellDef0Heap := Labellhs3Heap;
                    ExhaleWellDef0Mask := Labellhs3Mask;
                    perm := FullPerm;
                    assert {:msg "  Precondition of function contentNodes might not hold. There might be insufficient permission to access lseg(ptr, null) (linked-list-predicates-with-wands.vpr@139.23--139.24) [110618]"}
                      NoPerm < perm ==> NoPerm < Labellhs3Mask[null, lseg(ptr_2, null)];
                    // Finish exhale
                    havoc ExhaleHeap;
                    assume IdenticalOnKnownLocations(Labellhs3Heap, ExhaleHeap, Labellhs3Mask);
                    Labellhs3Heap := ExhaleHeap;
                    // Stop execution
                    assume false;
                  }
                assume Seq#Equal(contentNodes(WandDefRHSHeap, hd, null), Seq#Append(Seq#Drop(Seq#Take(content(oldHeap, this), index - 1), 0), contentNodes(Labellhs3Heap, ptr_2, null)));
                assume state(WandDefRHSHeap, WandDefRHSMask);
                assume false;
              }
            Mask := Mask[null, wand(ptr_2, null, ptr_2, null, 0, Seq#Index(content(oldHeap, this), index - 1), hd, null, hd, null, Seq#Drop(Seq#Take(content(oldHeap, this), index - 1), 0), ptr_2, null):=Mask[null, wand(ptr_2, null, ptr_2, null, 0, Seq#Index(content(oldHeap, this), index - 1), hd, null, hd, null, Seq#Drop(Seq#Take(content(oldHeap, this), index - 1), 0), ptr_2, null)] + FullPerm];
            assume state(Heap, Mask);
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
            assume ptr_2 != null;
            Mask := Mask[ptr_2, next:=Mask[ptr_2, next] + perm];
            assume state(Heap, Mask);
            perm := FullPerm;
            assume ptr_2 != null;
            Mask := Mask[ptr_2, data:=Mask[ptr_2, data] + perm];
            assume state(Heap, Mask);
            perm := FullPerm;
            Mask := Mask[null, lseg(Heap[ptr_2, next], null):=Mask[null, lseg(Heap[ptr_2, next], null)] + perm];
            assume state(Heap, Mask);
            assume 1 <= index;
            assume state(Heap, Mask);
            assume index <= Seq#Length(content(oldHeap, this));
            if (Heap[ptr_2, next] == null) {
              assume state(Heap, Mask);
              assume index == Seq#Length(content(oldHeap, this));
            }
            assume state(Heap, Mask);
            assume Heap[ptr_2, data] == Seq#Index(content(oldHeap, this), index - 1);
            if (Heap[ptr_2, next] != null) {
              assume state(Heap, Mask);
              assume Seq#Equal(contentNodes(Heap, Heap[ptr_2, next], null), Seq#Drop(content(oldHeap, this), index));
            }
            assume Heap[ptr_2, data] < elem_1;
            if (Heap[ptr_2, next] != null) {
              assume Heap[ptr_2, data] <= Heap[Heap[ptr_2, next], data];
              
              // -- Free assumptions (inhale module)
                if (Heap[ptr_2, next] != null) {
                  Heap := Heap[null, lseg#sm(Heap[ptr_2, next], null):=Heap[null, lseg#sm(Heap[ptr_2, next], null)][Heap[ptr_2, next], data:=true]];
                  Heap := Heap[null, lseg#sm(Heap[ptr_2, next], null):=Heap[null, lseg#sm(Heap[ptr_2, next], null)][Heap[ptr_2, next], next:=true]];
                  havoc newPMask;
                  assume (forall <A, B> o_87: Ref, f_96: (Field A B) ::
                    { newPMask[o_87, f_96] }
                    Heap[null, lseg#sm(Heap[ptr_2, next], null)][o_87, f_96] || Heap[null, lseg#sm(Heap[Heap[ptr_2, next], next], null)][o_87, f_96] ==> newPMask[o_87, f_96]
                  );
                  Heap := Heap[null, lseg#sm(Heap[ptr_2, next], null):=newPMask];
                }
                assume state(Heap, Mask);
            }
            assume state(Heap, Mask);
            Mask := Mask[null, wand(ptr_2, null, ptr_2, null, 0, Seq#Index(content(oldHeap, this), index - 1), hd, null, hd, null, Seq#Drop(Seq#Take(content(oldHeap, this), index - 1), 0), ptr_2, null):=Mask[null, wand(ptr_2, null, ptr_2, null, 0, Seq#Index(content(oldHeap, this), index - 1), hd, null, hd, null, Seq#Drop(Seq#Take(content(oldHeap, this), index - 1), 0), ptr_2, null)] + FullPerm];
            assume state(Heap, Mask);
            assume state(Heap, Mask);
            
            // -- Execute definedness check of ptr.next != null ==> ptr.data <= (unfolding acc(lseg(ptr.next, null), write) in ptr.next.data) without enforcing the checks (e.g., to gain more information)
              if (Heap[ptr_2, next] != null) {
                UnfoldingHeap := Heap;
                UnfoldingMask := Mask;
                assume lseg#trigger(UnfoldingHeap, lseg(UnfoldingHeap[ptr_2, next], null));
                assume UnfoldingHeap[null, lseg(UnfoldingHeap[ptr_2, next], null)] == FrameFragment((if UnfoldingHeap[ptr_2, next] != null then CombineFrames(FrameFragment(UnfoldingHeap[UnfoldingHeap[ptr_2, next], data]), CombineFrames(FrameFragment(UnfoldingHeap[UnfoldingHeap[ptr_2, next], next]), UnfoldingHeap[null, lseg(UnfoldingHeap[UnfoldingHeap[ptr_2, next], next], null)])) else EmptyFrame));
                ExhaleWellDef0Heap := UnfoldingHeap;
                ExhaleWellDef0Mask := UnfoldingMask;
                perm := FullPerm;
                if (perm != NoPerm) {
                  assert {:msg "  An internal error occurred. There might be insufficient permission to access lseg(ptr.next, null) (linked-list-predicates-with-wands.vpr@138.17--138.102) [110619]"}
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
                          assume (forall <A, B> o_89: Ref, f_98: (Field A B) ::
                            { newPMask[o_89, f_98] }
                            Unfolding1Heap[null, lseg#sm(Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[ptr_2, next], next], next], null)][o_89, f_98] || Unfolding1Heap[null, lseg#sm(Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[ptr_2, next], next], next], next], null)][o_89, f_98] ==> newPMask[o_89, f_98]
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
                      assume (forall <A, B> o_88: Ref, f_97: (Field A B) ::
                        { newPMask[o_88, f_97] }
                        UnfoldingHeap[null, lseg#sm(UnfoldingHeap[UnfoldingHeap[ptr_2, next], next], null)][o_88, f_97] || UnfoldingHeap[null, lseg#sm(UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[ptr_2, next], next], next], null)][o_88, f_97] ==> newPMask[o_88, f_97]
                      );
                      UnfoldingHeap := UnfoldingHeap[null, lseg#sm(UnfoldingHeap[UnfoldingHeap[ptr_2, next], next], null):=newPMask];
                    }
                    assume state(UnfoldingHeap, UnfoldingMask);
                }
                assume state(UnfoldingHeap, UnfoldingMask);
                
                // -- Free assumptions (exp module)
                  if (Heap[ptr_2, next] != null) {
                    Heap := Heap[null, lseg#sm(Heap[ptr_2, next], null):=Heap[null, lseg#sm(Heap[ptr_2, next], null)][Heap[ptr_2, next], data:=true]];
                    Heap := Heap[null, lseg#sm(Heap[ptr_2, next], null):=Heap[null, lseg#sm(Heap[ptr_2, next], null)][Heap[ptr_2, next], next:=true]];
                    havoc newPMask;
                    assume (forall <A, B> o_90: Ref, f_99: (Field A B) ::
                      { newPMask[o_90, f_99] }
                      Heap[null, lseg#sm(Heap[ptr_2, next], null)][o_90, f_99] || Heap[null, lseg#sm(Heap[Heap[ptr_2, next], next], null)][o_90, f_99] ==> newPMask[o_90, f_99]
                    );
                    Heap := Heap[null, lseg#sm(Heap[ptr_2, next], null):=newPMask];
                  }
                  assume state(Heap, Mask);
                
                // -- Free assumptions (exp module)
                  if (Heap[ptr_2, next] != null) {
                    Heap := Heap[null, lseg#sm(Heap[ptr_2, next], null):=Heap[null, lseg#sm(Heap[ptr_2, next], null)][Heap[ptr_2, next], data:=true]];
                    Heap := Heap[null, lseg#sm(Heap[ptr_2, next], null):=Heap[null, lseg#sm(Heap[ptr_2, next], null)][Heap[ptr_2, next], next:=true]];
                    havoc newPMask;
                    assume (forall <A, B> o_93: Ref, f_105: (Field A B) ::
                      { newPMask[o_93, f_105] }
                      Heap[null, lseg#sm(Heap[ptr_2, next], null)][o_93, f_105] || Heap[null, lseg#sm(Heap[Heap[ptr_2, next], next], null)][o_93, f_105] ==> newPMask[o_93, f_105]
                    );
                    Heap := Heap[null, lseg#sm(Heap[ptr_2, next], null):=newPMask];
                  }
                  assume state(Heap, Mask);
              }
            // Check and assume guard
            
            // -- Check definedness of ptr.next != null && (unfolding acc(lseg(ptr.next, null), write) in ptr.next.data < elem)
              assert {:msg "  While statement might fail. There might be insufficient permission to access ptr.next (linked-list-predicates-with-wands.vpr@131.11--131.90) [110620]"}
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
                  assert {:msg "  While statement might fail. There might be insufficient permission to access lseg(ptr.next, null) (linked-list-predicates-with-wands.vpr@131.11--131.90) [110621]"}
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
                          assume (forall <A, B> o_97: Ref, f_107: (Field A B) ::
                            { newPMask[o_97, f_107] }
                            Unfolding1Heap[null, lseg#sm(Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[ptr_2, next], next], next], null)][o_97, f_107] || Unfolding1Heap[null, lseg#sm(Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[ptr_2, next], next], next], next], null)][o_97, f_107] ==> newPMask[o_97, f_107]
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
                      assume (forall <A, B> o_94: Ref, f_44: (Field A B) ::
                        { newPMask[o_94, f_44] }
                        UnfoldingHeap[null, lseg#sm(UnfoldingHeap[UnfoldingHeap[ptr_2, next], next], null)][o_94, f_44] || UnfoldingHeap[null, lseg#sm(UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[ptr_2, next], next], next], null)][o_94, f_44] ==> newPMask[o_94, f_44]
                      );
                      UnfoldingHeap := UnfoldingHeap[null, lseg#sm(UnfoldingHeap[UnfoldingHeap[ptr_2, next], next], null):=newPMask];
                    }
                    assume state(UnfoldingHeap, UnfoldingMask);
                }
                assume state(UnfoldingHeap, UnfoldingMask);
                assert {:msg "  While statement might fail. There might be insufficient permission to access ptr.next (linked-list-predicates-with-wands.vpr@131.11--131.90) [110622]"}
                  HasDirectPerm(UnfoldingMask, ptr_2, next);
                assert {:msg "  While statement might fail. There might be insufficient permission to access ptr.next (linked-list-predicates-with-wands.vpr@131.11--131.90) [110623]"}
                  HasDirectPerm(UnfoldingMask, ptr_2, next);
                assert {:msg "  While statement might fail. There might be insufficient permission to access ptr.next.data (linked-list-predicates-with-wands.vpr@131.11--131.90) [110624]"}
                  HasDirectPerm(UnfoldingMask, UnfoldingHeap[ptr_2, next], data);
                
                // -- Free assumptions (exp module)
                  if (Heap[ptr_2, next] != null) {
                    Heap := Heap[null, lseg#sm(Heap[ptr_2, next], null):=Heap[null, lseg#sm(Heap[ptr_2, next], null)][Heap[ptr_2, next], data:=true]];
                    Heap := Heap[null, lseg#sm(Heap[ptr_2, next], null):=Heap[null, lseg#sm(Heap[ptr_2, next], null)][Heap[ptr_2, next], next:=true]];
                    havoc newPMask;
                    assume (forall <A, B> o_95: Ref, f_106: (Field A B) ::
                      { newPMask[o_95, f_106] }
                      Heap[null, lseg#sm(Heap[ptr_2, next], null)][o_95, f_106] || Heap[null, lseg#sm(Heap[Heap[ptr_2, next], next], null)][o_95, f_106] ==> newPMask[o_95, f_106]
                    );
                    Heap := Heap[null, lseg#sm(Heap[ptr_2, next], null):=newPMask];
                  }
                  assume state(Heap, Mask);
              }
            assume Heap[ptr_2, next] != null && Heap[Heap[ptr_2, next], data] < elem_1;
            assume state(Heap, Mask);
            
            // -- Translate loop body
              
              // -- Assumptions about local variables
                assume Heap[prev, $allocated];
              
              // -- Translating statement: assert acc(lseg(ptr, null), write) &&
  //   contentNodes(ptr, null)[0] == old(content(this))[index - 1] --*
  //   acc(lseg(hd, null), write) &&
  //   contentNodes(hd, null) ==
  //   old(content(this))[0..index - 1] ++ old[lhs](contentNodes(ptr, null)) -- linked-list-predicates-with-wands.vpr@142.7--142.21
                AssertHeap := Heap;
                AssertMask := Mask;
                ExhaleWellDef0Heap := AssertHeap;
                ExhaleWellDef0Mask := AssertMask;
                
                // -- Check definedness of acc(lseg(ptr, null), write) && contentNodes(ptr, null)[0] == old(content(this))[index - 1] --* acc(lseg(hd, null), write) && contentNodes(hd, null) == old(content(this))[0..index - 1] ++ old[lhs](contentNodes(ptr, null))
                  if (*) {
                    havoc WandDefLHSHeap;
                    WandDefLHSMask := ZeroMask;
                    perm := FullPerm;
                    WandDefLHSMask := WandDefLHSMask[null, lseg(ptr_2, null):=WandDefLHSMask[null, lseg(ptr_2, null)] + perm];
                    assume state(WandDefLHSHeap, WandDefLHSMask);
                    assume state(WandDefLHSHeap, WandDefLHSMask);
                    
                    // -- Check definedness of contentNodes(ptr, null)[0] == old(content(this))[index - 1]
                      if (*) {
                        // Exhale precondition of function application
                        ExhaleWellDef1Heap := WandDefLHSHeap;
                        ExhaleWellDef1Mask := WandDefLHSMask;
                        perm := FullPerm;
                        assert {:msg "  Precondition of function contentNodes might not hold. There might be insufficient permission to access lseg(ptr, null) (linked-list-predicates-with-wands.vpr@142.14--142.15) [110625]"}
                          NoPerm < perm ==> NoPerm < WandDefLHSMask[null, lseg(ptr_2, null)];
                        // Finish exhale
                        havoc ExhaleHeap;
                        assume IdenticalOnKnownLocations(WandDefLHSHeap, ExhaleHeap, WandDefLHSMask);
                        WandDefLHSHeap := ExhaleHeap;
                        // Stop execution
                        assume false;
                      }
                      assert {:msg "  Assert might fail. Index contentNodes(ptr, null)[0] into contentNodes(ptr, null) might exceed sequence length. (linked-list-predicates-with-wands.vpr@142.14--142.21) [110626]"}
                        0 < Seq#Length(contentNodes(WandDefLHSHeap, ptr_2, null));
                      if (*) {
                        // Exhale precondition of function application
                        ExhaleWellDef1Heap := oldHeap;
                        ExhaleWellDef1Mask := oldMask;
                        perm := FullPerm;
                        assert {:msg "  Precondition of function content might not hold. There might be insufficient permission to access List(this) (linked-list-predicates-with-wands.vpr@142.14--142.15) [110627]"}
                          NoPerm < perm ==> NoPerm < oldMask[null, List(this)];
                        // Finish exhale
                        // Stop execution
                        assume false;
                      }
                      assert {:msg "  Assert might fail. Index old(content(this))[index - 1] into old(content(this)) might be negative. (linked-list-predicates-with-wands.vpr@142.14--142.21) [110628]"}
                        index - 1 >= 0;
                      assert {:msg "  Assert might fail. Index old(content(this))[index - 1] into old(content(this)) might exceed sequence length. (linked-list-predicates-with-wands.vpr@142.14--142.21) [110629]"}
                        index - 1 < Seq#Length(content(oldHeap, this));
                    assume Seq#Index(contentNodes(WandDefLHSHeap, ptr_2, null), 0) == Seq#Index(content(oldHeap, this), index - 1);
                    assume state(WandDefLHSHeap, WandDefLHSMask);
                    
                    // -- Translating statement: label lhs4 -- linked-list-predicates-with-wands.vpr@142.14--142.21
                      lhs4:
                      Labellhs4Heap := WandDefLHSHeap;
                      Labellhs4Mask := WandDefLHSMask;
                      assume state(WandDefLHSHeap, WandDefLHSMask);
                    havoc WandDefRHSHeap;
                    WandDefRHSMask := ZeroMask;
                    perm := FullPerm;
                    WandDefRHSMask := WandDefRHSMask[null, lseg(hd, null):=WandDefRHSMask[null, lseg(hd, null)] + perm];
                    assume state(WandDefRHSHeap, WandDefRHSMask);
                    assume state(WandDefRHSHeap, WandDefRHSMask);
                    
                    // -- Check definedness of contentNodes(hd, null) == old(content(this))[0..index - 1] ++ old[lhs](contentNodes(ptr, null))
                      if (*) {
                        // Exhale precondition of function application
                        ExhaleWellDef1Heap := WandDefRHSHeap;
                        ExhaleWellDef1Mask := WandDefRHSMask;
                        perm := FullPerm;
                        assert {:msg "  Precondition of function contentNodes might not hold. There might be insufficient permission to access lseg(hd, null) (linked-list-predicates-with-wands.vpr@142.20--142.21) [110630]"}
                          NoPerm < perm ==> NoPerm < WandDefRHSMask[null, lseg(hd, null)];
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
                        assert {:msg "  Precondition of function content might not hold. There might be insufficient permission to access List(this) (linked-list-predicates-with-wands.vpr@142.20--142.21) [110631]"}
                          NoPerm < perm ==> NoPerm < oldMask[null, List(this)];
                        // Finish exhale
                        // Stop execution
                        assume false;
                      }
                      if (*) {
                        // Exhale precondition of function application
                        ExhaleWellDef1Heap := Labellhs4Heap;
                        ExhaleWellDef1Mask := Labellhs4Mask;
                        perm := FullPerm;
                        assert {:msg "  Precondition of function contentNodes might not hold. There might be insufficient permission to access lseg(ptr, null) (linked-list-predicates-with-wands.vpr@142.20--142.21) [110632]"}
                          NoPerm < perm ==> NoPerm < Labellhs4Mask[null, lseg(ptr_2, null)];
                        // Finish exhale
                        havoc ExhaleHeap;
                        assume IdenticalOnKnownLocations(Labellhs4Heap, ExhaleHeap, Labellhs4Mask);
                        Labellhs4Heap := ExhaleHeap;
                        // Stop execution
                        assume false;
                      }
                    assume Seq#Equal(contentNodes(WandDefRHSHeap, hd, null), Seq#Append(Seq#Drop(Seq#Take(content(oldHeap, this), index - 1), 0), contentNodes(Labellhs4Heap, ptr_2, null)));
                    assume state(WandDefRHSHeap, WandDefRHSMask);
                    assume false;
                  }
                // permLe
                assert {:msg "  Assert might fail. Magic wand instance not found. (linked-list-predicates-with-wands.vpr@142.14--142.21) [110633]"}
                  FullPerm <= AssertMask[null, wand(ptr_2, null, ptr_2, null, 0, Seq#Index(content(oldHeap, this), index - 1), hd, null, hd, null, Seq#Drop(Seq#Take(content(oldHeap, this), index - 1), 0), ptr_2, null)];
                AssertMask := AssertMask[null, wand(ptr_2, null, ptr_2, null, 0, Seq#Index(content(oldHeap, this), index - 1), hd, null, hd, null, Seq#Drop(Seq#Take(content(oldHeap, this), index - 1), 0), ptr_2, null):=AssertMask[null, wand(ptr_2, null, ptr_2, null, 0, Seq#Index(content(oldHeap, this), index - 1), hd, null, hd, null, Seq#Drop(Seq#Take(content(oldHeap, this), index - 1), 0), ptr_2, null)] - FullPerm];
                assume state(Heap, Mask);
              
              // -- Translating statement: prev := ptr -- linked-list-predicates-with-wands.vpr@143.7--143.27
                prev := ptr_2;
                assume state(Heap, Mask);
              
              // -- Translating statement: unfold acc(lseg(ptr.next, null), write) -- linked-list-predicates-with-wands.vpr@145.7--145.39
                
                // -- Check definedness of acc(lseg(ptr.next, null), write)
                  assert {:msg "  Unfolding lseg(ptr.next, null) might fail. There might be insufficient permission to access ptr.next (linked-list-predicates-with-wands.vpr@145.7--145.39) [110634]"}
                    HasDirectPerm(Mask, ptr_2, next);
                assume lseg#trigger(Heap, lseg(Heap[ptr_2, next], null));
                assume Heap[null, lseg(Heap[ptr_2, next], null)] == FrameFragment((if Heap[ptr_2, next] != null then CombineFrames(FrameFragment(Heap[Heap[ptr_2, next], data]), CombineFrames(FrameFragment(Heap[Heap[ptr_2, next], next]), Heap[null, lseg(Heap[Heap[ptr_2, next], next], null)])) else EmptyFrame));
                ExhaleWellDef0Heap := Heap;
                ExhaleWellDef0Mask := Mask;
                perm := FullPerm;
                if (perm != NoPerm) {
                  assert {:msg "  Unfolding lseg(ptr.next, null) might fail. There might be insufficient permission to access lseg(ptr.next, null) (linked-list-predicates-with-wands.vpr@145.7--145.39) [110635]"}
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
                          assume (forall <A, B> o_77: Ref, f_109: (Field A B) ::
                            { newPMask[o_77, f_109] }
                            UnfoldingHeap[null, lseg#sm(UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[ptr_2, next], next], next], null)][o_77, f_109] || UnfoldingHeap[null, lseg#sm(UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[ptr_2, next], next], next], next], null)][o_77, f_109] ==> newPMask[o_77, f_109]
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
                      assume (forall <A, B> o_96: Ref, f_45: (Field A B) ::
                        { newPMask[o_96, f_45] }
                        Heap[null, lseg#sm(Heap[Heap[ptr_2, next], next], null)][o_96, f_45] || Heap[null, lseg#sm(Heap[Heap[Heap[ptr_2, next], next], next], null)][o_96, f_45] ==> newPMask[o_96, f_45]
                      );
                      Heap := Heap[null, lseg#sm(Heap[Heap[ptr_2, next], next], null):=newPMask];
                    }
                    assume state(Heap, Mask);
                }
                assume state(Heap, Mask);
                assume state(Heap, Mask);
              
              // -- Translating statement: index := index + 1 -- linked-list-predicates-with-wands.vpr@146.7--146.25
                index := index + 1;
                assume state(Heap, Mask);
              
              // -- Translating statement: ptr := ptr.next -- linked-list-predicates-with-wands.vpr@147.7--147.22
                
                // -- Check definedness of ptr.next
                  assert {:msg "  Assignment might fail. There might be insufficient permission to access ptr.next (linked-list-predicates-with-wands.vpr@147.7--147.22) [110636]"}
                    HasDirectPerm(Mask, ptr_2, next);
                ptr_2 := Heap[ptr_2, next];
                assume state(Heap, Mask);
              
              // -- Translating statement: package acc(lseg(ptr, null), write) &&
  // contentNodes(ptr, null)[0] == old(content(this))[index - 1] --*
  // acc(lseg(hd, null), write) &&
  // contentNodes(hd, null) ==
  // old(content(this))[0..index - 1] ++ old[lhs](contentNodes(ptr, null)) {
  //   fold acc(lseg(prev, null), write)
  //   apply acc(lseg(prev, null), write) &&
  //     contentNodes(prev, null)[0] == old(content(this))[index - 2] --*
  //     acc(lseg(hd, null), write) &&
  //     contentNodes(hd, null) ==
  //     old(content(this))[0..index - 2] ++ old[lhs](contentNodes(prev, null))
  // } -- linked-list-predicates-with-wands.vpr@149.7--153.8
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
                    Ops_3Mask := Ops_3Mask[null, lseg(ptr_2, null):=Ops_3Mask[null, lseg(ptr_2, null)] + perm];
                    b_5 := b_5 && state(Ops_3Heap, Ops_3Mask);
                  }
                  if (b_5) {
                    b_5 := b_5 && state(Ops_3Heap, Ops_3Mask);
                    if (b_5) {
                      
                      // -- Check definedness of contentNodes(ptr, null)[0] == old(content(this))[index - 1]
                        if (*) {
                          // Exhale precondition of function application
                          ExhaleWellDef0Heap := Ops_3Heap;
                          ExhaleWellDef0Mask := Ops_3Mask;
                          perm := FullPerm;
                          assert {:msg "  Precondition of function contentNodes might not hold. There might be insufficient permission to access lseg(ptr, null) (linked-list-predicates-with-wands.vpr@149.16--149.17) [110637]"}
                            NoPerm < perm ==> NoPerm < Ops_3Mask[null, lseg(ptr_2, null)];
                          // Finish exhale
                          havoc ExhaleHeap;
                          b_5 := b_5 && IdenticalOnKnownLocations(Ops_3Heap, ExhaleHeap, Ops_3Mask);
                          Ops_3Heap := ExhaleHeap;
                          // Stop execution
                          b_5 := false;
                        }
                        assert {:msg "  Packaging wand might fail. Index contentNodes(ptr, null)[0] into contentNodes(ptr, null) might exceed sequence length. (linked-list-predicates-with-wands.vpr@149.7--153.8) [110638]"}
                          0 < Seq#Length(contentNodes(Ops_3Heap, ptr_2, null));
                        if (*) {
                          // Exhale precondition of function application
                          ExhaleWellDef0Heap := oldHeap;
                          ExhaleWellDef0Mask := oldMask;
                          perm := FullPerm;
                          assert {:msg "  Precondition of function content might not hold. There might be insufficient permission to access List(this) (linked-list-predicates-with-wands.vpr@149.16--149.17) [110639]"}
                            NoPerm < perm ==> NoPerm < oldMask[null, List(this)];
                          // Finish exhale
                          // Stop execution
                          b_5 := false;
                        }
                        assert {:msg "  Packaging wand might fail. Index old(content(this))[index - 1] into old(content(this)) might be negative. (linked-list-predicates-with-wands.vpr@149.7--153.8) [110640]"}
                          index - 1 >= 0;
                        assert {:msg "  Packaging wand might fail. Index old(content(this))[index - 1] into old(content(this)) might exceed sequence length. (linked-list-predicates-with-wands.vpr@149.7--153.8) [110641]"}
                          index - 1 < Seq#Length(content(oldHeap, this));
                    }
                    b_5 := b_5 && Seq#Index(contentNodes(Ops_3Heap, ptr_2, null), 0) == Seq#Index(content(oldHeap, this), index - 1);
                  }
                }
                b_5 := b_5 && state(Ops_3Heap, Ops_3Mask);
                
                // -- Translating statement: label lhs5 -- linked-list-predicates-with-wands.vpr@149.15--149.24
                  lhs5:
                  Labellhs5Heap := Ops_3Heap;
                  Labellhs5Mask := Ops_3Mask;
                  b_5 := b_5 && state(Ops_3Heap, Ops_3Mask);
                boolCur_1 := true;
                if (b_5) {
                  
                  // -- Translating statement: fold acc(lseg(prev, null), write) -- linked-list-predicates-with-wands.vpr@150.11--150.37
                    ExhaleWellDef0Heap := Ops_3Heap;
                    ExhaleWellDef0Mask := Ops_3Mask;
                    havoc Used_3Heap;
                    Used_3Mask := ZeroMask;
                    b_6 := b_6 && state(Used_3Heap, Used_3Mask);
                    if (b_5 ==> prev != null) {
                      
                      // -- Transfer of acc(prev.data, write)
                        rcvLocal := prev;
                        neededTransfer := FullPerm;
                        initNeededTransfer := Used_3Mask[rcvLocal, data] + neededTransfer;
                        assert {:msg "  Folding lseg(prev, null) might fail. Fraction acc(prev.data, write) might be negative. (linked-list-predicates-with-wands.vpr@150.11--150.37) [110642]"}
                          neededTransfer >= 0.000000000;
                        
                        // -- transfer code for top state of stack
                          // accumulate constraints which need to be satisfied for transfer to occur
                          accVar2 := true;
                          // actual code for the transfer from current state on stack
                          if (((b_5 && b_6) && accVar2) && neededTransfer > 0.000000000) {
                            maskTransfer := Ops_3Mask[rcvLocal, data];
                            if (neededTransfer <= maskTransfer) {
                              takeTransfer := neededTransfer;
                            } else {
                              takeTransfer := maskTransfer;
                            }
                            if (takeTransfer > 0.000000000) {
                              neededTransfer := neededTransfer - takeTransfer;
                              Used_3Mask := Used_3Mask[rcvLocal, data:=Used_3Mask[rcvLocal, data] + takeTransfer];
                              b_6 := b_6 && state(Used_3Heap, Used_3Mask);
                              b_6 := b_6 && Ops_3Heap[rcvLocal, data] == Used_3Heap[rcvLocal, data];
                              Ops_3Mask := Ops_3Mask[rcvLocal, data:=Ops_3Mask[rcvLocal, data] - takeTransfer];
                            }
                          }
                        
                        // -- transfer code for top state of stack
                          // accumulate constraints which need to be satisfied for transfer to occur
                          accVar2 := true;
                          // actual code for the transfer from current state on stack
                          if (((b_5 && b_6) && accVar2) && neededTransfer > 0.000000000) {
                            maskTransfer := Mask[rcvLocal, data];
                            if (neededTransfer <= maskTransfer) {
                              takeTransfer := neededTransfer;
                            } else {
                              takeTransfer := maskTransfer;
                            }
                            if (takeTransfer > 0.000000000) {
                              neededTransfer := neededTransfer - takeTransfer;
                              Used_3Mask := Used_3Mask[rcvLocal, data:=Used_3Mask[rcvLocal, data] + takeTransfer];
                              b_6 := b_6 && state(Used_3Heap, Used_3Mask);
                              b_6 := b_6 && Heap[rcvLocal, data] == Used_3Heap[rcvLocal, data];
                              Mask := Mask[rcvLocal, data:=Mask[rcvLocal, data] - takeTransfer];
                              Heap := Heap[null, wand#sm(ptr_2, null, ptr_2, null, 0, Seq#Index(content(oldHeap, this), index - 1), hd, null, hd, null, Seq#Drop(Seq#Take(content(oldHeap, this), index - 1), 0), ptr_2, null):=Heap[null, wand#sm(ptr_2, null, ptr_2, null, 0, Seq#Index(content(oldHeap, this), index - 1), hd, null, hd, null, Seq#Drop(Seq#Take(content(oldHeap, this), index - 1), 0), ptr_2, null)][prev, data:=true]];
                            }
                          }
                        assert {:msg "  Folding lseg(prev, null) might fail. There might be insufficient permission to access prev.data (linked-list-predicates-with-wands.vpr@150.11--150.37) [110643]"}
                          b_5 && b_6 ==> neededTransfer == 0.000000000 && Used_3Mask[rcvLocal, data] == initNeededTransfer;
                        
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
                        assert {:msg "  Folding lseg(prev, null) might fail. Fraction acc(prev.next, write) might be negative. (linked-list-predicates-with-wands.vpr@150.11--150.37) [110644]"}
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
                              Heap := Heap[null, wand#sm(ptr_2, null, ptr_2, null, 0, Seq#Index(content(oldHeap, this), index - 1), hd, null, hd, null, Seq#Drop(Seq#Take(content(oldHeap, this), index - 1), 0), ptr_2, null):=Heap[null, wand#sm(ptr_2, null, ptr_2, null, 0, Seq#Index(content(oldHeap, this), index - 1), hd, null, hd, null, Seq#Drop(Seq#Take(content(oldHeap, this), index - 1), 0), ptr_2, null)][prev, next:=true]];
                            }
                          }
                        assert {:msg "  Folding lseg(prev, null) might fail. There might be insufficient permission to access prev.next (linked-list-predicates-with-wands.vpr@150.11--150.37) [110645]"}
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
                      
                      // -- Transfer of acc(lseg(prev.next, null), write)
                        
                        // -- checking if access predicate defined in used state
                          if (b_5 && b_6) {
                            if (b_5) {
                              
                              // -- Check definedness of acc(lseg(prev.next, null), write)
                                assert {:msg "  Folding lseg(prev, null) might fail. There might be insufficient permission to access prev.next (linked-list-predicates-with-wands.vpr@150.11--150.37) [110646]"}
                                  HasDirectPerm(Result_2Mask, prev, next);
                            }
                          }
                        arg_2_13 := Result_2Heap[prev, next];
                        arg_3_13 := null;
                        neededTransfer := FullPerm;
                        initNeededTransfer := Used_3Mask[null, lseg(arg_2_13, arg_3_13)] + neededTransfer;
                        assert {:msg "  Folding lseg(prev, null) might fail. Fraction acc(lseg(prev.next, null), write) might be negative. (linked-list-predicates-with-wands.vpr@150.11--150.37) [110647]"}
                          neededTransfer >= 0.000000000;
                        
                        // -- transfer code for top state of stack
                          // accumulate constraints which need to be satisfied for transfer to occur
                          accVar2 := true;
                          // actual code for the transfer from current state on stack
                          if (((b_5 && b_6) && accVar2) && neededTransfer > 0.000000000) {
                            maskTransfer := Ops_3Mask[null, lseg(arg_2_13, arg_3_13)];
                            if (neededTransfer <= maskTransfer) {
                              takeTransfer := neededTransfer;
                            } else {
                              takeTransfer := maskTransfer;
                            }
                            if (takeTransfer > 0.000000000) {
                              neededTransfer := neededTransfer - takeTransfer;
                              Used_3Mask := Used_3Mask[null, lseg(arg_2_13, arg_3_13):=Used_3Mask[null, lseg(arg_2_13, arg_3_13)] + takeTransfer];
                              b_6 := b_6 && state(Used_3Heap, Used_3Mask);
                              TempMask := ZeroMask[null, lseg(arg_2_13, arg_3_13):=FullPerm];
                              b_6 := b_6 && IdenticalOnKnownLocations(Ops_3Heap, Used_3Heap, TempMask);
                              Ops_3Mask := Ops_3Mask[null, lseg(arg_2_13, arg_3_13):=Ops_3Mask[null, lseg(arg_2_13, arg_3_13)] - takeTransfer];
                            }
                          }
                        
                        // -- transfer code for top state of stack
                          // accumulate constraints which need to be satisfied for transfer to occur
                          accVar2 := true;
                          // actual code for the transfer from current state on stack
                          if (((b_5 && b_6) && accVar2) && neededTransfer > 0.000000000) {
                            maskTransfer := Mask[null, lseg(arg_2_13, arg_3_13)];
                            if (neededTransfer <= maskTransfer) {
                              takeTransfer := neededTransfer;
                            } else {
                              takeTransfer := maskTransfer;
                            }
                            if (takeTransfer > 0.000000000) {
                              neededTransfer := neededTransfer - takeTransfer;
                              Used_3Mask := Used_3Mask[null, lseg(arg_2_13, arg_3_13):=Used_3Mask[null, lseg(arg_2_13, arg_3_13)] + takeTransfer];
                              b_6 := b_6 && state(Used_3Heap, Used_3Mask);
                              TempMask := ZeroMask[null, lseg(arg_2_13, arg_3_13):=FullPerm];
                              b_6 := b_6 && IdenticalOnKnownLocations(Heap, Used_3Heap, TempMask);
                              Mask := Mask[null, lseg(arg_2_13, arg_3_13):=Mask[null, lseg(arg_2_13, arg_3_13)] - takeTransfer];
                              havoc newPMask;
                              assume (forall <A, B> o_98: Ref, f_87: (Field A B) ::
                                { newPMask[o_98, f_87] }
                                Heap[null, wand#sm(ptr_2, null, ptr_2, null, 0, Seq#Index(content(oldHeap, this), index - 1), hd, null, hd, null, Seq#Drop(Seq#Take(content(oldHeap, this), index - 1), 0), ptr_2, null)][o_98, f_87] || Heap[null, lseg#sm(Heap[prev, next], null)][o_98, f_87] ==> newPMask[o_98, f_87]
                              );
                              Heap := Heap[null, wand#sm(ptr_2, null, ptr_2, null, 0, Seq#Index(content(oldHeap, this), index - 1), hd, null, hd, null, Seq#Drop(Seq#Take(content(oldHeap, this), index - 1), 0), ptr_2, null):=newPMask];
                            }
                          }
                        assert {:msg "  Folding lseg(prev, null) might fail. There might be insufficient permission to access lseg(prev.next, null) (linked-list-predicates-with-wands.vpr@150.11--150.37) [110648]"}
                          b_5 && b_6 ==> neededTransfer == 0.000000000 && Used_3Mask[null, lseg(arg_2_13, arg_3_13)] == initNeededTransfer;
                        
                        // -- Creating state which is the sum of the two previously built up states
                          b_9 := b_5 && b_6;
                          b_9 := b_9 && state(Result_3Heap, Result_3Mask);
                          b_9 := b_9 && sumMask(Result_3Mask, Ops_3Mask, Used_3Mask);
                          b_9 := (b_9 && IdenticalOnKnownLocations(Ops_3Heap, Result_3Heap, Ops_3Mask)) && IdenticalOnKnownLocations(Used_3Heap, Result_3Heap, Used_3Mask);
                          b_9 := b_9 && state(Result_3Heap, Result_3Mask);
                        b_5 := b_5 && b_9;
                      b_5 := b_5 && b_6;
                      b_5 := b_5 && Used_3Heap == Ops_3Heap;
                      if (b_5 && b_6) {
                        if (b_5) {
                          
                          // -- Check definedness of (unfolding acc(lseg(prev.next, null), write) in prev.next != null ==> prev.data <= prev.next.data)
                            UnfoldingHeap := Result_3Heap;
                            UnfoldingMask := Result_3Mask;
                            assume lseg#trigger(UnfoldingHeap, lseg(UnfoldingHeap[prev, next], null));
                            assume UnfoldingHeap[null, lseg(UnfoldingHeap[prev, next], null)] == FrameFragment((if UnfoldingHeap[prev, next] != null then CombineFrames(FrameFragment(UnfoldingHeap[UnfoldingHeap[prev, next], data]), CombineFrames(FrameFragment(UnfoldingHeap[UnfoldingHeap[prev, next], next]), UnfoldingHeap[null, lseg(UnfoldingHeap[UnfoldingHeap[prev, next], next], null)])) else EmptyFrame));
                            ExhaleWellDef1Heap := UnfoldingHeap;
                            ExhaleWellDef1Mask := UnfoldingMask;
                            perm := FullPerm;
                            if (perm != NoPerm) {
                              assert {:msg "  Folding lseg(prev, null) might fail. There might be insufficient permission to access lseg(prev.next, null) (linked-list-predicates-with-wands.vpr@150.11--150.37) [110649]"}
                                perm <= UnfoldingMask[null, lseg(UnfoldingHeap[prev, next], null)];
                            }
                            UnfoldingMask := UnfoldingMask[null, lseg(UnfoldingHeap[prev, next], null):=UnfoldingMask[null, lseg(UnfoldingHeap[prev, next], null)] - perm];
                            if (UnfoldingHeap[prev, next] != null) {
                              perm := FullPerm;
                              assume UnfoldingHeap[prev, next] != null;
                              UnfoldingMask := UnfoldingMask[UnfoldingHeap[prev, next], data:=UnfoldingMask[UnfoldingHeap[prev, next], data] + perm];
                              assume state(UnfoldingHeap, UnfoldingMask);
                              perm := FullPerm;
                              assume UnfoldingHeap[prev, next] != null;
                              UnfoldingMask := UnfoldingMask[UnfoldingHeap[prev, next], next:=UnfoldingMask[UnfoldingHeap[prev, next], next] + perm];
                              assume state(UnfoldingHeap, UnfoldingMask);
                              perm := FullPerm;
                              UnfoldingMask := UnfoldingMask[null, lseg(UnfoldingHeap[UnfoldingHeap[prev, next], next], null):=UnfoldingMask[null, lseg(UnfoldingHeap[UnfoldingHeap[prev, next], next], null)] + perm];
                              
                              // -- Extra unfolding of predicate
                                assume InsidePredicate(lseg(UnfoldingHeap[prev, next], null), UnfoldingHeap[null, lseg(UnfoldingHeap[prev, next], null)], lseg(UnfoldingHeap[UnfoldingHeap[prev, next], next], null), UnfoldingHeap[null, lseg(UnfoldingHeap[UnfoldingHeap[prev, next], next], null)]);
                              assume state(UnfoldingHeap, UnfoldingMask);
                              
                              // -- Execute unfolding (for extra information)
                                Unfolding1Heap := UnfoldingHeap;
                                Unfolding1Mask := UnfoldingMask;
                                assume lseg#trigger(Unfolding1Heap, lseg(Unfolding1Heap[Unfolding1Heap[prev, next], next], null));
                                assume Unfolding1Heap[null, lseg(Unfolding1Heap[Unfolding1Heap[prev, next], next], null)] == FrameFragment((if Unfolding1Heap[Unfolding1Heap[prev, next], next] != null then CombineFrames(FrameFragment(Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[prev, next], next], data]), CombineFrames(FrameFragment(Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[prev, next], next], next]), Unfolding1Heap[null, lseg(Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[prev, next], next], next], null)])) else EmptyFrame));
                                ExhaleWellDef1Heap := Unfolding1Heap;
                                ExhaleWellDef1Mask := Unfolding1Mask;
                                perm := FullPerm;
                                Unfolding1Mask := Unfolding1Mask[null, lseg(Unfolding1Heap[Unfolding1Heap[prev, next], next], null):=Unfolding1Mask[null, lseg(Unfolding1Heap[Unfolding1Heap[prev, next], next], null)] - perm];
                                if (Unfolding1Heap[Unfolding1Heap[prev, next], next] != null) {
                                  perm := FullPerm;
                                  assume Unfolding1Heap[Unfolding1Heap[prev, next], next] != null;
                                  Unfolding1Mask := Unfolding1Mask[Unfolding1Heap[Unfolding1Heap[prev, next], next], data:=Unfolding1Mask[Unfolding1Heap[Unfolding1Heap[prev, next], next], data] + perm];
                                  assume state(Unfolding1Heap, Unfolding1Mask);
                                  perm := FullPerm;
                                  assume Unfolding1Heap[Unfolding1Heap[prev, next], next] != null;
                                  Unfolding1Mask := Unfolding1Mask[Unfolding1Heap[Unfolding1Heap[prev, next], next], next:=Unfolding1Mask[Unfolding1Heap[Unfolding1Heap[prev, next], next], next] + perm];
                                  assume state(Unfolding1Heap, Unfolding1Mask);
                                  perm := FullPerm;
                                  Unfolding1Mask := Unfolding1Mask[null, lseg(Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[prev, next], next], next], null):=Unfolding1Mask[null, lseg(Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[prev, next], next], next], null)] + perm];
                                  
                                  // -- Extra unfolding of predicate
                                    assume InsidePredicate(lseg(Unfolding1Heap[Unfolding1Heap[prev, next], next], null), Unfolding1Heap[null, lseg(Unfolding1Heap[Unfolding1Heap[prev, next], next], null)], lseg(Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[prev, next], next], next], null), Unfolding1Heap[null, lseg(Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[prev, next], next], next], null)]);
                                  assume state(Unfolding1Heap, Unfolding1Mask);
                                  assume Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[prev, next], next], next] != null ==> Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[prev, next], next], data] <= Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[prev, next], next], next], data];
                                  
                                  // -- Free assumptions (inhale module)
                                    if (Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[prev, next], next], next] != null) {
                                      Unfolding1Heap := Unfolding1Heap[null, lseg#sm(Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[prev, next], next], next], null):=Unfolding1Heap[null, lseg#sm(Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[prev, next], next], next], null)][Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[prev, next], next], next], data:=true]];
                                      Unfolding1Heap := Unfolding1Heap[null, lseg#sm(Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[prev, next], next], next], null):=Unfolding1Heap[null, lseg#sm(Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[prev, next], next], next], null)][Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[prev, next], next], next], next:=true]];
                                      havoc newPMask;
                                      assume (forall <A, B> o_78: Ref, f_110: (Field A B) ::
                                        { newPMask[o_78, f_110] }
                                        Unfolding1Heap[null, lseg#sm(Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[prev, next], next], next], null)][o_78, f_110] || Unfolding1Heap[null, lseg#sm(Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[prev, next], next], next], next], null)][o_78, f_110] ==> newPMask[o_78, f_110]
                                      );
                                      Unfolding1Heap := Unfolding1Heap[null, lseg#sm(Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[prev, next], next], next], null):=newPMask];
                                    }
                                    assume state(Unfolding1Heap, Unfolding1Mask);
                                }
                                assume state(Unfolding1Heap, Unfolding1Mask);
                              assume UnfoldingHeap[UnfoldingHeap[prev, next], next] != null ==> UnfoldingHeap[UnfoldingHeap[prev, next], data] <= UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[prev, next], next], data];
                              
                              // -- Free assumptions (inhale module)
                                if (UnfoldingHeap[UnfoldingHeap[prev, next], next] != null) {
                                  UnfoldingHeap := UnfoldingHeap[null, lseg#sm(UnfoldingHeap[UnfoldingHeap[prev, next], next], null):=UnfoldingHeap[null, lseg#sm(UnfoldingHeap[UnfoldingHeap[prev, next], next], null)][UnfoldingHeap[UnfoldingHeap[prev, next], next], data:=true]];
                                  UnfoldingHeap := UnfoldingHeap[null, lseg#sm(UnfoldingHeap[UnfoldingHeap[prev, next], next], null):=UnfoldingHeap[null, lseg#sm(UnfoldingHeap[UnfoldingHeap[prev, next], next], null)][UnfoldingHeap[UnfoldingHeap[prev, next], next], next:=true]];
                                  havoc newPMask;
                                  assume (forall <A, B> o_99: Ref, f_108: (Field A B) ::
                                    { newPMask[o_99, f_108] }
                                    UnfoldingHeap[null, lseg#sm(UnfoldingHeap[UnfoldingHeap[prev, next], next], null)][o_99, f_108] || UnfoldingHeap[null, lseg#sm(UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[prev, next], next], next], null)][o_99, f_108] ==> newPMask[o_99, f_108]
                                  );
                                  UnfoldingHeap := UnfoldingHeap[null, lseg#sm(UnfoldingHeap[UnfoldingHeap[prev, next], next], null):=newPMask];
                                }
                                assume state(UnfoldingHeap, UnfoldingMask);
                            }
                            assume state(UnfoldingHeap, UnfoldingMask);
                            assert {:msg "  Folding lseg(prev, null) might fail. There might be insufficient permission to access prev.next (linked-list-predicates-with-wands.vpr@150.11--150.37) [110650]"}
                              HasDirectPerm(UnfoldingMask, prev, next);
                            assert {:msg "  Folding lseg(prev, null) might fail. There might be insufficient permission to access prev.next (linked-list-predicates-with-wands.vpr@150.11--150.37) [110651]"}
                              HasDirectPerm(UnfoldingMask, prev, next);
                            if (UnfoldingHeap[prev, next] != null) {
                              assert {:msg "  Folding lseg(prev, null) might fail. There might be insufficient permission to access prev.data (linked-list-predicates-with-wands.vpr@150.11--150.37) [110652]"}
                                HasDirectPerm(UnfoldingMask, prev, data);
                              assert {:msg "  Folding lseg(prev, null) might fail. There might be insufficient permission to access prev.next (linked-list-predicates-with-wands.vpr@150.11--150.37) [110653]"}
                                HasDirectPerm(UnfoldingMask, prev, next);
                              assert {:msg "  Folding lseg(prev, null) might fail. There might be insufficient permission to access prev.next.data (linked-list-predicates-with-wands.vpr@150.11--150.37) [110654]"}
                                HasDirectPerm(UnfoldingMask, UnfoldingHeap[prev, next], data);
                            }
                            
                            // -- Free assumptions (exp module)
                              if (Result_3Heap[prev, next] != null) {
                                Result_3Heap := Result_3Heap[null, lseg#sm(Result_3Heap[prev, next], null):=Result_3Heap[null, lseg#sm(Result_3Heap[prev, next], null)][Result_3Heap[prev, next], data:=true]];
                                Result_3Heap := Result_3Heap[null, lseg#sm(Result_3Heap[prev, next], null):=Result_3Heap[null, lseg#sm(Result_3Heap[prev, next], null)][Result_3Heap[prev, next], next:=true]];
                                havoc newPMask;
                                assume (forall <A, B> o_100: Ref, f_111: (Field A B) ::
                                  { newPMask[o_100, f_111] }
                                  Result_3Heap[null, lseg#sm(Result_3Heap[prev, next], null)][o_100, f_111] || Result_3Heap[null, lseg#sm(Result_3Heap[Result_3Heap[prev, next], next], null)][o_100, f_111] ==> newPMask[o_100, f_111]
                                );
                                Result_3Heap := Result_3Heap[null, lseg#sm(Result_3Heap[prev, next], null):=newPMask];
                              }
                              assume state(Result_3Heap, Result_3Mask);
                        }
                      }
                      assert {:msg "  Folding lseg(prev, null) might fail. Assertion (unfolding acc(lseg(prev.next, null), write) in prev.next != null ==> prev.data <= prev.next.data) might not hold. (linked-list-predicates-with-wands.vpr@150.11--150.37) [110655]"}
                        b_5 && b_6 ==> Result_3Heap[prev, next] != null ==> Result_3Heap[prev, data] <= Result_3Heap[Result_3Heap[prev, next], data];
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
                    
                    // -- Free assumptions (exhale module)
                      if (Used_3Heap[prev, next] != null) {
                        Used_3Heap := Used_3Heap[null, lseg#sm(Used_3Heap[prev, next], null):=Used_3Heap[null, lseg#sm(Used_3Heap[prev, next], null)][Used_3Heap[prev, next], data:=true]];
                        Used_3Heap := Used_3Heap[null, lseg#sm(Used_3Heap[prev, next], null):=Used_3Heap[null, lseg#sm(Used_3Heap[prev, next], null)][Used_3Heap[prev, next], next:=true]];
                        havoc newPMask;
                        assume (forall <A, B> o_101: Ref, f_112: (Field A B) ::
                          { newPMask[o_101, f_112] }
                          Used_3Heap[null, lseg#sm(Used_3Heap[prev, next], null)][o_101, f_112] || Used_3Heap[null, lseg#sm(Used_3Heap[Used_3Heap[prev, next], next], null)][o_101, f_112] ==> newPMask[o_101, f_112]
                        );
                        Used_3Heap := Used_3Heap[null, lseg#sm(Used_3Heap[prev, next], null):=newPMask];
                      }
                      assume state(Used_3Heap, Used_3Mask);
                    perm := FullPerm;
                    b_5 := b_5;
                    Ops_3Mask := Ops_3Mask[null, lseg(prev, null):=Ops_3Mask[null, lseg(prev, null)] + perm];
                    b_5 := b_5 && state(Ops_3Heap, Ops_3Mask);
                    b_5 := b_5 && state(Ops_3Heap, Ops_3Mask);
                    assume lseg#trigger(Ops_3Heap, lseg(prev, null));
                    assume Ops_3Heap[null, lseg(prev, null)] == FrameFragment((if prev != null then CombineFrames(FrameFragment(Ops_3Heap[prev, data]), CombineFrames(FrameFragment(Ops_3Heap[prev, next]), Ops_3Heap[null, lseg(Ops_3Heap[prev, next], null)])) else EmptyFrame));
                    if (!HasDirectPerm(Ops_3Mask, null, lseg(prev, null))) {
                      Ops_3Heap := Ops_3Heap[null, lseg#sm(prev, null):=ZeroPMask];
                      havoc freshVersion;
                      Ops_3Heap := Ops_3Heap[null, lseg(prev, null):=freshVersion];
                    }
                    if (prev != null) {
                      Ops_3Heap := Ops_3Heap[null, lseg#sm(prev, null):=Ops_3Heap[null, lseg#sm(prev, null)][prev, data:=true]];
                      Ops_3Heap := Ops_3Heap[null, lseg#sm(prev, null):=Ops_3Heap[null, lseg#sm(prev, null)][prev, next:=true]];
                      havoc newPMask;
                      assume (forall <A, B> o_102: Ref, f_113: (Field A B) ::
                        { newPMask[o_102, f_113] }
                        Ops_3Heap[null, lseg#sm(prev, null)][o_102, f_113] || Ops_3Heap[null, lseg#sm(Ops_3Heap[prev, next], null)][o_102, f_113] ==> newPMask[o_102, f_113]
                      );
                      Ops_3Heap := Ops_3Heap[null, lseg#sm(prev, null):=newPMask];
                    }
                    assume state(Ops_3Heap, Ops_3Mask);
                    b_5 := b_5 && state(Ops_3Heap, Ops_3Mask);
                }
                if (b_5) {
                  
                  // -- Translating statement: apply acc(lseg(prev, null), write) &&
  //   contentNodes(prev, null)[0] == old(content(this))[index - 2] --*
  //   acc(lseg(hd, null), write) &&
  //   contentNodes(hd, null) ==
  //   old(content(this))[0..index - 2] ++ old[lhs](contentNodes(prev, null)) -- linked-list-predicates-with-wands.vpr@151.11--152.136
                    
                    // -- check if wand is held and remove an instance
                      ExhaleWellDef0Heap := Ops_3Heap;
                      ExhaleWellDef0Mask := Ops_3Mask;
                      havoc Used_4Heap;
                      Used_4Mask := ZeroMask;
                      b_11 := b_11 && state(Used_4Heap, Used_4Mask);
                      
                      // -- Transfer of acc(lseg(prev, null), write) && contentNodes(prev, null)[0] == old(content(this))[index - 2] --* acc(lseg(hd, null), write) && contentNodes(hd, null) == old(content(this))[0..index - 2] ++ old[lhs](contentNodes(prev, null))
                        
                        // -- checking if access predicate defined in used state
                          if (b_5 && b_11) {
                            if (b_5) {
                              
                              // -- Check definedness of acc(lseg(prev, null), write) && contentNodes(prev, null)[0] == old(content(this))[index - 2] --* acc(lseg(hd, null), write) && contentNodes(hd, null) == old(content(this))[0..index - 2] ++ old[lhs](contentNodes(prev, null))
                                if (*) {
                                  havoc WandDefLHSHeap;
                                  WandDefLHSMask := ZeroMask;
                                  perm := FullPerm;
                                  WandDefLHSMask := WandDefLHSMask[null, lseg(prev, null):=WandDefLHSMask[null, lseg(prev, null)] + perm];
                                  assume state(WandDefLHSHeap, WandDefLHSMask);
                                  assume state(WandDefLHSHeap, WandDefLHSMask);
                                  
                                  // -- Check definedness of contentNodes(prev, null)[0] == old(content(this))[index - 2]
                                    if (*) {
                                      // Exhale precondition of function application
                                      ExhaleWellDef1Heap := WandDefLHSHeap;
                                      ExhaleWellDef1Mask := WandDefLHSMask;
                                      perm := FullPerm;
                                      assert {:msg "  Precondition of function contentNodes might not hold. There might be insufficient permission to access lseg(prev, null) (linked-list-predicates-with-wands.vpr@151.42--151.66) [110656]"}
                                        NoPerm < perm ==> NoPerm < WandDefLHSMask[null, lseg(prev, null)];
                                      // Finish exhale
                                      havoc ExhaleHeap;
                                      assume IdenticalOnKnownLocations(WandDefLHSHeap, ExhaleHeap, WandDefLHSMask);
                                      WandDefLHSHeap := ExhaleHeap;
                                      // Stop execution
                                      assume false;
                                    }
                                    assert {:msg "  Applying wand might fail. Index contentNodes(prev, null)[0] into contentNodes(prev, null) might exceed sequence length. (linked-list-predicates-with-wands.vpr@151.11--152.136) [110657]"}
                                      0 < Seq#Length(contentNodes(WandDefLHSHeap, prev, null));
                                    if (*) {
                                      // Exhale precondition of function application
                                      ExhaleWellDef1Heap := oldHeap;
                                      ExhaleWellDef1Mask := oldMask;
                                      perm := FullPerm;
                                      assert {:msg "  Precondition of function content might not hold. There might be insufficient permission to access List(this) (linked-list-predicates-with-wands.vpr@151.77--151.90) [110658]"}
                                        NoPerm < perm ==> NoPerm < oldMask[null, List(this)];
                                      // Finish exhale
                                      // Stop execution
                                      assume false;
                                    }
                                    assert {:msg "  Applying wand might fail. Index old(content(this))[index - 2] into old(content(this)) might be negative. (linked-list-predicates-with-wands.vpr@151.11--152.136) [110659]"}
                                      index - 2 >= 0;
                                    assert {:msg "  Applying wand might fail. Index old(content(this))[index - 2] into old(content(this)) might exceed sequence length. (linked-list-predicates-with-wands.vpr@151.11--152.136) [110660]"}
                                      index - 2 < Seq#Length(content(oldHeap, this));
                                  assume Seq#Index(contentNodes(WandDefLHSHeap, prev, null), 0) == Seq#Index(content(oldHeap, this), index - 2);
                                  assume state(WandDefLHSHeap, WandDefLHSMask);
                                  
                                  // -- Translating statement: label lhs8 -- linked-list-predicates-with-wands.vpr@151.17--152.136
                                    lhs8:
                                    Labellhs8Heap := WandDefLHSHeap;
                                    Labellhs8Mask := WandDefLHSMask;
                                    assume state(WandDefLHSHeap, WandDefLHSMask);
                                  havoc WandDefRHSHeap;
                                  WandDefRHSMask := ZeroMask;
                                  perm := FullPerm;
                                  WandDefRHSMask := WandDefRHSMask[null, lseg(hd, null):=WandDefRHSMask[null, lseg(hd, null)] + perm];
                                  assume state(WandDefRHSHeap, WandDefRHSMask);
                                  assume state(WandDefRHSHeap, WandDefRHSMask);
                                  
                                  // -- Check definedness of contentNodes(hd, null) == old(content(this))[0..index - 2] ++ old[lhs](contentNodes(prev, null))
                                    if (*) {
                                      // Exhale precondition of function application
                                      ExhaleWellDef1Heap := WandDefRHSHeap;
                                      ExhaleWellDef1Mask := WandDefRHSMask;
                                      perm := FullPerm;
                                      assert {:msg "  Precondition of function contentNodes might not hold. There might be insufficient permission to access lseg(hd, null) (linked-list-predicates-with-wands.vpr@152.41--152.63) [110661]"}
                                        NoPerm < perm ==> NoPerm < WandDefRHSMask[null, lseg(hd, null)];
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
                                      assert {:msg "  Precondition of function content might not hold. There might be insufficient permission to access List(this) (linked-list-predicates-with-wands.vpr@152.71--152.84) [110662]"}
                                        NoPerm < perm ==> NoPerm < oldMask[null, List(this)];
                                      // Finish exhale
                                      // Stop execution
                                      assume false;
                                    }
                                    if (*) {
                                      // Exhale precondition of function application
                                      ExhaleWellDef1Heap := Labellhs8Heap;
                                      ExhaleWellDef1Mask := Labellhs8Mask;
                                      perm := FullPerm;
                                      assert {:msg "  Precondition of function contentNodes might not hold. There might be insufficient permission to access lseg(prev, null) (linked-list-predicates-with-wands.vpr@152.110--152.134) [110663]"}
                                        NoPerm < perm ==> NoPerm < Labellhs8Mask[null, lseg(prev, null)];
                                      // Finish exhale
                                      havoc ExhaleHeap;
                                      assume IdenticalOnKnownLocations(Labellhs8Heap, ExhaleHeap, Labellhs8Mask);
                                      Labellhs8Heap := ExhaleHeap;
                                      // Stop execution
                                      assume false;
                                    }
                                  assume Seq#Equal(contentNodes(WandDefRHSHeap, hd, null), Seq#Append(Seq#Drop(Seq#Take(content(oldHeap, this), index - 2), 0), contentNodes(Labellhs8Heap, prev, null)));
                                  assume state(WandDefRHSHeap, WandDefRHSMask);
                                  assume false;
                                }
                            }
                          }
                        neededTransfer := 1.000000000;
                        initNeededTransfer := Used_4Mask[null, wand(prev, null, prev, null, 0, Seq#Index(content(oldHeap, this), index - 2), hd, null, hd, null, Seq#Drop(Seq#Take(content(oldHeap, this), index - 2), 0), prev, null)] + neededTransfer;
                        assert {:msg "  Applying wand might fail. Fraction acc(lseg(prev, null), write) && contentNodes(prev, null)[0] == old(content(this))[index - 2] --* acc(lseg(hd, null), write) && contentNodes(hd, null) == old(content(this))[0..index - 2] ++ old[lhs](contentNodes(prev, null)) might be negative. (linked-list-predicates-with-wands.vpr@151.11--152.136) [110664]"}
                          neededTransfer >= 0.000000000;
                        
                        // -- transfer code for top state of stack
                          // accumulate constraints which need to be satisfied for transfer to occur
                          accVar2 := true;
                          // actual code for the transfer from current state on stack
                          if (((b_5 && b_11) && accVar2) && neededTransfer > 0.000000000) {
                            maskTransfer := Ops_3Mask[null, wand(prev, null, prev, null, 0, Seq#Index(content(oldHeap, this), index - 2), hd, null, hd, null, Seq#Drop(Seq#Take(content(oldHeap, this), index - 2), 0), prev, null)];
                            if (neededTransfer <= maskTransfer) {
                              takeTransfer := neededTransfer;
                            } else {
                              takeTransfer := maskTransfer;
                            }
                            if (takeTransfer > 0.000000000) {
                              neededTransfer := neededTransfer - takeTransfer;
                              Used_4Mask := Used_4Mask[null, wand(prev, null, prev, null, 0, Seq#Index(content(oldHeap, this), index - 2), hd, null, hd, null, Seq#Drop(Seq#Take(content(oldHeap, this), index - 2), 0), prev, null):=Used_4Mask[null, wand(prev, null, prev, null, 0, Seq#Index(content(oldHeap, this), index - 2), hd, null, hd, null, Seq#Drop(Seq#Take(content(oldHeap, this), index - 2), 0), prev, null)] + takeTransfer];
                              b_11 := b_11 && state(Used_4Heap, Used_4Mask);
                              Ops_3Mask := Ops_3Mask[null, wand(prev, null, prev, null, 0, Seq#Index(content(oldHeap, this), index - 2), hd, null, hd, null, Seq#Drop(Seq#Take(content(oldHeap, this), index - 2), 0), prev, null):=Ops_3Mask[null, wand(prev, null, prev, null, 0, Seq#Index(content(oldHeap, this), index - 2), hd, null, hd, null, Seq#Drop(Seq#Take(content(oldHeap, this), index - 2), 0), prev, null)] - takeTransfer];
                            }
                          }
                        
                        // -- transfer code for top state of stack
                          // accumulate constraints which need to be satisfied for transfer to occur
                          accVar2 := true;
                          // actual code for the transfer from current state on stack
                          if (((b_5 && b_11) && accVar2) && neededTransfer > 0.000000000) {
                            maskTransfer := Mask[null, wand(prev, null, prev, null, 0, Seq#Index(content(oldHeap, this), index - 2), hd, null, hd, null, Seq#Drop(Seq#Take(content(oldHeap, this), index - 2), 0), prev, null)];
                            if (neededTransfer <= maskTransfer) {
                              takeTransfer := neededTransfer;
                            } else {
                              takeTransfer := maskTransfer;
                            }
                            if (takeTransfer > 0.000000000) {
                              neededTransfer := neededTransfer - takeTransfer;
                              Used_4Mask := Used_4Mask[null, wand(prev, null, prev, null, 0, Seq#Index(content(oldHeap, this), index - 2), hd, null, hd, null, Seq#Drop(Seq#Take(content(oldHeap, this), index - 2), 0), prev, null):=Used_4Mask[null, wand(prev, null, prev, null, 0, Seq#Index(content(oldHeap, this), index - 2), hd, null, hd, null, Seq#Drop(Seq#Take(content(oldHeap, this), index - 2), 0), prev, null)] + takeTransfer];
                              b_11 := b_11 && state(Used_4Heap, Used_4Mask);
                              Mask := Mask[null, wand(prev, null, prev, null, 0, Seq#Index(content(oldHeap, this), index - 2), hd, null, hd, null, Seq#Drop(Seq#Take(content(oldHeap, this), index - 2), 0), prev, null):=Mask[null, wand(prev, null, prev, null, 0, Seq#Index(content(oldHeap, this), index - 2), hd, null, hd, null, Seq#Drop(Seq#Take(content(oldHeap, this), index - 2), 0), prev, null)] - takeTransfer];
                            }
                          }
                        assert {:msg "  Applying wand might fail. Magic wand instance not found. (linked-list-predicates-with-wands.vpr@151.11--152.136) [110665]"}
                          b_5 && b_11 ==> neededTransfer == 0.000000000 && Used_4Mask[null, wand(prev, null, prev, null, 0, Seq#Index(content(oldHeap, this), index - 2), hd, null, hd, null, Seq#Drop(Seq#Take(content(oldHeap, this), index - 2), 0), prev, null)] == initNeededTransfer;
                        
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
                      
                      // -- Transfer of acc(lseg(prev, null), write)
                        arg_4_13 := prev;
                        arg_5_12 := null;
                        neededTransfer := FullPerm;
                        initNeededTransfer := Used_5Mask[null, lseg(arg_4_13, arg_5_12)] + neededTransfer;
                        assert {:msg "  Applying wand might fail. Fraction acc(lseg(prev, null), write) might be negative. (linked-list-predicates-with-wands.vpr@151.11--152.136) [110666]"}
                          neededTransfer >= 0.000000000;
                        
                        // -- transfer code for top state of stack
                          // accumulate constraints which need to be satisfied for transfer to occur
                          accVar2 := true;
                          // actual code for the transfer from current state on stack
                          if (((b_5 && b_13) && accVar2) && neededTransfer > 0.000000000) {
                            maskTransfer := Ops_3Mask[null, lseg(arg_4_13, arg_5_12)];
                            if (neededTransfer <= maskTransfer) {
                              takeTransfer := neededTransfer;
                            } else {
                              takeTransfer := maskTransfer;
                            }
                            if (takeTransfer > 0.000000000) {
                              neededTransfer := neededTransfer - takeTransfer;
                              Used_5Mask := Used_5Mask[null, lseg(arg_4_13, arg_5_12):=Used_5Mask[null, lseg(arg_4_13, arg_5_12)] + takeTransfer];
                              b_13 := b_13 && state(Used_5Heap, Used_5Mask);
                              TempMask := ZeroMask[null, lseg(arg_4_13, arg_5_12):=FullPerm];
                              b_13 := b_13 && IdenticalOnKnownLocations(Ops_3Heap, Used_5Heap, TempMask);
                              Ops_3Mask := Ops_3Mask[null, lseg(arg_4_13, arg_5_12):=Ops_3Mask[null, lseg(arg_4_13, arg_5_12)] - takeTransfer];
                            }
                          }
                        
                        // -- transfer code for top state of stack
                          // accumulate constraints which need to be satisfied for transfer to occur
                          accVar2 := true;
                          // actual code for the transfer from current state on stack
                          if (((b_5 && b_13) && accVar2) && neededTransfer > 0.000000000) {
                            maskTransfer := Mask[null, lseg(arg_4_13, arg_5_12)];
                            if (neededTransfer <= maskTransfer) {
                              takeTransfer := neededTransfer;
                            } else {
                              takeTransfer := maskTransfer;
                            }
                            if (takeTransfer > 0.000000000) {
                              neededTransfer := neededTransfer - takeTransfer;
                              Used_5Mask := Used_5Mask[null, lseg(arg_4_13, arg_5_12):=Used_5Mask[null, lseg(arg_4_13, arg_5_12)] + takeTransfer];
                              b_13 := b_13 && state(Used_5Heap, Used_5Mask);
                              TempMask := ZeroMask[null, lseg(arg_4_13, arg_5_12):=FullPerm];
                              b_13 := b_13 && IdenticalOnKnownLocations(Heap, Used_5Heap, TempMask);
                              Mask := Mask[null, lseg(arg_4_13, arg_5_12):=Mask[null, lseg(arg_4_13, arg_5_12)] - takeTransfer];
                              havoc newPMask;
                              assume (forall <A, B> o_103: Ref, f_114: (Field A B) ::
                                { newPMask[o_103, f_114] }
                                Heap[null, wand#sm(ptr_2, null, ptr_2, null, 0, Seq#Index(content(oldHeap, this), index - 1), hd, null, hd, null, Seq#Drop(Seq#Take(content(oldHeap, this), index - 1), 0), ptr_2, null)][o_103, f_114] || Heap[null, lseg#sm(prev, null)][o_103, f_114] ==> newPMask[o_103, f_114]
                              );
                              Heap := Heap[null, wand#sm(ptr_2, null, ptr_2, null, 0, Seq#Index(content(oldHeap, this), index - 1), hd, null, hd, null, Seq#Drop(Seq#Take(content(oldHeap, this), index - 1), 0), ptr_2, null):=newPMask];
                            }
                          }
                        assert {:msg "  Applying wand might fail. There might be insufficient permission to access lseg(prev, null) (linked-list-predicates-with-wands.vpr@151.11--152.136) [110667]"}
                          b_5 && b_13 ==> neededTransfer == 0.000000000 && Used_5Mask[null, lseg(arg_4_13, arg_5_12)] == initNeededTransfer;
                        
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
                          
                          // -- Check definedness of contentNodes(prev, null)[0] == old(content(this))[index - 2]
                            if (*) {
                              // Exhale precondition of function application
                              ExhaleWellDef1Heap := Result_6Heap;
                              ExhaleWellDef1Mask := Result_6Mask;
                              perm := FullPerm;
                              assert {:msg "  Precondition of function contentNodes might not hold. There might be insufficient permission to access lseg(prev, null) (linked-list-predicates-with-wands.vpr@151.42--151.66) [110668]"}
                                NoPerm < perm ==> NoPerm < Result_6Mask[null, lseg(prev, null)];
                              // Finish exhale
                              havoc ExhaleHeap;
                              assume IdenticalOnKnownLocations(Result_6Heap, ExhaleHeap, Result_6Mask);
                              Result_6Heap := ExhaleHeap;
                              // Stop execution
                              assume false;
                            }
                            assert {:msg "  Applying wand might fail. Index contentNodes(prev, null)[0] into contentNodes(prev, null) might exceed sequence length. (linked-list-predicates-with-wands.vpr@151.11--152.136) [110669]"}
                              0 < Seq#Length(contentNodes(Result_6Heap, prev, null));
                            if (*) {
                              // Exhale precondition of function application
                              ExhaleWellDef1Heap := oldHeap;
                              ExhaleWellDef1Mask := oldMask;
                              perm := FullPerm;
                              assert {:msg "  Precondition of function content might not hold. There might be insufficient permission to access List(this) (linked-list-predicates-with-wands.vpr@151.77--151.90) [110670]"}
                                NoPerm < perm ==> NoPerm < oldMask[null, List(this)];
                              // Finish exhale
                              // Stop execution
                              assume false;
                            }
                            assert {:msg "  Applying wand might fail. Index old(content(this))[index - 2] into old(content(this)) might be negative. (linked-list-predicates-with-wands.vpr@151.11--152.136) [110671]"}
                              index - 2 >= 0;
                            assert {:msg "  Applying wand might fail. Index old(content(this))[index - 2] into old(content(this)) might exceed sequence length. (linked-list-predicates-with-wands.vpr@151.11--152.136) [110672]"}
                              index - 2 < Seq#Length(content(oldHeap, this));
                        }
                      }
                      assert {:msg "  Applying wand might fail. Assertion contentNodes(prev, null)[0] == old(content(this))[index - 2] might not hold. (linked-list-predicates-with-wands.vpr@151.11--152.136) [110673]"}
                        b_5 && b_13 ==> Seq#Index(contentNodes(Result_6Heap, prev, null), 0) == Seq#Index(content(oldHeap, this), index - 2);
                      b_5 := b_5 && b_13;
                      b_5 := b_5 && Used_5Heap == Ops_3Heap;
                    b_5 := b_5 && state(Ops_3Heap, Ops_3Mask);
                    
                    // -- inhale the RHS of the wand
                      perm := FullPerm;
                      b_5 := b_5;
                      Ops_3Mask := Ops_3Mask[null, lseg(hd, null):=Ops_3Mask[null, lseg(hd, null)] + perm];
                      b_5 := b_5 && state(Ops_3Heap, Ops_3Mask);
                      b_5 := b_5 && state(Ops_3Heap, Ops_3Mask);
                      b_5 := b_5 && Seq#Equal(contentNodes(Ops_3Heap, hd, null), Seq#Append(Seq#Drop(Seq#Take(content(oldHeap, this), index - 2), 0), contentNodes(Labellhs7Heap, prev, null)));
                      b_5 := b_5 && state(Ops_3Heap, Ops_3Mask);
                    havoc ExhaleHeap;
                    assume IdenticalOnKnownLocations(Ops_3Heap, ExhaleHeap, Ops_3Mask);
                    Ops_3Heap := ExhaleHeap;
                    b_5 := b_5 && state(Ops_3Heap, Ops_3Mask);
                    b_5 := b_5 && state(Ops_3Heap, Ops_3Mask);
                }
                // Translating exec of non-ghost operationacc(lseg(hd, null), write) && contentNodes(hd, null) == old(content(this))[0..index - 1] ++ old[lhs](contentNodes(ptr, null))
                havoc Used_6Heap;
                Used_6Mask := ZeroMask;
                b_15 := b_15 && state(Used_6Heap, Used_6Mask);
                
                // -- Transfer of acc(lseg(hd, null), write)
                  arg_6_12 := hd;
                  arg_7_12 := null;
                  neededTransfer := FullPerm;
                  initNeededTransfer := Used_6Mask[null, lseg(arg_6_12, arg_7_12)] + neededTransfer;
                  assert {:msg "  Packaging wand might fail. Fraction acc(lseg(hd, null), write) might be negative. (linked-list-predicates-with-wands.vpr@149.7--153.8) [110674]"}
                    neededTransfer >= 0.000000000;
                  
                  // -- transfer code for top state of stack
                    // accumulate constraints which need to be satisfied for transfer to occur
                    accVar2 := true;
                    // actual code for the transfer from current state on stack
                    if ((((b_5 && b_5) && b_15) && accVar2) && neededTransfer > 0.000000000) {
                      maskTransfer := Ops_3Mask[null, lseg(arg_6_12, arg_7_12)];
                      if (neededTransfer <= maskTransfer) {
                        takeTransfer := neededTransfer;
                      } else {
                        takeTransfer := maskTransfer;
                      }
                      if (takeTransfer > 0.000000000) {
                        neededTransfer := neededTransfer - takeTransfer;
                        Used_6Mask := Used_6Mask[null, lseg(arg_6_12, arg_7_12):=Used_6Mask[null, lseg(arg_6_12, arg_7_12)] + takeTransfer];
                        b_15 := b_15 && state(Used_6Heap, Used_6Mask);
                        TempMask := ZeroMask[null, lseg(arg_6_12, arg_7_12):=FullPerm];
                        b_15 := b_15 && IdenticalOnKnownLocations(Ops_3Heap, Used_6Heap, TempMask);
                        Ops_3Mask := Ops_3Mask[null, lseg(arg_6_12, arg_7_12):=Ops_3Mask[null, lseg(arg_6_12, arg_7_12)] - takeTransfer];
                      }
                    }
                  
                  // -- transfer code for top state of stack
                    // accumulate constraints which need to be satisfied for transfer to occur
                    accVar2 := true;
                    // actual code for the transfer from current state on stack
                    if ((((b_5 && b_5) && b_15) && accVar2) && neededTransfer > 0.000000000) {
                      maskTransfer := Mask[null, lseg(arg_6_12, arg_7_12)];
                      if (neededTransfer <= maskTransfer) {
                        takeTransfer := neededTransfer;
                      } else {
                        takeTransfer := maskTransfer;
                      }
                      if (takeTransfer > 0.000000000) {
                        neededTransfer := neededTransfer - takeTransfer;
                        Used_6Mask := Used_6Mask[null, lseg(arg_6_12, arg_7_12):=Used_6Mask[null, lseg(arg_6_12, arg_7_12)] + takeTransfer];
                        b_15 := b_15 && state(Used_6Heap, Used_6Mask);
                        TempMask := ZeroMask[null, lseg(arg_6_12, arg_7_12):=FullPerm];
                        b_15 := b_15 && IdenticalOnKnownLocations(Heap, Used_6Heap, TempMask);
                        Mask := Mask[null, lseg(arg_6_12, arg_7_12):=Mask[null, lseg(arg_6_12, arg_7_12)] - takeTransfer];
                        havoc newPMask;
                        assume (forall <A, B> o_104: Ref, f_115: (Field A B) ::
                          { newPMask[o_104, f_115] }
                          Heap[null, wand#sm(ptr_2, null, ptr_2, null, 0, Seq#Index(content(oldHeap, this), index - 1), hd, null, hd, null, Seq#Drop(Seq#Take(content(oldHeap, this), index - 1), 0), ptr_2, null)][o_104, f_115] || Heap[null, lseg#sm(hd, null)][o_104, f_115] ==> newPMask[o_104, f_115]
                        );
                        Heap := Heap[null, wand#sm(ptr_2, null, ptr_2, null, 0, Seq#Index(content(oldHeap, this), index - 1), hd, null, hd, null, Seq#Drop(Seq#Take(content(oldHeap, this), index - 1), 0), ptr_2, null):=newPMask];
                      }
                    }
                  assert {:msg "  Packaging wand might fail. There might be insufficient permission to access lseg(hd, null) (linked-list-predicates-with-wands.vpr@149.7--153.8) [110675]"}
                    (b_5 && b_5) && b_15 ==> neededTransfer == 0.000000000 && Used_6Mask[null, lseg(arg_6_12, arg_7_12)] == initNeededTransfer;
                  
                  // -- Creating state which is the sum of the two previously built up states
                    b_16 := b_5 && b_15;
                    b_16 := b_16 && state(Result_7Heap, Result_7Mask);
                    b_16 := b_16 && sumMask(Result_7Mask, Ops_3Mask, Used_6Mask);
                    b_16 := (b_16 && IdenticalOnKnownLocations(Ops_3Heap, Result_7Heap, Ops_3Mask)) && IdenticalOnKnownLocations(Used_6Heap, Result_7Heap, Used_6Mask);
                    b_16 := b_16 && state(Result_7Heap, Result_7Mask);
                  b_5 := b_5 && b_16;
                if ((b_5 && b_5) && b_15) {
                  if (b_5) {
                    
                    // -- Check definedness of contentNodes(hd, null) == old(content(this))[0..index - 1] ++ old[lhs](contentNodes(ptr, null))
                      if (*) {
                        // Exhale precondition of function application
                        ExhaleWellDef0Heap := Result_7Heap;
                        ExhaleWellDef0Mask := Result_7Mask;
                        perm := FullPerm;
                        assert {:msg "  Precondition of function contentNodes might not hold. There might be insufficient permission to access lseg(hd, null) (linked-list-predicates-with-wands.vpr@149.23--149.24) [110676]"}
                          NoPerm < perm ==> NoPerm < Result_7Mask[null, lseg(hd, null)];
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
                        assert {:msg "  Precondition of function content might not hold. There might be insufficient permission to access List(this) (linked-list-predicates-with-wands.vpr@149.23--149.24) [110677]"}
                          NoPerm < perm ==> NoPerm < oldMask[null, List(this)];
                        // Finish exhale
                        // Stop execution
                        assume false;
                      }
                      if (*) {
                        // Exhale precondition of function application
                        ExhaleWellDef0Heap := Labellhs5Heap;
                        ExhaleWellDef0Mask := Labellhs5Mask;
                        perm := FullPerm;
                        assert {:msg "  Precondition of function contentNodes might not hold. There might be insufficient permission to access lseg(ptr, null) (linked-list-predicates-with-wands.vpr@149.23--149.24) [110678]"}
                          NoPerm < perm ==> NoPerm < Labellhs5Mask[null, lseg(ptr_2, null)];
                        // Finish exhale
                        havoc ExhaleHeap;
                        assume IdenticalOnKnownLocations(Labellhs5Heap, ExhaleHeap, Labellhs5Mask);
                        Labellhs5Heap := ExhaleHeap;
                        // Stop execution
                        assume false;
                      }
                  }
                }
                assert {:msg "  Packaging wand might fail. Assertion contentNodes(hd, null) == old(content(this))[0..index - 1] ++ old[lhs](contentNodes(ptr, null)) might not hold. (linked-list-predicates-with-wands.vpr@149.7--153.8) [110679]"}
                  (b_5 && b_5) && b_15 ==> Seq#Equal(contentNodes(Result_7Heap, hd, null), Seq#Append(Seq#Drop(Seq#Take(content(oldHeap, this), index - 1), 0), contentNodes(Labellhs5Heap, ptr_2, null)));
                assume state(Heap, Mask);
                Mask := Mask[null, wand(ptr_2, null, ptr_2, null, 0, Seq#Index(content(oldHeap, this), index - 1), hd, null, hd, null, Seq#Drop(Seq#Take(content(oldHeap, this), index - 1), 0), ptr_2, null):=Mask[null, wand(ptr_2, null, ptr_2, null, 0, Seq#Index(content(oldHeap, this), index - 1), hd, null, hd, null, Seq#Drop(Seq#Take(content(oldHeap, this), index - 1), 0), ptr_2, null)] + FullPerm];
                assume state(Heap, Mask);
                assume state(Heap, Mask);
                assume state(Heap, Mask);
            // Exhale invariant
            
            // -- Execute definedness check of ptr.next != null ==> ptr.data <= (unfolding acc(lseg(ptr.next, null), write) in ptr.next.data) without enforcing the checks (e.g., to gain more information)
              if (Heap[ptr_2, next] != null) {
                UnfoldingHeap := Heap;
                UnfoldingMask := Mask;
                assume lseg#trigger(UnfoldingHeap, lseg(UnfoldingHeap[ptr_2, next], null));
                assume UnfoldingHeap[null, lseg(UnfoldingHeap[ptr_2, next], null)] == FrameFragment((if UnfoldingHeap[ptr_2, next] != null then CombineFrames(FrameFragment(UnfoldingHeap[UnfoldingHeap[ptr_2, next], data]), CombineFrames(FrameFragment(UnfoldingHeap[UnfoldingHeap[ptr_2, next], next]), UnfoldingHeap[null, lseg(UnfoldingHeap[UnfoldingHeap[ptr_2, next], next], null)])) else EmptyFrame));
                ExhaleWellDef0Heap := UnfoldingHeap;
                ExhaleWellDef0Mask := UnfoldingMask;
                perm := FullPerm;
                if (perm != NoPerm) {
                  assert {:msg "  Loop invariant ptr.next != null ==> ptr.data <= (unfolding acc(lseg(ptr.next, null), write) in ptr.next.data) might not be preserved. There might be insufficient permission to access lseg(ptr.next, null) (linked-list-predicates-with-wands.vpr@138.17--138.102) [110680]"}
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
                          assume (forall <A, B> o_106: Ref, f_117: (Field A B) ::
                            { newPMask[o_106, f_117] }
                            Unfolding1Heap[null, lseg#sm(Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[ptr_2, next], next], next], null)][o_106, f_117] || Unfolding1Heap[null, lseg#sm(Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[ptr_2, next], next], next], next], null)][o_106, f_117] ==> newPMask[o_106, f_117]
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
                      assume (forall <A, B> o_105: Ref, f_116: (Field A B) ::
                        { newPMask[o_105, f_116] }
                        UnfoldingHeap[null, lseg#sm(UnfoldingHeap[UnfoldingHeap[ptr_2, next], next], null)][o_105, f_116] || UnfoldingHeap[null, lseg#sm(UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[ptr_2, next], next], next], null)][o_105, f_116] ==> newPMask[o_105, f_116]
                      );
                      UnfoldingHeap := UnfoldingHeap[null, lseg#sm(UnfoldingHeap[UnfoldingHeap[ptr_2, next], next], null):=newPMask];
                    }
                    assume state(UnfoldingHeap, UnfoldingMask);
                }
                assume state(UnfoldingHeap, UnfoldingMask);
                
                // -- Free assumptions (exp module)
                  if (Heap[ptr_2, next] != null) {
                    Heap := Heap[null, lseg#sm(Heap[ptr_2, next], null):=Heap[null, lseg#sm(Heap[ptr_2, next], null)][Heap[ptr_2, next], data:=true]];
                    Heap := Heap[null, lseg#sm(Heap[ptr_2, next], null):=Heap[null, lseg#sm(Heap[ptr_2, next], null)][Heap[ptr_2, next], next:=true]];
                    havoc newPMask;
                    assume (forall <A, B> o_107: Ref, f_118: (Field A B) ::
                      { newPMask[o_107, f_118] }
                      Heap[null, lseg#sm(Heap[ptr_2, next], null)][o_107, f_118] || Heap[null, lseg#sm(Heap[Heap[ptr_2, next], next], null)][o_107, f_118] ==> newPMask[o_107, f_118]
                    );
                    Heap := Heap[null, lseg#sm(Heap[ptr_2, next], null):=newPMask];
                  }
                  assume state(Heap, Mask);
                
                // -- Free assumptions (exp module)
                  if (Heap[ptr_2, next] != null) {
                    Heap := Heap[null, lseg#sm(Heap[ptr_2, next], null):=Heap[null, lseg#sm(Heap[ptr_2, next], null)][Heap[ptr_2, next], data:=true]];
                    Heap := Heap[null, lseg#sm(Heap[ptr_2, next], null):=Heap[null, lseg#sm(Heap[ptr_2, next], null)][Heap[ptr_2, next], next:=true]];
                    havoc newPMask;
                    assume (forall <A, B> o_108: Ref, f_119: (Field A B) ::
                      { newPMask[o_108, f_119] }
                      Heap[null, lseg#sm(Heap[ptr_2, next], null)][o_108, f_119] || Heap[null, lseg#sm(Heap[Heap[ptr_2, next], next], null)][o_108, f_119] ==> newPMask[o_108, f_119]
                    );
                    Heap := Heap[null, lseg#sm(Heap[ptr_2, next], null):=newPMask];
                  }
                  assume state(Heap, Mask);
              }
            ExhaleWellDef0Heap := Heap;
            ExhaleWellDef0Mask := Mask;
            perm := FullPerm;
            if (perm != NoPerm) {
              assert {:msg "  Loop invariant acc(ptr.next, write) && (acc(ptr.data, write) && acc(lseg(ptr.next, null), write)) might not be preserved. There might be insufficient permission to access ptr.next (linked-list-predicates-with-wands.vpr@132.17--132.76) [110681]"}
                perm <= Mask[ptr_2, next];
            }
            Mask := Mask[ptr_2, next:=Mask[ptr_2, next] - perm];
            perm := FullPerm;
            if (perm != NoPerm) {
              assert {:msg "  Loop invariant acc(ptr.next, write) && (acc(ptr.data, write) && acc(lseg(ptr.next, null), write)) might not be preserved. There might be insufficient permission to access ptr.data (linked-list-predicates-with-wands.vpr@132.17--132.76) [110682]"}
                perm <= Mask[ptr_2, data];
            }
            Mask := Mask[ptr_2, data:=Mask[ptr_2, data] - perm];
            perm := FullPerm;
            if (perm != NoPerm) {
              assert {:msg "  Loop invariant acc(ptr.next, write) && (acc(ptr.data, write) && acc(lseg(ptr.next, null), write)) might not be preserved. There might be insufficient permission to access lseg(ptr.next, null) (linked-list-predicates-with-wands.vpr@132.17--132.76) [110683]"}
                perm <= Mask[null, lseg(Heap[ptr_2, next], null)];
            }
            Mask := Mask[null, lseg(Heap[ptr_2, next], null):=Mask[null, lseg(Heap[ptr_2, next], null)] - perm];
            assert {:msg "  Loop invariant 1 <= index && index <= |old(content(this))| might not be preserved. Assertion 1 <= index might not hold. (linked-list-predicates-with-wands.vpr@133.17--133.60) [110684]"}
              1 <= index;
            assert {:msg "  Loop invariant 1 <= index && index <= |old(content(this))| might not be preserved. Assertion index <= |old(content(this))| might not hold. (linked-list-predicates-with-wands.vpr@133.17--133.60) [110685]"}
              index <= Seq#Length(content(oldHeap, this));
            if (Heap[ptr_2, next] == null) {
              assert {:msg "  Loop invariant ptr.next == null ==> index == |old(content(this))| might not be preserved. Assertion index == |old(content(this))| might not hold. (linked-list-predicates-with-wands.vpr@134.17--134.67) [110686]"}
                index == Seq#Length(content(oldHeap, this));
            }
            assert {:msg "  Loop invariant ptr.data == old(content(this))[index - 1] might not be preserved. Assertion ptr.data == old(content(this))[index - 1] might not hold. (linked-list-predicates-with-wands.vpr@135.17--135.56) [110687]"}
              Heap[ptr_2, data] == Seq#Index(content(oldHeap, this), index - 1);
            if (Heap[ptr_2, next] != null) {
              assert {:msg "  Loop invariant ptr.next != null ==> contentNodes(ptr.next, null) == old(content(this))[index..] might not be preserved. Assertion contentNodes(ptr.next, null) == old(content(this))[index..] might not hold. (linked-list-predicates-with-wands.vpr@136.17--136.97) [110688]"}
                Seq#Equal(contentNodes(Heap, Heap[ptr_2, next], null), Seq#Drop(content(oldHeap, this), index));
            }
            assert {:msg "  Loop invariant ptr.data < elem might not be preserved. Assertion ptr.data < elem might not hold. (linked-list-predicates-with-wands.vpr@137.17--137.32) [110689]"}
              Heap[ptr_2, data] < elem_1;
            if (Heap[ptr_2, next] != null) {
              assert {:msg "  Loop invariant ptr.next != null ==> ptr.data <= (unfolding acc(lseg(ptr.next, null), write) in ptr.next.data) might not be preserved. Assertion ptr.data <= (unfolding acc(lseg(ptr.next, null), write) in ptr.next.data) might not hold. (linked-list-predicates-with-wands.vpr@138.17--138.102) [110690]"}
                Heap[ptr_2, data] <= Heap[Heap[ptr_2, next], data];
            }
            // permLe
            assert {:msg "  Loop invariant acc(lseg(ptr, null), write) && contentNodes(ptr, null)[0] == old(content(this))[index - 1] --* acc(lseg(hd, null), write) && contentNodes(hd, null) == old(content(this))[0..index - 1] ++ old[lhs](contentNodes(ptr, null)) might not be preserved. Magic wand instance not found. (linked-list-predicates-with-wands.vpr@139.17--139.24) [110691]"}
              FullPerm <= Mask[null, wand(ptr_2, null, ptr_2, null, 0, Seq#Index(content(oldHeap, this), index - 1), hd, null, hd, null, Seq#Drop(Seq#Take(content(oldHeap, this), index - 1), 0), ptr_2, null)];
            Mask := Mask[null, wand(ptr_2, null, ptr_2, null, 0, Seq#Index(content(oldHeap, this), index - 1), hd, null, hd, null, Seq#Drop(Seq#Take(content(oldHeap, this), index - 1), 0), ptr_2, null):=Mask[null, wand(ptr_2, null, ptr_2, null, 0, Seq#Index(content(oldHeap, this), index - 1), hd, null, hd, null, Seq#Drop(Seq#Take(content(oldHeap, this), index - 1), 0), ptr_2, null)] - FullPerm];
            
            // -- Free assumptions (exhale module)
              if (Heap[ptr_2, next] != null) {
                Heap := Heap[null, lseg#sm(Heap[ptr_2, next], null):=Heap[null, lseg#sm(Heap[ptr_2, next], null)][Heap[ptr_2, next], data:=true]];
                Heap := Heap[null, lseg#sm(Heap[ptr_2, next], null):=Heap[null, lseg#sm(Heap[ptr_2, next], null)][Heap[ptr_2, next], next:=true]];
                havoc newPMask;
                assume (forall <A, B> o_109: Ref, f_120: (Field A B) ::
                  { newPMask[o_109, f_120] }
                  Heap[null, lseg#sm(Heap[ptr_2, next], null)][o_109, f_120] || Heap[null, lseg#sm(Heap[Heap[ptr_2, next], next], null)][o_109, f_120] ==> newPMask[o_109, f_120]
                );
                Heap := Heap[null, lseg#sm(Heap[ptr_2, next], null):=newPMask];
              }
              assume state(Heap, Mask);
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
          assume ptr_2 != null;
          Mask := Mask[ptr_2, next:=Mask[ptr_2, next] + perm];
          assume state(Heap, Mask);
          perm := FullPerm;
          assume ptr_2 != null;
          Mask := Mask[ptr_2, data:=Mask[ptr_2, data] + perm];
          assume state(Heap, Mask);
          perm := FullPerm;
          Mask := Mask[null, lseg(Heap[ptr_2, next], null):=Mask[null, lseg(Heap[ptr_2, next], null)] + perm];
          assume state(Heap, Mask);
          assume 1 <= index;
          assume state(Heap, Mask);
          assume index <= Seq#Length(content(oldHeap, this));
          if (Heap[ptr_2, next] == null) {
            assume state(Heap, Mask);
            assume index == Seq#Length(content(oldHeap, this));
          }
          assume state(Heap, Mask);
          assume Heap[ptr_2, data] == Seq#Index(content(oldHeap, this), index - 1);
          if (Heap[ptr_2, next] != null) {
            assume state(Heap, Mask);
            assume Seq#Equal(contentNodes(Heap, Heap[ptr_2, next], null), Seq#Drop(content(oldHeap, this), index));
          }
          assume Heap[ptr_2, data] < elem_1;
          if (Heap[ptr_2, next] != null) {
            assume Heap[ptr_2, data] <= Heap[Heap[ptr_2, next], data];
            
            // -- Free assumptions (inhale module)
              if (Heap[ptr_2, next] != null) {
                Heap := Heap[null, lseg#sm(Heap[ptr_2, next], null):=Heap[null, lseg#sm(Heap[ptr_2, next], null)][Heap[ptr_2, next], data:=true]];
                Heap := Heap[null, lseg#sm(Heap[ptr_2, next], null):=Heap[null, lseg#sm(Heap[ptr_2, next], null)][Heap[ptr_2, next], next:=true]];
                havoc newPMask;
                assume (forall <A, B> o_110: Ref, f_121: (Field A B) ::
                  { newPMask[o_110, f_121] }
                  Heap[null, lseg#sm(Heap[ptr_2, next], null)][o_110, f_121] || Heap[null, lseg#sm(Heap[Heap[ptr_2, next], next], null)][o_110, f_121] ==> newPMask[o_110, f_121]
                );
                Heap := Heap[null, lseg#sm(Heap[ptr_2, next], null):=newPMask];
              }
              assume state(Heap, Mask);
          }
          assume state(Heap, Mask);
          Mask := Mask[null, wand(ptr_2, null, ptr_2, null, 0, Seq#Index(content(oldHeap, this), index - 1), hd, null, hd, null, Seq#Drop(Seq#Take(content(oldHeap, this), index - 1), 0), ptr_2, null):=Mask[null, wand(ptr_2, null, ptr_2, null, 0, Seq#Index(content(oldHeap, this), index - 1), hd, null, hd, null, Seq#Drop(Seq#Take(content(oldHeap, this), index - 1), 0), ptr_2, null)] + FullPerm];
          assume state(Heap, Mask);
          assume state(Heap, Mask);
          
          // -- Execute definedness check of ptr.next != null ==> ptr.data <= (unfolding acc(lseg(ptr.next, null), write) in ptr.next.data) without enforcing the checks (e.g., to gain more information)
            if (Heap[ptr_2, next] != null) {
              UnfoldingHeap := Heap;
              UnfoldingMask := Mask;
              assume lseg#trigger(UnfoldingHeap, lseg(UnfoldingHeap[ptr_2, next], null));
              assume UnfoldingHeap[null, lseg(UnfoldingHeap[ptr_2, next], null)] == FrameFragment((if UnfoldingHeap[ptr_2, next] != null then CombineFrames(FrameFragment(UnfoldingHeap[UnfoldingHeap[ptr_2, next], data]), CombineFrames(FrameFragment(UnfoldingHeap[UnfoldingHeap[ptr_2, next], next]), UnfoldingHeap[null, lseg(UnfoldingHeap[UnfoldingHeap[ptr_2, next], next], null)])) else EmptyFrame));
              ExhaleWellDef0Heap := UnfoldingHeap;
              ExhaleWellDef0Mask := UnfoldingMask;
              perm := FullPerm;
              if (perm != NoPerm) {
                assert {:msg "  An internal error occurred. There might be insufficient permission to access lseg(ptr.next, null) (linked-list-predicates-with-wands.vpr@138.17--138.102) [110692]"}
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
                        assume (forall <A, B> o_112: Ref, f_123: (Field A B) ::
                          { newPMask[o_112, f_123] }
                          Unfolding1Heap[null, lseg#sm(Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[ptr_2, next], next], next], null)][o_112, f_123] || Unfolding1Heap[null, lseg#sm(Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[Unfolding1Heap[ptr_2, next], next], next], next], null)][o_112, f_123] ==> newPMask[o_112, f_123]
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
                    assume (forall <A, B> o_111: Ref, f_122: (Field A B) ::
                      { newPMask[o_111, f_122] }
                      UnfoldingHeap[null, lseg#sm(UnfoldingHeap[UnfoldingHeap[ptr_2, next], next], null)][o_111, f_122] || UnfoldingHeap[null, lseg#sm(UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[ptr_2, next], next], next], null)][o_111, f_122] ==> newPMask[o_111, f_122]
                    );
                    UnfoldingHeap := UnfoldingHeap[null, lseg#sm(UnfoldingHeap[UnfoldingHeap[ptr_2, next], next], null):=newPMask];
                  }
                  assume state(UnfoldingHeap, UnfoldingMask);
              }
              assume state(UnfoldingHeap, UnfoldingMask);
              
              // -- Free assumptions (exp module)
                if (Heap[ptr_2, next] != null) {
                  Heap := Heap[null, lseg#sm(Heap[ptr_2, next], null):=Heap[null, lseg#sm(Heap[ptr_2, next], null)][Heap[ptr_2, next], data:=true]];
                  Heap := Heap[null, lseg#sm(Heap[ptr_2, next], null):=Heap[null, lseg#sm(Heap[ptr_2, next], null)][Heap[ptr_2, next], next:=true]];
                  havoc newPMask;
                  assume (forall <A, B> o_114: Ref, f_125: (Field A B) ::
                    { newPMask[o_114, f_125] }
                    Heap[null, lseg#sm(Heap[ptr_2, next], null)][o_114, f_125] || Heap[null, lseg#sm(Heap[Heap[ptr_2, next], next], null)][o_114, f_125] ==> newPMask[o_114, f_125]
                  );
                  Heap := Heap[null, lseg#sm(Heap[ptr_2, next], null):=newPMask];
                }
                assume state(Heap, Mask);
              
              // -- Free assumptions (exp module)
                if (Heap[ptr_2, next] != null) {
                  Heap := Heap[null, lseg#sm(Heap[ptr_2, next], null):=Heap[null, lseg#sm(Heap[ptr_2, next], null)][Heap[ptr_2, next], data:=true]];
                  Heap := Heap[null, lseg#sm(Heap[ptr_2, next], null):=Heap[null, lseg#sm(Heap[ptr_2, next], null)][Heap[ptr_2, next], next:=true]];
                  havoc newPMask;
                  assume (forall <A, B> o_113: Ref, f_124: (Field A B) ::
                    { newPMask[o_113, f_124] }
                    Heap[null, lseg#sm(Heap[ptr_2, next], null)][o_113, f_124] || Heap[null, lseg#sm(Heap[Heap[ptr_2, next], next], null)][o_113, f_124] ==> newPMask[o_113, f_124]
                  );
                  Heap := Heap[null, lseg#sm(Heap[ptr_2, next], null):=newPMask];
                }
                assume state(Heap, Mask);
            }
        assume state(Heap, Mask);
      
      // -- Translating statement: tmp := new(data, next, head, held, changed) -- linked-list-predicates-with-wands.vpr@156.5--156.18
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
      
      // -- Translating statement: tmp.data := elem -- linked-list-predicates-with-wands.vpr@157.5--157.21
        assert {:msg "  Assignment might fail. There might be insufficient permission to access tmp.data (linked-list-predicates-with-wands.vpr@157.5--157.21) [110693]"}
          FullPerm == Mask[tmp, data];
        Heap := Heap[tmp, data:=elem_1];
        assume state(Heap, Mask);
      
      // -- Translating statement: tmp.next := ptr.next -- linked-list-predicates-with-wands.vpr@158.5--158.25
        
        // -- Check definedness of ptr.next
          assert {:msg "  Assignment might fail. There might be insufficient permission to access ptr.next (linked-list-predicates-with-wands.vpr@158.5--158.25) [110694]"}
            HasDirectPerm(Mask, ptr_2, next);
        assert {:msg "  Assignment might fail. There might be insufficient permission to access tmp.next (linked-list-predicates-with-wands.vpr@158.5--158.25) [110695]"}
          FullPerm == Mask[tmp, next];
        Heap := Heap[tmp, next:=Heap[ptr_2, next]];
        assume state(Heap, Mask);
      
      // -- Translating statement: ptr.next := tmp -- linked-list-predicates-with-wands.vpr@159.5--159.20
        assert {:msg "  Assignment might fail. There might be insufficient permission to access ptr.next (linked-list-predicates-with-wands.vpr@159.5--159.20) [110696]"}
          FullPerm == Mask[ptr_2, next];
        Heap := Heap[ptr_2, next:=tmp];
        assume state(Heap, Mask);
      
      // -- Translating statement: fold acc(lseg(ptr.next, null), write) -- linked-list-predicates-with-wands.vpr@162.5--162.35
        
        // -- Check definedness of acc(lseg(ptr.next, null), write)
          assert {:msg "  Folding lseg(ptr.next, null) might fail. There might be insufficient permission to access ptr.next (linked-list-predicates-with-wands.vpr@162.5--162.35) [110697]"}
            HasDirectPerm(Mask, ptr_2, next);
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        if (Heap[ptr_2, next] != null) {
          perm := FullPerm;
          if (perm != NoPerm) {
            assert {:msg "  Folding lseg(ptr.next, null) might fail. There might be insufficient permission to access ptr.next.data (linked-list-predicates-with-wands.vpr@162.5--162.35) [110700]"}
              perm <= Mask[Heap[ptr_2, next], data];
          }
          Mask := Mask[Heap[ptr_2, next], data:=Mask[Heap[ptr_2, next], data] - perm];
          perm := FullPerm;
          if (perm != NoPerm) {
            assert {:msg "  Folding lseg(ptr.next, null) might fail. There might be insufficient permission to access ptr.next.next (linked-list-predicates-with-wands.vpr@162.5--162.35) [110702]"}
              perm <= Mask[Heap[ptr_2, next], next];
          }
          Mask := Mask[Heap[ptr_2, next], next:=Mask[Heap[ptr_2, next], next] - perm];
          perm := FullPerm;
          if (perm != NoPerm) {
            assert {:msg "  Folding lseg(ptr.next, null) might fail. There might be insufficient permission to access lseg(ptr.next.next, null) (linked-list-predicates-with-wands.vpr@162.5--162.35) [110704]"}
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
              assert {:msg "  Folding lseg(ptr.next, null) might fail. There might be insufficient permission to access lseg(ptr.next.next, null) (linked-list-predicates-with-wands.vpr@162.5--162.35) [110707]"}
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
                  assume (forall <A, B> o_115: Ref, f_126: (Field A B) ::
                    { newPMask[o_115, f_126] }
                    UnfoldingHeap[null, lseg#sm(UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[ptr_2, next], next], next], null)][o_115, f_126] || UnfoldingHeap[null, lseg#sm(UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[ptr_2, next], next], next], next], null)][o_115, f_126] ==> newPMask[o_115, f_126]
                  );
                  UnfoldingHeap := UnfoldingHeap[null, lseg#sm(UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[ptr_2, next], next], next], null):=newPMask];
                }
                assume state(UnfoldingHeap, UnfoldingMask);
            }
            assume state(UnfoldingHeap, UnfoldingMask);
          if (Heap[Heap[ptr_2, next], next] != null) {
            assert {:msg "  Folding lseg(ptr.next, null) might fail. Assertion ptr.next.data <= ptr.next.next.data might not hold. (linked-list-predicates-with-wands.vpr@162.5--162.35) [110711]"}
              Heap[Heap[ptr_2, next], data] <= Heap[Heap[Heap[ptr_2, next], next], data];
          }
        }
        
        // -- Free assumptions (exhale module)
          if (Heap[Heap[ptr_2, next], next] != null) {
            Heap := Heap[null, lseg#sm(Heap[Heap[ptr_2, next], next], null):=Heap[null, lseg#sm(Heap[Heap[ptr_2, next], next], null)][Heap[Heap[ptr_2, next], next], data:=true]];
            Heap := Heap[null, lseg#sm(Heap[Heap[ptr_2, next], next], null):=Heap[null, lseg#sm(Heap[Heap[ptr_2, next], next], null)][Heap[Heap[ptr_2, next], next], next:=true]];
            havoc newPMask;
            assume (forall <A, B> o_116: Ref, f_127: (Field A B) ::
              { newPMask[o_116, f_127] }
              Heap[null, lseg#sm(Heap[Heap[ptr_2, next], next], null)][o_116, f_127] || Heap[null, lseg#sm(Heap[Heap[Heap[ptr_2, next], next], next], null)][o_116, f_127] ==> newPMask[o_116, f_127]
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
          assume (forall <A, B> o_118: Ref, f_129: (Field A B) ::
            { newPMask[o_118, f_129] }
            Heap[null, lseg#sm(Heap[ptr_2, next], null)][o_118, f_129] || Heap[null, lseg#sm(Heap[Heap[ptr_2, next], next], null)][o_118, f_129] ==> newPMask[o_118, f_129]
          );
          Heap := Heap[null, lseg#sm(Heap[ptr_2, next], null):=newPMask];
        }
        assume state(Heap, Mask);
        assume state(Heap, Mask);
      
      // -- Translating statement: fold acc(lseg(ptr, null), write) -- linked-list-predicates-with-wands.vpr@163.5--163.30
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        if (ptr_2 != null) {
          perm := FullPerm;
          if (perm != NoPerm) {
            assert {:msg "  Folding lseg(ptr, null) might fail. There might be insufficient permission to access ptr.data (linked-list-predicates-with-wands.vpr@163.5--163.30) [110715]"}
              perm <= Mask[ptr_2, data];
          }
          Mask := Mask[ptr_2, data:=Mask[ptr_2, data] - perm];
          perm := FullPerm;
          if (perm != NoPerm) {
            assert {:msg "  Folding lseg(ptr, null) might fail. There might be insufficient permission to access ptr.next (linked-list-predicates-with-wands.vpr@163.5--163.30) [110717]"}
              perm <= Mask[ptr_2, next];
          }
          Mask := Mask[ptr_2, next:=Mask[ptr_2, next] - perm];
          perm := FullPerm;
          if (perm != NoPerm) {
            assert {:msg "  Folding lseg(ptr, null) might fail. There might be insufficient permission to access lseg(ptr.next, null) (linked-list-predicates-with-wands.vpr@163.5--163.30) [110719]"}
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
              assert {:msg "  Folding lseg(ptr, null) might fail. There might be insufficient permission to access lseg(ptr.next, null) (linked-list-predicates-with-wands.vpr@163.5--163.30) [110722]"}
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
                  assume (forall <A, B> o_117: Ref, f_128: (Field A B) ::
                    { newPMask[o_117, f_128] }
                    UnfoldingHeap[null, lseg#sm(UnfoldingHeap[UnfoldingHeap[ptr_2, next], next], null)][o_117, f_128] || UnfoldingHeap[null, lseg#sm(UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[ptr_2, next], next], next], null)][o_117, f_128] ==> newPMask[o_117, f_128]
                  );
                  UnfoldingHeap := UnfoldingHeap[null, lseg#sm(UnfoldingHeap[UnfoldingHeap[ptr_2, next], next], null):=newPMask];
                }
                assume state(UnfoldingHeap, UnfoldingMask);
            }
            assume state(UnfoldingHeap, UnfoldingMask);
          if (Heap[ptr_2, next] != null) {
            assert {:msg "  Folding lseg(ptr, null) might fail. Assertion ptr.data <= ptr.next.data might not hold. (linked-list-predicates-with-wands.vpr@163.5--163.30) [110726]"}
              Heap[ptr_2, data] <= Heap[Heap[ptr_2, next], data];
          }
        }
        
        // -- Free assumptions (exhale module)
          if (Heap[ptr_2, next] != null) {
            Heap := Heap[null, lseg#sm(Heap[ptr_2, next], null):=Heap[null, lseg#sm(Heap[ptr_2, next], null)][Heap[ptr_2, next], data:=true]];
            Heap := Heap[null, lseg#sm(Heap[ptr_2, next], null):=Heap[null, lseg#sm(Heap[ptr_2, next], null)][Heap[ptr_2, next], next:=true]];
            havoc newPMask;
            assume (forall <A, B> o_122: Ref, f_138: (Field A B) ::
              { newPMask[o_122, f_138] }
              Heap[null, lseg#sm(Heap[ptr_2, next], null)][o_122, f_138] || Heap[null, lseg#sm(Heap[Heap[ptr_2, next], next], null)][o_122, f_138] ==> newPMask[o_122, f_138]
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
          assume (forall <A, B> o_123: Ref, f_139: (Field A B) ::
            { newPMask[o_123, f_139] }
            Heap[null, lseg#sm(ptr_2, null)][o_123, f_139] || Heap[null, lseg#sm(Heap[ptr_2, next], null)][o_123, f_139] ==> newPMask[o_123, f_139]
          );
          Heap := Heap[null, lseg#sm(ptr_2, null):=newPMask];
        }
        assume state(Heap, Mask);
        assume state(Heap, Mask);
      
      // -- Translating statement: apply acc(lseg(ptr, null), write) &&
  //   contentNodes(ptr, null)[0] == old(content(this))[index - 1] --*
  //   acc(lseg(hd, null), write) &&
  //   contentNodes(hd, null) ==
  //   old(content(this))[0..index - 1] ++ old[lhs](contentNodes(ptr, null)) -- linked-list-predicates-with-wands.vpr@165.5--165.18
        
        // -- check if wand is held and remove an instance
          ExhaleWellDef0Heap := Heap;
          ExhaleWellDef0Mask := Mask;
          // permLe
          assert {:msg "  Applying wand might fail. Magic wand instance not found. (linked-list-predicates-with-wands.vpr@165.5--165.18) [110728]"}
            FullPerm <= Mask[null, wand(ptr_2, null, ptr_2, null, 0, Seq#Index(content(oldHeap, this), index - 1), hd, null, hd, null, Seq#Drop(Seq#Take(content(oldHeap, this), index - 1), 0), ptr_2, null)];
          Mask := Mask[null, wand(ptr_2, null, ptr_2, null, 0, Seq#Index(content(oldHeap, this), index - 1), hd, null, hd, null, Seq#Drop(Seq#Take(content(oldHeap, this), index - 1), 0), ptr_2, null):=Mask[null, wand(ptr_2, null, ptr_2, null, 0, Seq#Index(content(oldHeap, this), index - 1), hd, null, hd, null, Seq#Drop(Seq#Take(content(oldHeap, this), index - 1), 0), ptr_2, null)] - FullPerm];
        assume state(Heap, Mask);
        
        // -- check if LHS holds and remove permissions 
          ExhaleWellDef0Heap := Heap;
          ExhaleWellDef0Mask := Mask;
          perm := FullPerm;
          if (perm != NoPerm) {
            assert {:msg "  Applying wand might fail. There might be insufficient permission to access lseg(ptr, null) (linked-list-predicates-with-wands.vpr@165.5--165.18) [110730]"}
              perm <= Mask[null, lseg(ptr_2, null)];
          }
          Mask := Mask[null, lseg(ptr_2, null):=Mask[null, lseg(ptr_2, null)] - perm];
          assert {:msg "  Applying wand might fail. Assertion contentNodes(ptr, null)[0] == old(content(this))[index - 1] might not hold. (linked-list-predicates-with-wands.vpr@165.5--165.18) [110731]"}
            Seq#Index(contentNodes(Heap, ptr_2, null), 0) == Seq#Index(content(oldHeap, this), index - 1);
        assume state(Heap, Mask);
        
        // -- inhale the RHS of the wand
          perm := FullPerm;
          Mask := Mask[null, lseg(hd, null):=Mask[null, lseg(hd, null)] + perm];
          assume state(Heap, Mask);
          assume state(Heap, Mask);
          assume Seq#Equal(contentNodes(Heap, hd, null), Seq#Append(Seq#Drop(Seq#Take(content(oldHeap, this), index - 1), 0), contentNodes(Labellhs9Heap, ptr_2, null)));
          assume state(Heap, Mask);
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        assume state(Heap, Mask);
        assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(List(this), write) -- linked-list-predicates-with-wands.vpr@168.3--168.23
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding List(this) might fail. There might be insufficient permission to access this.head (linked-list-predicates-with-wands.vpr@168.3--168.23) [110735]"}
        perm <= Mask[this, head_3];
    }
    Mask := Mask[this, head_3:=Mask[this, head_3] - perm];
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding List(this) might fail. There might be insufficient permission to access lseg(this.head, null) (linked-list-predicates-with-wands.vpr@168.3--168.23) [110737]"}
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
    assume (forall <A, B> o_124: Ref, f_140: (Field A B) ::
      { newPMask[o_124, f_140] }
      Heap[null, List#sm(this)][o_124, f_140] || Heap[null, lseg#sm(Heap[this, head_3], null)][o_124, f_140] ==> newPMask[o_124, f_140]
    );
    Heap := Heap[null, List#sm(this):=newPMask];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of insert might not hold. There might be insufficient permission to access List(this) (linked-list-predicates-with-wands.vpr@88.11--88.26) [110739]"}
        perm <= Mask[null, List(this)];
    }
    Mask := Mask[null, List(this):=Mask[null, List(this)] - perm];
    assert {:msg "  Postcondition of insert might not hold. Assertion 0 <= index might not hold. (linked-list-predicates-with-wands.vpr@89.11--89.54) [110740]"}
      0 <= index;
    assert {:msg "  Postcondition of insert might not hold. Assertion index <= |old(content(this))| might not hold. (linked-list-predicates-with-wands.vpr@89.11--89.54) [110741]"}
      index <= Seq#Length(content(oldHeap, this));
    assert {:msg "  Postcondition of insert might not hold. Assertion content(this) == old(content(this))[0..index] ++ Seq(elem) ++ old(content(this))[index..] might not hold. (linked-list-predicates-with-wands.vpr@90.11--90.100) [110742]"}
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
        assert {:msg "  Precondition of function length might not hold. There might be insufficient permission to access List(this) (linked-list-predicates-with-wands.vpr@173.16--173.28) [110743]"}
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
        assert {:msg "  Precondition of function content might not hold. There might be insufficient permission to access List(this) (linked-list-predicates-with-wands.vpr@175.22--175.35) [110744]"}
          NoPerm < perm ==> NoPerm < oldMask[null, List(this)];
        // Finish exhale
        // Stop execution
        assume false;
      }
      assert {:msg "  Contract might not be well-formed. Index content(this)[0] into content(this) might exceed sequence length. (linked-list-predicates-with-wands.vpr@175.11--175.39) [110745]"}
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
        assert {:msg "  Precondition of function content might not hold. There might be insufficient permission to access List(this) (linked-list-predicates-with-wands.vpr@176.11--176.24) [110746]"}
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
        assert {:msg "  Precondition of function content might not hold. There might be insufficient permission to access List(this) (linked-list-predicates-with-wands.vpr@176.32--176.45) [110747]"}
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
  
  // -- Translating statement: unfold acc(List(this), write) -- linked-list-predicates-with-wands.vpr@178.3--178.25
    assume List#trigger(Heap, List(this));
    assume Heap[null, List(this)] == CombineFrames(FrameFragment(Heap[this, head_3]), Heap[null, lseg(Heap[this, head_3], null)]);
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Unfolding List(this) might fail. There might be insufficient permission to access List(this) (linked-list-predicates-with-wands.vpr@178.3--178.25) [110750]"}
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
  
  // -- Translating statement: unfold acc(lseg(this.head, null), write) -- linked-list-predicates-with-wands.vpr@179.3--179.36
    
    // -- Check definedness of acc(lseg(this.head, null), write)
      assert {:msg "  Unfolding lseg(this.head, null) might fail. There might be insufficient permission to access this.head (linked-list-predicates-with-wands.vpr@179.3--179.36) [110753]"}
        HasDirectPerm(Mask, this, head_3);
    assume lseg#trigger(Heap, lseg(Heap[this, head_3], null));
    assume Heap[null, lseg(Heap[this, head_3], null)] == FrameFragment((if Heap[this, head_3] != null then CombineFrames(FrameFragment(Heap[Heap[this, head_3], data]), CombineFrames(FrameFragment(Heap[Heap[this, head_3], next]), Heap[null, lseg(Heap[Heap[this, head_3], next], null)])) else EmptyFrame));
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Unfolding lseg(this.head, null) might fail. There might be insufficient permission to access lseg(this.head, null) (linked-list-predicates-with-wands.vpr@179.3--179.36) [110756]"}
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
              assume (forall <A, B> o_126: Ref, f_142: (Field A B) ::
                { newPMask[o_126, f_142] }
                UnfoldingHeap[null, lseg#sm(UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[this, head_3], next], next], null)][o_126, f_142] || UnfoldingHeap[null, lseg#sm(UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[UnfoldingHeap[this, head_3], next], next], next], null)][o_126, f_142] ==> newPMask[o_126, f_142]
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
          assume (forall <A, B> o_125: Ref, f_141: (Field A B) ::
            { newPMask[o_125, f_141] }
            Heap[null, lseg#sm(Heap[Heap[this, head_3], next], null)][o_125, f_141] || Heap[null, lseg#sm(Heap[Heap[Heap[this, head_3], next], next], null)][o_125, f_141] ==> newPMask[o_125, f_141]
          );
          Heap := Heap[null, lseg#sm(Heap[Heap[this, head_3], next], null):=newPMask];
        }
        assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: res := this.head.data -- linked-list-predicates-with-wands.vpr@180.3--180.24
    
    // -- Check definedness of this.head.data
      assert {:msg "  Assignment might fail. There might be insufficient permission to access this.head (linked-list-predicates-with-wands.vpr@180.3--180.24) [110760]"}
        HasDirectPerm(Mask, this, head_3);
      assert {:msg "  Assignment might fail. There might be insufficient permission to access this.head.data (linked-list-predicates-with-wands.vpr@180.3--180.24) [110761]"}
        HasDirectPerm(Mask, Heap[this, head_3], data);
    res := Heap[Heap[this, head_3], data];
    assume state(Heap, Mask);
  
  // -- Translating statement: this.head := this.head.next -- linked-list-predicates-with-wands.vpr@181.3--181.30
    
    // -- Check definedness of this.head.next
      assert {:msg "  Assignment might fail. There might be insufficient permission to access this.head (linked-list-predicates-with-wands.vpr@181.3--181.30) [110762]"}
        HasDirectPerm(Mask, this, head_3);
      assert {:msg "  Assignment might fail. There might be insufficient permission to access this.head.next (linked-list-predicates-with-wands.vpr@181.3--181.30) [110763]"}
        HasDirectPerm(Mask, Heap[this, head_3], next);
    assert {:msg "  Assignment might fail. There might be insufficient permission to access this.head (linked-list-predicates-with-wands.vpr@181.3--181.30) [110764]"}
      FullPerm == Mask[this, head_3];
    Heap := Heap[this, head_3:=Heap[Heap[this, head_3], next]];
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(List(this), write) -- linked-list-predicates-with-wands.vpr@182.3--182.23
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding List(this) might fail. There might be insufficient permission to access this.head (linked-list-predicates-with-wands.vpr@182.3--182.23) [110767]"}
        perm <= Mask[this, head_3];
    }
    Mask := Mask[this, head_3:=Mask[this, head_3] - perm];
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding List(this) might fail. There might be insufficient permission to access lseg(this.head, null) (linked-list-predicates-with-wands.vpr@182.3--182.23) [110769]"}
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
    assume (forall <A, B> o_91: Ref, f_143: (Field A B) ::
      { newPMask[o_91, f_143] }
      Heap[null, List#sm(this)][o_91, f_143] || Heap[null, lseg#sm(Heap[this, head_3], null)][o_91, f_143] ==> newPMask[o_91, f_143]
    );
    Heap := Heap[null, List#sm(this):=newPMask];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of dequeue might not hold. There might be insufficient permission to access List(this) (linked-list-predicates-with-wands.vpr@174.11--174.26) [110771]"}
        perm <= Mask[null, List(this)];
    }
    Mask := Mask[null, List(this):=Mask[null, List(this)] - perm];
    assert {:msg "  Postcondition of dequeue might not hold. Assertion res == old(content(this)[0]) might not hold. (linked-list-predicates-with-wands.vpr@175.11--175.39) [110772]"}
      res == Seq#Index(content(oldHeap, this), 0);
    assert {:msg "  Postcondition of dequeue might not hold. Assertion content(this) == old(content(this)[1..]) might not hold. (linked-list-predicates-with-wands.vpr@176.11--176.51) [110773]"}
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
  var r_53: Ref;
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
          if (HasDirectPerm(PostMask, r_53, held)) {
            assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access r.held (linked-list-predicates-with-wands.vpr@200.11--200.51) [110774]"}
              HasDirectPerm(PostMask, r_53, held);
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
  //   (acc(lock.held, write) && acc(lock.changed, write)) -- linked-list-predicates-with-wands.vpr@203.3--203.64
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
  
  // -- Translating statement: label acq -- linked-list-predicates-with-wands.vpr@204.1--204.10
    acq_1:
    LabelacqHeap := Heap;
    LabelacqMask := Mask;
    acq_lblGuard := true;
    assume state(Heap, Mask);
  
  // -- Translating statement: if (2 <= length(lock)) -- linked-list-predicates-with-wands.vpr@206.3--213.4
    
    // -- Check definedness of 2 <= length(lock)
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        perm := FullPerm;
        assert {:msg "  Precondition of function length might not hold. There might be insufficient permission to access List(lock) (linked-list-predicates-with-wands.vpr@206.11--206.23) [110778]"}
          NoPerm < perm ==> NoPerm < Mask[null, List(lock)];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    if (2 <= length_1(Heap, lock)) {
      
      // -- Translating statement: r1 := dequeue(lock) -- linked-list-predicates-with-wands.vpr@208.5--208.24
        PreCallHeap := Heap;
        PreCallMask := Mask;
        
        // -- Exhaling precondition
          ExhaleWellDef0Heap := Heap;
          ExhaleWellDef0Mask := Mask;
          perm := FullPerm;
          if (perm != NoPerm) {
            assert {:msg "  The precondition of method dequeue might not hold. There might be insufficient permission to access List(lock) (linked-list-predicates-with-wands.vpr@208.5--208.24) [110779]"}
              perm <= Mask[null, List(lock)];
          }
          Mask := Mask[null, List(lock):=Mask[null, List(lock)] - perm];
          assert {:msg "  The precondition of method dequeue might not hold. Assertion 0 < length(lock) might not hold. (linked-list-predicates-with-wands.vpr@208.5--208.24) [110780]"}
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
      
      // -- Translating statement: assert r1 <= peek(lock) -- linked-list-predicates-with-wands.vpr@210.5--210.28
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        
        // -- Check definedness of r1 <= peek(lock)
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef1Heap := ExhaleWellDef0Heap;
            ExhaleWellDef1Mask := ExhaleWellDef0Mask;
            perm := FullPerm;
            assert {:msg "  Precondition of function peek might not hold. There might be insufficient permission to access List(lock) (linked-list-predicates-with-wands.vpr@210.18--210.28) [110781]"}
              NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[null, List(lock)];
            assert {:msg "  Precondition of function peek might not hold. Assertion 0 < length(lock) might not hold. (linked-list-predicates-with-wands.vpr@210.18--210.28) [110782]"}
              0 < length_1(ExhaleWellDef0Heap, lock);
            // Finish exhale
            havoc ExhaleHeap;
            assume IdenticalOnKnownLocations(ExhaleWellDef0Heap, ExhaleHeap, ExhaleWellDef0Mask);
            ExhaleWellDef0Heap := ExhaleHeap;
            // Stop execution
            assume false;
          }
        assert {:msg "  Assert might fail. Assertion r1 <= peek(lock) might not hold. (linked-list-predicates-with-wands.vpr@210.12--210.28) [110783]"}
          r1 <= peek(Heap, lock);
        assume state(Heap, Mask);
      
      // -- Translating statement: lock.changed := true -- linked-list-predicates-with-wands.vpr@212.5--212.25
        assert {:msg "  Assignment might fail. There might be insufficient permission to access lock.changed (linked-list-predicates-with-wands.vpr@212.5--212.25) [110784]"}
          FullPerm == Mask[lock, changed];
        Heap := Heap[lock, changed:=true];
        assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
  
  // -- Translating statement: exhale acc(List(lock), write) &&
  //   (acc(lock.held, write) &&
  //   (acc(lock.changed, write) &&
  //   (old[acq](content(lock)) == content(lock) || lock.changed))) -- linked-list-predicates-with-wands.vpr@216.3--217.71
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Exhale might fail. There might be insufficient permission to access List(lock) (linked-list-predicates-with-wands.vpr@216.13--217.71) [110786]"}
        perm <= Mask[null, List(lock)];
    }
    Mask := Mask[null, List(lock):=Mask[null, List(lock)] - perm];
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Exhale might fail. There might be insufficient permission to access lock.held (linked-list-predicates-with-wands.vpr@216.13--217.71) [110788]"}
        perm <= Mask[lock, held];
    }
    Mask := Mask[lock, held:=Mask[lock, held] - perm];
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Exhale might fail. There might be insufficient permission to access lock.changed (linked-list-predicates-with-wands.vpr@216.13--217.71) [110790]"}
        perm <= Mask[lock, changed];
    }
    Mask := Mask[lock, changed:=Mask[lock, changed] - perm];
    
    // -- Check definedness of old[acq](content(lock)) == content(lock) || lock.changed
      assert {:msg "  Exhale might fail. Did not reach labelled state acq required to evaluate old[acq](content(lock)). (linked-list-predicates-with-wands.vpr@216.13--217.71) [110791]"}
        acq_lblGuard;
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef1Heap := LabelacqHeap;
        ExhaleWellDef1Mask := LabelacqMask;
        perm := FullPerm;
        assert {:msg "  Precondition of function content might not hold. There might be insufficient permission to access List(lock) (linked-list-predicates-with-wands.vpr@217.23--217.36) [110792]"}
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
        assert {:msg "  Precondition of function content might not hold. There might be insufficient permission to access List(lock) (linked-list-predicates-with-wands.vpr@217.41--217.54) [110793]"}
          NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[null, List(lock)];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(ExhaleWellDef0Heap, ExhaleHeap, ExhaleWellDef0Mask);
        ExhaleWellDef0Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
      if (!Seq#Equal(content(LabelacqHeap, lock), content(Heap, lock))) {
        assert {:msg "  Exhale might fail. There might be insufficient permission to access lock.changed (linked-list-predicates-with-wands.vpr@216.13--217.71) [110794]"}
          HasDirectPerm(ExhaleWellDef0Mask, lock, changed);
      }
    assert {:msg "  Exhale might fail. Assertion old[acq](content(lock)) == content(lock) || lock.changed might not hold. (linked-list-predicates-with-wands.vpr@216.13--217.71) [110795]"}
      Seq#Equal(content(LabelacqHeap, lock), content(Heap, lock)) || Heap[lock, changed];
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Postcondition of test might not hold. Assertion (forperm r: Ref [r.held] :: false) might not hold. (linked-list-predicates-with-wands.vpr@200.11--200.51) [110796]"}
      (forall r_2: Ref ::
      { Mask[r_2, held] } { Heap[r_2, held] }
      HasDirectPerm(Mask, r_2, held) ==> false
    );
}