// 
// Translation of Viper program.
// 
// Date:         2024-12-27 02:15:30
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/quantifiedpredicates/predicates/arguments.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/quantifiedpredicates/predicates/arguments-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
axiom (forall o_38: Ref, f_44: (Field NormalField Ref), Heap: HeapType ::
  { Heap[o_38, f_44] }
  Heap[o_38, $allocated] ==> Heap[Heap[o_38, f_44], $allocated]
);
function  succHeap(Heap0: HeapType, Heap1: HeapType): bool;
function  succHeapTrans(Heap0: HeapType, Heap1: HeapType): bool;
function  IdenticalOnKnownLocations(Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType): bool;
function  IsPredicateField<A, B>(f_1: (Field A B)): bool;
function  IsWandField<A, B>(f_1: (Field A B)): bool;
function  getPredWandId<A, B>(f_1: (Field A B)): int;
// Frame all locations with direct permissions
axiom (forall <A, B> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_39: Ref, f_45: (Field A B) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_39, f_45] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, o_39, f_45) ==> Heap[o_39, f_45] == ExhaleHeap[o_39, f_45]
);
// Frame all predicate mask locations of predicates with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_15: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_15), ExhaleHeap[null, PredicateMaskField(pm_f_15)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_15) && IsPredicateField(pm_f_15) ==> Heap[null, PredicateMaskField(pm_f_15)] == ExhaleHeap[null, PredicateMaskField(pm_f_15)]
);
// Frame all locations with known folded permissions
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_15: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_15) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_15) && IsPredicateField(pm_f_15) ==> (forall <A, B> o2_15: Ref, f_45: (Field A B) ::
    { ExhaleHeap[o2_15, f_45] }
    Heap[null, PredicateMaskField(pm_f_15)][o2_15, f_45] ==> Heap[o2_15, f_45] == ExhaleHeap[o2_15, f_45]
  )
);
// Frame all wand mask locations of wands with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_15: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_15), ExhaleHeap[null, WandMaskField(pm_f_15)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_15) && IsWandField(pm_f_15) ==> Heap[null, WandMaskField(pm_f_15)] == ExhaleHeap[null, WandMaskField(pm_f_15)]
);
// Frame all locations in the footprint of magic wands
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_15: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_15) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_15) && IsWandField(pm_f_15) ==> (forall <A, B> o2_15: Ref, f_45: (Field A B) ::
    { ExhaleHeap[o2_15, f_45] }
    Heap[null, WandMaskField(pm_f_15)][o2_15, f_45] ==> Heap[o2_15, f_45] == ExhaleHeap[o2_15, f_45]
  )
);
// All previously-allocated references are still allocated
axiom (forall Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_39: Ref ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_39, $allocated] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> Heap[o_39, $allocated] ==> ExhaleHeap[o_39, $allocated]
);
// Updated Heaps are Successor Heaps
axiom (forall <A, B> Heap: HeapType, o_38: Ref, f_40: (Field A B), v: B ::
  { Heap[o_38, f_40:=v] }
  succHeap(Heap, Heap[o_38, f_40:=v])
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
// Function for trigger used in checks which are never triggered
// ==================================================

function  neverTriggered1(x_1: Ref): bool;
function  neverTriggered2(x_1: Ref): bool;
function  neverTriggered3(x_3: Ref): bool;
function  neverTriggered4(x_1: Ref): bool;
function  neverTriggered5(x_3: Ref): bool;
function  neverTriggered6(x_6: Ref): bool;
function  neverTriggered7(x_8_1: Ref): bool;
function  neverTriggered8(x_1: Ref): bool;
function  neverTriggered9(x_1: Ref): bool;
function  neverTriggered10(x_3: Ref): bool;
function  neverTriggered11(x_5: Ref): bool;
function  neverTriggered12(x_1: Ref): bool;
function  neverTriggered13(x_3: Ref): bool;
function  neverTriggered14(x_5: Ref): bool;
function  neverTriggered15(x_1: Ref): bool;
function  neverTriggered16(x_4: Ref): bool;
function  neverTriggered17(x_1: Ref): bool;
function  neverTriggered18(x_4: Ref): bool;
function  neverTriggered19(x_1: Ref): bool;
function  neverTriggered20(x_4: Ref): bool;
// ==================================================
// Functions used as inverse of receiver expressions in quantified permissions during inhale and exhale
// ==================================================

function  invRecv1(recv: Ref): Ref;
function  invRecv2(recv: Ref): Ref;
function  invRecv3(this_1_1: Ref, b_1_1_1: bool): Ref;
function  invRecv4(recv: Ref): Ref;
function  invRecv5(this_1_1: Ref, b_1_1_1: bool): Ref;
function  invRecv6(this_2_1: Ref, b_2_1_1: bool): Ref;
function  invRecv7(this_3_1: Ref, b_3_1: bool): Ref;
function  invRecv8(this_1_1: Ref, b_1_1_1: bool): Ref;
function  invRecv9(recv: Ref): Ref;
function  invRecv10(this: Ref, b_24: bool): Ref;
function  invRecv11(this_1: Ref, b_1_2: bool): Ref;
function  invRecv12(recv: Ref): Ref;
function  invRecv13(this: Ref, b_24: bool): Ref;
function  invRecv14(this_1: Ref, b_1_2: bool): Ref;
function  invRecv15(this_1_1: Ref, b_1_1_1: bool): Ref;
function  invRecv16(this_2_1: Ref, b_2_1_1: bool): Ref;
function  invRecv17(this_1_1: Ref, b_1_1_1: bool): Ref;
function  invRecv18(this_2_1: Ref, b_2_1_1: bool): Ref;
function  invRecv19(this_1_1: Ref, b_1_1_1: bool): Ref;
function  invRecv20(this_2_1: Ref, b_2_1_1: bool): Ref;
// ==================================================
// Functions used to represent the range of the projection of each QP instance onto its receiver expressions for quantified permissions during inhale and exhale
// ==================================================

function  qpRange1(recv: Ref): bool;
function  qpRange2(recv: Ref): bool;
function  qpRange3(this_1_1: Ref, b_1_1_1: bool): bool;
function  qpRange4(recv: Ref): bool;
function  qpRange5(this_1_1: Ref, b_1_1_1: bool): bool;
function  qpRange6(this_2_1: Ref, b_2_1_1: bool): bool;
function  qpRange7(this_3_1: Ref, b_3_1: bool): bool;
function  qpRange8(this_1_1: Ref, b_1_1_1: bool): bool;
function  qpRange9(recv: Ref): bool;
function  qpRange10(this: Ref, b_24: bool): bool;
function  qpRange11(this_1: Ref, b_1_2: bool): bool;
function  qpRange12(recv: Ref): bool;
function  qpRange13(this: Ref, b_24: bool): bool;
function  qpRange14(this_1: Ref, b_1_2: bool): bool;
function  qpRange15(this_1_1: Ref, b_1_1_1: bool): bool;
function  qpRange16(this_2_1: Ref, b_2_1_1: bool): bool;
function  qpRange17(this_1_1: Ref, b_1_1_1: bool): bool;
function  qpRange18(this_2_1: Ref, b_2_1_1: bool): bool;
function  qpRange19(this_1_1: Ref, b_1_1_1: bool): bool;
function  qpRange20(this_2_1: Ref, b_2_1_1: bool): bool;

// ==================================================
// Preamble of Function and predicate module.
// ==================================================

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
// Preamble of Set module.
// ==================================================


type Set T = [T]bool;

function Set#Card<T>(Set T): int;
axiom (forall<T> s: Set T :: { Set#Card(s) } 0 <= Set#Card(s));

function Set#Empty<T>(): Set T;
axiom (forall<T> o: T :: { Set#Empty()[o] } !Set#Empty()[o]);
axiom (forall<T> s: Set T :: { Set#Card(s) }
  (Set#Card(s) == 0 <==> s == Set#Empty()) &&
  (Set#Card(s) != 0 ==> (exists x: T :: s[x])));

function Set#Singleton<T>(T): Set T;
axiom (forall<T> r: T :: { Set#Singleton(r) } Set#Singleton(r)[r]);
axiom (forall<T> r: T, o: T :: { Set#Singleton(r)[o] } Set#Singleton(r)[o] <==> r == o);
axiom (forall<T> r: T :: { Set#Card(Set#Singleton(r)) } Set#Card(Set#Singleton(r)) == 1);

function Set#UnionOne<T>(Set T, T): Set T;
axiom (forall<T> a: Set T, x: T, o: T :: { Set#UnionOne(a,x)[o] }
  Set#UnionOne(a,x)[o] <==> o == x || a[o]);
axiom (forall<T> a: Set T, x: T :: { Set#UnionOne(a, x) }
  Set#UnionOne(a, x)[x]);
axiom (forall<T> a: Set T, x: T, y: T :: { Set#UnionOne(a, x), a[y] }
  a[y] ==> Set#UnionOne(a, x)[y]);
axiom (forall<T> a: Set T, x: T :: { Set#Card(Set#UnionOne(a, x)) }
  a[x] ==> Set#Card(Set#UnionOne(a, x)) == Set#Card(a));
axiom (forall<T> a: Set T, x: T :: { Set#Card(Set#UnionOne(a, x)) }
  !a[x] ==> Set#Card(Set#UnionOne(a, x)) == Set#Card(a) + 1);

function Set#Union<T>(Set T, Set T): Set T;
axiom (forall<T> a: Set T, b: Set T, o: T :: { Set#Union(a,b)[o] }
  Set#Union(a,b)[o] <==> a[o] || b[o]);
axiom (forall<T> a, b: Set T, y: T :: { Set#Union(a, b), a[y] }
  a[y] ==> Set#Union(a, b)[y]);
axiom (forall<T> a, b: Set T, y: T :: { Set#Union(a, b), b[y] }
  b[y] ==> Set#Union(a, b)[y]);
//axiom (forall<T> a, b: Set T :: { Set#Union(a, b) }
//  Set#Disjoint(a, b) ==>
//    Set#Difference(Set#Union(a, b), a) == b &&
//    Set#Difference(Set#Union(a, b), b) == a);

function Set#Intersection<T>(Set T, Set T): Set T;
axiom (forall<T> a: Set T, b: Set T, o: T :: { Set#Intersection(a,b)[o] } {Set#Intersection(a,b), a[o]} {Set#Intersection(a,b), b[o]} // AS: added alternative triggers 20/06/19
  Set#Intersection(a,b)[o] <==> a[o] && b[o]);

axiom (forall<T> a, b: Set T :: { Set#Union(Set#Union(a, b), b) }
  Set#Union(Set#Union(a, b), b) == Set#Union(a, b));
axiom (forall<T> a, b: Set T :: { Set#Union(a, Set#Union(a, b)) }
  Set#Union(a, Set#Union(a, b)) == Set#Union(a, b));
axiom (forall<T> a, b: Set T :: { Set#Intersection(Set#Intersection(a, b), b) }
  Set#Intersection(Set#Intersection(a, b), b) == Set#Intersection(a, b));
axiom (forall<T> a, b: Set T :: { Set#Intersection(a, Set#Intersection(a, b)) }
  Set#Intersection(a, Set#Intersection(a, b)) == Set#Intersection(a, b));
axiom (forall<T> a, b: Set T :: { Set#Card(Set#Union(a, b)) }{ Set#Card(Set#Intersection(a, b)) }
  Set#Card(Set#Union(a, b)) + Set#Card(Set#Intersection(a, b)) == Set#Card(a) + Set#Card(b));

function Set#Difference<T>(Set T, Set T): Set T;
axiom (forall<T> a: Set T, b: Set T, o: T :: { Set#Difference(a,b)[o] } { Set#Difference(a,b), a[o] }
  Set#Difference(a,b)[o] <==> a[o] && !b[o]);
axiom (forall<T> a, b: Set T, y: T :: { Set#Difference(a, b), b[y] }
  b[y] ==> !Set#Difference(a, b)[y] );
axiom (forall<T> a, b: Set T ::
  { Set#Card(Set#Difference(a, b)) }
  Set#Card(Set#Difference(a, b)) + Set#Card(Set#Difference(b, a))
  + Set#Card(Set#Intersection(a, b))
    == Set#Card(Set#Union(a, b)) &&
  Set#Card(Set#Difference(a, b)) == Set#Card(a) - Set#Card(Set#Intersection(a, b)));

function Set#Subset<T>(Set T, Set T): bool;
axiom(forall<T> a: Set T, b: Set T :: { Set#Subset(a,b) }
  Set#Subset(a,b) <==> (forall o: T :: {a[o]} {b[o]} a[o] ==> b[o]));
// axiom(forall<T> a: Set T, b: Set T ::
//   { Set#Subset(a,b), Set#Card(a), Set#Card(b) }  // very restrictive trigger
//   Set#Subset(a,b) ==> Set#Card(a) <= Set#Card(b));


function Set#Equal<T>(Set T, Set T): bool;
axiom(forall<T> a: Set T, b: Set T :: { Set#Equal(a,b) }
  Set#Equal(a,b) <==> (forall o: T :: {a[o]} {b[o]} a[o] <==> b[o]));
axiom(forall<T> a: Set T, b: Set T :: { Set#Equal(a,b) }  // extensionality axiom for sets
  Set#Equal(a,b) ==> a == b);

//function Set#Disjoint<T>(Set T, Set T): bool;
//axiom (forall<T> a: Set T, b: Set T :: { Set#Disjoint(a,b) }
//  Set#Disjoint(a,b) <==> (forall o: T :: {a[o]} {b[o]} !a[o] || !b[o]));

// ---------------------------------------------------------------
// -- Axiomatization of multisets --------------------------------
// ---------------------------------------------------------------

function Math#min(a: int, b: int): int;
axiom (forall a: int, b: int :: { Math#min(a, b) } a <= b <==> Math#min(a, b) == a);
axiom (forall a: int, b: int :: { Math#min(a, b) } b <= a <==> Math#min(a, b) == b);
axiom (forall a: int, b: int :: { Math#min(a, b) } Math#min(a, b) == a || Math#min(a, b) == b);

function Math#clip(a: int): int;
axiom (forall a: int :: { Math#clip(a) } 0 <= a ==> Math#clip(a) == a);
axiom (forall a: int :: { Math#clip(a) } a < 0  ==> Math#clip(a) == 0);

type MultiSet T; // = [T]int;

function MultiSet#Select<T>(ms: MultiSet T, x:T): int;

//function $IsGoodMultiSet<T>(ms: MultiSet T): bool;
// ints are non-negative, used after havocing, and for conversion from sequences to multisets.
//axiom (forall<T> ms: MultiSet T :: { $IsGoodMultiSet(ms) }
//  $IsGoodMultiSet(ms) <==>
//  (forall bx: T :: { ms[bx] } 0 <= ms[bx] && ms[bx] <= MultiSet#Card(ms)));

axiom (forall<T> ms: MultiSet T, x: T :: {MultiSet#Select(ms,x)} MultiSet#Select(ms,x) >= 0); // NEW

function MultiSet#Card<T>(MultiSet T): int;
axiom (forall<T> s: MultiSet T :: { MultiSet#Card(s) } 0 <= MultiSet#Card(s));
//axiom (forall<T> s: MultiSet T, x: T, n: int :: { MultiSet#Card(s[x := n]) }
//  0 <= n ==> MultiSet#Card(s[x := n]) == MultiSet#Card(s) - s[x] + n);
//
function MultiSet#Empty<T>(): MultiSet T;
axiom (forall<T> o: T :: { MultiSet#Select(MultiSet#Empty(),o) } MultiSet#Select(MultiSet#Empty(),o) == 0);
axiom (forall<T> s: MultiSet T :: { MultiSet#Card(s) }
  (MultiSet#Card(s) == 0 <==> s == MultiSet#Empty()) &&
  (MultiSet#Card(s) != 0 ==> (exists x: T :: 0 < MultiSet#Select(s,x))));

function MultiSet#Singleton<T>(T): MultiSet T;
axiom (forall<T> r: T, o: T :: { MultiSet#Select(MultiSet#Singleton(r),o) } (MultiSet#Select(MultiSet#Singleton(r),o) == 1 <==> r == o) &&
                                                            (MultiSet#Select(MultiSet#Singleton(r),o) == 0 <==> r != o));
axiom (forall<T> r: T :: { MultiSet#Singleton(r) } MultiSet#Card(MultiSet#Singleton(r)) == 1 && MultiSet#Select(MultiSet#Singleton(r),r) == 1); // AS: added
axiom (forall<T> r: T :: { MultiSet#Singleton(r) } MultiSet#Singleton(r) == MultiSet#UnionOne(MultiSet#Empty(), r)); // AS: remove this?

function MultiSet#UnionOne<T>(MultiSet T, T): MultiSet T;
// union-ing increases count by one for x, not for others
axiom (forall<T> a: MultiSet T, x: T, o: T :: { MultiSet#Select(MultiSet#UnionOne(a,x),o) } { MultiSet#UnionOne(a, x), MultiSet#Select(a,o) } // AS: added back this trigger (used on a similar axiom before)
  MultiSet#Select(MultiSet#UnionOne(a, x),o) == (if x==o then MultiSet#Select(a,o) + 1 else MultiSet#Select(a,o)));
// non-decreasing
axiom (forall<T> a: MultiSet T, x: T :: { MultiSet#Card(MultiSet#UnionOne(a, x)) } {MultiSet#UnionOne(a, x), MultiSet#Card(a)} // AS: added alternative trigger
  MultiSet#Card(MultiSet#UnionOne(a, x)) == MultiSet#Card(a) + 1);
// AS: added - concrete knowledge of element added
axiom (forall<T> a: MultiSet T, x: T :: { MultiSet#UnionOne(a,x)}
  MultiSet#Select(MultiSet#UnionOne(a, x),x) > 0 && MultiSet#Card(MultiSet#UnionOne(a, x)) > 0);

function MultiSet#Union<T>(MultiSet T, MultiSet T): MultiSet T;
// union-ing is the sum of the contents
axiom (forall<T> a: MultiSet T, b: MultiSet T, o: T :: { MultiSet#Select(MultiSet#Union(a,b),o) } {MultiSet#Union(a,b), MultiSet#Select(a,o), MultiSet#Select(b,o)}// AS: added triggers
  MultiSet#Select(MultiSet#Union(a,b),o) == MultiSet#Select(a,o) + MultiSet#Select(b,o));
axiom (forall<T> a: MultiSet T, b: MultiSet T :: { MultiSet#Card(MultiSet#Union(a,b)) } {MultiSet#Card(a), MultiSet#Union(a,b)} {MultiSet#Card(b), MultiSet#Union(a,b)}
  MultiSet#Card(MultiSet#Union(a,b)) == MultiSet#Card(a) + MultiSet#Card(b));

function MultiSet#Intersection<T>(MultiSet T, MultiSet T): MultiSet T;
axiom (forall<T> a: MultiSet T, b: MultiSet T, o: T :: { MultiSet#Select(MultiSet#Intersection(a,b),o) }
  MultiSet#Select(MultiSet#Intersection(a,b),o) == Math#min(MultiSet#Select(a,o),  MultiSet#Select(b,o)));

// left and right pseudo-idempotence
axiom (forall<T> a, b: MultiSet T :: { MultiSet#Intersection(MultiSet#Intersection(a, b), b) }
  MultiSet#Intersection(MultiSet#Intersection(a, b), b) == MultiSet#Intersection(a, b));
axiom (forall<T> a, b: MultiSet T :: { MultiSet#Intersection(a, MultiSet#Intersection(a, b)) }
  MultiSet#Intersection(a, MultiSet#Intersection(a, b)) == MultiSet#Intersection(a, b));

// multiset difference, a - b. clip() makes it positive.
function MultiSet#Difference<T>(MultiSet T, MultiSet T): MultiSet T;
axiom (forall<T> a: MultiSet T, b: MultiSet T, o: T :: { MultiSet#Select(MultiSet#Difference(a,b),o) }
  MultiSet#Select(MultiSet#Difference(a,b),o) == Math#clip(MultiSet#Select(a,o) - MultiSet#Select(b,o)));
axiom (forall<T> a, b: MultiSet T, y: T :: { MultiSet#Difference(a, b), MultiSet#Select(b,y), MultiSet#Select(a,y) }
  MultiSet#Select(a,y) <= MultiSet#Select(b,y) ==> MultiSet#Select(MultiSet#Difference(a, b),y) == 0 );
axiom (forall<T> a, b: MultiSet T ::
  { MultiSet#Card(MultiSet#Difference(a, b)) }
  MultiSet#Card(MultiSet#Difference(a, b)) + MultiSet#Card(MultiSet#Difference(b, a))
  + 2 * MultiSet#Card(MultiSet#Intersection(a, b))
    == MultiSet#Card(MultiSet#Union(a, b)) &&
  MultiSet#Card(MultiSet#Difference(a, b)) == MultiSet#Card(a) - MultiSet#Card(MultiSet#Intersection(a, b)));

// multiset subset means a must have at most as many of each element as b
function MultiSet#Subset<T>(MultiSet T, MultiSet T): bool;
axiom(forall<T> a: MultiSet T, b: MultiSet T :: { MultiSet#Subset(a,b) }
  MultiSet#Subset(a,b) <==> (forall o: T :: {MultiSet#Select(a,o)} {MultiSet#Select(b,o)} MultiSet#Select(a,o) <= MultiSet#Select(b,o)));

function MultiSet#Equal<T>(MultiSet T, MultiSet T): bool;
axiom(forall<T> a: MultiSet T, b: MultiSet T :: { MultiSet#Equal(a,b) }
  MultiSet#Equal(a,b) <==> (forall o: T :: {MultiSet#Select(a,o)} {MultiSet#Select(b,o)} MultiSet#Select(a,o) == MultiSet#Select(b,o)));
// extensionality axiom for multisets
axiom(forall<T> a: MultiSet T, b: MultiSet T :: { MultiSet#Equal(a,b) }
  MultiSet#Equal(a,b) ==> a == b);

function MultiSet#Disjoint<T>(MultiSet T, MultiSet T): bool;
axiom (forall<T> a: MultiSet T, b: MultiSet T :: { MultiSet#Disjoint(a,b) }
  MultiSet#Disjoint(a,b) <==> (forall o: T :: {MultiSet#Select(a,o)} {MultiSet#Select(b,o)} MultiSet#Select(a,o) == 0 || MultiSet#Select(b,o) == 0));

    

// ==================================================
// Translation of all fields
// ==================================================

const unique f_7: Field NormalField int;
axiom !IsPredicateField(f_7);
axiom !IsWandField(f_7);
const unique g: Field NormalField int;
axiom !IsPredicateField(g);
axiom !IsWandField(g);
const unique unrelatedField: Field NormalField int;
axiom !IsPredicateField(unrelatedField);
axiom !IsWandField(unrelatedField);

// ==================================================
// Translation of predicate valid
// ==================================================

type PredicateType_valid;
function  valid(this: Ref, b_24: bool): Field PredicateType_valid FrameType;
function  valid#sm(this: Ref, b_24: bool): Field PredicateType_valid PMaskType;
axiom (forall this: Ref, b_24: bool ::
  { PredicateMaskField(valid(this, b_24)) }
  PredicateMaskField(valid(this, b_24)) == valid#sm(this, b_24)
);
axiom (forall this: Ref, b_24: bool ::
  { valid(this, b_24) }
  IsPredicateField(valid(this, b_24))
);
axiom (forall this: Ref, b_24: bool ::
  { valid(this, b_24) }
  getPredWandId(valid(this, b_24)) == 0
);
function  valid#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  valid#everUsed<A>(pred: (Field A FrameType)): bool;
axiom (forall this: Ref, b_24: bool, this2: Ref, b2: bool ::
  { valid(this, b_24), valid(this2, b2) }
  valid(this, b_24) == valid(this2, b2) ==> this == this2 && b_24 == b2
);
axiom (forall this: Ref, b_24: bool, this2: Ref, b2: bool ::
  { valid#sm(this, b_24), valid#sm(this2, b2) }
  valid#sm(this, b_24) == valid#sm(this2, b2) ==> this == this2 && b_24 == b2
);

axiom (forall Heap: HeapType, this: Ref, b_24: bool ::
  { valid#trigger(Heap, valid(this, b_24)) }
  valid#everUsed(valid(this, b_24))
);

procedure valid#definedness(this: Ref, b_24: bool) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  
  // -- Check definedness of predicate body of valid
    
    // -- Initializing the state
      Mask := ZeroMask;
      assume state(Heap, Mask);
      assume AssumePermUpperBound;
      assume Heap[this, $allocated];
    if (b_24) {
      perm := FullPerm;
      assume this != null;
      Mask := Mask[this, f_7:=Mask[this, f_7] + perm];
      assume state(Heap, Mask);
    } else {
      perm := FullPerm;
      assume this != null;
      Mask := Mask[this, g:=Mask[this, g] + perm];
      assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method unrelated
// ==================================================

procedure unrelated(this: Ref) returns ()
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
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[this, $allocated];
  
  // -- Checked inhaling of precondition
    perm := FullPerm;
    assume this != null;
    Mask := Mask[this, unrelatedField:=Mask[this, unrelatedField] + perm];
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
    perm := FullPerm;
    assume this != null;
    PostMask := PostMask[this, unrelatedField:=PostMask[this, unrelatedField] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Exhaling postcondition
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of unrelated might not hold. There might be insufficient permission to access this.unrelatedField (arguments.vpr@11.13--11.44) [105050]"}
        perm <= Mask[this, unrelatedField];
    }
    Mask := Mask[this, unrelatedField:=Mask[this, unrelatedField] - perm];
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method t1_1
// ==================================================

procedure t1_1(this: Ref, xs: (Seq Ref), b_24: bool) returns ()
  modifies Heap, Mask;
{
  var QPMask: MaskType;
  var perm: Perm;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var newVersion: FrameType;
  var freshVersion: FrameType;
  var PreCallHeap: HeapType;
  var PreCallMask: MaskType;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[this, $allocated];
  
  // -- Checked inhaling of precondition
    assume Seq#Contains(xs, this);
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall x: Ref :: { (x in xs) } (x in xs) ==> acc(x.unrelatedField, write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource x.unrelatedField might not be injective. (arguments.vpr@20.14--20.71) [105051]"}
      (forall x_1: Ref, x_1_1: Ref ::
      
      (((x_1 != x_1_1 && Seq#Contains(xs, x_1)) && Seq#Contains(xs, x_1_1)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> x_1 != x_1_1
    );
    
    // -- Define Inverse Function
      assume (forall x_1: Ref ::
        { Heap[x_1, unrelatedField] } { QPMask[x_1, unrelatedField] } { Seq#ContainsTrigger(xs, x_1) } { Seq#Contains(xs, x_1) }
        Seq#Contains(xs, x_1) && NoPerm < FullPerm ==> qpRange1(x_1) && invRecv1(x_1) == x_1
      );
      assume (forall o_4: Ref ::
        { invRecv1(o_4) }
        (Seq#Contains(xs, invRecv1(o_4)) && NoPerm < FullPerm) && qpRange1(o_4) ==> invRecv1(o_4) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall x_1: Ref ::
        { Heap[x_1, unrelatedField] } { QPMask[x_1, unrelatedField] } { Seq#ContainsTrigger(xs, x_1) } { Seq#Contains(xs, x_1) }
        Seq#Contains(xs, x_1) ==> x_1 != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, unrelatedField] }
        ((Seq#Contains(xs, invRecv1(o_4)) && NoPerm < FullPerm) && qpRange1(o_4) ==> (NoPerm < FullPerm ==> invRecv1(o_4) == o_4) && QPMask[o_4, unrelatedField] == Mask[o_4, unrelatedField] + FullPerm) && (!((Seq#Contains(xs, invRecv1(o_4)) && NoPerm < FullPerm) && qpRange1(o_4)) ==> QPMask[o_4, unrelatedField] == Mask[o_4, unrelatedField])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != unrelatedField ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    perm := FullPerm;
    Mask := Mask[null, valid(this, b_24):=Mask[null, valid(this, b_24)] + perm];
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
    perm := FullPerm;
    PostMask := PostMask[null, valid(this, b_24):=PostMask[null, valid(this, b_24)] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: unfold acc(valid(this, b), write) -- arguments.vpr@24.5--24.38
    assume valid#trigger(Heap, valid(this, b_24));
    assume Heap[null, valid(this, b_24)] == FrameFragment((if b_24 then FrameFragment(Heap[this, f_7]) else FrameFragment(Heap[this, g])));
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Unfolding valid(this, b) might fail. There might be insufficient permission to access valid(this, b) (arguments.vpr@24.5--24.38) [105054]"}
        perm <= Mask[null, valid(this, b_24)];
    }
    Mask := Mask[null, valid(this, b_24):=Mask[null, valid(this, b_24)] - perm];
    
    // -- Update version of predicate
      if (!HasDirectPerm(Mask, null, valid(this, b_24))) {
        havoc newVersion;
        Heap := Heap[null, valid(this, b_24):=newVersion];
      }
    if (b_24) {
      perm := FullPerm;
      assume this != null;
      Mask := Mask[this, f_7:=Mask[this, f_7] + perm];
      assume state(Heap, Mask);
    } else {
      perm := FullPerm;
      assume this != null;
      Mask := Mask[this, g:=Mask[this, g] + perm];
      assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: if (b) -- arguments.vpr@25.5--29.6
    if (b_24) {
      
      // -- Translating statement: this.f := 1 -- arguments.vpr@26.9--26.20
        assert {:msg "  Assignment might fail. There might be insufficient permission to access this.f (arguments.vpr@26.9--26.20) [105057]"}
          FullPerm == Mask[this, f_7];
        Heap := Heap[this, f_7:=1];
        assume state(Heap, Mask);
    } else {
      
      // -- Translating statement: this.g := 2 -- arguments.vpr@28.9--28.20
        assert {:msg "  Assignment might fail. There might be insufficient permission to access this.g (arguments.vpr@28.9--28.20) [105058]"}
          FullPerm == Mask[this, g];
        Heap := Heap[this, g:=2];
        assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(valid(this, b), write) -- arguments.vpr@30.5--30.36
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    if (b_24) {
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Folding valid(this, b) might fail. There might be insufficient permission to access this.f (arguments.vpr@30.5--30.36) [105061]"}
          perm <= Mask[this, f_7];
      }
      Mask := Mask[this, f_7:=Mask[this, f_7] - perm];
    } else {
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Folding valid(this, b) might fail. There might be insufficient permission to access this.g (arguments.vpr@30.5--30.36) [105063]"}
          perm <= Mask[this, g];
      }
      Mask := Mask[this, g:=Mask[this, g] - perm];
    }
    perm := FullPerm;
    Mask := Mask[null, valid(this, b_24):=Mask[null, valid(this, b_24)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume valid#trigger(Heap, valid(this, b_24));
    assume Heap[null, valid(this, b_24)] == FrameFragment((if b_24 then FrameFragment(Heap[this, f_7]) else FrameFragment(Heap[this, g])));
    if (!HasDirectPerm(Mask, null, valid(this, b_24))) {
      Heap := Heap[null, valid#sm(this, b_24):=ZeroPMask];
      havoc freshVersion;
      Heap := Heap[null, valid(this, b_24):=freshVersion];
    }
    if (b_24) {
      Heap := Heap[null, valid#sm(this, b_24):=Heap[null, valid#sm(this, b_24)][this, f_7:=true]];
    } else {
      Heap := Heap[null, valid#sm(this, b_24):=Heap[null, valid#sm(this, b_24)][this, g:=true]];
    }
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: unrelated(this) -- arguments.vpr@31.5--31.20
    PreCallHeap := Heap;
    PreCallMask := Mask;
    
    // -- Exhaling precondition
      ExhaleWellDef0Mask := Mask;
      ExhaleWellDef0Heap := Heap;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  The precondition of method unrelated might not hold. There might be insufficient permission to access this.unrelatedField (arguments.vpr@31.5--31.20) [105065]"}
          perm <= Mask[this, unrelatedField];
      }
      Mask := Mask[this, unrelatedField:=Mask[this, unrelatedField] - perm];
      // Finish exhale
      havoc ExhaleHeap;
      assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
      Heap := ExhaleHeap;
    
    // -- Inhaling postcondition
      perm := FullPerm;
      assume this != null;
      Mask := Mask[this, unrelatedField:=Mask[this, unrelatedField] + perm];
      assume state(Heap, Mask);
      assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of t1_1 might not hold. There might be insufficient permission to access valid(this, b) (arguments.vpr@22.13--22.39) [105066]"}
        perm <= Mask[null, valid(this, b_24)];
    }
    Mask := Mask[null, valid(this, b_24):=Mask[null, valid(this, b_24)] - perm];
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method t1_2
// ==================================================

procedure t1_2(this: Ref, xs: (Seq Ref), b_24: bool) returns ()
  modifies Heap, Mask;
{
  var QPMask: MaskType;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var perm: Perm;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var newVersion: FrameType;
  var freshVersion: FrameType;
  var PreCallHeap: HeapType;
  var PreCallMask: MaskType;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[this, $allocated];
  
  // -- Checked inhaling of precondition
    assume Seq#Contains(xs, this);
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall x: Ref :: { (x in xs) } (x in xs) ==> acc(x.unrelatedField, write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource x.unrelatedField might not be injective. (arguments.vpr@36.14--36.71) [105067]"}
      (forall x_1: Ref, x_1_1: Ref ::
      
      (((x_1 != x_1_1 && Seq#Contains(xs, x_1)) && Seq#Contains(xs, x_1_1)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> x_1 != x_1_1
    );
    
    // -- Define Inverse Function
      assume (forall x_1: Ref ::
        { Heap[x_1, unrelatedField] } { QPMask[x_1, unrelatedField] } { Seq#ContainsTrigger(xs, x_1) } { Seq#Contains(xs, x_1) }
        Seq#Contains(xs, x_1) && NoPerm < FullPerm ==> qpRange2(x_1) && invRecv2(x_1) == x_1
      );
      assume (forall o_4: Ref ::
        { invRecv2(o_4) }
        (Seq#Contains(xs, invRecv2(o_4)) && NoPerm < FullPerm) && qpRange2(o_4) ==> invRecv2(o_4) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall x_1: Ref ::
        { Heap[x_1, unrelatedField] } { QPMask[x_1, unrelatedField] } { Seq#ContainsTrigger(xs, x_1) } { Seq#Contains(xs, x_1) }
        Seq#Contains(xs, x_1) ==> x_1 != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, unrelatedField] }
        ((Seq#Contains(xs, invRecv2(o_4)) && NoPerm < FullPerm) && qpRange2(o_4) ==> (NoPerm < FullPerm ==> invRecv2(o_4) == o_4) && QPMask[o_4, unrelatedField] == Mask[o_4, unrelatedField] + FullPerm) && (!((Seq#Contains(xs, invRecv2(o_4)) && NoPerm < FullPerm) && qpRange2(o_4)) ==> QPMask[o_4, unrelatedField] == Mask[o_4, unrelatedField])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != unrelatedField ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall x: Ref :: { (x in xs) } (x in xs) ==> acc(valid(x, b), write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    
    // -- check if receiver acc(valid(x, b), write) is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource valid(x, b) might not be injective. (arguments.vpr@37.14--37.66) [105068]"}
        (forall x_3: Ref, x_3_1: Ref ::
        { neverTriggered3(x_3), neverTriggered3(x_3_1) }
        (((x_3 != x_3_1 && Seq#Contains(xs, x_3)) && Seq#Contains(xs, x_3_1)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> x_3 != x_3_1 || b_24 != b_24
      );
    
    // -- Define Inverse Function
      assume (forall x_3: Ref ::
        { Heap[null, valid(x_3, b_24)] } { Mask[null, valid(x_3, b_24)] } { Seq#ContainsTrigger(xs, x_3) } { Seq#Contains(xs, x_3) }
        Seq#Contains(xs, x_3) && NoPerm < FullPerm ==> invRecv3(x_3, b_24) == x_3 && qpRange3(x_3, b_24)
      );
      assume (forall this_1_1: Ref, b_1_1_1: bool ::
        { invRecv3(this_1_1, b_1_1_1) }
        (Seq#Contains(xs, invRecv3(this_1_1, b_1_1_1)) && NoPerm < FullPerm) && qpRange3(this_1_1, b_1_1_1) ==> invRecv3(this_1_1, b_1_1_1) == this_1_1 && b_24 == b_1_1_1
      );
    
    // -- Define updated permissions
      assume (forall this_1_1: Ref, b_1_1_1: bool ::
        { QPMask[null, valid(this_1_1, b_1_1_1)] }
        (Seq#Contains(xs, invRecv3(this_1_1, b_1_1_1)) && NoPerm < FullPerm) && qpRange3(this_1_1, b_1_1_1) ==> (NoPerm < FullPerm ==> invRecv3(this_1_1, b_1_1_1) == this_1_1 && b_24 == b_1_1_1) && QPMask[null, valid(this_1_1, b_1_1_1)] == Mask[null, valid(this_1_1, b_1_1_1)] + FullPerm
      );
    
    // -- Define independent locations
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        (o_4 != null || !IsPredicateField(f_5)) || getPredWandId(f_5) != 0 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
      assume (forall this_1_1: Ref, b_1_1_1: bool ::
        { QPMask[null, valid(this_1_1, b_1_1_1)] }
        !((Seq#Contains(xs, invRecv3(this_1_1, b_1_1_1)) && NoPerm < FullPerm) && qpRange3(this_1_1, b_1_1_1)) ==> QPMask[null, valid(this_1_1, b_1_1_1)] == Mask[null, valid(this_1_1, b_1_1_1)]
      );
    Mask := QPMask;
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
    perm := FullPerm;
    PostMask := PostMask[null, valid(this, b_24):=PostMask[null, valid(this, b_24)] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: unfold acc(valid(this, b), write) -- arguments.vpr@40.5--40.38
    assume valid#trigger(Heap, valid(this, b_24));
    assume Heap[null, valid(this, b_24)] == FrameFragment((if b_24 then FrameFragment(Heap[this, f_7]) else FrameFragment(Heap[this, g])));
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Unfolding valid(this, b) might fail. There might be insufficient permission to access valid(this, b) (arguments.vpr@40.5--40.38) [105071]"}
        perm <= Mask[null, valid(this, b_24)];
    }
    Mask := Mask[null, valid(this, b_24):=Mask[null, valid(this, b_24)] - perm];
    
    // -- Update version of predicate
      if (!HasDirectPerm(Mask, null, valid(this, b_24))) {
        havoc newVersion;
        Heap := Heap[null, valid(this, b_24):=newVersion];
      }
    if (b_24) {
      perm := FullPerm;
      assume this != null;
      Mask := Mask[this, f_7:=Mask[this, f_7] + perm];
      assume state(Heap, Mask);
    } else {
      perm := FullPerm;
      assume this != null;
      Mask := Mask[this, g:=Mask[this, g] + perm];
      assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: if (b) -- arguments.vpr@41.5--45.6
    if (b_24) {
      
      // -- Translating statement: this.f := 1 -- arguments.vpr@42.9--42.20
        assert {:msg "  Assignment might fail. There might be insufficient permission to access this.f (arguments.vpr@42.9--42.20) [105074]"}
          FullPerm == Mask[this, f_7];
        Heap := Heap[this, f_7:=1];
        assume state(Heap, Mask);
    } else {
      
      // -- Translating statement: this.g := 2 -- arguments.vpr@44.9--44.20
        assert {:msg "  Assignment might fail. There might be insufficient permission to access this.g (arguments.vpr@44.9--44.20) [105075]"}
          FullPerm == Mask[this, g];
        Heap := Heap[this, g:=2];
        assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(valid(this, b), write) -- arguments.vpr@46.5--46.36
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    if (b_24) {
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Folding valid(this, b) might fail. There might be insufficient permission to access this.f (arguments.vpr@46.5--46.36) [105078]"}
          perm <= Mask[this, f_7];
      }
      Mask := Mask[this, f_7:=Mask[this, f_7] - perm];
    } else {
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Folding valid(this, b) might fail. There might be insufficient permission to access this.g (arguments.vpr@46.5--46.36) [105080]"}
          perm <= Mask[this, g];
      }
      Mask := Mask[this, g:=Mask[this, g] - perm];
    }
    perm := FullPerm;
    Mask := Mask[null, valid(this, b_24):=Mask[null, valid(this, b_24)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume valid#trigger(Heap, valid(this, b_24));
    assume Heap[null, valid(this, b_24)] == FrameFragment((if b_24 then FrameFragment(Heap[this, f_7]) else FrameFragment(Heap[this, g])));
    if (!HasDirectPerm(Mask, null, valid(this, b_24))) {
      Heap := Heap[null, valid#sm(this, b_24):=ZeroPMask];
      havoc freshVersion;
      Heap := Heap[null, valid(this, b_24):=freshVersion];
    }
    if (b_24) {
      Heap := Heap[null, valid#sm(this, b_24):=Heap[null, valid#sm(this, b_24)][this, f_7:=true]];
    } else {
      Heap := Heap[null, valid#sm(this, b_24):=Heap[null, valid#sm(this, b_24)][this, g:=true]];
    }
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: unrelated(this) -- arguments.vpr@47.5--47.20
    PreCallHeap := Heap;
    PreCallMask := Mask;
    
    // -- Exhaling precondition
      ExhaleWellDef0Mask := Mask;
      ExhaleWellDef0Heap := Heap;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  The precondition of method unrelated might not hold. There might be insufficient permission to access this.unrelatedField (arguments.vpr@47.5--47.20) [105082]"}
          perm <= Mask[this, unrelatedField];
      }
      Mask := Mask[this, unrelatedField:=Mask[this, unrelatedField] - perm];
      // Finish exhale
      havoc ExhaleHeap;
      assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
      Heap := ExhaleHeap;
    
    // -- Inhaling postcondition
      perm := FullPerm;
      assume this != null;
      Mask := Mask[this, unrelatedField:=Mask[this, unrelatedField] + perm];
      assume state(Heap, Mask);
      assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of t1_2 might not hold. There might be insufficient permission to access valid(this, b) (arguments.vpr@38.13--38.39) [105083]"}
        perm <= Mask[null, valid(this, b_24)];
    }
    Mask := Mask[null, valid(this, b_24):=Mask[null, valid(this, b_24)] - perm];
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method t1_3
// ==================================================

procedure t1_3(this: Ref, xs: (Seq Ref), b_24: bool) returns ()
  modifies Heap, Mask;
{
  var QPMask: MaskType;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var perm: Perm;
  var newVersion: FrameType;
  var freshVersion: FrameType;
  var PreCallHeap: HeapType;
  var PreCallMask: MaskType;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[this, $allocated];
  
  // -- Checked inhaling of precondition
    assume Seq#Contains(xs, this);
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall x: Ref :: { (x in xs) } (x in xs) ==> acc(x.unrelatedField, write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource x.unrelatedField might not be injective. (arguments.vpr@52.14--52.71) [105084]"}
      (forall x_1: Ref, x_1_1: Ref ::
      
      (((x_1 != x_1_1 && Seq#Contains(xs, x_1)) && Seq#Contains(xs, x_1_1)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> x_1 != x_1_1
    );
    
    // -- Define Inverse Function
      assume (forall x_1: Ref ::
        { Heap[x_1, unrelatedField] } { QPMask[x_1, unrelatedField] } { Seq#ContainsTrigger(xs, x_1) } { Seq#Contains(xs, x_1) }
        Seq#Contains(xs, x_1) && NoPerm < FullPerm ==> qpRange4(x_1) && invRecv4(x_1) == x_1
      );
      assume (forall o_4: Ref ::
        { invRecv4(o_4) }
        (Seq#Contains(xs, invRecv4(o_4)) && NoPerm < FullPerm) && qpRange4(o_4) ==> invRecv4(o_4) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall x_1: Ref ::
        { Heap[x_1, unrelatedField] } { QPMask[x_1, unrelatedField] } { Seq#ContainsTrigger(xs, x_1) } { Seq#Contains(xs, x_1) }
        Seq#Contains(xs, x_1) ==> x_1 != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, unrelatedField] }
        ((Seq#Contains(xs, invRecv4(o_4)) && NoPerm < FullPerm) && qpRange4(o_4) ==> (NoPerm < FullPerm ==> invRecv4(o_4) == o_4) && QPMask[o_4, unrelatedField] == Mask[o_4, unrelatedField] + FullPerm) && (!((Seq#Contains(xs, invRecv4(o_4)) && NoPerm < FullPerm) && qpRange4(o_4)) ==> QPMask[o_4, unrelatedField] == Mask[o_4, unrelatedField])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != unrelatedField ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall x: Ref :: { (x in xs) } (x in xs) ==> acc(valid(x, b), write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    
    // -- check if receiver acc(valid(x, b), write) is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource valid(x, b) might not be injective. (arguments.vpr@53.14--53.66) [105085]"}
        (forall x_3: Ref, x_3_1: Ref ::
        { neverTriggered5(x_3), neverTriggered5(x_3_1) }
        (((x_3 != x_3_1 && Seq#Contains(xs, x_3)) && Seq#Contains(xs, x_3_1)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> x_3 != x_3_1 || b_24 != b_24
      );
    
    // -- Define Inverse Function
      assume (forall x_3: Ref ::
        { Heap[null, valid(x_3, b_24)] } { Mask[null, valid(x_3, b_24)] } { Seq#ContainsTrigger(xs, x_3) } { Seq#Contains(xs, x_3) }
        Seq#Contains(xs, x_3) && NoPerm < FullPerm ==> invRecv5(x_3, b_24) == x_3 && qpRange5(x_3, b_24)
      );
      assume (forall this_1_1: Ref, b_1_1_1: bool ::
        { invRecv5(this_1_1, b_1_1_1) }
        (Seq#Contains(xs, invRecv5(this_1_1, b_1_1_1)) && NoPerm < FullPerm) && qpRange5(this_1_1, b_1_1_1) ==> invRecv5(this_1_1, b_1_1_1) == this_1_1 && b_24 == b_1_1_1
      );
    
    // -- Define updated permissions
      assume (forall this_1_1: Ref, b_1_1_1: bool ::
        { QPMask[null, valid(this_1_1, b_1_1_1)] }
        (Seq#Contains(xs, invRecv5(this_1_1, b_1_1_1)) && NoPerm < FullPerm) && qpRange5(this_1_1, b_1_1_1) ==> (NoPerm < FullPerm ==> invRecv5(this_1_1, b_1_1_1) == this_1_1 && b_24 == b_1_1_1) && QPMask[null, valid(this_1_1, b_1_1_1)] == Mask[null, valid(this_1_1, b_1_1_1)] + FullPerm
      );
    
    // -- Define independent locations
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        (o_4 != null || !IsPredicateField(f_5)) || getPredWandId(f_5) != 0 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
      assume (forall this_1_1: Ref, b_1_1_1: bool ::
        { QPMask[null, valid(this_1_1, b_1_1_1)] }
        !((Seq#Contains(xs, invRecv5(this_1_1, b_1_1_1)) && NoPerm < FullPerm) && qpRange5(this_1_1, b_1_1_1)) ==> QPMask[null, valid(this_1_1, b_1_1_1)] == Mask[null, valid(this_1_1, b_1_1_1)]
      );
    Mask := QPMask;
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
    
    // -- Check definedness of (forall x: Ref :: { (x in xs) } (x in xs) ==> acc(valid(x, b), write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    
    // -- check if receiver acc(valid(x, b), write) is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource valid(x, b) might not be injective. (arguments.vpr@54.13--54.65) [105086]"}
        (forall x_6: Ref, x_6_1: Ref ::
        { neverTriggered6(x_6), neverTriggered6(x_6_1) }
        (((x_6 != x_6_1 && Seq#Contains(xs, x_6)) && Seq#Contains(xs, x_6_1)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> x_6 != x_6_1 || b_24 != b_24
      );
    
    // -- Define Inverse Function
      assume (forall x_6: Ref ::
        { PostHeap[null, valid(x_6, b_24)] } { PostMask[null, valid(x_6, b_24)] } { Seq#ContainsTrigger(xs, x_6) } { Seq#Contains(xs, x_6) }
        Seq#Contains(xs, x_6) && NoPerm < FullPerm ==> invRecv6(x_6, b_24) == x_6 && qpRange6(x_6, b_24)
      );
      assume (forall this_2_1: Ref, b_2_1_1: bool ::
        { invRecv6(this_2_1, b_2_1_1) }
        (Seq#Contains(xs, invRecv6(this_2_1, b_2_1_1)) && NoPerm < FullPerm) && qpRange6(this_2_1, b_2_1_1) ==> invRecv6(this_2_1, b_2_1_1) == this_2_1 && b_24 == b_2_1_1
      );
    
    // -- Define updated permissions
      assume (forall this_2_1: Ref, b_2_1_1: bool ::
        { QPMask[null, valid(this_2_1, b_2_1_1)] }
        (Seq#Contains(xs, invRecv6(this_2_1, b_2_1_1)) && NoPerm < FullPerm) && qpRange6(this_2_1, b_2_1_1) ==> (NoPerm < FullPerm ==> invRecv6(this_2_1, b_2_1_1) == this_2_1 && b_24 == b_2_1_1) && QPMask[null, valid(this_2_1, b_2_1_1)] == PostMask[null, valid(this_2_1, b_2_1_1)] + FullPerm
      );
    
    // -- Define independent locations
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { PostMask[o_4, f_5] } { QPMask[o_4, f_5] }
        (o_4 != null || !IsPredicateField(f_5)) || getPredWandId(f_5) != 0 ==> PostMask[o_4, f_5] == QPMask[o_4, f_5]
      );
      assume (forall this_2_1: Ref, b_2_1_1: bool ::
        { QPMask[null, valid(this_2_1, b_2_1_1)] }
        !((Seq#Contains(xs, invRecv6(this_2_1, b_2_1_1)) && NoPerm < FullPerm) && qpRange6(this_2_1, b_2_1_1)) ==> QPMask[null, valid(this_2_1, b_2_1_1)] == PostMask[null, valid(this_2_1, b_2_1_1)]
      );
    PostMask := QPMask;
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: unfold acc(valid(this, b), write) -- arguments.vpr@56.5--56.38
    assume valid#trigger(Heap, valid(this, b_24));
    assume Heap[null, valid(this, b_24)] == FrameFragment((if b_24 then FrameFragment(Heap[this, f_7]) else FrameFragment(Heap[this, g])));
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Unfolding valid(this, b) might fail. There might be insufficient permission to access valid(this, b) (arguments.vpr@56.5--56.38) [105089]"}
        perm <= Mask[null, valid(this, b_24)];
    }
    Mask := Mask[null, valid(this, b_24):=Mask[null, valid(this, b_24)] - perm];
    
    // -- Update version of predicate
      if (!HasDirectPerm(Mask, null, valid(this, b_24))) {
        havoc newVersion;
        Heap := Heap[null, valid(this, b_24):=newVersion];
      }
    if (b_24) {
      perm := FullPerm;
      assume this != null;
      Mask := Mask[this, f_7:=Mask[this, f_7] + perm];
      assume state(Heap, Mask);
    } else {
      perm := FullPerm;
      assume this != null;
      Mask := Mask[this, g:=Mask[this, g] + perm];
      assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: if (b) -- arguments.vpr@57.5--61.6
    if (b_24) {
      
      // -- Translating statement: this.f := 1 -- arguments.vpr@58.9--58.20
        assert {:msg "  Assignment might fail. There might be insufficient permission to access this.f (arguments.vpr@58.9--58.20) [105092]"}
          FullPerm == Mask[this, f_7];
        Heap := Heap[this, f_7:=1];
        assume state(Heap, Mask);
    } else {
      
      // -- Translating statement: this.g := 2 -- arguments.vpr@60.9--60.20
        assert {:msg "  Assignment might fail. There might be insufficient permission to access this.g (arguments.vpr@60.9--60.20) [105093]"}
          FullPerm == Mask[this, g];
        Heap := Heap[this, g:=2];
        assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(valid(this, b), write) -- arguments.vpr@62.5--62.36
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    if (b_24) {
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Folding valid(this, b) might fail. There might be insufficient permission to access this.f (arguments.vpr@62.5--62.36) [105096]"}
          perm <= Mask[this, f_7];
      }
      Mask := Mask[this, f_7:=Mask[this, f_7] - perm];
    } else {
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Folding valid(this, b) might fail. There might be insufficient permission to access this.g (arguments.vpr@62.5--62.36) [105098]"}
          perm <= Mask[this, g];
      }
      Mask := Mask[this, g:=Mask[this, g] - perm];
    }
    perm := FullPerm;
    Mask := Mask[null, valid(this, b_24):=Mask[null, valid(this, b_24)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume valid#trigger(Heap, valid(this, b_24));
    assume Heap[null, valid(this, b_24)] == FrameFragment((if b_24 then FrameFragment(Heap[this, f_7]) else FrameFragment(Heap[this, g])));
    if (!HasDirectPerm(Mask, null, valid(this, b_24))) {
      Heap := Heap[null, valid#sm(this, b_24):=ZeroPMask];
      havoc freshVersion;
      Heap := Heap[null, valid(this, b_24):=freshVersion];
    }
    if (b_24) {
      Heap := Heap[null, valid#sm(this, b_24):=Heap[null, valid#sm(this, b_24)][this, f_7:=true]];
    } else {
      Heap := Heap[null, valid#sm(this, b_24):=Heap[null, valid#sm(this, b_24)][this, g:=true]];
    }
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: unrelated(this) -- arguments.vpr@63.5--63.20
    PreCallHeap := Heap;
    PreCallMask := Mask;
    
    // -- Exhaling precondition
      ExhaleWellDef0Mask := Mask;
      ExhaleWellDef0Heap := Heap;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  The precondition of method unrelated might not hold. There might be insufficient permission to access this.unrelatedField (arguments.vpr@63.5--63.20) [105100]"}
          perm <= Mask[this, unrelatedField];
      }
      Mask := Mask[this, unrelatedField:=Mask[this, unrelatedField] - perm];
      // Finish exhale
      havoc ExhaleHeap;
      assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
      Heap := ExhaleHeap;
    
    // -- Inhaling postcondition
      perm := FullPerm;
      assume this != null;
      Mask := Mask[this, unrelatedField:=Mask[this, unrelatedField] + perm];
      assume state(Heap, Mask);
      assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    havoc QPMask;
    
    // -- check that the permission amount is positive
      
    
    // -- check if receiver acc(valid(x, b), write) is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource valid(x, b) might not be injective. (arguments.vpr@54.13--54.65) [105101]"}
        (forall x_8_1: Ref, x_8_2: Ref ::
        { neverTriggered7(x_8_1), neverTriggered7(x_8_2) }
        (((x_8_1 != x_8_2 && Seq#Contains(xs, x_8_1)) && Seq#Contains(xs, x_8_2)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> x_8_1 != x_8_2 || b_24 != b_24
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Postcondition of t1_3 might not hold. There might be insufficient permission to access valid(x, b) (arguments.vpr@54.13--54.65) [105102]"}
        (forall x_8_1: Ref ::
        { Heap[null, valid(x_8_1, b_24)] } { Mask[null, valid(x_8_1, b_24)] } { Seq#ContainsTrigger(xs, x_8_1) } { Seq#Contains(xs, x_8_1) }
        Seq#Contains(xs, x_8_1) ==> Mask[null, valid(x_8_1, b_24)] >= FullPerm
      );
    
    // -- assumptions for inverse of receiver acc(valid(x, b), write)
      assume (forall x_8_1: Ref ::
        { Heap[null, valid(x_8_1, b_24)] } { Mask[null, valid(x_8_1, b_24)] } { Seq#ContainsTrigger(xs, x_8_1) } { Seq#Contains(xs, x_8_1) }
        Seq#Contains(xs, x_8_1) && NoPerm < FullPerm ==> invRecv7(x_8_1, b_24) == x_8_1 && qpRange7(x_8_1, b_24)
      );
      assume (forall this_3_1: Ref, b_3_1: bool ::
        { invRecv7(this_3_1, b_3_1) }
        (Seq#Contains(xs, invRecv7(this_3_1, b_3_1)) && NoPerm < FullPerm) && qpRange7(this_3_1, b_3_1) ==> invRecv7(this_3_1, b_3_1) == this_3_1 && b_24 == b_3_1
      );
    
    // -- assume permission updates
      assume (forall this_3_1: Ref, b_3_1: bool ::
        { QPMask[null, valid(this_3_1, b_3_1)] }
        (Seq#Contains(xs, invRecv7(this_3_1, b_3_1)) && NoPerm < FullPerm) && qpRange7(this_3_1, b_3_1) ==> (invRecv7(this_3_1, b_3_1) == this_3_1 && b_24 == b_3_1) && QPMask[null, valid(this_3_1, b_3_1)] == Mask[null, valid(this_3_1, b_3_1)] - FullPerm
      );
      assume (forall this_3_1: Ref, b_3_1: bool ::
        { QPMask[null, valid(this_3_1, b_3_1)] }
        !((Seq#Contains(xs, invRecv7(this_3_1, b_3_1)) && NoPerm < FullPerm) && qpRange7(this_3_1, b_3_1)) ==> QPMask[null, valid(this_3_1, b_3_1)] == Mask[null, valid(this_3_1, b_3_1)]
      );
    
    // -- assume permission updates for independent locations 
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        (o_4 != null || !IsPredicateField(f_5)) || getPredWandId(f_5) != 0 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method t1_4
// ==================================================

procedure t1_4(this: Ref, xs: (Seq Ref), b_24: bool) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var QPMask: MaskType;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var newVersion: FrameType;
  var freshVersion: FrameType;
  var PreCallHeap: HeapType;
  var PreCallMask: MaskType;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[this, $allocated];
  
  // -- Checked inhaling of precondition
    assume Seq#Contains(xs, this);
    assume state(Heap, Mask);
    perm := FullPerm;
    assume this != null;
    Mask := Mask[this, unrelatedField:=Mask[this, unrelatedField] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall x: Ref :: { (x in xs) } (x in xs) ==> acc(valid(x, b), write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    
    // -- check if receiver acc(valid(x, b), write) is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource valid(x, b) might not be injective. (arguments.vpr@69.14--69.66) [105103]"}
        (forall x_1: Ref, x_1_1: Ref ::
        { neverTriggered8(x_1), neverTriggered8(x_1_1) }
        (((x_1 != x_1_1 && Seq#Contains(xs, x_1)) && Seq#Contains(xs, x_1_1)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> x_1 != x_1_1 || b_24 != b_24
      );
    
    // -- Define Inverse Function
      assume (forall x_1: Ref ::
        { Heap[null, valid(x_1, b_24)] } { Mask[null, valid(x_1, b_24)] } { Seq#ContainsTrigger(xs, x_1) } { Seq#Contains(xs, x_1) }
        Seq#Contains(xs, x_1) && NoPerm < FullPerm ==> invRecv8(x_1, b_24) == x_1 && qpRange8(x_1, b_24)
      );
      assume (forall this_1_1: Ref, b_1_1_1: bool ::
        { invRecv8(this_1_1, b_1_1_1) }
        (Seq#Contains(xs, invRecv8(this_1_1, b_1_1_1)) && NoPerm < FullPerm) && qpRange8(this_1_1, b_1_1_1) ==> invRecv8(this_1_1, b_1_1_1) == this_1_1 && b_24 == b_1_1_1
      );
    
    // -- Define updated permissions
      assume (forall this_1_1: Ref, b_1_1_1: bool ::
        { QPMask[null, valid(this_1_1, b_1_1_1)] }
        (Seq#Contains(xs, invRecv8(this_1_1, b_1_1_1)) && NoPerm < FullPerm) && qpRange8(this_1_1, b_1_1_1) ==> (NoPerm < FullPerm ==> invRecv8(this_1_1, b_1_1_1) == this_1_1 && b_24 == b_1_1_1) && QPMask[null, valid(this_1_1, b_1_1_1)] == Mask[null, valid(this_1_1, b_1_1_1)] + FullPerm
      );
    
    // -- Define independent locations
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        (o_4 != null || !IsPredicateField(f_5)) || getPredWandId(f_5) != 0 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
      assume (forall this_1_1: Ref, b_1_1_1: bool ::
        { QPMask[null, valid(this_1_1, b_1_1_1)] }
        !((Seq#Contains(xs, invRecv8(this_1_1, b_1_1_1)) && NoPerm < FullPerm) && qpRange8(this_1_1, b_1_1_1)) ==> QPMask[null, valid(this_1_1, b_1_1_1)] == Mask[null, valid(this_1_1, b_1_1_1)]
      );
    Mask := QPMask;
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
    perm := FullPerm;
    PostMask := PostMask[null, valid(this, b_24):=PostMask[null, valid(this, b_24)] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: unfold acc(valid(this, b), write) -- arguments.vpr@72.5--72.38
    assume valid#trigger(Heap, valid(this, b_24));
    assume Heap[null, valid(this, b_24)] == FrameFragment((if b_24 then FrameFragment(Heap[this, f_7]) else FrameFragment(Heap[this, g])));
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Unfolding valid(this, b) might fail. There might be insufficient permission to access valid(this, b) (arguments.vpr@72.5--72.38) [105106]"}
        perm <= Mask[null, valid(this, b_24)];
    }
    Mask := Mask[null, valid(this, b_24):=Mask[null, valid(this, b_24)] - perm];
    
    // -- Update version of predicate
      if (!HasDirectPerm(Mask, null, valid(this, b_24))) {
        havoc newVersion;
        Heap := Heap[null, valid(this, b_24):=newVersion];
      }
    if (b_24) {
      perm := FullPerm;
      assume this != null;
      Mask := Mask[this, f_7:=Mask[this, f_7] + perm];
      assume state(Heap, Mask);
    } else {
      perm := FullPerm;
      assume this != null;
      Mask := Mask[this, g:=Mask[this, g] + perm];
      assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: if (b) -- arguments.vpr@73.5--77.6
    if (b_24) {
      
      // -- Translating statement: this.f := 1 -- arguments.vpr@74.9--74.20
        assert {:msg "  Assignment might fail. There might be insufficient permission to access this.f (arguments.vpr@74.9--74.20) [105109]"}
          FullPerm == Mask[this, f_7];
        Heap := Heap[this, f_7:=1];
        assume state(Heap, Mask);
    } else {
      
      // -- Translating statement: this.g := 2 -- arguments.vpr@76.9--76.20
        assert {:msg "  Assignment might fail. There might be insufficient permission to access this.g (arguments.vpr@76.9--76.20) [105110]"}
          FullPerm == Mask[this, g];
        Heap := Heap[this, g:=2];
        assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(valid(this, b), write) -- arguments.vpr@78.5--78.36
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    if (b_24) {
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Folding valid(this, b) might fail. There might be insufficient permission to access this.f (arguments.vpr@78.5--78.36) [105113]"}
          perm <= Mask[this, f_7];
      }
      Mask := Mask[this, f_7:=Mask[this, f_7] - perm];
    } else {
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Folding valid(this, b) might fail. There might be insufficient permission to access this.g (arguments.vpr@78.5--78.36) [105115]"}
          perm <= Mask[this, g];
      }
      Mask := Mask[this, g:=Mask[this, g] - perm];
    }
    perm := FullPerm;
    Mask := Mask[null, valid(this, b_24):=Mask[null, valid(this, b_24)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume valid#trigger(Heap, valid(this, b_24));
    assume Heap[null, valid(this, b_24)] == FrameFragment((if b_24 then FrameFragment(Heap[this, f_7]) else FrameFragment(Heap[this, g])));
    if (!HasDirectPerm(Mask, null, valid(this, b_24))) {
      Heap := Heap[null, valid#sm(this, b_24):=ZeroPMask];
      havoc freshVersion;
      Heap := Heap[null, valid(this, b_24):=freshVersion];
    }
    if (b_24) {
      Heap := Heap[null, valid#sm(this, b_24):=Heap[null, valid#sm(this, b_24)][this, f_7:=true]];
    } else {
      Heap := Heap[null, valid#sm(this, b_24):=Heap[null, valid#sm(this, b_24)][this, g:=true]];
    }
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: unrelated(this) -- arguments.vpr@79.5--79.20
    PreCallHeap := Heap;
    PreCallMask := Mask;
    
    // -- Exhaling precondition
      ExhaleWellDef0Mask := Mask;
      ExhaleWellDef0Heap := Heap;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  The precondition of method unrelated might not hold. There might be insufficient permission to access this.unrelatedField (arguments.vpr@79.5--79.20) [105117]"}
          perm <= Mask[this, unrelatedField];
      }
      Mask := Mask[this, unrelatedField:=Mask[this, unrelatedField] - perm];
      // Finish exhale
      havoc ExhaleHeap;
      assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
      Heap := ExhaleHeap;
    
    // -- Inhaling postcondition
      perm := FullPerm;
      assume this != null;
      Mask := Mask[this, unrelatedField:=Mask[this, unrelatedField] + perm];
      assume state(Heap, Mask);
      assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of t1_4 might not hold. There might be insufficient permission to access valid(this, b) (arguments.vpr@70.13--70.39) [105118]"}
        perm <= Mask[null, valid(this, b_24)];
    }
    Mask := Mask[null, valid(this, b_24):=Mask[null, valid(this, b_24)] - perm];
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method t2
// ==================================================

procedure t2(x1_2: Ref, x2: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var QPMask: MaskType;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var freshVersion: FrameType;
  var PreCallHeap: HeapType;
  var PreCallMask: MaskType;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[x1_2, $allocated];
    assume Heap[x2, $allocated];
  
  // -- Checked inhaling of precondition
    perm := FullPerm;
    assume x1_2 != null;
    Mask := Mask[x1_2, unrelatedField:=Mask[x1_2, unrelatedField] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume x1_2 != x2;
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall x: Ref :: { (x in Set(x1, x2)) } (x in Set(x1, x2)) ==> acc(x.f, write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource x.f might not be injective. (arguments.vpr@85.14--85.66) [105119]"}
      (forall x_1: Ref, x_1_1: Ref ::
      
      (((x_1 != x_1_1 && Set#UnionOne(Set#Singleton(x2), x1_2)[x_1]) && Set#UnionOne(Set#Singleton(x2), x1_2)[x_1_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> x_1 != x_1_1
    );
    
    // -- Define Inverse Function
      assume (forall x_1: Ref ::
        { Heap[x_1, f_7] } { QPMask[x_1, f_7] } { Set#UnionOne(Set#Singleton(x2), x1_2)[x_1] }
        Set#UnionOne(Set#Singleton(x2), x1_2)[x_1] && NoPerm < FullPerm ==> qpRange9(x_1) && invRecv9(x_1) == x_1
      );
      assume (forall o_4: Ref ::
        { invRecv9(o_4) }
        (Set#UnionOne(Set#Singleton(x2), x1_2)[invRecv9(o_4)] && NoPerm < FullPerm) && qpRange9(o_4) ==> invRecv9(o_4) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall x_1: Ref ::
        { Heap[x_1, f_7] } { QPMask[x_1, f_7] } { Set#UnionOne(Set#Singleton(x2), x1_2)[x_1] }
        Set#UnionOne(Set#Singleton(x2), x1_2)[x_1] ==> x_1 != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, f_7] }
        ((Set#UnionOne(Set#Singleton(x2), x1_2)[invRecv9(o_4)] && NoPerm < FullPerm) && qpRange9(o_4) ==> (NoPerm < FullPerm ==> invRecv9(o_4) == o_4) && QPMask[o_4, f_7] == Mask[o_4, f_7] + FullPerm) && (!((Set#UnionOne(Set#Singleton(x2), x1_2)[invRecv9(o_4)] && NoPerm < FullPerm) && qpRange9(o_4)) ==> QPMask[o_4, f_7] == Mask[o_4, f_7])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != f_7 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
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
    
    // -- Check definedness of (forall x: Ref :: { (x in Set(x1, x2)) } (x in Set(x1, x2)) ==> acc(valid(x, true), write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    
    // -- check if receiver acc(valid(x, true), write) is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource valid(x, true) might not be injective. (arguments.vpr@86.13--86.76) [105120]"}
        (forall x_3: Ref, x_3_1: Ref ::
        { neverTriggered10(x_3), neverTriggered10(x_3_1) }
        (((x_3 != x_3_1 && Set#UnionOne(Set#Singleton(x2), x1_2)[x_3]) && Set#UnionOne(Set#Singleton(x2), x1_2)[x_3_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> x_3 != x_3_1
      );
    
    // -- Define Inverse Function
      assume (forall x_3: Ref ::
        { PostHeap[null, valid(x_3, true)] } { PostMask[null, valid(x_3, true)] } { Set#UnionOne(Set#Singleton(x2), x1_2)[x_3] }
        Set#UnionOne(Set#Singleton(x2), x1_2)[x_3] && NoPerm < FullPerm ==> invRecv10(x_3, true) == x_3 && qpRange10(x_3, true)
      );
      assume (forall this: Ref, b_24: bool ::
        { invRecv10(this, b_24) }
        (Set#UnionOne(Set#Singleton(x2), x1_2)[invRecv10(this, b_24)] && NoPerm < FullPerm) && qpRange10(this, b_24) ==> invRecv10(this, b_24) == this && b_24
      );
    
    // -- Define updated permissions
      assume (forall this: Ref, b_24: bool ::
        { QPMask[null, valid(this, b_24)] }
        (Set#UnionOne(Set#Singleton(x2), x1_2)[invRecv10(this, b_24)] && NoPerm < FullPerm) && qpRange10(this, b_24) ==> (NoPerm < FullPerm ==> invRecv10(this, b_24) == this && b_24) && QPMask[null, valid(this, b_24)] == PostMask[null, valid(this, b_24)] + FullPerm
      );
    
    // -- Define independent locations
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { PostMask[o_4, f_5] } { QPMask[o_4, f_5] }
        (o_4 != null || !IsPredicateField(f_5)) || getPredWandId(f_5) != 0 ==> PostMask[o_4, f_5] == QPMask[o_4, f_5]
      );
      assume (forall this: Ref, b_24: bool ::
        { QPMask[null, valid(this, b_24)] }
        !((Set#UnionOne(Set#Singleton(x2), x1_2)[invRecv10(this, b_24)] && NoPerm < FullPerm) && qpRange10(this, b_24)) ==> QPMask[null, valid(this, b_24)] == PostMask[null, valid(this, b_24)]
      );
    PostMask := QPMask;
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: fold acc(valid(x1, true), write) -- arguments.vpr@88.5--88.37
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding valid(x1, true) might fail. There might be insufficient permission to access x1.f (arguments.vpr@88.5--88.37) [105123]"}
        perm <= Mask[x1_2, f_7];
    }
    Mask := Mask[x1_2, f_7:=Mask[x1_2, f_7] - perm];
    perm := FullPerm;
    Mask := Mask[null, valid(x1_2, true):=Mask[null, valid(x1_2, true)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume valid#trigger(Heap, valid(x1_2, true));
    assume Heap[null, valid(x1_2, true)] == FrameFragment(FrameFragment(Heap[x1_2, f_7]));
    if (!HasDirectPerm(Mask, null, valid(x1_2, true))) {
      Heap := Heap[null, valid#sm(x1_2, true):=ZeroPMask];
      havoc freshVersion;
      Heap := Heap[null, valid(x1_2, true):=freshVersion];
    }
    Heap := Heap[null, valid#sm(x1_2, true):=Heap[null, valid#sm(x1_2, true)][x1_2, f_7:=true]];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(valid(x2, true), write) -- arguments.vpr@89.5--89.37
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding valid(x2, true) might fail. There might be insufficient permission to access x2.f (arguments.vpr@89.5--89.37) [105129]"}
        perm <= Mask[x2, f_7];
    }
    Mask := Mask[x2, f_7:=Mask[x2, f_7] - perm];
    perm := FullPerm;
    Mask := Mask[null, valid(x2, true):=Mask[null, valid(x2, true)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume valid#trigger(Heap, valid(x2, true));
    assume Heap[null, valid(x2, true)] == FrameFragment(FrameFragment(Heap[x2, f_7]));
    if (!HasDirectPerm(Mask, null, valid(x2, true))) {
      Heap := Heap[null, valid#sm(x2, true):=ZeroPMask];
      havoc freshVersion;
      Heap := Heap[null, valid(x2, true):=freshVersion];
    }
    Heap := Heap[null, valid#sm(x2, true):=Heap[null, valid#sm(x2, true)][x2, f_7:=true]];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: unrelated(x1) -- arguments.vpr@90.5--90.18
    PreCallHeap := Heap;
    PreCallMask := Mask;
    
    // -- Exhaling precondition
      ExhaleWellDef0Mask := Mask;
      ExhaleWellDef0Heap := Heap;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  The precondition of method unrelated might not hold. There might be insufficient permission to access x1.unrelatedField (arguments.vpr@90.5--90.18) [105133]"}
          perm <= Mask[x1_2, unrelatedField];
      }
      Mask := Mask[x1_2, unrelatedField:=Mask[x1_2, unrelatedField] - perm];
      // Finish exhale
      havoc ExhaleHeap;
      assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
      Heap := ExhaleHeap;
    
    // -- Inhaling postcondition
      perm := FullPerm;
      assume x1_2 != null;
      Mask := Mask[x1_2, unrelatedField:=Mask[x1_2, unrelatedField] + perm];
      assume state(Heap, Mask);
      assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    havoc QPMask;
    
    // -- check that the permission amount is positive
      
    
    // -- check if receiver acc(valid(x, true), write) is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource valid(x, true) might not be injective. (arguments.vpr@86.13--86.76) [105134]"}
        (forall x_5: Ref, x_5_1: Ref ::
        { neverTriggered11(x_5), neverTriggered11(x_5_1) }
        (((x_5 != x_5_1 && Set#UnionOne(Set#Singleton(x2), x1_2)[x_5]) && Set#UnionOne(Set#Singleton(x2), x1_2)[x_5_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> x_5 != x_5_1
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Postcondition of t2 might not hold. There might be insufficient permission to access valid(x, true) (arguments.vpr@86.13--86.76) [105135]"}
        (forall x_5: Ref ::
        { Heap[null, valid(x_5, true)] } { Mask[null, valid(x_5, true)] } { Set#UnionOne(Set#Singleton(x2), x1_2)[x_5] }
        Set#UnionOne(Set#Singleton(x2), x1_2)[x_5] ==> Mask[null, valid(x_5, true)] >= FullPerm
      );
    
    // -- assumptions for inverse of receiver acc(valid(x, true), write)
      assume (forall x_5: Ref ::
        { Heap[null, valid(x_5, true)] } { Mask[null, valid(x_5, true)] } { Set#UnionOne(Set#Singleton(x2), x1_2)[x_5] }
        Set#UnionOne(Set#Singleton(x2), x1_2)[x_5] && NoPerm < FullPerm ==> invRecv11(x_5, true) == x_5 && qpRange11(x_5, true)
      );
      assume (forall this_1: Ref, b_1_2: bool ::
        { invRecv11(this_1, b_1_2) }
        (Set#UnionOne(Set#Singleton(x2), x1_2)[invRecv11(this_1, b_1_2)] && NoPerm < FullPerm) && qpRange11(this_1, b_1_2) ==> invRecv11(this_1, b_1_2) == this_1 && b_1_2
      );
    
    // -- assume permission updates
      assume (forall this_1: Ref, b_1_2: bool ::
        { QPMask[null, valid(this_1, b_1_2)] }
        (Set#UnionOne(Set#Singleton(x2), x1_2)[invRecv11(this_1, b_1_2)] && NoPerm < FullPerm) && qpRange11(this_1, b_1_2) ==> (invRecv11(this_1, b_1_2) == this_1 && b_1_2) && QPMask[null, valid(this_1, b_1_2)] == Mask[null, valid(this_1, b_1_2)] - FullPerm
      );
      assume (forall this_1: Ref, b_1_2: bool ::
        { QPMask[null, valid(this_1, b_1_2)] }
        !((Set#UnionOne(Set#Singleton(x2), x1_2)[invRecv11(this_1, b_1_2)] && NoPerm < FullPerm) && qpRange11(this_1, b_1_2)) ==> QPMask[null, valid(this_1, b_1_2)] == Mask[null, valid(this_1, b_1_2)]
      );
    
    // -- assume permission updates for independent locations 
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        (o_4 != null || !IsPredicateField(f_5)) || getPredWandId(f_5) != 0 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method t2_b
// ==================================================

procedure t2_b(x1_2: Ref, x2: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var QPMask: MaskType;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var freshVersion: FrameType;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[x1_2, $allocated];
    assume Heap[x2, $allocated];
  
  // -- Checked inhaling of precondition
    perm := FullPerm;
    assume x1_2 != null;
    Mask := Mask[x1_2, unrelatedField:=Mask[x1_2, unrelatedField] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall x: Ref :: { (x in Set(x1, x2)) } (x in Set(x1, x2)) ==> acc(x.f, write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource x.f might not be injective. (arguments.vpr@95.14--95.66) [105136]"}
      (forall x_1: Ref, x_1_1: Ref ::
      
      (((x_1 != x_1_1 && Set#UnionOne(Set#Singleton(x2), x1_2)[x_1]) && Set#UnionOne(Set#Singleton(x2), x1_2)[x_1_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> x_1 != x_1_1
    );
    
    // -- Define Inverse Function
      assume (forall x_1: Ref ::
        { Heap[x_1, f_7] } { QPMask[x_1, f_7] } { Set#UnionOne(Set#Singleton(x2), x1_2)[x_1] }
        Set#UnionOne(Set#Singleton(x2), x1_2)[x_1] && NoPerm < FullPerm ==> qpRange12(x_1) && invRecv12(x_1) == x_1
      );
      assume (forall o_4: Ref ::
        { invRecv12(o_4) }
        (Set#UnionOne(Set#Singleton(x2), x1_2)[invRecv12(o_4)] && NoPerm < FullPerm) && qpRange12(o_4) ==> invRecv12(o_4) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall x_1: Ref ::
        { Heap[x_1, f_7] } { QPMask[x_1, f_7] } { Set#UnionOne(Set#Singleton(x2), x1_2)[x_1] }
        Set#UnionOne(Set#Singleton(x2), x1_2)[x_1] ==> x_1 != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, f_7] }
        ((Set#UnionOne(Set#Singleton(x2), x1_2)[invRecv12(o_4)] && NoPerm < FullPerm) && qpRange12(o_4) ==> (NoPerm < FullPerm ==> invRecv12(o_4) == o_4) && QPMask[o_4, f_7] == Mask[o_4, f_7] + FullPerm) && (!((Set#UnionOne(Set#Singleton(x2), x1_2)[invRecv12(o_4)] && NoPerm < FullPerm) && qpRange12(o_4)) ==> QPMask[o_4, f_7] == Mask[o_4, f_7])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != f_7 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
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
    
    // -- Check definedness of (forall x: Ref :: { (x in Set(x1, x2)) } (x in Set(x1, x2)) ==> acc(valid(x, true), write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    
    // -- check if receiver acc(valid(x, true), write) is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource valid(x, true) might not be injective. (arguments.vpr@96.13--96.76) [105137]"}
        (forall x_3: Ref, x_3_1: Ref ::
        { neverTriggered13(x_3), neverTriggered13(x_3_1) }
        (((x_3 != x_3_1 && Set#UnionOne(Set#Singleton(x2), x1_2)[x_3]) && Set#UnionOne(Set#Singleton(x2), x1_2)[x_3_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> x_3 != x_3_1
      );
    
    // -- Define Inverse Function
      assume (forall x_3: Ref ::
        { PostHeap[null, valid(x_3, true)] } { PostMask[null, valid(x_3, true)] } { Set#UnionOne(Set#Singleton(x2), x1_2)[x_3] }
        Set#UnionOne(Set#Singleton(x2), x1_2)[x_3] && NoPerm < FullPerm ==> invRecv13(x_3, true) == x_3 && qpRange13(x_3, true)
      );
      assume (forall this: Ref, b_24: bool ::
        { invRecv13(this, b_24) }
        (Set#UnionOne(Set#Singleton(x2), x1_2)[invRecv13(this, b_24)] && NoPerm < FullPerm) && qpRange13(this, b_24) ==> invRecv13(this, b_24) == this && b_24
      );
    
    // -- Define updated permissions
      assume (forall this: Ref, b_24: bool ::
        { QPMask[null, valid(this, b_24)] }
        (Set#UnionOne(Set#Singleton(x2), x1_2)[invRecv13(this, b_24)] && NoPerm < FullPerm) && qpRange13(this, b_24) ==> (NoPerm < FullPerm ==> invRecv13(this, b_24) == this && b_24) && QPMask[null, valid(this, b_24)] == PostMask[null, valid(this, b_24)] + FullPerm
      );
    
    // -- Define independent locations
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { PostMask[o_4, f_5] } { QPMask[o_4, f_5] }
        (o_4 != null || !IsPredicateField(f_5)) || getPredWandId(f_5) != 0 ==> PostMask[o_4, f_5] == QPMask[o_4, f_5]
      );
      assume (forall this: Ref, b_24: bool ::
        { QPMask[null, valid(this, b_24)] }
        !((Set#UnionOne(Set#Singleton(x2), x1_2)[invRecv13(this, b_24)] && NoPerm < FullPerm) && qpRange13(this, b_24)) ==> QPMask[null, valid(this, b_24)] == PostMask[null, valid(this, b_24)]
      );
    PostMask := QPMask;
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: fold acc(valid(x2, false), write) -- arguments.vpr@99.5--99.38
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding valid(x2, false) might fail. There might be insufficient permission to access x2.g (arguments.vpr@99.5--99.38) [105142]"}
        perm <= Mask[x2, g];
    }
    Mask := Mask[x2, g:=Mask[x2, g] - perm];
    perm := FullPerm;
    Mask := Mask[null, valid(x2, false):=Mask[null, valid(x2, false)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume valid#trigger(Heap, valid(x2, false));
    assume Heap[null, valid(x2, false)] == FrameFragment(FrameFragment(Heap[x2, g]));
    if (!HasDirectPerm(Mask, null, valid(x2, false))) {
      Heap := Heap[null, valid#sm(x2, false):=ZeroPMask];
      havoc freshVersion;
      Heap := Heap[null, valid(x2, false):=freshVersion];
    }
    Heap := Heap[null, valid#sm(x2, false):=Heap[null, valid#sm(x2, false)][x2, g:=true]];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    havoc QPMask;
    
    // -- check that the permission amount is positive
      
    
    // -- check if receiver acc(valid(x, true), write) is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource valid(x, true) might not be injective. (arguments.vpr@96.13--96.76) [105144]"}
        (forall x_5: Ref, x_5_1: Ref ::
        { neverTriggered14(x_5), neverTriggered14(x_5_1) }
        (((x_5 != x_5_1 && Set#UnionOne(Set#Singleton(x2), x1_2)[x_5]) && Set#UnionOne(Set#Singleton(x2), x1_2)[x_5_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> x_5 != x_5_1
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Postcondition of t2_b might not hold. There might be insufficient permission to access valid(x, true) (arguments.vpr@96.13--96.76) [105145]"}
        (forall x_5: Ref ::
        { Heap[null, valid(x_5, true)] } { Mask[null, valid(x_5, true)] } { Set#UnionOne(Set#Singleton(x2), x1_2)[x_5] }
        Set#UnionOne(Set#Singleton(x2), x1_2)[x_5] ==> Mask[null, valid(x_5, true)] >= FullPerm
      );
    
    // -- assumptions for inverse of receiver acc(valid(x, true), write)
      assume (forall x_5: Ref ::
        { Heap[null, valid(x_5, true)] } { Mask[null, valid(x_5, true)] } { Set#UnionOne(Set#Singleton(x2), x1_2)[x_5] }
        Set#UnionOne(Set#Singleton(x2), x1_2)[x_5] && NoPerm < FullPerm ==> invRecv14(x_5, true) == x_5 && qpRange14(x_5, true)
      );
      assume (forall this_1: Ref, b_1_2: bool ::
        { invRecv14(this_1, b_1_2) }
        (Set#UnionOne(Set#Singleton(x2), x1_2)[invRecv14(this_1, b_1_2)] && NoPerm < FullPerm) && qpRange14(this_1, b_1_2) ==> invRecv14(this_1, b_1_2) == this_1 && b_1_2
      );
    
    // -- assume permission updates
      assume (forall this_1: Ref, b_1_2: bool ::
        { QPMask[null, valid(this_1, b_1_2)] }
        (Set#UnionOne(Set#Singleton(x2), x1_2)[invRecv14(this_1, b_1_2)] && NoPerm < FullPerm) && qpRange14(this_1, b_1_2) ==> (invRecv14(this_1, b_1_2) == this_1 && b_1_2) && QPMask[null, valid(this_1, b_1_2)] == Mask[null, valid(this_1, b_1_2)] - FullPerm
      );
      assume (forall this_1: Ref, b_1_2: bool ::
        { QPMask[null, valid(this_1, b_1_2)] }
        !((Set#UnionOne(Set#Singleton(x2), x1_2)[invRecv14(this_1, b_1_2)] && NoPerm < FullPerm) && qpRange14(this_1, b_1_2)) ==> QPMask[null, valid(this_1, b_1_2)] == Mask[null, valid(this_1, b_1_2)]
      );
    
    // -- assume permission updates for independent locations 
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        (o_4 != null || !IsPredicateField(f_5)) || getPredWandId(f_5) != 0 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method t3_1
// ==================================================

procedure t3_1(this: Ref, xs: (Seq Ref), b_24: bool) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var QPMask: MaskType;
  var UnfoldingHeap: HeapType;
  var UnfoldingMask: MaskType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var newVersion: FrameType;
  var freshVersion: FrameType;
  var ExhaleWellDef1Mask: MaskType;
  var ExhaleWellDef1Heap: HeapType;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[this, $allocated];
  
  // -- Checked inhaling of precondition
    assume Seq#Contains(xs, this);
    assume state(Heap, Mask);
    perm := FullPerm;
    assume this != null;
    Mask := Mask[this, unrelatedField:=Mask[this, unrelatedField] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall x: Ref :: { (x in xs) } (x in xs) ==> acc(valid(x, b), write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    
    // -- check if receiver acc(valid(x, b), write) is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource valid(x, b) might not be injective. (arguments.vpr@105.14--105.66) [105146]"}
        (forall x_1: Ref, x_1_1: Ref ::
        { neverTriggered15(x_1), neverTriggered15(x_1_1) }
        (((x_1 != x_1_1 && Seq#Contains(xs, x_1)) && Seq#Contains(xs, x_1_1)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> x_1 != x_1_1 || b_24 != b_24
      );
    
    // -- Define Inverse Function
      assume (forall x_1: Ref ::
        { Heap[null, valid(x_1, b_24)] } { Mask[null, valid(x_1, b_24)] } { Seq#ContainsTrigger(xs, x_1) } { Seq#Contains(xs, x_1) }
        Seq#Contains(xs, x_1) && NoPerm < FullPerm ==> invRecv15(x_1, b_24) == x_1 && qpRange15(x_1, b_24)
      );
      assume (forall this_1_1: Ref, b_1_1_1: bool ::
        { invRecv15(this_1_1, b_1_1_1) }
        (Seq#Contains(xs, invRecv15(this_1_1, b_1_1_1)) && NoPerm < FullPerm) && qpRange15(this_1_1, b_1_1_1) ==> invRecv15(this_1_1, b_1_1_1) == this_1_1 && b_24 == b_1_1_1
      );
    
    // -- Define updated permissions
      assume (forall this_1_1: Ref, b_1_1_1: bool ::
        { QPMask[null, valid(this_1_1, b_1_1_1)] }
        (Seq#Contains(xs, invRecv15(this_1_1, b_1_1_1)) && NoPerm < FullPerm) && qpRange15(this_1_1, b_1_1_1) ==> (NoPerm < FullPerm ==> invRecv15(this_1_1, b_1_1_1) == this_1_1 && b_24 == b_1_1_1) && QPMask[null, valid(this_1_1, b_1_1_1)] == Mask[null, valid(this_1_1, b_1_1_1)] + FullPerm
      );
    
    // -- Define independent locations
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        (o_4 != null || !IsPredicateField(f_5)) || getPredWandId(f_5) != 0 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
      assume (forall this_1_1: Ref, b_1_1_1: bool ::
        { QPMask[null, valid(this_1_1, b_1_1_1)] }
        !((Seq#Contains(xs, invRecv15(this_1_1, b_1_1_1)) && NoPerm < FullPerm) && qpRange15(this_1_1, b_1_1_1)) ==> QPMask[null, valid(this_1_1, b_1_1_1)] == Mask[null, valid(this_1_1, b_1_1_1)]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall x: Ref :: { (x in xs) } (x in xs) ==> acc(valid(x, !b), write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    
    // -- check if receiver acc(valid(x, !b), write) is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource valid(x, !b) might not be injective. (arguments.vpr@106.14--106.67) [105147]"}
        (forall x_4: Ref, x_4_1: Ref ::
        { neverTriggered16(x_4), neverTriggered16(x_4_1) }
        (((x_4 != x_4_1 && Seq#Contains(xs, x_4)) && Seq#Contains(xs, x_4_1)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> x_4 != x_4_1 || !b_24 != !b_24
      );
    
    // -- Define Inverse Function
      assume (forall x_4: Ref ::
        { Seq#ContainsTrigger(xs, x_4) } { Seq#Contains(xs, x_4) }
        Seq#Contains(xs, x_4) && NoPerm < FullPerm ==> invRecv16(x_4, !b_24) == x_4 && qpRange16(x_4, !b_24)
      );
      assume (forall this_2_1: Ref, b_2_1_1: bool ::
        { invRecv16(this_2_1, b_2_1_1) }
        (Seq#Contains(xs, invRecv16(this_2_1, b_2_1_1)) && NoPerm < FullPerm) && qpRange16(this_2_1, b_2_1_1) ==> invRecv16(this_2_1, b_2_1_1) == this_2_1 && !b_24 == b_2_1_1
      );
    
    // -- Define updated permissions
      assume (forall this_2_1: Ref, b_2_1_1: bool ::
        { QPMask[null, valid(this_2_1, b_2_1_1)] }
        (Seq#Contains(xs, invRecv16(this_2_1, b_2_1_1)) && NoPerm < FullPerm) && qpRange16(this_2_1, b_2_1_1) ==> (NoPerm < FullPerm ==> invRecv16(this_2_1, b_2_1_1) == this_2_1 && !b_24 == b_2_1_1) && QPMask[null, valid(this_2_1, b_2_1_1)] == Mask[null, valid(this_2_1, b_2_1_1)] + FullPerm
      );
    
    // -- Define independent locations
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        (o_4 != null || !IsPredicateField(f_5)) || getPredWandId(f_5) != 0 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
      assume (forall this_2_1: Ref, b_2_1_1: bool ::
        { QPMask[null, valid(this_2_1, b_2_1_1)] }
        !((Seq#Contains(xs, invRecv16(this_2_1, b_2_1_1)) && NoPerm < FullPerm) && qpRange16(this_2_1, b_2_1_1)) ==> QPMask[null, valid(this_2_1, b_2_1_1)] == Mask[null, valid(this_2_1, b_2_1_1)]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of (unfolding acc(valid(this, false), write) in this.g == 2)
      UnfoldingHeap := Heap;
      UnfoldingMask := Mask;
      assume valid#trigger(UnfoldingHeap, valid(this, false));
      assume UnfoldingHeap[null, valid(this, false)] == FrameFragment(FrameFragment(UnfoldingHeap[this, g]));
      ExhaleWellDef0Mask := UnfoldingMask;
      ExhaleWellDef0Heap := UnfoldingHeap;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access valid(this, false) (arguments.vpr@107.15--107.74) [105148]"}
          perm <= UnfoldingMask[null, valid(this, false)];
      }
      UnfoldingMask := UnfoldingMask[null, valid(this, false):=UnfoldingMask[null, valid(this, false)] - perm];
      perm := FullPerm;
      assume this != null;
      UnfoldingMask := UnfoldingMask[this, g:=UnfoldingMask[this, g] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      assume state(UnfoldingHeap, UnfoldingMask);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.g (arguments.vpr@107.15--107.74) [105149]"}
        HasDirectPerm(UnfoldingMask, this, g);
      
      // -- Free assumptions (exp module)
        Heap := Heap[null, valid#sm(this, false):=Heap[null, valid#sm(this, false)][this, g:=true]];
        assume state(Heap, Mask);
    
    // -- Execute unfolding (for extra information)
      UnfoldingHeap := Heap;
      UnfoldingMask := Mask;
      assume valid#trigger(UnfoldingHeap, valid(this, false));
      assume UnfoldingHeap[null, valid(this, false)] == FrameFragment(FrameFragment(UnfoldingHeap[this, g]));
      ExhaleWellDef0Mask := UnfoldingMask;
      ExhaleWellDef0Heap := UnfoldingHeap;
      perm := FullPerm;
      UnfoldingMask := UnfoldingMask[null, valid(this, false):=UnfoldingMask[null, valid(this, false)] - perm];
      perm := FullPerm;
      assume this != null;
      UnfoldingMask := UnfoldingMask[this, g:=UnfoldingMask[this, g] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      assume state(UnfoldingHeap, UnfoldingMask);
    assume Heap[this, g] == 2;
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
    PostMask := PostMask[null, valid(this, b_24):=PostMask[null, valid(this, b_24)] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    perm := FullPerm;
    PostMask := PostMask[null, valid(this, !b_24):=PostMask[null, valid(this, !b_24)] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (unfolding acc(valid(this, false), write) in this.g == 2)
      UnfoldingHeap := PostHeap;
      UnfoldingMask := PostMask;
      assume valid#trigger(UnfoldingHeap, valid(this, false));
      assume UnfoldingHeap[null, valid(this, false)] == FrameFragment(FrameFragment(UnfoldingHeap[this, g]));
      ExhaleWellDef0Mask := UnfoldingMask;
      ExhaleWellDef0Heap := UnfoldingHeap;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access valid(this, false) (arguments.vpr@110.14--110.73) [105150]"}
          perm <= UnfoldingMask[null, valid(this, false)];
      }
      UnfoldingMask := UnfoldingMask[null, valid(this, false):=UnfoldingMask[null, valid(this, false)] - perm];
      perm := FullPerm;
      assume this != null;
      UnfoldingMask := UnfoldingMask[this, g:=UnfoldingMask[this, g] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      assume state(UnfoldingHeap, UnfoldingMask);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.g (arguments.vpr@110.14--110.73) [105151]"}
        HasDirectPerm(UnfoldingMask, this, g);
      
      // -- Free assumptions (exp module)
        PostHeap := PostHeap[null, valid#sm(this, false):=PostHeap[null, valid#sm(this, false)][this, g:=true]];
        assume state(PostHeap, PostMask);
    
    // -- Execute unfolding (for extra information)
      UnfoldingHeap := PostHeap;
      UnfoldingMask := PostMask;
      assume valid#trigger(UnfoldingHeap, valid(this, false));
      assume UnfoldingHeap[null, valid(this, false)] == FrameFragment(FrameFragment(UnfoldingHeap[this, g]));
      ExhaleWellDef0Mask := UnfoldingMask;
      ExhaleWellDef0Heap := UnfoldingHeap;
      perm := FullPerm;
      UnfoldingMask := UnfoldingMask[null, valid(this, false):=UnfoldingMask[null, valid(this, false)] - perm];
      perm := FullPerm;
      assume this != null;
      UnfoldingMask := UnfoldingMask[this, g:=UnfoldingMask[this, g] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      assume state(UnfoldingHeap, UnfoldingMask);
    assume PostHeap[this, g] == 2;
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: unfold acc(valid(this, true), write) -- arguments.vpr@112.5--112.41
    assume valid#trigger(Heap, valid(this, true));
    assume Heap[null, valid(this, true)] == FrameFragment(FrameFragment(Heap[this, f_7]));
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Unfolding valid(this, true) might fail. There might be insufficient permission to access valid(this, true) (arguments.vpr@112.5--112.41) [105154]"}
        perm <= Mask[null, valid(this, true)];
    }
    Mask := Mask[null, valid(this, true):=Mask[null, valid(this, true)] - perm];
    
    // -- Update version of predicate
      if (!HasDirectPerm(Mask, null, valid(this, true))) {
        havoc newVersion;
        Heap := Heap[null, valid(this, true):=newVersion];
      }
    perm := FullPerm;
    assume this != null;
    Mask := Mask[this, f_7:=Mask[this, f_7] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: this.f := 1 -- arguments.vpr@113.5--113.16
    assert {:msg "  Assignment might fail. There might be insufficient permission to access this.f (arguments.vpr@113.5--113.16) [105157]"}
      FullPerm == Mask[this, f_7];
    Heap := Heap[this, f_7:=1];
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(valid(this, true), write) -- arguments.vpr@114.5--114.39
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding valid(this, true) might fail. There might be insufficient permission to access this.f (arguments.vpr@114.5--114.39) [105160]"}
        perm <= Mask[this, f_7];
    }
    Mask := Mask[this, f_7:=Mask[this, f_7] - perm];
    perm := FullPerm;
    Mask := Mask[null, valid(this, true):=Mask[null, valid(this, true)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume valid#trigger(Heap, valid(this, true));
    assume Heap[null, valid(this, true)] == FrameFragment(FrameFragment(Heap[this, f_7]));
    if (!HasDirectPerm(Mask, null, valid(this, true))) {
      Heap := Heap[null, valid#sm(this, true):=ZeroPMask];
      havoc freshVersion;
      Heap := Heap[null, valid(this, true):=freshVersion];
    }
    Heap := Heap[null, valid#sm(this, true):=Heap[null, valid#sm(this, true)][this, f_7:=true]];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of t3_1 might not hold. There might be insufficient permission to access valid(this, b) (arguments.vpr@108.13--108.39) [105164]"}
        perm <= Mask[null, valid(this, b_24)];
    }
    Mask := Mask[null, valid(this, b_24):=Mask[null, valid(this, b_24)] - perm];
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of t3_1 might not hold. There might be insufficient permission to access valid(this, !b) (arguments.vpr@109.13--109.40) [105165]"}
        perm <= Mask[null, valid(this, !b_24)];
    }
    Mask := Mask[null, valid(this, !b_24):=Mask[null, valid(this, !b_24)] - perm];
    
    // -- Execute unfolding (for extra information)
      UnfoldingHeap := ExhaleWellDef0Heap;
      UnfoldingMask := ExhaleWellDef0Mask;
      assume valid#trigger(UnfoldingHeap, valid(this, false));
      assume UnfoldingHeap[null, valid(this, false)] == FrameFragment(FrameFragment(UnfoldingHeap[this, g]));
      ExhaleWellDef1Mask := UnfoldingMask;
      ExhaleWellDef1Heap := UnfoldingHeap;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Postcondition of t3_1 might not hold. There might be insufficient permission to access valid(this, false) (arguments.vpr@110.14--110.73) [105166]"}
          perm <= UnfoldingMask[null, valid(this, false)];
      }
      UnfoldingMask := UnfoldingMask[null, valid(this, false):=UnfoldingMask[null, valid(this, false)] - perm];
      perm := FullPerm;
      assume this != null;
      UnfoldingMask := UnfoldingMask[this, g:=UnfoldingMask[this, g] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      assume state(UnfoldingHeap, UnfoldingMask);
    assert {:msg "  Postcondition of t3_1 might not hold. Assertion this.g == 2 might not hold. (arguments.vpr@110.14--110.73) [105167]"}
      Heap[this, g] == 2;
    
    // -- Free assumptions (exhale module)
      Heap := Heap[null, valid#sm(this, false):=Heap[null, valid#sm(this, false)][this, g:=true]];
      assume state(Heap, Mask);
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method t3a
// ==================================================

procedure t3a(this: Ref, xs: (Seq Ref), b_24: bool) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var QPMask: MaskType;
  var UnfoldingHeap: HeapType;
  var UnfoldingMask: MaskType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var newVersion: FrameType;
  var freshVersion: FrameType;
  var PreCallHeap: HeapType;
  var PreCallMask: MaskType;
  var ExhaleHeap: HeapType;
  var ExhaleWellDef1Mask: MaskType;
  var ExhaleWellDef1Heap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[this, $allocated];
  
  // -- Checked inhaling of precondition
    assume Seq#Contains(xs, this);
    assume state(Heap, Mask);
    perm := FullPerm;
    assume this != null;
    Mask := Mask[this, unrelatedField:=Mask[this, unrelatedField] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall x: Ref :: { (x in xs) } (x in xs) ==> acc(valid(x, b), write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    
    // -- check if receiver acc(valid(x, b), write) is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource valid(x, b) might not be injective. (arguments.vpr@120.14--120.66) [105168]"}
        (forall x_1: Ref, x_1_1: Ref ::
        { neverTriggered17(x_1), neverTriggered17(x_1_1) }
        (((x_1 != x_1_1 && Seq#Contains(xs, x_1)) && Seq#Contains(xs, x_1_1)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> x_1 != x_1_1 || b_24 != b_24
      );
    
    // -- Define Inverse Function
      assume (forall x_1: Ref ::
        { Heap[null, valid(x_1, b_24)] } { Mask[null, valid(x_1, b_24)] } { Seq#ContainsTrigger(xs, x_1) } { Seq#Contains(xs, x_1) }
        Seq#Contains(xs, x_1) && NoPerm < FullPerm ==> invRecv17(x_1, b_24) == x_1 && qpRange17(x_1, b_24)
      );
      assume (forall this_1_1: Ref, b_1_1_1: bool ::
        { invRecv17(this_1_1, b_1_1_1) }
        (Seq#Contains(xs, invRecv17(this_1_1, b_1_1_1)) && NoPerm < FullPerm) && qpRange17(this_1_1, b_1_1_1) ==> invRecv17(this_1_1, b_1_1_1) == this_1_1 && b_24 == b_1_1_1
      );
    
    // -- Define updated permissions
      assume (forall this_1_1: Ref, b_1_1_1: bool ::
        { QPMask[null, valid(this_1_1, b_1_1_1)] }
        (Seq#Contains(xs, invRecv17(this_1_1, b_1_1_1)) && NoPerm < FullPerm) && qpRange17(this_1_1, b_1_1_1) ==> (NoPerm < FullPerm ==> invRecv17(this_1_1, b_1_1_1) == this_1_1 && b_24 == b_1_1_1) && QPMask[null, valid(this_1_1, b_1_1_1)] == Mask[null, valid(this_1_1, b_1_1_1)] + FullPerm
      );
    
    // -- Define independent locations
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        (o_4 != null || !IsPredicateField(f_5)) || getPredWandId(f_5) != 0 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
      assume (forall this_1_1: Ref, b_1_1_1: bool ::
        { QPMask[null, valid(this_1_1, b_1_1_1)] }
        !((Seq#Contains(xs, invRecv17(this_1_1, b_1_1_1)) && NoPerm < FullPerm) && qpRange17(this_1_1, b_1_1_1)) ==> QPMask[null, valid(this_1_1, b_1_1_1)] == Mask[null, valid(this_1_1, b_1_1_1)]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall x: Ref :: { (x in xs) } (x in xs) ==> acc(valid(x, !b), write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    
    // -- check if receiver acc(valid(x, !b), write) is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource valid(x, !b) might not be injective. (arguments.vpr@121.14--121.67) [105169]"}
        (forall x_4: Ref, x_4_1: Ref ::
        { neverTriggered18(x_4), neverTriggered18(x_4_1) }
        (((x_4 != x_4_1 && Seq#Contains(xs, x_4)) && Seq#Contains(xs, x_4_1)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> x_4 != x_4_1 || !b_24 != !b_24
      );
    
    // -- Define Inverse Function
      assume (forall x_4: Ref ::
        { Seq#ContainsTrigger(xs, x_4) } { Seq#Contains(xs, x_4) }
        Seq#Contains(xs, x_4) && NoPerm < FullPerm ==> invRecv18(x_4, !b_24) == x_4 && qpRange18(x_4, !b_24)
      );
      assume (forall this_2_1: Ref, b_2_1_1: bool ::
        { invRecv18(this_2_1, b_2_1_1) }
        (Seq#Contains(xs, invRecv18(this_2_1, b_2_1_1)) && NoPerm < FullPerm) && qpRange18(this_2_1, b_2_1_1) ==> invRecv18(this_2_1, b_2_1_1) == this_2_1 && !b_24 == b_2_1_1
      );
    
    // -- Define updated permissions
      assume (forall this_2_1: Ref, b_2_1_1: bool ::
        { QPMask[null, valid(this_2_1, b_2_1_1)] }
        (Seq#Contains(xs, invRecv18(this_2_1, b_2_1_1)) && NoPerm < FullPerm) && qpRange18(this_2_1, b_2_1_1) ==> (NoPerm < FullPerm ==> invRecv18(this_2_1, b_2_1_1) == this_2_1 && !b_24 == b_2_1_1) && QPMask[null, valid(this_2_1, b_2_1_1)] == Mask[null, valid(this_2_1, b_2_1_1)] + FullPerm
      );
    
    // -- Define independent locations
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        (o_4 != null || !IsPredicateField(f_5)) || getPredWandId(f_5) != 0 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
      assume (forall this_2_1: Ref, b_2_1_1: bool ::
        { QPMask[null, valid(this_2_1, b_2_1_1)] }
        !((Seq#Contains(xs, invRecv18(this_2_1, b_2_1_1)) && NoPerm < FullPerm) && qpRange18(this_2_1, b_2_1_1)) ==> QPMask[null, valid(this_2_1, b_2_1_1)] == Mask[null, valid(this_2_1, b_2_1_1)]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of (unfolding acc(valid(this, false), write) in this.g == 2)
      UnfoldingHeap := Heap;
      UnfoldingMask := Mask;
      assume valid#trigger(UnfoldingHeap, valid(this, false));
      assume UnfoldingHeap[null, valid(this, false)] == FrameFragment(FrameFragment(UnfoldingHeap[this, g]));
      ExhaleWellDef0Mask := UnfoldingMask;
      ExhaleWellDef0Heap := UnfoldingHeap;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access valid(this, false) (arguments.vpr@122.15--122.74) [105170]"}
          perm <= UnfoldingMask[null, valid(this, false)];
      }
      UnfoldingMask := UnfoldingMask[null, valid(this, false):=UnfoldingMask[null, valid(this, false)] - perm];
      perm := FullPerm;
      assume this != null;
      UnfoldingMask := UnfoldingMask[this, g:=UnfoldingMask[this, g] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      assume state(UnfoldingHeap, UnfoldingMask);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.g (arguments.vpr@122.15--122.74) [105171]"}
        HasDirectPerm(UnfoldingMask, this, g);
      
      // -- Free assumptions (exp module)
        Heap := Heap[null, valid#sm(this, false):=Heap[null, valid#sm(this, false)][this, g:=true]];
        assume state(Heap, Mask);
    
    // -- Execute unfolding (for extra information)
      UnfoldingHeap := Heap;
      UnfoldingMask := Mask;
      assume valid#trigger(UnfoldingHeap, valid(this, false));
      assume UnfoldingHeap[null, valid(this, false)] == FrameFragment(FrameFragment(UnfoldingHeap[this, g]));
      ExhaleWellDef0Mask := UnfoldingMask;
      ExhaleWellDef0Heap := UnfoldingHeap;
      perm := FullPerm;
      UnfoldingMask := UnfoldingMask[null, valid(this, false):=UnfoldingMask[null, valid(this, false)] - perm];
      perm := FullPerm;
      assume this != null;
      UnfoldingMask := UnfoldingMask[this, g:=UnfoldingMask[this, g] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      assume state(UnfoldingHeap, UnfoldingMask);
    assume Heap[this, g] == 2;
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
    PostMask := PostMask[null, valid(this, b_24):=PostMask[null, valid(this, b_24)] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    perm := FullPerm;
    PostMask := PostMask[null, valid(this, !b_24):=PostMask[null, valid(this, !b_24)] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (unfolding acc(valid(this, false), write) in this.g == 2)
      UnfoldingHeap := PostHeap;
      UnfoldingMask := PostMask;
      assume valid#trigger(UnfoldingHeap, valid(this, false));
      assume UnfoldingHeap[null, valid(this, false)] == FrameFragment(FrameFragment(UnfoldingHeap[this, g]));
      ExhaleWellDef0Mask := UnfoldingMask;
      ExhaleWellDef0Heap := UnfoldingHeap;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access valid(this, false) (arguments.vpr@125.14--125.73) [105172]"}
          perm <= UnfoldingMask[null, valid(this, false)];
      }
      UnfoldingMask := UnfoldingMask[null, valid(this, false):=UnfoldingMask[null, valid(this, false)] - perm];
      perm := FullPerm;
      assume this != null;
      UnfoldingMask := UnfoldingMask[this, g:=UnfoldingMask[this, g] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      assume state(UnfoldingHeap, UnfoldingMask);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access this.g (arguments.vpr@125.14--125.73) [105173]"}
        HasDirectPerm(UnfoldingMask, this, g);
      
      // -- Free assumptions (exp module)
        PostHeap := PostHeap[null, valid#sm(this, false):=PostHeap[null, valid#sm(this, false)][this, g:=true]];
        assume state(PostHeap, PostMask);
    
    // -- Execute unfolding (for extra information)
      UnfoldingHeap := PostHeap;
      UnfoldingMask := PostMask;
      assume valid#trigger(UnfoldingHeap, valid(this, false));
      assume UnfoldingHeap[null, valid(this, false)] == FrameFragment(FrameFragment(UnfoldingHeap[this, g]));
      ExhaleWellDef0Mask := UnfoldingMask;
      ExhaleWellDef0Heap := UnfoldingHeap;
      perm := FullPerm;
      UnfoldingMask := UnfoldingMask[null, valid(this, false):=UnfoldingMask[null, valid(this, false)] - perm];
      perm := FullPerm;
      assume this != null;
      UnfoldingMask := UnfoldingMask[this, g:=UnfoldingMask[this, g] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      assume state(UnfoldingHeap, UnfoldingMask);
    assume PostHeap[this, g] == 2;
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: unfold acc(valid(this, true), write) -- arguments.vpr@127.5--127.41
    assume valid#trigger(Heap, valid(this, true));
    assume Heap[null, valid(this, true)] == FrameFragment(FrameFragment(Heap[this, f_7]));
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Unfolding valid(this, true) might fail. There might be insufficient permission to access valid(this, true) (arguments.vpr@127.5--127.41) [105176]"}
        perm <= Mask[null, valid(this, true)];
    }
    Mask := Mask[null, valid(this, true):=Mask[null, valid(this, true)] - perm];
    
    // -- Update version of predicate
      if (!HasDirectPerm(Mask, null, valid(this, true))) {
        havoc newVersion;
        Heap := Heap[null, valid(this, true):=newVersion];
      }
    perm := FullPerm;
    assume this != null;
    Mask := Mask[this, f_7:=Mask[this, f_7] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: this.f := 1 -- arguments.vpr@128.5--128.16
    assert {:msg "  Assignment might fail. There might be insufficient permission to access this.f (arguments.vpr@128.5--128.16) [105179]"}
      FullPerm == Mask[this, f_7];
    Heap := Heap[this, f_7:=1];
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(valid(this, true), write) -- arguments.vpr@129.5--129.39
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding valid(this, true) might fail. There might be insufficient permission to access this.f (arguments.vpr@129.5--129.39) [105182]"}
        perm <= Mask[this, f_7];
    }
    Mask := Mask[this, f_7:=Mask[this, f_7] - perm];
    perm := FullPerm;
    Mask := Mask[null, valid(this, true):=Mask[null, valid(this, true)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume valid#trigger(Heap, valid(this, true));
    assume Heap[null, valid(this, true)] == FrameFragment(FrameFragment(Heap[this, f_7]));
    if (!HasDirectPerm(Mask, null, valid(this, true))) {
      Heap := Heap[null, valid#sm(this, true):=ZeroPMask];
      havoc freshVersion;
      Heap := Heap[null, valid(this, true):=freshVersion];
    }
    Heap := Heap[null, valid#sm(this, true):=Heap[null, valid#sm(this, true)][this, f_7:=true]];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: unrelated(this) -- arguments.vpr@130.5--130.20
    PreCallHeap := Heap;
    PreCallMask := Mask;
    
    // -- Exhaling precondition
      ExhaleWellDef0Mask := Mask;
      ExhaleWellDef0Heap := Heap;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  The precondition of method unrelated might not hold. There might be insufficient permission to access this.unrelatedField (arguments.vpr@130.5--130.20) [105186]"}
          perm <= Mask[this, unrelatedField];
      }
      Mask := Mask[this, unrelatedField:=Mask[this, unrelatedField] - perm];
      // Finish exhale
      havoc ExhaleHeap;
      assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
      Heap := ExhaleHeap;
    
    // -- Inhaling postcondition
      perm := FullPerm;
      assume this != null;
      Mask := Mask[this, unrelatedField:=Mask[this, unrelatedField] + perm];
      assume state(Heap, Mask);
      assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of t3a might not hold. There might be insufficient permission to access valid(this, b) (arguments.vpr@123.13--123.39) [105187]"}
        perm <= Mask[null, valid(this, b_24)];
    }
    Mask := Mask[null, valid(this, b_24):=Mask[null, valid(this, b_24)] - perm];
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of t3a might not hold. There might be insufficient permission to access valid(this, !b) (arguments.vpr@124.13--124.40) [105188]"}
        perm <= Mask[null, valid(this, !b_24)];
    }
    Mask := Mask[null, valid(this, !b_24):=Mask[null, valid(this, !b_24)] - perm];
    
    // -- Execute unfolding (for extra information)
      UnfoldingHeap := ExhaleWellDef0Heap;
      UnfoldingMask := ExhaleWellDef0Mask;
      assume valid#trigger(UnfoldingHeap, valid(this, false));
      assume UnfoldingHeap[null, valid(this, false)] == FrameFragment(FrameFragment(UnfoldingHeap[this, g]));
      ExhaleWellDef1Mask := UnfoldingMask;
      ExhaleWellDef1Heap := UnfoldingHeap;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Postcondition of t3a might not hold. There might be insufficient permission to access valid(this, false) (arguments.vpr@125.14--125.73) [105189]"}
          perm <= UnfoldingMask[null, valid(this, false)];
      }
      UnfoldingMask := UnfoldingMask[null, valid(this, false):=UnfoldingMask[null, valid(this, false)] - perm];
      perm := FullPerm;
      assume this != null;
      UnfoldingMask := UnfoldingMask[this, g:=UnfoldingMask[this, g] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      assume state(UnfoldingHeap, UnfoldingMask);
    assert {:msg "  Postcondition of t3a might not hold. Assertion this.g == 2 might not hold. (arguments.vpr@125.14--125.73) [105190]"}
      Heap[this, g] == 2;
    
    // -- Free assumptions (exhale module)
      Heap := Heap[null, valid#sm(this, false):=Heap[null, valid#sm(this, false)][this, g:=true]];
      assume state(Heap, Mask);
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method t3b
// ==================================================

procedure t3b(this: Ref, xs: (Seq Ref), b_24: bool) returns ()
  modifies Heap, Mask;
{
  var QPMask: MaskType;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var perm: Perm;
  var newVersion: FrameType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[this, $allocated];
  
  // -- Checked inhaling of precondition
    assume Seq#Contains(xs, this);
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall x: Ref :: { (x in xs) } (x in xs) ==> acc(valid(x, b), write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    
    // -- check if receiver acc(valid(x, b), write) is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource valid(x, b) might not be injective. (arguments.vpr@135.14--135.66) [105191]"}
        (forall x_1: Ref, x_1_1: Ref ::
        { neverTriggered19(x_1), neverTriggered19(x_1_1) }
        (((x_1 != x_1_1 && Seq#Contains(xs, x_1)) && Seq#Contains(xs, x_1_1)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> x_1 != x_1_1 || b_24 != b_24
      );
    
    // -- Define Inverse Function
      assume (forall x_1: Ref ::
        { Heap[null, valid(x_1, b_24)] } { Mask[null, valid(x_1, b_24)] } { Seq#ContainsTrigger(xs, x_1) } { Seq#Contains(xs, x_1) }
        Seq#Contains(xs, x_1) && NoPerm < FullPerm ==> invRecv19(x_1, b_24) == x_1 && qpRange19(x_1, b_24)
      );
      assume (forall this_1_1: Ref, b_1_1_1: bool ::
        { invRecv19(this_1_1, b_1_1_1) }
        (Seq#Contains(xs, invRecv19(this_1_1, b_1_1_1)) && NoPerm < FullPerm) && qpRange19(this_1_1, b_1_1_1) ==> invRecv19(this_1_1, b_1_1_1) == this_1_1 && b_24 == b_1_1_1
      );
    
    // -- Define updated permissions
      assume (forall this_1_1: Ref, b_1_1_1: bool ::
        { QPMask[null, valid(this_1_1, b_1_1_1)] }
        (Seq#Contains(xs, invRecv19(this_1_1, b_1_1_1)) && NoPerm < FullPerm) && qpRange19(this_1_1, b_1_1_1) ==> (NoPerm < FullPerm ==> invRecv19(this_1_1, b_1_1_1) == this_1_1 && b_24 == b_1_1_1) && QPMask[null, valid(this_1_1, b_1_1_1)] == Mask[null, valid(this_1_1, b_1_1_1)] + FullPerm
      );
    
    // -- Define independent locations
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        (o_4 != null || !IsPredicateField(f_5)) || getPredWandId(f_5) != 0 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
      assume (forall this_1_1: Ref, b_1_1_1: bool ::
        { QPMask[null, valid(this_1_1, b_1_1_1)] }
        !((Seq#Contains(xs, invRecv19(this_1_1, b_1_1_1)) && NoPerm < FullPerm) && qpRange19(this_1_1, b_1_1_1)) ==> QPMask[null, valid(this_1_1, b_1_1_1)] == Mask[null, valid(this_1_1, b_1_1_1)]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall x: Ref :: { (x in xs) } (x in xs) ==> acc(valid(x, !b), write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    
    // -- check if receiver acc(valid(x, !b), write) is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource valid(x, !b) might not be injective. (arguments.vpr@136.14--136.67) [105192]"}
        (forall x_4: Ref, x_4_1: Ref ::
        { neverTriggered20(x_4), neverTriggered20(x_4_1) }
        (((x_4 != x_4_1 && Seq#Contains(xs, x_4)) && Seq#Contains(xs, x_4_1)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> x_4 != x_4_1 || !b_24 != !b_24
      );
    
    // -- Define Inverse Function
      assume (forall x_4: Ref ::
        { Seq#ContainsTrigger(xs, x_4) } { Seq#Contains(xs, x_4) }
        Seq#Contains(xs, x_4) && NoPerm < FullPerm ==> invRecv20(x_4, !b_24) == x_4 && qpRange20(x_4, !b_24)
      );
      assume (forall this_2_1: Ref, b_2_1_1: bool ::
        { invRecv20(this_2_1, b_2_1_1) }
        (Seq#Contains(xs, invRecv20(this_2_1, b_2_1_1)) && NoPerm < FullPerm) && qpRange20(this_2_1, b_2_1_1) ==> invRecv20(this_2_1, b_2_1_1) == this_2_1 && !b_24 == b_2_1_1
      );
    
    // -- Define updated permissions
      assume (forall this_2_1: Ref, b_2_1_1: bool ::
        { QPMask[null, valid(this_2_1, b_2_1_1)] }
        (Seq#Contains(xs, invRecv20(this_2_1, b_2_1_1)) && NoPerm < FullPerm) && qpRange20(this_2_1, b_2_1_1) ==> (NoPerm < FullPerm ==> invRecv20(this_2_1, b_2_1_1) == this_2_1 && !b_24 == b_2_1_1) && QPMask[null, valid(this_2_1, b_2_1_1)] == Mask[null, valid(this_2_1, b_2_1_1)] + FullPerm
      );
    
    // -- Define independent locations
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        (o_4 != null || !IsPredicateField(f_5)) || getPredWandId(f_5) != 0 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
      assume (forall this_2_1: Ref, b_2_1_1: bool ::
        { QPMask[null, valid(this_2_1, b_2_1_1)] }
        !((Seq#Contains(xs, invRecv20(this_2_1, b_2_1_1)) && NoPerm < FullPerm) && qpRange20(this_2_1, b_2_1_1)) ==> QPMask[null, valid(this_2_1, b_2_1_1)] == Mask[null, valid(this_2_1, b_2_1_1)]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: unfold acc(valid(this, true), write) -- arguments.vpr@138.5--138.41
    assume valid#trigger(Heap, valid(this, true));
    assume Heap[null, valid(this, true)] == FrameFragment(FrameFragment(Heap[this, f_7]));
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Unfolding valid(this, true) might fail. There might be insufficient permission to access valid(this, true) (arguments.vpr@138.5--138.41) [105195]"}
        perm <= Mask[null, valid(this, true)];
    }
    Mask := Mask[null, valid(this, true):=Mask[null, valid(this, true)] - perm];
    
    // -- Update version of predicate
      if (!HasDirectPerm(Mask, null, valid(this, true))) {
        havoc newVersion;
        Heap := Heap[null, valid(this, true):=newVersion];
      }
    perm := FullPerm;
    assume this != null;
    Mask := Mask[this, f_7:=Mask[this, f_7] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: this.f := 1 -- arguments.vpr@139.5--139.16
    assert {:msg "  Assignment might fail. There might be insufficient permission to access this.f (arguments.vpr@139.5--139.16) [105198]"}
      FullPerm == Mask[this, f_7];
    Heap := Heap[this, f_7:=1];
    assume state(Heap, Mask);
  
  // -- Translating statement: this.g := 1 -- arguments.vpr@141.5--141.16
    assert {:msg "  Assignment might fail. There might be insufficient permission to access this.g (arguments.vpr@141.5--141.16) [105199]"}
      FullPerm == Mask[this, g];
    Heap := Heap[this, g:=1];
    assume state(Heap, Mask);
}