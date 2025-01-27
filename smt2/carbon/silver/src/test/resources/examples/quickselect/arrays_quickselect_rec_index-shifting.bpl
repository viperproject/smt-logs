// 
// Translation of Viper program.
// 
// Date:         2025-01-27 03:30:01
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/examples/quickselect/arrays_quickselect_rec_index-shifting.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/examples/quickselect/arrays_quickselect_rec_index-shifting-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
axiom (forall o_53: Ref, f_67: (Field NormalField Ref), Heap: HeapType ::
  { Heap[o_53, f_67] }
  Heap[o_53, $allocated] ==> Heap[Heap[o_53, f_67], $allocated]
);
function  succHeap(Heap0: HeapType, Heap1: HeapType): bool;
function  succHeapTrans(Heap0: HeapType, Heap1: HeapType): bool;
function  IdenticalOnKnownLocations(Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType): bool;
function  IsPredicateField<A, B>(f_1: (Field A B)): bool;
function  IsWandField<A, B>(f_1: (Field A B)): bool;
function  getPredWandId<A, B>(f_1: (Field A B)): int;
// Frame all locations with direct permissions
axiom (forall <A, B> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_24: Ref, f_34: (Field A B) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_24, f_34] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, o_24, f_34) ==> Heap[o_24, f_34] == ExhaleHeap[o_24, f_34]
);
// Frame all predicate mask locations of predicates with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_48: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_48), ExhaleHeap[null, PredicateMaskField(pm_f_48)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_48) && IsPredicateField(pm_f_48) ==> Heap[null, PredicateMaskField(pm_f_48)] == ExhaleHeap[null, PredicateMaskField(pm_f_48)]
);
// Frame all locations with known folded permissions
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_48: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_48) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_48) && IsPredicateField(pm_f_48) ==> (forall <A, B> o2_49: Ref, f_34: (Field A B) ::
    { ExhaleHeap[o2_49, f_34] }
    Heap[null, PredicateMaskField(pm_f_48)][o2_49, f_34] ==> Heap[o2_49, f_34] == ExhaleHeap[o2_49, f_34]
  )
);
// Frame all wand mask locations of wands with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_48: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_48), ExhaleHeap[null, WandMaskField(pm_f_48)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_48) && IsWandField(pm_f_48) ==> Heap[null, WandMaskField(pm_f_48)] == ExhaleHeap[null, WandMaskField(pm_f_48)]
);
// Frame all locations in the footprint of magic wands
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_48: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_48) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_48) && IsWandField(pm_f_48) ==> (forall <A, B> o2_49: Ref, f_34: (Field A B) ::
    { ExhaleHeap[o2_49, f_34] }
    Heap[null, WandMaskField(pm_f_48)][o2_49, f_34] ==> Heap[o2_49, f_34] == ExhaleHeap[o2_49, f_34]
  )
);
// All previously-allocated references are still allocated
axiom (forall Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_24: Ref ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_24, $allocated] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> Heap[o_24, $allocated] ==> ExhaleHeap[o_24, $allocated]
);
// Updated Heaps are Successor Heaps
axiom (forall <A, B> Heap: HeapType, o_53: Ref, f_16: (Field A B), v: B ::
  { Heap[o_53, f_16:=v] }
  succHeap(Heap, Heap[o_53, f_16:=v])
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

function  neverTriggered1(i_1: int): bool;
function  neverTriggered2(i_3_2: int): bool;
function  neverTriggered3(i_14_1: int): bool;
function  neverTriggered4(i_25_1: int): bool;
function  neverTriggered5(i_35: int): bool;
function  neverTriggered6(i_44: int): bool;
function  neverTriggered7(i_49: int): bool;
function  neverTriggered8(i_58: int): bool;
function  neverTriggered9(i_1: int): bool;
function  neverTriggered10(i_3_2: int): bool;
function  neverTriggered11(i_14_1: int): bool;
function  neverTriggered12(i_25_1: int): bool;
function  neverTriggered13(i_26_1: int): bool;
function  neverTriggered14(i_32: int): bool;
function  neverTriggered15(i_33: int): bool;
function  neverTriggered16(i_43: int): bool;
function  neverTriggered17(i_44: int): bool;
function  neverTriggered18(i_1: int): bool;
function  neverTriggered19(i_5_1: int): bool;
function  neverTriggered20(i_6_2: int): bool;
function  neverTriggered21(i_7_1: int): bool;
function  neverTriggered22(i_8_1: int): bool;
// ==================================================
// Functions used as inverse of receiver expressions in quantified permissions during inhale and exhale
// ==================================================

function  invRecv1(recv: Ref): int;
function  invRecv2(recv: Ref): int;
function  invRecv3(recv: Ref): int;
function  invRecv4(recv: Ref): int;
function  invRecv5(recv: Ref): int;
function  invRecv6(recv: Ref): int;
function  invRecv7(recv: Ref): int;
function  invRecv8(recv: Ref): int;
function  invRecv9(recv: Ref): int;
function  invRecv10(recv: Ref): int;
function  invRecv11(recv: Ref): int;
function  invRecv12(recv: Ref): int;
function  invRecv13(recv: Ref): int;
function  invRecv14(recv: Ref): int;
function  invRecv15(recv: Ref): int;
function  invRecv16(recv: Ref): int;
function  invRecv17(recv: Ref): int;
function  invRecv18(recv: Ref): int;
function  invRecv19(recv: Ref): int;
function  invRecv20(recv: Ref): int;
function  invRecv21(recv: Ref): int;
function  invRecv22(recv: Ref): int;
// ==================================================
// Functions used to represent the range of the projection of each QP instance onto its receiver expressions for quantified permissions during inhale and exhale
// ==================================================

function  qpRange1(recv: Ref): bool;
function  qpRange2(recv: Ref): bool;
function  qpRange3(recv: Ref): bool;
function  qpRange4(recv: Ref): bool;
function  qpRange5(recv: Ref): bool;
function  qpRange6(recv: Ref): bool;
function  qpRange7(recv: Ref): bool;
function  qpRange8(recv: Ref): bool;
function  qpRange9(recv: Ref): bool;
function  qpRange10(recv: Ref): bool;
function  qpRange11(recv: Ref): bool;
function  qpRange12(recv: Ref): bool;
function  qpRange13(recv: Ref): bool;
function  qpRange14(recv: Ref): bool;
function  qpRange15(recv: Ref): bool;
function  qpRange16(recv: Ref): bool;
function  qpRange17(recv: Ref): bool;
function  qpRange18(recv: Ref): bool;
function  qpRange19(recv: Ref): bool;
function  qpRange20(recv: Ref): bool;
function  qpRange21(recv: Ref): bool;
function  qpRange22(recv: Ref): bool;

// ==================================================
// Preamble of Function and predicate module.
// ==================================================

// Function heights (higher height means its body is available earlier):
// - height 0: dummy
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
// Translation of domain IArray
// ==================================================

// The type for domain IArray
type IArrayDomainType;

// Translation of domain function loc
function  loc(a_3: IArrayDomainType, i_6: int): Ref;

// Translation of domain function len
function  len(a_3: IArrayDomainType): int;

// Translation of domain function first
function  first_1(r_4: Ref): IArrayDomainType;

// Translation of domain function second
function  second_1(r_4: Ref): int;

// Translation of domain axiom all_diff
axiom (forall a_2: IArrayDomainType, i: int ::
  { (loc(a_2, i): Ref) }
  (first_1((loc(a_2, i): Ref)): IArrayDomainType) == a_2 && (second_1((loc(a_2, i): Ref)): int) == i
);

// Translation of domain axiom length_nonneg
axiom (forall a_2: IArrayDomainType ::
  { (len(a_2): int) }
  (len(a_2): int) >= 0
);

// ==================================================
// Translation of all fields
// ==================================================

const unique val: Field NormalField int;
axiom !IsPredicateField(val);
axiom !IsWandField(val);

// ==================================================
// Translation of function dummy
// ==================================================

// Uninterpreted function definitions
function  dummy_1(Heap: HeapType, i: int): bool;
function  dummy'(Heap: HeapType, i: int): bool;
axiom (forall Heap: HeapType, i: int ::
  { dummy_1(Heap, i) }
  dummy_1(Heap, i) == dummy'(Heap, i) && dummyFunction(dummy#triggerStateless(i))
);
axiom (forall Heap: HeapType, i: int ::
  { dummy'(Heap, i) }
  dummyFunction(dummy#triggerStateless(i))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, i: int ::
  { state(Heap, Mask), dummy_1(Heap, i) }
  state(Heap, Mask) && AssumeFunctionsAbove < 0 ==> dummy_1(Heap, i)
);

// Framing axioms
function  dummy#frame(frame: FrameType, i: int): bool;
axiom (forall Heap: HeapType, Mask: MaskType, i: int ::
  { state(Heap, Mask), dummy'(Heap, i) }
  state(Heap, Mask) ==> dummy'(Heap, i) == dummy#frame(EmptyFrame, i)
);

// Trigger function (controlling recursive postconditions)
function  dummy#trigger(frame: FrameType, i: int): bool;

// State-independent trigger function
function  dummy#triggerStateless(i: int): bool;

// Check contract well-formedness and postcondition
procedure dummy#definedness(i: int) returns (Result: bool)
  modifies Heap, Mask;
{
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume AssumeFunctionsAbove == 0;
  
  // -- Translate function body
    Result := true;
}

// ==================================================
// Translation of method swap
// ==================================================

procedure swap(a_2: IArrayDomainType, i: int, j: int) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var t_2: int;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Checked inhaling of precondition
    assume 0 <= i;
    assume i < (len(a_2): int);
    assume state(Heap, Mask);
    assume 0 <= j;
    assume j < (len(a_2): int);
    assume state(Heap, Mask);
    perm := FullPerm;
    assume (loc(a_2, i): Ref) != null;
    Mask := Mask[(loc(a_2, i): Ref), val:=Mask[(loc(a_2, i): Ref), val] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    if (i != j) {
      perm := FullPerm;
      assume (loc(a_2, j): Ref) != null;
      Mask := Mask[(loc(a_2, j): Ref), val:=Mask[(loc(a_2, j): Ref), val] + perm];
      assume state(Heap, Mask);
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
    assume (loc(a_2, i): Ref) != null;
    PostMask := PostMask[(loc(a_2, i): Ref), val:=PostMask[(loc(a_2, i): Ref), val] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    if (i != j) {
      perm := FullPerm;
      assume (loc(a_2, j): Ref) != null;
      PostMask := PostMask[(loc(a_2, j): Ref), val:=PostMask[(loc(a_2, j): Ref), val] + perm];
      assume state(PostHeap, PostMask);
    }
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of loc(a, i).val == old(loc(a, j).val)
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access loc(a, i).val (arrays_quickselect_rec_index-shifting.vpr@27.11--27.46) [106453]"}
        HasDirectPerm(PostMask, (loc(a_2, i): Ref), val);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access loc(a, j).val (arrays_quickselect_rec_index-shifting.vpr@27.11--27.46) [106454]"}
        HasDirectPerm(oldMask, (loc(a_2, j): Ref), val);
    assume PostHeap[(loc(a_2, i): Ref), val] == oldHeap[(loc(a_2, j): Ref), val];
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of loc(a, j).val == old(loc(a, i).val)
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access loc(a, j).val (arrays_quickselect_rec_index-shifting.vpr@28.11--28.46) [106455]"}
        HasDirectPerm(PostMask, (loc(a_2, j): Ref), val);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access loc(a, i).val (arrays_quickselect_rec_index-shifting.vpr@28.11--28.46) [106456]"}
        HasDirectPerm(oldMask, (loc(a_2, i): Ref), val);
    assume PostHeap[(loc(a_2, j): Ref), val] == oldHeap[(loc(a_2, i): Ref), val];
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: t := loc(a, i).val -- arrays_quickselect_rec_index-shifting.vpr@30.3--30.30
    
    // -- Check definedness of loc(a, i).val
      assert {:msg "  Assignment might fail. There might be insufficient permission to access loc(a, i).val (arrays_quickselect_rec_index-shifting.vpr@30.3--30.30) [106457]"}
        HasDirectPerm(Mask, (loc(a_2, i): Ref), val);
    t_2 := Heap[(loc(a_2, i): Ref), val];
    assume state(Heap, Mask);
  
  // -- Translating statement: loc(a, i).val := loc(a, j).val -- arrays_quickselect_rec_index-shifting.vpr@31.3--31.33
    
    // -- Check definedness of loc(a, j).val
      assert {:msg "  Assignment might fail. There might be insufficient permission to access loc(a, j).val (arrays_quickselect_rec_index-shifting.vpr@31.3--31.33) [106458]"}
        HasDirectPerm(Mask, (loc(a_2, j): Ref), val);
    assert {:msg "  Assignment might fail. There might be insufficient permission to access loc(a, i).val (arrays_quickselect_rec_index-shifting.vpr@31.3--31.33) [106459]"}
      FullPerm == Mask[(loc(a_2, i): Ref), val];
    Heap := Heap[(loc(a_2, i): Ref), val:=Heap[(loc(a_2, j): Ref), val]];
    assume state(Heap, Mask);
  
  // -- Translating statement: loc(a, j).val := t -- arrays_quickselect_rec_index-shifting.vpr@32.3--32.21
    assert {:msg "  Assignment might fail. There might be insufficient permission to access loc(a, j).val (arrays_quickselect_rec_index-shifting.vpr@32.3--32.21) [106460]"}
      FullPerm == Mask[(loc(a_2, j): Ref), val];
    Heap := Heap[(loc(a_2, j): Ref), val:=t_2];
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of swap might not hold. There might be insufficient permission to access loc(a, i).val (arrays_quickselect_rec_index-shifting.vpr@25.11--25.29) [106461]"}
        perm <= Mask[(loc(a_2, i): Ref), val];
    }
    Mask := Mask[(loc(a_2, i): Ref), val:=Mask[(loc(a_2, i): Ref), val] - perm];
    if (i != j) {
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Postcondition of swap might not hold. There might be insufficient permission to access loc(a, j).val (arrays_quickselect_rec_index-shifting.vpr@26.11--26.40) [106462]"}
          perm <= Mask[(loc(a_2, j): Ref), val];
      }
      Mask := Mask[(loc(a_2, j): Ref), val:=Mask[(loc(a_2, j): Ref), val] - perm];
    }
    assert {:msg "  Postcondition of swap might not hold. Assertion loc(a, i).val == old(loc(a, j).val) might not hold. (arrays_quickselect_rec_index-shifting.vpr@27.11--27.46) [106463]"}
      Heap[(loc(a_2, i): Ref), val] == oldHeap[(loc(a_2, j): Ref), val];
    assert {:msg "  Postcondition of swap might not hold. Assertion loc(a, j).val == old(loc(a, i).val) might not hold. (arrays_quickselect_rec_index-shifting.vpr@28.11--28.46) [106464]"}
      Heap[(loc(a_2, j): Ref), val] == oldHeap[(loc(a_2, i): Ref), val];
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method partition
// ==================================================

procedure partition(a_2: IArrayDomainType, left: int, right_2: int, pivotIndex: int) returns (storeIndex: int, pw: (Seq int))
  modifies Heap, Mask;
{
  var QPMask: MaskType;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var i_4: int;
  var i_14: int;
  var i_5: int;
  var i_15: int;
  var j_16: int;
  var i_7: int;
  var pivotValue: int;
  var PreCallHeap: HeapType;
  var PreCallMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var perm: Perm;
  var ExhaleHeap: HeapType;
  var j_4_1: int;
  var i_26_1: int;
  var i_28: int;
  var i_30: int;
  var i_32: int;
  var k: int;
  var i$0: int;
  var i_8: int;
  var i_19: int;
  var i_9: int;
  var i_10: int;
  var k_20: int;
  var i$0_6: int;
  var loopHeap: HeapType;
  var loopMask: MaskType;
  var i_50: int;
  var i_52: int;
  var i_54: int;
  var i_56: int;
  var k_5: int;
  var i$0_5_1: int;
  var i_15_1: int;
  var i_17_1: int;
  var i_19_1: int;
  var i_21_1: int;
  var j_2_2: int;
  var i_23_1: int;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Checked inhaling of precondition
    assume 0 <= left;
    assume left < right_2;
    assume right_2 < (len(a_2): int);
    assume state(Heap, Mask);
    assume left <= pivotIndex;
    assume pivotIndex <= right_2;
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall i: Int :: { loc(a, i) } left <= i && i <= right ==> acc(loc(a, i).val, write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource loc(a, i).val might not be injective. (arrays_quickselect_rec_index-shifting.vpr@53.12--53.75) [106465]"}
      (forall i_1: int, i_1_1: int ::
      
      (((i_1 != i_1_1 && (left <= i_1 && i_1 <= right_2)) && (left <= i_1_1 && i_1_1 <= right_2)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> (loc(a_2, i_1): Ref) != (loc(a_2, i_1_1): Ref)
    );
    
    // -- Define Inverse Function
      assume (forall i_1: int ::
        { (loc(a_2, i_1): Ref) } { (loc(a_2, i_1): Ref) }
        (left <= i_1 && i_1 <= right_2) && NoPerm < FullPerm ==> qpRange1((loc(a_2, i_1): Ref)) && invRecv1((loc(a_2, i_1): Ref)) == i_1
      );
      assume (forall o_9: Ref ::
        { invRecv1(o_9) }
        ((left <= invRecv1(o_9) && invRecv1(o_9) <= right_2) && NoPerm < FullPerm) && qpRange1(o_9) ==> (loc(a_2, invRecv1(o_9)): Ref) == o_9
      );
    
    // -- Assume set of fields is nonNull
      assume (forall i_1: int ::
        { (loc(a_2, i_1): Ref) } { (loc(a_2, i_1): Ref) }
        left <= i_1 && i_1 <= right_2 ==> (loc(a_2, i_1): Ref) != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, val] }
        (((left <= invRecv1(o_9) && invRecv1(o_9) <= right_2) && NoPerm < FullPerm) && qpRange1(o_9) ==> (NoPerm < FullPerm ==> (loc(a_2, invRecv1(o_9)): Ref) == o_9) && QPMask[o_9, val] == Mask[o_9, val] + FullPerm) && (!(((left <= invRecv1(o_9) && invRecv1(o_9) <= right_2) && NoPerm < FullPerm) && qpRange1(o_9)) ==> QPMask[o_9, val] == Mask[o_9, val])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != val ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
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
    assume left <= storeIndex;
    assume storeIndex <= right_2;
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall i: Int :: { loc(a, i) } left <= i && i <= right ==> acc(loc(a, i).val, write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource loc(a, i).val might not be injective. (arrays_quickselect_rec_index-shifting.vpr@58.11--58.74) [106466]"}
      (forall i_3_2: int, i_3_3: int ::
      
      (((i_3_2 != i_3_3 && (left <= i_3_2 && i_3_2 <= right_2)) && (left <= i_3_3 && i_3_3 <= right_2)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> (loc(a_2, i_3_2): Ref) != (loc(a_2, i_3_3): Ref)
    );
    
    // -- Define Inverse Function
      assume (forall i_3_2: int ::
        { (loc(a_2, i_3_2): Ref) } { (loc(a_2, i_3_2): Ref) }
        (left <= i_3_2 && i_3_2 <= right_2) && NoPerm < FullPerm ==> qpRange2((loc(a_2, i_3_2): Ref)) && invRecv2((loc(a_2, i_3_2): Ref)) == i_3_2
      );
      assume (forall o_9: Ref ::
        { invRecv2(o_9) }
        ((left <= invRecv2(o_9) && invRecv2(o_9) <= right_2) && NoPerm < FullPerm) && qpRange2(o_9) ==> (loc(a_2, invRecv2(o_9)): Ref) == o_9
      );
    
    // -- Assume set of fields is nonNull
      assume (forall i_3_2: int ::
        { (loc(a_2, i_3_2): Ref) } { (loc(a_2, i_3_2): Ref) }
        left <= i_3_2 && i_3_2 <= right_2 ==> (loc(a_2, i_3_2): Ref) != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, val] }
        (((left <= invRecv2(o_9) && invRecv2(o_9) <= right_2) && NoPerm < FullPerm) && qpRange2(o_9) ==> (NoPerm < FullPerm ==> (loc(a_2, invRecv2(o_9)): Ref) == o_9) && QPMask[o_9, val] == PostMask[o_9, val] + FullPerm) && (!(((left <= invRecv2(o_9) && invRecv2(o_9) <= right_2) && NoPerm < FullPerm) && qpRange2(o_9)) ==> QPMask[o_9, val] == PostMask[o_9, val])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { PostMask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != val ==> PostMask[o_9, f_5] == QPMask[o_9, f_5]
      );
    PostMask := QPMask;
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of loc(a, storeIndex).val == old(loc(a, pivotIndex).val)
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access loc(a, storeIndex).val (arrays_quickselect_rec_index-shifting.vpr@60.11--60.64) [106467]"}
        HasDirectPerm(PostMask, (loc(a_2, storeIndex): Ref), val);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access loc(a, pivotIndex).val (arrays_quickselect_rec_index-shifting.vpr@60.11--60.64) [106468]"}
        HasDirectPerm(oldMask, (loc(a_2, pivotIndex): Ref), val);
    assume PostHeap[(loc(a_2, storeIndex): Ref), val] == oldHeap[(loc(a_2, pivotIndex): Ref), val];
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall i: Int :: { loc(a, i) } left <= i && i < storeIndex ==> loc(a, i).val < loc(a, storeIndex).val)
      if (*) {
        if (left <= i_4 && i_4 < storeIndex) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access loc(a, i).val (arrays_quickselect_rec_index-shifting.vpr@62.11--62.99) [106469]"}
            HasDirectPerm(PostMask, (loc(a_2, i_4): Ref), val);
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access loc(a, storeIndex).val (arrays_quickselect_rec_index-shifting.vpr@62.11--62.99) [106470]"}
            HasDirectPerm(PostMask, (loc(a_2, storeIndex): Ref), val);
        }
        assume false;
      }
    assume (forall i_5_1: int ::
      { (loc(a_2, i_5_1): Ref) }
      left <= i_5_1 && i_5_1 < storeIndex ==> PostHeap[(loc(a_2, i_5_1): Ref), val] < PostHeap[(loc(a_2, storeIndex): Ref), val]
    );
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall i: Int :: { loc(a, i) } storeIndex < i && i <= right ==> loc(a, storeIndex).val <= loc(a, i).val)
      if (*) {
        if (storeIndex < i_14 && i_14 <= right_2) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access loc(a, storeIndex).val (arrays_quickselect_rec_index-shifting.vpr@63.11--63.100) [106471]"}
            HasDirectPerm(PostMask, (loc(a_2, storeIndex): Ref), val);
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access loc(a, i).val (arrays_quickselect_rec_index-shifting.vpr@63.11--63.100) [106472]"}
            HasDirectPerm(PostMask, (loc(a_2, i_14): Ref), val);
        }
        assume false;
      }
    assume (forall i_7_1: int ::
      { (loc(a_2, i_7_1): Ref) }
      storeIndex < i_7_1 && i_7_1 <= right_2 ==> PostHeap[(loc(a_2, storeIndex): Ref), val] <= PostHeap[(loc(a_2, i_7_1): Ref), val]
    );
    assume state(PostHeap, PostMask);
    assume Seq#Length(pw) == right_2 + 1 - left;
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall i: Int :: { pw[i] } 0 <= i && i < |pw| ==> left <= pw[i] && pw[i] <= right)
      if (*) {
        if (0 <= i_5 && i_5 < Seq#Length(pw)) {
          assert {:msg "  Contract might not be well-formed. Index pw[i] into pw might be negative. (arrays_quickselect_rec_index-shifting.vpr@66.11--66.82) [106473]"}
            i_5 >= 0;
          assert {:msg "  Contract might not be well-formed. Index pw[i] into pw might exceed sequence length. (arrays_quickselect_rec_index-shifting.vpr@66.11--66.82) [106474]"}
            i_5 < Seq#Length(pw);
          if (left <= Seq#Index(pw, i_5)) {
            assert {:msg "  Contract might not be well-formed. Index pw[i] into pw might be negative. (arrays_quickselect_rec_index-shifting.vpr@66.11--66.82) [106475]"}
              i_5 >= 0;
            assert {:msg "  Contract might not be well-formed. Index pw[i] into pw might exceed sequence length. (arrays_quickselect_rec_index-shifting.vpr@66.11--66.82) [106476]"}
              i_5 < Seq#Length(pw);
          }
        }
        assume false;
      }
    assume (forall i_9_1: int ::
      { Seq#Index(pw, i_9_1) }
      0 <= i_9_1 && i_9_1 < Seq#Length(pw) ==> left <= Seq#Index(pw, i_9_1) && Seq#Index(pw, i_9_1) <= right_2
    );
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall i: Int, j: Int :: { pw[i], pw[j] } 0 <= i && (i < j && j < |pw|) ==> pw[i] != pw[j])
      if (*) {
        if (0 <= i_15 && (i_15 < j_16 && j_16 < Seq#Length(pw))) {
          assert {:msg "  Contract might not be well-formed. Index pw[i] into pw might be negative. (arrays_quickselect_rec_index-shifting.vpr@67.11--67.82) [106477]"}
            i_15 >= 0;
          assert {:msg "  Contract might not be well-formed. Index pw[i] into pw might exceed sequence length. (arrays_quickselect_rec_index-shifting.vpr@67.11--67.82) [106478]"}
            i_15 < Seq#Length(pw);
          assert {:msg "  Contract might not be well-formed. Index pw[j] into pw might be negative. (arrays_quickselect_rec_index-shifting.vpr@67.11--67.82) [106479]"}
            j_16 >= 0;
          assert {:msg "  Contract might not be well-formed. Index pw[j] into pw might exceed sequence length. (arrays_quickselect_rec_index-shifting.vpr@67.11--67.82) [106480]"}
            j_16 < Seq#Length(pw);
        }
        assume false;
      }
    assume (forall i_11_1: int, j_1: int ::
      { Seq#Index(pw, i_11_1), Seq#Index(pw, j_1) }
      0 <= i_11_1 && (i_11_1 < j_1 && j_1 < Seq#Length(pw)) ==> Seq#Index(pw, i_11_1) != Seq#Index(pw, j_1)
    );
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall i: Int :: { old(pw[i]) } 0 <= i && i < |pw| ==> loc(a, left + i).val == old(loc(a, pw[i]).val))
      if (*) {
        if (0 <= i_7 && i_7 < Seq#Length(pw)) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access loc(a, left + i).val (arrays_quickselect_rec_index-shifting.vpr@69.11--69.32) [106481]"}
            HasDirectPerm(PostMask, (loc(a_2, left + i_7): Ref), val);
          assert {:msg "  Contract might not be well-formed. Index pw[i] into pw might be negative. (arrays_quickselect_rec_index-shifting.vpr@69.11--69.32) [106482]"}
            i_7 >= 0;
          assert {:msg "  Contract might not be well-formed. Index pw[i] into pw might exceed sequence length. (arrays_quickselect_rec_index-shifting.vpr@69.11--69.32) [106483]"}
            i_7 < Seq#Length(pw);
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access loc(a, pw[i]).val (arrays_quickselect_rec_index-shifting.vpr@69.11--69.32) [106484]"}
            HasDirectPerm(oldMask, (loc(a_2, Seq#Index(pw, i_7)): Ref), val);
        }
        assume false;
      }
    assume (forall i_13_1: int ::
      { Seq#Index(pw, i_13_1) }
      0 <= i_13_1 && i_13_1 < Seq#Length(pw) ==> PostHeap[(loc(a_2, left + i_13_1): Ref), val] == oldHeap[(loc(a_2, Seq#Index(pw, i_13_1)): Ref), val]
    );
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: pivotValue := loc(a, pivotIndex).val -- arrays_quickselect_rec_index-shifting.vpr@71.3--71.48
    
    // -- Check definedness of loc(a, pivotIndex).val
      assert {:msg "  Assignment might fail. There might be insufficient permission to access loc(a, pivotIndex).val (arrays_quickselect_rec_index-shifting.vpr@71.3--71.48) [106485]"}
        HasDirectPerm(Mask, (loc(a_2, pivotIndex): Ref), val);
    pivotValue := Heap[(loc(a_2, pivotIndex): Ref), val];
    assume state(Heap, Mask);
  
  // -- Translating statement: pw := [left..right + 1) -- arrays_quickselect_rec_index-shifting.vpr@73.3--73.26
    pw := Seq#Range(left, right_2 + 1);
    assume state(Heap, Mask);
  
  // -- Translating statement: swap(a, pivotIndex, right) -- arrays_quickselect_rec_index-shifting.vpr@75.3--75.29
    PreCallHeap := Heap;
    PreCallMask := Mask;
    
    // -- Exhaling precondition
      ExhaleWellDef0Heap := Heap;
      ExhaleWellDef0Mask := Mask;
      assert {:msg "  The precondition of method swap might not hold. Assertion 0 <= pivotIndex might not hold. (arrays_quickselect_rec_index-shifting.vpr@75.3--75.29) [106486]"}
        0 <= pivotIndex;
      assert {:msg "  The precondition of method swap might not hold. Assertion pivotIndex < len(a) might not hold. (arrays_quickselect_rec_index-shifting.vpr@75.3--75.29) [106487]"}
        pivotIndex < (len(a_2): int);
      assert {:msg "  The precondition of method swap might not hold. Assertion 0 <= right might not hold. (arrays_quickselect_rec_index-shifting.vpr@75.3--75.29) [106488]"}
        0 <= right_2;
      assert {:msg "  The precondition of method swap might not hold. Assertion right < len(a) might not hold. (arrays_quickselect_rec_index-shifting.vpr@75.3--75.29) [106489]"}
        right_2 < (len(a_2): int);
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  The precondition of method swap might not hold. There might be insufficient permission to access loc(a, pivotIndex).val (arrays_quickselect_rec_index-shifting.vpr@75.3--75.29) [106490]"}
          perm <= Mask[(loc(a_2, pivotIndex): Ref), val];
      }
      Mask := Mask[(loc(a_2, pivotIndex): Ref), val:=Mask[(loc(a_2, pivotIndex): Ref), val] - perm];
      if (pivotIndex != right_2) {
        perm := FullPerm;
        if (perm != NoPerm) {
          assert {:msg "  The precondition of method swap might not hold. There might be insufficient permission to access loc(a, right).val (arrays_quickselect_rec_index-shifting.vpr@75.3--75.29) [106491]"}
            perm <= Mask[(loc(a_2, right_2): Ref), val];
        }
        Mask := Mask[(loc(a_2, right_2): Ref), val:=Mask[(loc(a_2, right_2): Ref), val] - perm];
      }
      // Finish exhale
      havoc ExhaleHeap;
      assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
      Heap := ExhaleHeap;
    
    // -- Inhaling postcondition
      perm := FullPerm;
      assume (loc(a_2, pivotIndex): Ref) != null;
      Mask := Mask[(loc(a_2, pivotIndex): Ref), val:=Mask[(loc(a_2, pivotIndex): Ref), val] + perm];
      assume state(Heap, Mask);
      if (pivotIndex != right_2) {
        perm := FullPerm;
        assume (loc(a_2, right_2): Ref) != null;
        Mask := Mask[(loc(a_2, right_2): Ref), val:=Mask[(loc(a_2, right_2): Ref), val] + perm];
        assume state(Heap, Mask);
      }
      assume Heap[(loc(a_2, pivotIndex): Ref), val] == PreCallHeap[(loc(a_2, right_2): Ref), val];
      assume Heap[(loc(a_2, right_2): Ref), val] == PreCallHeap[(loc(a_2, pivotIndex): Ref), val];
      assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: pw := pw[pivotIndex - left := pw[right - left]][right - left :=
  //   pw[pivotIndex - left]] -- arrays_quickselect_rec_index-shifting.vpr@80.3--81.50
    
    // -- Check definedness of pw[pivotIndex - left := pw[right - left]][right - left := pw[pivotIndex - left]]
      assert {:msg "  Assignment might fail. Index pw[right - left] into pw might be negative. (arrays_quickselect_rec_index-shifting.vpr@80.3--81.50) [106492]"}
        right_2 - left >= 0;
      assert {:msg "  Assignment might fail. Index pw[right - left] into pw might exceed sequence length. (arrays_quickselect_rec_index-shifting.vpr@80.3--81.50) [106493]"}
        right_2 - left < Seq#Length(pw);
      assert {:msg "  Assignment might fail. Index pw[pivotIndex - left] into pw might be negative. (arrays_quickselect_rec_index-shifting.vpr@80.3--81.50) [106494]"}
        pivotIndex - left >= 0;
      assert {:msg "  Assignment might fail. Index pw[pivotIndex - left] into pw might exceed sequence length. (arrays_quickselect_rec_index-shifting.vpr@80.3--81.50) [106495]"}
        pivotIndex - left < Seq#Length(pw);
    pw := Seq#Append(Seq#Take(Seq#Append(Seq#Take(pw, pivotIndex - left), Seq#Append(Seq#Singleton(Seq#Index(pw, right_2 - left)), Seq#Drop(pw, pivotIndex - left + 1))), right_2 - left), Seq#Append(Seq#Singleton(Seq#Index(pw, pivotIndex - left)), Seq#Drop(Seq#Append(Seq#Take(pw, pivotIndex - left), Seq#Append(Seq#Singleton(Seq#Index(pw, right_2 - left)), Seq#Drop(pw, pivotIndex - left + 1))), right_2 - left + 1)));
    assume state(Heap, Mask);
  
  // -- Translating statement: storeIndex := left -- arrays_quickselect_rec_index-shifting.vpr@83.3--83.21
    storeIndex := left;
    assume state(Heap, Mask);
  
  // -- Translating statement: j := left -- arrays_quickselect_rec_index-shifting.vpr@84.3--84.21
    j_4_1 := left;
    assume state(Heap, Mask);
  
  // -- Translating statement: while (j < right) -- arrays_quickselect_rec_index-shifting.vpr@86.3--122.4
    
    // -- Before loop head
      
      // -- Exhale loop invariant before loop
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        assert {:msg "  Loop invariant left <= j && j <= right might not hold on entry. Assertion left <= j might not hold. (arrays_quickselect_rec_index-shifting.vpr@88.15--88.38) [106496]"}
          left <= j_4_1;
        assert {:msg "  Loop invariant left <= j && j <= right might not hold on entry. Assertion j <= right might not hold. (arrays_quickselect_rec_index-shifting.vpr@88.15--88.38) [106497]"}
          j_4_1 <= right_2;
        assert {:msg "  Loop invariant left <= storeIndex && storeIndex <= j might not hold on entry. Assertion left <= storeIndex might not hold. (arrays_quickselect_rec_index-shifting.vpr@89.15--89.52) [106498]"}
          left <= storeIndex;
        assert {:msg "  Loop invariant left <= storeIndex && storeIndex <= j might not hold on entry. Assertion storeIndex <= j might not hold. (arrays_quickselect_rec_index-shifting.vpr@89.15--89.52) [106499]"}
          storeIndex <= j_4_1;
        havoc QPMask;
        
        // -- check that the permission amount is positive
          
        
        // -- check if receiver loc(a, i) is injective
          assert {:msg "  Loop invariant (forall i: Int :: { loc(a, i) } (i in [left..right + 1)) ==> acc(loc(a, i).val, write)) might not hold on entry. Quantified resource loc(a, i).val might not be injective. (arrays_quickselect_rec_index-shifting.vpr@96.15--96.75) [106500]"}
            (forall i_25_1: int, i_25_2: int ::
            { neverTriggered4(i_25_1), neverTriggered4(i_25_2) }
            (((i_25_1 != i_25_2 && Seq#Contains(Seq#Range(left, right_2 + 1), i_25_1)) && Seq#Contains(Seq#Range(left, right_2 + 1), i_25_2)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> (loc(a_2, i_25_1): Ref) != (loc(a_2, i_25_2): Ref)
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Loop invariant (forall i: Int :: { loc(a, i) } (i in [left..right + 1)) ==> acc(loc(a, i).val, write)) might not hold on entry. There might be insufficient permission to access loc(a, i).val (arrays_quickselect_rec_index-shifting.vpr@96.15--96.75) [106501]"}
            (forall i_25_1: int ::
            { (loc(a_2, i_25_1): Ref) } { (loc(a_2, i_25_1): Ref) }
            Seq#Contains(Seq#Range(left, right_2 + 1), i_25_1) ==> Mask[(loc(a_2, i_25_1): Ref), val] >= FullPerm
          );
        
        // -- assumptions for inverse of receiver loc(a, i)
          assume (forall i_25_1: int ::
            { (loc(a_2, i_25_1): Ref) } { (loc(a_2, i_25_1): Ref) }
            Seq#Contains(Seq#Range(left, right_2 + 1), i_25_1) && NoPerm < FullPerm ==> qpRange4((loc(a_2, i_25_1): Ref)) && invRecv4((loc(a_2, i_25_1): Ref)) == i_25_1
          );
          assume (forall o_9: Ref ::
            { invRecv4(o_9) }
            Seq#Contains(Seq#Range(left, right_2 + 1), invRecv4(o_9)) && (NoPerm < FullPerm && qpRange4(o_9)) ==> (loc(a_2, invRecv4(o_9)): Ref) == o_9
          );
        
        // -- assume permission updates for field val
          assume (forall o_9: Ref ::
            { QPMask[o_9, val] }
            (Seq#Contains(Seq#Range(left, right_2 + 1), invRecv4(o_9)) && (NoPerm < FullPerm && qpRange4(o_9)) ==> (loc(a_2, invRecv4(o_9)): Ref) == o_9 && QPMask[o_9, val] == Mask[o_9, val] - FullPerm) && (!(Seq#Contains(Seq#Range(left, right_2 + 1), invRecv4(o_9)) && (NoPerm < FullPerm && qpRange4(o_9))) ==> QPMask[o_9, val] == Mask[o_9, val])
          );
        
        // -- assume permission updates for independent locations
          assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
            { QPMask[o_9, f_5] }
            f_5 != val ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
          );
        Mask := QPMask;
        assert {:msg "  Loop invariant loc(a, right).val == pivotValue might not hold on entry. Assertion loc(a, right).val == pivotValue might not hold. (arrays_quickselect_rec_index-shifting.vpr@97.15--97.46) [106502]"}
          Heap[(loc(a_2, right_2): Ref), val] == pivotValue;
        if (*) {
          if (Seq#Contains(Seq#Range(left, storeIndex), i_26_1)) {
            assert {:msg "  Loop invariant (forall i: Int :: { (i in [left..storeIndex)) } { loc(a, i) } (i in [left..storeIndex)) ==> loc(a, i).val < pivotValue) might not hold on entry. Assertion loc(a, i).val < pivotValue might not hold. (arrays_quickselect_rec_index-shifting.vpr@99.15--99.86) [106503]"}
              Heap[(loc(a_2, i_26_1): Ref), val] < pivotValue;
          }
          assume false;
        }
        assume (forall i_27_1: int ::
          { Seq#ContainsTrigger(Seq#Range(left, storeIndex), i_27_1) } { Seq#Contains(Seq#Range(left, storeIndex), i_27_1) } { (loc(a_2, i_27_1): Ref) }
          Seq#Contains(Seq#Range(left, storeIndex), i_27_1) ==> Heap[(loc(a_2, i_27_1): Ref), val] < pivotValue
        );
        if (*) {
          if (Seq#Contains(Seq#Range(storeIndex, j_4_1), i_28)) {
            assert {:msg "  Loop invariant (forall i: Int :: { (i in [storeIndex..j)) } { loc(a, i) } (i in [storeIndex..j)) ==> pivotValue <= loc(a, i).val) might not hold on entry. Assertion pivotValue <= loc(a, i).val might not hold. (arrays_quickselect_rec_index-shifting.vpr@100.15--100.84) [106504]"}
              pivotValue <= Heap[(loc(a_2, i_28): Ref), val];
          }
          assume false;
        }
        assume (forall i_29_1: int ::
          { Seq#ContainsTrigger(Seq#Range(storeIndex, j_4_1), i_29_1) } { Seq#Contains(Seq#Range(storeIndex, j_4_1), i_29_1) } { (loc(a_2, i_29_1): Ref) }
          Seq#Contains(Seq#Range(storeIndex, j_4_1), i_29_1) ==> pivotValue <= Heap[(loc(a_2, i_29_1): Ref), val]
        );
        assert {:msg "  Loop invariant |pw| == right + 1 - left might not hold on entry. Assertion |pw| == right + 1 - left might not hold. (arrays_quickselect_rec_index-shifting.vpr@102.15--102.39) [106505]"}
          Seq#Length(pw) == right_2 + 1 - left;
        if (*) {
          if (0 <= i_30 && i_30 < Seq#Length(pw)) {
            assert {:msg "  Loop invariant (forall i: Int :: { pw[i] } 0 <= i && i < |pw| ==> left <= pw[i] && pw[i] <= right) might not hold on entry. Assertion left <= pw[i] might not hold. (arrays_quickselect_rec_index-shifting.vpr@103.15--103.86) [106506]"}
              left <= Seq#Index(pw, i_30);
            assert {:msg "  Loop invariant (forall i: Int :: { pw[i] } 0 <= i && i < |pw| ==> left <= pw[i] && pw[i] <= right) might not hold on entry. Assertion pw[i] <= right might not hold. (arrays_quickselect_rec_index-shifting.vpr@103.15--103.86) [106507]"}
              Seq#Index(pw, i_30) <= right_2;
          }
          assume false;
        }
        assume (forall i_31_1: int ::
          { Seq#Index(pw, i_31_1) }
          0 <= i_31_1 && i_31_1 < Seq#Length(pw) ==> left <= Seq#Index(pw, i_31_1) && Seq#Index(pw, i_31_1) <= right_2
        );
        if (*) {
          if (0 <= i_32 && (i_32 < k && k < Seq#Length(pw))) {
            assert {:msg "  Loop invariant (forall i: Int, k: Int :: { pw[i], pw[k] } 0 <= i && (i < k && k < |pw|) ==> pw[i] != pw[k]) might not hold on entry. Assertion pw[i] != pw[k] might not hold. (arrays_quickselect_rec_index-shifting.vpr@104.15--104.86) [106508]"}
              Seq#Index(pw, i_32) != Seq#Index(pw, k);
          }
          assume false;
        }
        assume (forall i_33_1: int, k_1_1_1: int ::
          { Seq#Index(pw, i_33_1), Seq#Index(pw, k_1_1_1) }
          0 <= i_33_1 && (i_33_1 < k_1_1_1 && k_1_1_1 < Seq#Length(pw)) ==> Seq#Index(pw, i_33_1) != Seq#Index(pw, k_1_1_1)
        );
        if (*) {
          if (0 <= i$0 && i$0 < Seq#Length(pw)) {
            assert {:msg "  Loop invariant (forall i$0: Int :: { old(pw[i$0]) } 0 <= i$0 && i$0 < |pw| ==> loc(a, left + i$0).val == old(loc(a, pw[i$0]).val)) might not hold on entry. Assertion loc(a, left + i$0).val == old(loc(a, pw[i$0]).val) might not hold. (arrays_quickselect_rec_index-shifting.vpr@106.15--106.36) [106509]"}
              Heap[(loc(a_2, left + i$0): Ref), val] == oldHeap[(loc(a_2, Seq#Index(pw, i$0)): Ref), val];
          }
          assume false;
        }
        assume (forall i$0_1_1: int ::
          { Seq#Index(pw, i$0_1_1) }
          0 <= i$0_1_1 && i$0_1_1 < Seq#Length(pw) ==> Heap[(loc(a_2, left + i$0_1_1): Ref), val] == oldHeap[(loc(a_2, Seq#Index(pw, i$0_1_1)): Ref), val]
        );
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
    
    // -- Havoc loop written variables (except locals)
      havoc j_4_1, storeIndex, pw;
    
    // -- Check definedness of invariant
      if (*) {
        assume left <= j_4_1;
        assume j_4_1 <= right_2;
        assume state(Heap, Mask);
        assume left <= storeIndex;
        assume storeIndex <= j_4_1;
        assume state(Heap, Mask);
        
        // -- Check definedness of (forall i: Int :: { loc(a, i) } (i in [left..right + 1)) ==> acc(loc(a, i).val, write))
          if (*) {
            assume false;
          }
        havoc QPMask;
        assert {:msg "  Contract might not be well-formed. Quantified resource loc(a, i).val might not be injective. (arrays_quickselect_rec_index-shifting.vpr@96.15--96.75) [106510]"}
          (forall i_35: int, i_35_1: int ::
          
          (((i_35 != i_35_1 && Seq#Contains(Seq#Range(left, right_2 + 1), i_35)) && Seq#Contains(Seq#Range(left, right_2 + 1), i_35_1)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> (loc(a_2, i_35): Ref) != (loc(a_2, i_35_1): Ref)
        );
        
        // -- Define Inverse Function
          assume (forall i_35: int ::
            { (loc(a_2, i_35): Ref) } { (loc(a_2, i_35): Ref) }
            Seq#Contains(Seq#Range(left, right_2 + 1), i_35) && NoPerm < FullPerm ==> qpRange5((loc(a_2, i_35): Ref)) && invRecv5((loc(a_2, i_35): Ref)) == i_35
          );
          assume (forall o_9: Ref ::
            { invRecv5(o_9) }
            (Seq#Contains(Seq#Range(left, right_2 + 1), invRecv5(o_9)) && NoPerm < FullPerm) && qpRange5(o_9) ==> (loc(a_2, invRecv5(o_9)): Ref) == o_9
          );
        
        // -- Assume set of fields is nonNull
          assume (forall i_35: int ::
            { (loc(a_2, i_35): Ref) } { (loc(a_2, i_35): Ref) }
            Seq#Contains(Seq#Range(left, right_2 + 1), i_35) ==> (loc(a_2, i_35): Ref) != null
          );
        
        // -- Define permissions
          assume (forall o_9: Ref ::
            { QPMask[o_9, val] }
            ((Seq#Contains(Seq#Range(left, right_2 + 1), invRecv5(o_9)) && NoPerm < FullPerm) && qpRange5(o_9) ==> (NoPerm < FullPerm ==> (loc(a_2, invRecv5(o_9)): Ref) == o_9) && QPMask[o_9, val] == Mask[o_9, val] + FullPerm) && (!((Seq#Contains(Seq#Range(left, right_2 + 1), invRecv5(o_9)) && NoPerm < FullPerm) && qpRange5(o_9)) ==> QPMask[o_9, val] == Mask[o_9, val])
          );
          assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
            { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
            f_5 != val ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
          );
        Mask := QPMask;
        assume state(Heap, Mask);
        assume state(Heap, Mask);
        
        // -- Check definedness of loc(a, right).val == pivotValue
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access loc(a, right).val (arrays_quickselect_rec_index-shifting.vpr@97.15--97.46) [106511]"}
            HasDirectPerm(Mask, (loc(a_2, right_2): Ref), val);
        assume Heap[(loc(a_2, right_2): Ref), val] == pivotValue;
        assume state(Heap, Mask);
        
        // -- Check definedness of (forall i: Int :: { (i in [left..storeIndex)) } { loc(a, i) } (i in [left..storeIndex)) ==> loc(a, i).val < pivotValue)
          if (*) {
            if (Seq#Contains(Seq#Range(left, storeIndex), i_8)) {
              assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access loc(a, i).val (arrays_quickselect_rec_index-shifting.vpr@99.15--99.86) [106512]"}
                HasDirectPerm(Mask, (loc(a_2, i_8): Ref), val);
            }
            assume false;
          }
        assume (forall i_37: int ::
          { Seq#ContainsTrigger(Seq#Range(left, storeIndex), i_37) } { Seq#Contains(Seq#Range(left, storeIndex), i_37) } { (loc(a_2, i_37): Ref) }
          Seq#Contains(Seq#Range(left, storeIndex), i_37) ==> Heap[(loc(a_2, i_37): Ref), val] < pivotValue
        );
        assume state(Heap, Mask);
        
        // -- Check definedness of (forall i: Int :: { (i in [storeIndex..j)) } { loc(a, i) } (i in [storeIndex..j)) ==> pivotValue <= loc(a, i).val)
          if (*) {
            if (Seq#Contains(Seq#Range(storeIndex, j_4_1), i_19)) {
              assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access loc(a, i).val (arrays_quickselect_rec_index-shifting.vpr@100.15--100.84) [106513]"}
                HasDirectPerm(Mask, (loc(a_2, i_19): Ref), val);
            }
            assume false;
          }
        assume (forall i_39: int ::
          { Seq#ContainsTrigger(Seq#Range(storeIndex, j_4_1), i_39) } { Seq#Contains(Seq#Range(storeIndex, j_4_1), i_39) } { (loc(a_2, i_39): Ref) }
          Seq#Contains(Seq#Range(storeIndex, j_4_1), i_39) ==> pivotValue <= Heap[(loc(a_2, i_39): Ref), val]
        );
        assume state(Heap, Mask);
        assume Seq#Length(pw) == right_2 + 1 - left;
        assume state(Heap, Mask);
        
        // -- Check definedness of (forall i: Int :: { pw[i] } 0 <= i && i < |pw| ==> left <= pw[i] && pw[i] <= right)
          if (*) {
            if (0 <= i_9 && i_9 < Seq#Length(pw)) {
              assert {:msg "  Contract might not be well-formed. Index pw[i] into pw might be negative. (arrays_quickselect_rec_index-shifting.vpr@103.15--103.86) [106514]"}
                i_9 >= 0;
              assert {:msg "  Contract might not be well-formed. Index pw[i] into pw might exceed sequence length. (arrays_quickselect_rec_index-shifting.vpr@103.15--103.86) [106515]"}
                i_9 < Seq#Length(pw);
              if (left <= Seq#Index(pw, i_9)) {
                assert {:msg "  Contract might not be well-formed. Index pw[i] into pw might be negative. (arrays_quickselect_rec_index-shifting.vpr@103.15--103.86) [106516]"}
                  i_9 >= 0;
                assert {:msg "  Contract might not be well-formed. Index pw[i] into pw might exceed sequence length. (arrays_quickselect_rec_index-shifting.vpr@103.15--103.86) [106517]"}
                  i_9 < Seq#Length(pw);
              }
            }
            assume false;
          }
        assume (forall i_41: int ::
          { Seq#Index(pw, i_41) }
          0 <= i_41 && i_41 < Seq#Length(pw) ==> left <= Seq#Index(pw, i_41) && Seq#Index(pw, i_41) <= right_2
        );
        assume state(Heap, Mask);
        
        // -- Check definedness of (forall i: Int, k: Int :: { pw[i], pw[k] } 0 <= i && (i < k && k < |pw|) ==> pw[i] != pw[k])
          if (*) {
            if (0 <= i_10 && (i_10 < k_20 && k_20 < Seq#Length(pw))) {
              assert {:msg "  Contract might not be well-formed. Index pw[i] into pw might be negative. (arrays_quickselect_rec_index-shifting.vpr@104.15--104.86) [106518]"}
                i_10 >= 0;
              assert {:msg "  Contract might not be well-formed. Index pw[i] into pw might exceed sequence length. (arrays_quickselect_rec_index-shifting.vpr@104.15--104.86) [106519]"}
                i_10 < Seq#Length(pw);
              assert {:msg "  Contract might not be well-formed. Index pw[k] into pw might be negative. (arrays_quickselect_rec_index-shifting.vpr@104.15--104.86) [106520]"}
                k_20 >= 0;
              assert {:msg "  Contract might not be well-formed. Index pw[k] into pw might exceed sequence length. (arrays_quickselect_rec_index-shifting.vpr@104.15--104.86) [106521]"}
                k_20 < Seq#Length(pw);
            }
            assume false;
          }
        assume (forall i_43: int, k_3: int ::
          { Seq#Index(pw, i_43), Seq#Index(pw, k_3) }
          0 <= i_43 && (i_43 < k_3 && k_3 < Seq#Length(pw)) ==> Seq#Index(pw, i_43) != Seq#Index(pw, k_3)
        );
        assume state(Heap, Mask);
        
        // -- Check definedness of (forall i$0: Int :: { old(pw[i$0]) } 0 <= i$0 && i$0 < |pw| ==> loc(a, left + i$0).val == old(loc(a, pw[i$0]).val))
          if (*) {
            if (0 <= i$0_6 && i$0_6 < Seq#Length(pw)) {
              assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access loc(a, left + i$0).val (arrays_quickselect_rec_index-shifting.vpr@106.15--106.36) [106522]"}
                HasDirectPerm(Mask, (loc(a_2, left + i$0_6): Ref), val);
              assert {:msg "  Contract might not be well-formed. Index pw[i$0] into pw might be negative. (arrays_quickselect_rec_index-shifting.vpr@106.15--106.36) [106523]"}
                i$0_6 >= 0;
              assert {:msg "  Contract might not be well-formed. Index pw[i$0] into pw might exceed sequence length. (arrays_quickselect_rec_index-shifting.vpr@106.15--106.36) [106524]"}
                i$0_6 < Seq#Length(pw);
              assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access loc(a, pw[i$0]).val (arrays_quickselect_rec_index-shifting.vpr@106.15--106.36) [106525]"}
                HasDirectPerm(oldMask, (loc(a_2, Seq#Index(pw, i$0_6)): Ref), val);
            }
            assume false;
          }
        assume (forall i$0_3_2: int ::
          { Seq#Index(pw, i$0_3_2) }
          0 <= i$0_3_2 && i$0_3_2 < Seq#Length(pw) ==> Heap[(loc(a_2, left + i$0_3_2): Ref), val] == oldHeap[(loc(a_2, Seq#Index(pw, i$0_3_2)): Ref), val]
        );
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
        assume left <= j_4_1;
        assume j_4_1 <= right_2;
        assume left <= storeIndex;
        assume storeIndex <= j_4_1;
        havoc QPMask;
        assert {:msg "  While statement might fail. Quantified resource loc(a, i).val might not be injective. (arrays_quickselect_rec_index-shifting.vpr@96.15--96.75) [106526]"}
          (forall i_44: int, i_44_1: int ::
          
          (((i_44 != i_44_1 && Seq#Contains(Seq#Range(left, right_2 + 1), i_44)) && Seq#Contains(Seq#Range(left, right_2 + 1), i_44_1)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> (loc(a_2, i_44): Ref) != (loc(a_2, i_44_1): Ref)
        );
        
        // -- Define Inverse Function
          assume (forall i_44: int ::
            { (loc(a_2, i_44): Ref) } { (loc(a_2, i_44): Ref) }
            Seq#Contains(Seq#Range(left, right_2 + 1), i_44) && NoPerm < FullPerm ==> qpRange6((loc(a_2, i_44): Ref)) && invRecv6((loc(a_2, i_44): Ref)) == i_44
          );
          assume (forall o_9: Ref ::
            { invRecv6(o_9) }
            (Seq#Contains(Seq#Range(left, right_2 + 1), invRecv6(o_9)) && NoPerm < FullPerm) && qpRange6(o_9) ==> (loc(a_2, invRecv6(o_9)): Ref) == o_9
          );
        
        // -- Assume set of fields is nonNull
          assume (forall i_44: int ::
            { (loc(a_2, i_44): Ref) } { (loc(a_2, i_44): Ref) }
            Seq#Contains(Seq#Range(left, right_2 + 1), i_44) ==> (loc(a_2, i_44): Ref) != null
          );
        
        // -- Define permissions
          assume (forall o_9: Ref ::
            { QPMask[o_9, val] }
            ((Seq#Contains(Seq#Range(left, right_2 + 1), invRecv6(o_9)) && NoPerm < FullPerm) && qpRange6(o_9) ==> (NoPerm < FullPerm ==> (loc(a_2, invRecv6(o_9)): Ref) == o_9) && QPMask[o_9, val] == Mask[o_9, val] + FullPerm) && (!((Seq#Contains(Seq#Range(left, right_2 + 1), invRecv6(o_9)) && NoPerm < FullPerm) && qpRange6(o_9)) ==> QPMask[o_9, val] == Mask[o_9, val])
          );
          assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
            { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
            f_5 != val ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
          );
        Mask := QPMask;
        assume state(Heap, Mask);
        assume Heap[(loc(a_2, right_2): Ref), val] == pivotValue;
        assume (forall i_45: int ::
          { Seq#ContainsTrigger(Seq#Range(left, storeIndex), i_45) } { Seq#Contains(Seq#Range(left, storeIndex), i_45) } { (loc(a_2, i_45): Ref) }
          Seq#Contains(Seq#Range(left, storeIndex), i_45) ==> Heap[(loc(a_2, i_45): Ref), val] < pivotValue
        );
        assume (forall i_46: int ::
          { Seq#ContainsTrigger(Seq#Range(storeIndex, j_4_1), i_46) } { Seq#Contains(Seq#Range(storeIndex, j_4_1), i_46) } { (loc(a_2, i_46): Ref) }
          Seq#Contains(Seq#Range(storeIndex, j_4_1), i_46) ==> pivotValue <= Heap[(loc(a_2, i_46): Ref), val]
        );
        assume Seq#Length(pw) == right_2 + 1 - left;
        assume (forall i_47: int ::
          { Seq#Index(pw, i_47) }
          0 <= i_47 && i_47 < Seq#Length(pw) ==> left <= Seq#Index(pw, i_47) && Seq#Index(pw, i_47) <= right_2
        );
        assume (forall i_48: int, k_4_2: int ::
          { Seq#Index(pw, i_48), Seq#Index(pw, k_4_2) }
          0 <= i_48 && (i_48 < k_4_2 && k_4_2 < Seq#Length(pw)) ==> Seq#Index(pw, i_48) != Seq#Index(pw, k_4_2)
        );
        assume (forall i$0_4_1: int ::
          { Seq#Index(pw, i$0_4_1) }
          0 <= i$0_4_1 && i$0_4_1 < Seq#Length(pw) ==> Heap[(loc(a_2, left + i$0_4_1): Ref), val] == oldHeap[(loc(a_2, Seq#Index(pw, i$0_4_1)): Ref), val]
        );
        assume state(Heap, Mask);
        // Check and assume guard
        assume j_4_1 < right_2;
        assume state(Heap, Mask);
        
        // -- Translate loop body
          
          // -- Translating statement: if (loc(a, j).val < pivotValue) -- arrays_quickselect_rec_index-shifting.vpr@108.5--119.6
            
            // -- Check definedness of loc(a, j).val < pivotValue
              assert {:msg "  Conditional statement might fail. There might be insufficient permission to access loc(a, j).val (arrays_quickselect_rec_index-shifting.vpr@108.9--108.35) [106527]"}
                HasDirectPerm(Mask, (loc(a_2, j_4_1): Ref), val);
            if (Heap[(loc(a_2, j_4_1): Ref), val] < pivotValue) {
              
              // -- Translating statement: swap(a, j, storeIndex) -- arrays_quickselect_rec_index-shifting.vpr@110.7--110.29
                PreCallHeap := Heap;
                PreCallMask := Mask;
                
                // -- Exhaling precondition
                  ExhaleWellDef0Heap := Heap;
                  ExhaleWellDef0Mask := Mask;
                  assert {:msg "  The precondition of method swap might not hold. Assertion 0 <= j might not hold. (arrays_quickselect_rec_index-shifting.vpr@110.7--110.29) [106528]"}
                    0 <= j_4_1;
                  assert {:msg "  The precondition of method swap might not hold. Assertion j < len(a) might not hold. (arrays_quickselect_rec_index-shifting.vpr@110.7--110.29) [106529]"}
                    j_4_1 < (len(a_2): int);
                  assert {:msg "  The precondition of method swap might not hold. Assertion 0 <= storeIndex might not hold. (arrays_quickselect_rec_index-shifting.vpr@110.7--110.29) [106530]"}
                    0 <= storeIndex;
                  assert {:msg "  The precondition of method swap might not hold. Assertion storeIndex < len(a) might not hold. (arrays_quickselect_rec_index-shifting.vpr@110.7--110.29) [106531]"}
                    storeIndex < (len(a_2): int);
                  perm := FullPerm;
                  if (perm != NoPerm) {
                    assert {:msg "  The precondition of method swap might not hold. There might be insufficient permission to access loc(a, j).val (arrays_quickselect_rec_index-shifting.vpr@110.7--110.29) [106532]"}
                      perm <= Mask[(loc(a_2, j_4_1): Ref), val];
                  }
                  Mask := Mask[(loc(a_2, j_4_1): Ref), val:=Mask[(loc(a_2, j_4_1): Ref), val] - perm];
                  if (j_4_1 != storeIndex) {
                    perm := FullPerm;
                    if (perm != NoPerm) {
                      assert {:msg "  The precondition of method swap might not hold. There might be insufficient permission to access loc(a, storeIndex).val (arrays_quickselect_rec_index-shifting.vpr@110.7--110.29) [106533]"}
                        perm <= Mask[(loc(a_2, storeIndex): Ref), val];
                    }
                    Mask := Mask[(loc(a_2, storeIndex): Ref), val:=Mask[(loc(a_2, storeIndex): Ref), val] - perm];
                  }
                  // Finish exhale
                  havoc ExhaleHeap;
                  assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
                  Heap := ExhaleHeap;
                
                // -- Inhaling postcondition
                  perm := FullPerm;
                  assume (loc(a_2, j_4_1): Ref) != null;
                  Mask := Mask[(loc(a_2, j_4_1): Ref), val:=Mask[(loc(a_2, j_4_1): Ref), val] + perm];
                  assume state(Heap, Mask);
                  if (j_4_1 != storeIndex) {
                    perm := FullPerm;
                    assume (loc(a_2, storeIndex): Ref) != null;
                    Mask := Mask[(loc(a_2, storeIndex): Ref), val:=Mask[(loc(a_2, storeIndex): Ref), val] + perm];
                    assume state(Heap, Mask);
                  }
                  assume Heap[(loc(a_2, j_4_1): Ref), val] == PreCallHeap[(loc(a_2, storeIndex): Ref), val];
                  assume Heap[(loc(a_2, storeIndex): Ref), val] == PreCallHeap[(loc(a_2, j_4_1): Ref), val];
                  assume state(Heap, Mask);
                assume state(Heap, Mask);
              
              // -- Translating statement: pw := pw[storeIndex - left := pw[j - left]][j - left :=
  //   pw[storeIndex - left]] -- arrays_quickselect_rec_index-shifting.vpr@115.7--116.50
                
                // -- Check definedness of pw[storeIndex - left := pw[j - left]][j - left := pw[storeIndex - left]]
                  assert {:msg "  Assignment might fail. Index pw[j - left] into pw might be negative. (arrays_quickselect_rec_index-shifting.vpr@115.7--116.50) [106534]"}
                    j_4_1 - left >= 0;
                  assert {:msg "  Assignment might fail. Index pw[j - left] into pw might exceed sequence length. (arrays_quickselect_rec_index-shifting.vpr@115.7--116.50) [106535]"}
                    j_4_1 - left < Seq#Length(pw);
                  assert {:msg "  Assignment might fail. Index pw[storeIndex - left] into pw might be negative. (arrays_quickselect_rec_index-shifting.vpr@115.7--116.50) [106536]"}
                    storeIndex - left >= 0;
                  assert {:msg "  Assignment might fail. Index pw[storeIndex - left] into pw might exceed sequence length. (arrays_quickselect_rec_index-shifting.vpr@115.7--116.50) [106537]"}
                    storeIndex - left < Seq#Length(pw);
                pw := Seq#Append(Seq#Take(Seq#Append(Seq#Take(pw, storeIndex - left), Seq#Append(Seq#Singleton(Seq#Index(pw, j_4_1 - left)), Seq#Drop(pw, storeIndex - left + 1))), j_4_1 - left), Seq#Append(Seq#Singleton(Seq#Index(pw, storeIndex - left)), Seq#Drop(Seq#Append(Seq#Take(pw, storeIndex - left), Seq#Append(Seq#Singleton(Seq#Index(pw, j_4_1 - left)), Seq#Drop(pw, storeIndex - left + 1))), j_4_1 - left + 1)));
                assume state(Heap, Mask);
              
              // -- Translating statement: storeIndex := storeIndex + 1 -- arrays_quickselect_rec_index-shifting.vpr@118.7--118.35
                storeIndex := storeIndex + 1;
                assume state(Heap, Mask);
            }
            assume state(Heap, Mask);
          
          // -- Translating statement: j := j + 1 -- arrays_quickselect_rec_index-shifting.vpr@121.5--121.15
            j_4_1 := j_4_1 + 1;
            assume state(Heap, Mask);
        // Exhale invariant
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        assert {:msg "  Loop invariant left <= j && j <= right might not be preserved. Assertion left <= j might not hold. (arrays_quickselect_rec_index-shifting.vpr@88.15--88.38) [106538]"}
          left <= j_4_1;
        assert {:msg "  Loop invariant left <= j && j <= right might not be preserved. Assertion j <= right might not hold. (arrays_quickselect_rec_index-shifting.vpr@88.15--88.38) [106539]"}
          j_4_1 <= right_2;
        assert {:msg "  Loop invariant left <= storeIndex && storeIndex <= j might not be preserved. Assertion left <= storeIndex might not hold. (arrays_quickselect_rec_index-shifting.vpr@89.15--89.52) [106540]"}
          left <= storeIndex;
        assert {:msg "  Loop invariant left <= storeIndex && storeIndex <= j might not be preserved. Assertion storeIndex <= j might not hold. (arrays_quickselect_rec_index-shifting.vpr@89.15--89.52) [106541]"}
          storeIndex <= j_4_1;
        havoc QPMask;
        
        // -- check that the permission amount is positive
          
        
        // -- check if receiver loc(a, i) is injective
          assert {:msg "  Loop invariant (forall i: Int :: { loc(a, i) } (i in [left..right + 1)) ==> acc(loc(a, i).val, write)) might not be preserved. Quantified resource loc(a, i).val might not be injective. (arrays_quickselect_rec_index-shifting.vpr@96.15--96.75) [106542]"}
            (forall i_49: int, i_49_1: int ::
            { neverTriggered7(i_49), neverTriggered7(i_49_1) }
            (((i_49 != i_49_1 && Seq#Contains(Seq#Range(left, right_2 + 1), i_49)) && Seq#Contains(Seq#Range(left, right_2 + 1), i_49_1)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> (loc(a_2, i_49): Ref) != (loc(a_2, i_49_1): Ref)
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Loop invariant (forall i: Int :: { loc(a, i) } (i in [left..right + 1)) ==> acc(loc(a, i).val, write)) might not be preserved. There might be insufficient permission to access loc(a, i).val (arrays_quickselect_rec_index-shifting.vpr@96.15--96.75) [106543]"}
            (forall i_49: int ::
            { (loc(a_2, i_49): Ref) } { (loc(a_2, i_49): Ref) }
            Seq#Contains(Seq#Range(left, right_2 + 1), i_49) ==> Mask[(loc(a_2, i_49): Ref), val] >= FullPerm
          );
        
        // -- assumptions for inverse of receiver loc(a, i)
          assume (forall i_49: int ::
            { (loc(a_2, i_49): Ref) } { (loc(a_2, i_49): Ref) }
            Seq#Contains(Seq#Range(left, right_2 + 1), i_49) && NoPerm < FullPerm ==> qpRange7((loc(a_2, i_49): Ref)) && invRecv7((loc(a_2, i_49): Ref)) == i_49
          );
          assume (forall o_9: Ref ::
            { invRecv7(o_9) }
            Seq#Contains(Seq#Range(left, right_2 + 1), invRecv7(o_9)) && (NoPerm < FullPerm && qpRange7(o_9)) ==> (loc(a_2, invRecv7(o_9)): Ref) == o_9
          );
        
        // -- assume permission updates for field val
          assume (forall o_9: Ref ::
            { QPMask[o_9, val] }
            (Seq#Contains(Seq#Range(left, right_2 + 1), invRecv7(o_9)) && (NoPerm < FullPerm && qpRange7(o_9)) ==> (loc(a_2, invRecv7(o_9)): Ref) == o_9 && QPMask[o_9, val] == Mask[o_9, val] - FullPerm) && (!(Seq#Contains(Seq#Range(left, right_2 + 1), invRecv7(o_9)) && (NoPerm < FullPerm && qpRange7(o_9))) ==> QPMask[o_9, val] == Mask[o_9, val])
          );
        
        // -- assume permission updates for independent locations
          assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
            { QPMask[o_9, f_5] }
            f_5 != val ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
          );
        Mask := QPMask;
        assert {:msg "  Loop invariant loc(a, right).val == pivotValue might not be preserved. Assertion loc(a, right).val == pivotValue might not hold. (arrays_quickselect_rec_index-shifting.vpr@97.15--97.46) [106544]"}
          Heap[(loc(a_2, right_2): Ref), val] == pivotValue;
        if (*) {
          if (Seq#Contains(Seq#Range(left, storeIndex), i_50)) {
            assert {:msg "  Loop invariant (forall i: Int :: { (i in [left..storeIndex)) } { loc(a, i) } (i in [left..storeIndex)) ==> loc(a, i).val < pivotValue) might not be preserved. Assertion loc(a, i).val < pivotValue might not hold. (arrays_quickselect_rec_index-shifting.vpr@99.15--99.86) [106545]"}
              Heap[(loc(a_2, i_50): Ref), val] < pivotValue;
          }
          assume false;
        }
        assume (forall i_51_1: int ::
          { Seq#ContainsTrigger(Seq#Range(left, storeIndex), i_51_1) } { Seq#Contains(Seq#Range(left, storeIndex), i_51_1) } { (loc(a_2, i_51_1): Ref) }
          Seq#Contains(Seq#Range(left, storeIndex), i_51_1) ==> Heap[(loc(a_2, i_51_1): Ref), val] < pivotValue
        );
        if (*) {
          if (Seq#Contains(Seq#Range(storeIndex, j_4_1), i_52)) {
            assert {:msg "  Loop invariant (forall i: Int :: { (i in [storeIndex..j)) } { loc(a, i) } (i in [storeIndex..j)) ==> pivotValue <= loc(a, i).val) might not be preserved. Assertion pivotValue <= loc(a, i).val might not hold. (arrays_quickselect_rec_index-shifting.vpr@100.15--100.84) [106546]"}
              pivotValue <= Heap[(loc(a_2, i_52): Ref), val];
          }
          assume false;
        }
        assume (forall i_53_1: int ::
          { Seq#ContainsTrigger(Seq#Range(storeIndex, j_4_1), i_53_1) } { Seq#Contains(Seq#Range(storeIndex, j_4_1), i_53_1) } { (loc(a_2, i_53_1): Ref) }
          Seq#Contains(Seq#Range(storeIndex, j_4_1), i_53_1) ==> pivotValue <= Heap[(loc(a_2, i_53_1): Ref), val]
        );
        assert {:msg "  Loop invariant |pw| == right + 1 - left might not be preserved. Assertion |pw| == right + 1 - left might not hold. (arrays_quickselect_rec_index-shifting.vpr@102.15--102.39) [106547]"}
          Seq#Length(pw) == right_2 + 1 - left;
        if (*) {
          if (0 <= i_54 && i_54 < Seq#Length(pw)) {
            assert {:msg "  Loop invariant (forall i: Int :: { pw[i] } 0 <= i && i < |pw| ==> left <= pw[i] && pw[i] <= right) might not be preserved. Assertion left <= pw[i] might not hold. (arrays_quickselect_rec_index-shifting.vpr@103.15--103.86) [106548]"}
              left <= Seq#Index(pw, i_54);
            assert {:msg "  Loop invariant (forall i: Int :: { pw[i] } 0 <= i && i < |pw| ==> left <= pw[i] && pw[i] <= right) might not be preserved. Assertion pw[i] <= right might not hold. (arrays_quickselect_rec_index-shifting.vpr@103.15--103.86) [106549]"}
              Seq#Index(pw, i_54) <= right_2;
          }
          assume false;
        }
        assume (forall i_55_1: int ::
          { Seq#Index(pw, i_55_1) }
          0 <= i_55_1 && i_55_1 < Seq#Length(pw) ==> left <= Seq#Index(pw, i_55_1) && Seq#Index(pw, i_55_1) <= right_2
        );
        if (*) {
          if (0 <= i_56 && (i_56 < k_5 && k_5 < Seq#Length(pw))) {
            assert {:msg "  Loop invariant (forall i: Int, k: Int :: { pw[i], pw[k] } 0 <= i && (i < k && k < |pw|) ==> pw[i] != pw[k]) might not be preserved. Assertion pw[i] != pw[k] might not hold. (arrays_quickselect_rec_index-shifting.vpr@104.15--104.86) [106550]"}
              Seq#Index(pw, i_56) != Seq#Index(pw, k_5);
          }
          assume false;
        }
        assume (forall i_57_1: int, k_6_1: int ::
          { Seq#Index(pw, i_57_1), Seq#Index(pw, k_6_1) }
          0 <= i_57_1 && (i_57_1 < k_6_1 && k_6_1 < Seq#Length(pw)) ==> Seq#Index(pw, i_57_1) != Seq#Index(pw, k_6_1)
        );
        if (*) {
          if (0 <= i$0_5_1 && i$0_5_1 < Seq#Length(pw)) {
            assert {:msg "  Loop invariant (forall i$0: Int :: { old(pw[i$0]) } 0 <= i$0 && i$0 < |pw| ==> loc(a, left + i$0).val == old(loc(a, pw[i$0]).val)) might not be preserved. Assertion loc(a, left + i$0).val == old(loc(a, pw[i$0]).val) might not hold. (arrays_quickselect_rec_index-shifting.vpr@106.15--106.36) [106551]"}
              Heap[(loc(a_2, left + i$0_5_1): Ref), val] == oldHeap[(loc(a_2, Seq#Index(pw, i$0_5_1)): Ref), val];
          }
          assume false;
        }
        assume (forall i$0_6_1: int ::
          { Seq#Index(pw, i$0_6_1) }
          0 <= i$0_6_1 && i$0_6_1 < Seq#Length(pw) ==> Heap[(loc(a_2, left + i$0_6_1): Ref), val] == oldHeap[(loc(a_2, Seq#Index(pw, i$0_6_1)): Ref), val]
        );
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Terminate execution
        assume false;
      }
    
    // -- Inhale loop invariant after loop, and assume guard
      assume !(j_4_1 < right_2);
      assume state(Heap, Mask);
      assume left <= j_4_1;
      assume j_4_1 <= right_2;
      assume left <= storeIndex;
      assume storeIndex <= j_4_1;
      havoc QPMask;
      assert {:msg "  While statement might fail. Quantified resource loc(a, i).val might not be injective. (arrays_quickselect_rec_index-shifting.vpr@96.15--96.75) [106552]"}
        (forall i_58: int, i_58_1: int ::
        
        (((i_58 != i_58_1 && Seq#Contains(Seq#Range(left, right_2 + 1), i_58)) && Seq#Contains(Seq#Range(left, right_2 + 1), i_58_1)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> (loc(a_2, i_58): Ref) != (loc(a_2, i_58_1): Ref)
      );
      
      // -- Define Inverse Function
        assume (forall i_58: int ::
          { (loc(a_2, i_58): Ref) } { (loc(a_2, i_58): Ref) }
          Seq#Contains(Seq#Range(left, right_2 + 1), i_58) && NoPerm < FullPerm ==> qpRange8((loc(a_2, i_58): Ref)) && invRecv8((loc(a_2, i_58): Ref)) == i_58
        );
        assume (forall o_9: Ref ::
          { invRecv8(o_9) }
          (Seq#Contains(Seq#Range(left, right_2 + 1), invRecv8(o_9)) && NoPerm < FullPerm) && qpRange8(o_9) ==> (loc(a_2, invRecv8(o_9)): Ref) == o_9
        );
      
      // -- Assume set of fields is nonNull
        assume (forall i_58: int ::
          { (loc(a_2, i_58): Ref) } { (loc(a_2, i_58): Ref) }
          Seq#Contains(Seq#Range(left, right_2 + 1), i_58) ==> (loc(a_2, i_58): Ref) != null
        );
      
      // -- Define permissions
        assume (forall o_9: Ref ::
          { QPMask[o_9, val] }
          ((Seq#Contains(Seq#Range(left, right_2 + 1), invRecv8(o_9)) && NoPerm < FullPerm) && qpRange8(o_9) ==> (NoPerm < FullPerm ==> (loc(a_2, invRecv8(o_9)): Ref) == o_9) && QPMask[o_9, val] == Mask[o_9, val] + FullPerm) && (!((Seq#Contains(Seq#Range(left, right_2 + 1), invRecv8(o_9)) && NoPerm < FullPerm) && qpRange8(o_9)) ==> QPMask[o_9, val] == Mask[o_9, val])
        );
        assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
          { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
          f_5 != val ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
        );
      Mask := QPMask;
      assume state(Heap, Mask);
      assume Heap[(loc(a_2, right_2): Ref), val] == pivotValue;
      assume (forall i_59: int ::
        { Seq#ContainsTrigger(Seq#Range(left, storeIndex), i_59) } { Seq#Contains(Seq#Range(left, storeIndex), i_59) } { (loc(a_2, i_59): Ref) }
        Seq#Contains(Seq#Range(left, storeIndex), i_59) ==> Heap[(loc(a_2, i_59): Ref), val] < pivotValue
      );
      assume (forall i_60: int ::
        { Seq#ContainsTrigger(Seq#Range(storeIndex, j_4_1), i_60) } { Seq#Contains(Seq#Range(storeIndex, j_4_1), i_60) } { (loc(a_2, i_60): Ref) }
        Seq#Contains(Seq#Range(storeIndex, j_4_1), i_60) ==> pivotValue <= Heap[(loc(a_2, i_60): Ref), val]
      );
      assume Seq#Length(pw) == right_2 + 1 - left;
      assume (forall i_61: int ::
        { Seq#Index(pw, i_61) }
        0 <= i_61 && i_61 < Seq#Length(pw) ==> left <= Seq#Index(pw, i_61) && Seq#Index(pw, i_61) <= right_2
      );
      assume (forall i_62: int, k_7_1: int ::
        { Seq#Index(pw, i_62), Seq#Index(pw, k_7_1) }
        0 <= i_62 && (i_62 < k_7_1 && k_7_1 < Seq#Length(pw)) ==> Seq#Index(pw, i_62) != Seq#Index(pw, k_7_1)
      );
      assume (forall i$0_7: int ::
        { Seq#Index(pw, i$0_7) }
        0 <= i$0_7 && i$0_7 < Seq#Length(pw) ==> Heap[(loc(a_2, left + i$0_7): Ref), val] == oldHeap[(loc(a_2, Seq#Index(pw, i$0_7)): Ref), val]
      );
      assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: swap(a, right, storeIndex) -- arrays_quickselect_rec_index-shifting.vpr@124.3--124.29
    PreCallHeap := Heap;
    PreCallMask := Mask;
    
    // -- Exhaling precondition
      ExhaleWellDef0Heap := Heap;
      ExhaleWellDef0Mask := Mask;
      assert {:msg "  The precondition of method swap might not hold. Assertion 0 <= right might not hold. (arrays_quickselect_rec_index-shifting.vpr@124.3--124.29) [106553]"}
        0 <= right_2;
      assert {:msg "  The precondition of method swap might not hold. Assertion right < len(a) might not hold. (arrays_quickselect_rec_index-shifting.vpr@124.3--124.29) [106554]"}
        right_2 < (len(a_2): int);
      assert {:msg "  The precondition of method swap might not hold. Assertion 0 <= storeIndex might not hold. (arrays_quickselect_rec_index-shifting.vpr@124.3--124.29) [106555]"}
        0 <= storeIndex;
      assert {:msg "  The precondition of method swap might not hold. Assertion storeIndex < len(a) might not hold. (arrays_quickselect_rec_index-shifting.vpr@124.3--124.29) [106556]"}
        storeIndex < (len(a_2): int);
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  The precondition of method swap might not hold. There might be insufficient permission to access loc(a, right).val (arrays_quickselect_rec_index-shifting.vpr@124.3--124.29) [106557]"}
          perm <= Mask[(loc(a_2, right_2): Ref), val];
      }
      Mask := Mask[(loc(a_2, right_2): Ref), val:=Mask[(loc(a_2, right_2): Ref), val] - perm];
      if (right_2 != storeIndex) {
        perm := FullPerm;
        if (perm != NoPerm) {
          assert {:msg "  The precondition of method swap might not hold. There might be insufficient permission to access loc(a, storeIndex).val (arrays_quickselect_rec_index-shifting.vpr@124.3--124.29) [106558]"}
            perm <= Mask[(loc(a_2, storeIndex): Ref), val];
        }
        Mask := Mask[(loc(a_2, storeIndex): Ref), val:=Mask[(loc(a_2, storeIndex): Ref), val] - perm];
      }
      // Finish exhale
      havoc ExhaleHeap;
      assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
      Heap := ExhaleHeap;
    
    // -- Inhaling postcondition
      perm := FullPerm;
      assume (loc(a_2, right_2): Ref) != null;
      Mask := Mask[(loc(a_2, right_2): Ref), val:=Mask[(loc(a_2, right_2): Ref), val] + perm];
      assume state(Heap, Mask);
      if (right_2 != storeIndex) {
        perm := FullPerm;
        assume (loc(a_2, storeIndex): Ref) != null;
        Mask := Mask[(loc(a_2, storeIndex): Ref), val:=Mask[(loc(a_2, storeIndex): Ref), val] + perm];
        assume state(Heap, Mask);
      }
      assume Heap[(loc(a_2, right_2): Ref), val] == PreCallHeap[(loc(a_2, storeIndex): Ref), val];
      assume Heap[(loc(a_2, storeIndex): Ref), val] == PreCallHeap[(loc(a_2, right_2): Ref), val];
      assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: pw := pw[storeIndex - left := pw[right - left]][right - left :=
  //   pw[storeIndex - left]] -- arrays_quickselect_rec_index-shifting.vpr@127.3--128.50
    
    // -- Check definedness of pw[storeIndex - left := pw[right - left]][right - left := pw[storeIndex - left]]
      assert {:msg "  Assignment might fail. Index pw[right - left] into pw might be negative. (arrays_quickselect_rec_index-shifting.vpr@127.3--128.50) [106559]"}
        right_2 - left >= 0;
      assert {:msg "  Assignment might fail. Index pw[right - left] into pw might exceed sequence length. (arrays_quickselect_rec_index-shifting.vpr@127.3--128.50) [106560]"}
        right_2 - left < Seq#Length(pw);
      assert {:msg "  Assignment might fail. Index pw[storeIndex - left] into pw might be negative. (arrays_quickselect_rec_index-shifting.vpr@127.3--128.50) [106561]"}
        storeIndex - left >= 0;
      assert {:msg "  Assignment might fail. Index pw[storeIndex - left] into pw might exceed sequence length. (arrays_quickselect_rec_index-shifting.vpr@127.3--128.50) [106562]"}
        storeIndex - left < Seq#Length(pw);
    pw := Seq#Append(Seq#Take(Seq#Append(Seq#Take(pw, storeIndex - left), Seq#Append(Seq#Singleton(Seq#Index(pw, right_2 - left)), Seq#Drop(pw, storeIndex - left + 1))), right_2 - left), Seq#Append(Seq#Singleton(Seq#Index(pw, storeIndex - left)), Seq#Drop(Seq#Append(Seq#Take(pw, storeIndex - left), Seq#Append(Seq#Singleton(Seq#Index(pw, right_2 - left)), Seq#Drop(pw, storeIndex - left + 1))), right_2 - left + 1)));
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Postcondition of partition might not hold. Assertion left <= storeIndex might not hold. (arrays_quickselect_rec_index-shifting.vpr@56.11--56.52) [106563]"}
      left <= storeIndex;
    assert {:msg "  Postcondition of partition might not hold. Assertion storeIndex <= right might not hold. (arrays_quickselect_rec_index-shifting.vpr@56.11--56.52) [106564]"}
      storeIndex <= right_2;
    havoc QPMask;
    
    // -- check that the permission amount is positive
      
    
    // -- check if receiver loc(a, i) is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource loc(a, i).val might not be injective. (arrays_quickselect_rec_index-shifting.vpr@58.11--58.74) [106565]"}
        (forall i_14_1: int, i_14_2: int ::
        { neverTriggered3(i_14_1), neverTriggered3(i_14_2) }
        (((i_14_1 != i_14_2 && (left <= i_14_1 && i_14_1 <= right_2)) && (left <= i_14_2 && i_14_2 <= right_2)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> (loc(a_2, i_14_1): Ref) != (loc(a_2, i_14_2): Ref)
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Postcondition of partition might not hold. There might be insufficient permission to access loc(a, i).val (arrays_quickselect_rec_index-shifting.vpr@58.11--58.74) [106566]"}
        (forall i_14_1: int ::
        { (loc(a_2, i_14_1): Ref) } { (loc(a_2, i_14_1): Ref) }
        left <= i_14_1 && i_14_1 <= right_2 ==> Mask[(loc(a_2, i_14_1): Ref), val] >= FullPerm
      );
    
    // -- assumptions for inverse of receiver loc(a, i)
      assume (forall i_14_1: int ::
        { (loc(a_2, i_14_1): Ref) } { (loc(a_2, i_14_1): Ref) }
        (left <= i_14_1 && i_14_1 <= right_2) && NoPerm < FullPerm ==> qpRange3((loc(a_2, i_14_1): Ref)) && invRecv3((loc(a_2, i_14_1): Ref)) == i_14_1
      );
      assume (forall o_9: Ref ::
        { invRecv3(o_9) }
        (left <= invRecv3(o_9) && invRecv3(o_9) <= right_2) && (NoPerm < FullPerm && qpRange3(o_9)) ==> (loc(a_2, invRecv3(o_9)): Ref) == o_9
      );
    
    // -- assume permission updates for field val
      assume (forall o_9: Ref ::
        { QPMask[o_9, val] }
        ((left <= invRecv3(o_9) && invRecv3(o_9) <= right_2) && (NoPerm < FullPerm && qpRange3(o_9)) ==> (loc(a_2, invRecv3(o_9)): Ref) == o_9 && QPMask[o_9, val] == Mask[o_9, val] - FullPerm) && (!((left <= invRecv3(o_9) && invRecv3(o_9) <= right_2) && (NoPerm < FullPerm && qpRange3(o_9))) ==> QPMask[o_9, val] == Mask[o_9, val])
      );
    
    // -- assume permission updates for independent locations
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { QPMask[o_9, f_5] }
        f_5 != val ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    assert {:msg "  Postcondition of partition might not hold. Assertion loc(a, storeIndex).val == old(loc(a, pivotIndex).val) might not hold. (arrays_quickselect_rec_index-shifting.vpr@60.11--60.64) [106567]"}
      Heap[(loc(a_2, storeIndex): Ref), val] == oldHeap[(loc(a_2, pivotIndex): Ref), val];
    if (*) {
      if (left <= i_15_1 && i_15_1 < storeIndex) {
        assert {:msg "  Postcondition of partition might not hold. Assertion loc(a, i).val < loc(a, storeIndex).val might not hold. (arrays_quickselect_rec_index-shifting.vpr@62.11--62.99) [106568]"}
          Heap[(loc(a_2, i_15_1): Ref), val] < Heap[(loc(a_2, storeIndex): Ref), val];
      }
      assume false;
    }
    assume (forall i_16_1_1: int ::
      { (loc(a_2, i_16_1_1): Ref) }
      left <= i_16_1_1 && i_16_1_1 < storeIndex ==> Heap[(loc(a_2, i_16_1_1): Ref), val] < Heap[(loc(a_2, storeIndex): Ref), val]
    );
    if (*) {
      if (storeIndex < i_17_1 && i_17_1 <= right_2) {
        assert {:msg "  Postcondition of partition might not hold. Assertion loc(a, storeIndex).val <= loc(a, i).val might not hold. (arrays_quickselect_rec_index-shifting.vpr@63.11--63.100) [106569]"}
          Heap[(loc(a_2, storeIndex): Ref), val] <= Heap[(loc(a_2, i_17_1): Ref), val];
      }
      assume false;
    }
    assume (forall i_18_1_1: int ::
      { (loc(a_2, i_18_1_1): Ref) }
      storeIndex < i_18_1_1 && i_18_1_1 <= right_2 ==> Heap[(loc(a_2, storeIndex): Ref), val] <= Heap[(loc(a_2, i_18_1_1): Ref), val]
    );
    assert {:msg "  Postcondition of partition might not hold. Assertion |pw| == right + 1 - left might not hold. (arrays_quickselect_rec_index-shifting.vpr@65.11--65.35) [106570]"}
      Seq#Length(pw) == right_2 + 1 - left;
    if (*) {
      if (0 <= i_19_1 && i_19_1 < Seq#Length(pw)) {
        assert {:msg "  Postcondition of partition might not hold. Assertion left <= pw[i] might not hold. (arrays_quickselect_rec_index-shifting.vpr@66.11--66.82) [106571]"}
          left <= Seq#Index(pw, i_19_1);
        assert {:msg "  Postcondition of partition might not hold. Assertion pw[i] <= right might not hold. (arrays_quickselect_rec_index-shifting.vpr@66.11--66.82) [106572]"}
          Seq#Index(pw, i_19_1) <= right_2;
      }
      assume false;
    }
    assume (forall i_20_1: int ::
      { Seq#Index(pw, i_20_1) }
      0 <= i_20_1 && i_20_1 < Seq#Length(pw) ==> left <= Seq#Index(pw, i_20_1) && Seq#Index(pw, i_20_1) <= right_2
    );
    if (*) {
      if (0 <= i_21_1 && (i_21_1 < j_2_2 && j_2_2 < Seq#Length(pw))) {
        assert {:msg "  Postcondition of partition might not hold. Assertion pw[i] != pw[j] might not hold. (arrays_quickselect_rec_index-shifting.vpr@67.11--67.82) [106573]"}
          Seq#Index(pw, i_21_1) != Seq#Index(pw, j_2_2);
      }
      assume false;
    }
    assume (forall i_22_1_1: int, j_3_1_1: int ::
      { Seq#Index(pw, i_22_1_1), Seq#Index(pw, j_3_1_1) }
      0 <= i_22_1_1 && (i_22_1_1 < j_3_1_1 && j_3_1_1 < Seq#Length(pw)) ==> Seq#Index(pw, i_22_1_1) != Seq#Index(pw, j_3_1_1)
    );
    if (*) {
      if (0 <= i_23_1 && i_23_1 < Seq#Length(pw)) {
        assert {:msg "  Postcondition of partition might not hold. Assertion loc(a, left + i).val == old(loc(a, pw[i]).val) might not hold. (arrays_quickselect_rec_index-shifting.vpr@69.11--69.32) [106574]"}
          Heap[(loc(a_2, left + i_23_1): Ref), val] == oldHeap[(loc(a_2, Seq#Index(pw, i_23_1)): Ref), val];
      }
      assume false;
    }
    assume (forall i_24_1_1: int ::
      { Seq#Index(pw, i_24_1_1) }
      0 <= i_24_1_1 && i_24_1_1 < Seq#Length(pw) ==> Heap[(loc(a_2, left + i_24_1_1): Ref), val] == oldHeap[(loc(a_2, Seq#Index(pw, i_24_1_1)): Ref), val]
    );
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method select_rec
// ==================================================

procedure select_rec(a_2: IArrayDomainType, left: int, right_2: int, n: int) returns (storeIndex: int, pw: (Seq int))
  modifies Heap, Mask;
{
  var QPMask: MaskType;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var i_13: int;
  var i_23: int;
  var i_24: int;
  var i_25: int;
  var j_25: int;
  var i_27: int;
  var pivotIndex: int;
  var PreCallHeap: HeapType;
  var PreCallMask: MaskType;
  var arg_pivotIndex: int;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleHeap: HeapType;
  var pwPar: (Seq int);
  var arg_right: int;
  var pwRec: (Seq int);
  var i_16: int;
  var i_42: int;
  var arg_left: int;
  var i_51: int;
  var i_53: int;
  var i_15_1: int;
  var i_17_1: int;
  var i_19_1: int;
  var i_21_1: int;
  var j_2_2: int;
  var i_23_1: int;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Checked inhaling of precondition
    assume 0 <= left;
    assume left <= right_2;
    assume right_2 < (len(a_2): int);
    assume state(Heap, Mask);
    assume left <= n;
    assume n <= right_2;
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall i: Int :: { loc(a, i) } left <= i && i <= right ==> acc(loc(a, i).val, write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource loc(a, i).val might not be injective. (arrays_quickselect_rec_index-shifting.vpr@136.12--136.75) [106575]"}
      (forall i_1: int, i_1_1: int ::
      
      (((i_1 != i_1_1 && (left <= i_1 && i_1 <= right_2)) && (left <= i_1_1 && i_1_1 <= right_2)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> (loc(a_2, i_1): Ref) != (loc(a_2, i_1_1): Ref)
    );
    
    // -- Define Inverse Function
      assume (forall i_1: int ::
        { (loc(a_2, i_1): Ref) } { (loc(a_2, i_1): Ref) }
        (left <= i_1 && i_1 <= right_2) && NoPerm < FullPerm ==> qpRange9((loc(a_2, i_1): Ref)) && invRecv9((loc(a_2, i_1): Ref)) == i_1
      );
      assume (forall o_9: Ref ::
        { invRecv9(o_9) }
        ((left <= invRecv9(o_9) && invRecv9(o_9) <= right_2) && NoPerm < FullPerm) && qpRange9(o_9) ==> (loc(a_2, invRecv9(o_9)): Ref) == o_9
      );
    
    // -- Assume set of fields is nonNull
      assume (forall i_1: int ::
        { (loc(a_2, i_1): Ref) } { (loc(a_2, i_1): Ref) }
        left <= i_1 && i_1 <= right_2 ==> (loc(a_2, i_1): Ref) != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, val] }
        (((left <= invRecv9(o_9) && invRecv9(o_9) <= right_2) && NoPerm < FullPerm) && qpRange9(o_9) ==> (NoPerm < FullPerm ==> (loc(a_2, invRecv9(o_9)): Ref) == o_9) && QPMask[o_9, val] == Mask[o_9, val] + FullPerm) && (!(((left <= invRecv9(o_9) && invRecv9(o_9) <= right_2) && NoPerm < FullPerm) && qpRange9(o_9)) ==> QPMask[o_9, val] == Mask[o_9, val])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != val ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
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
    assume left <= storeIndex;
    assume storeIndex <= right_2;
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall i: Int :: { loc(a, i) } left <= i && i <= right ==> acc(loc(a, i).val, write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource loc(a, i).val might not be injective. (arrays_quickselect_rec_index-shifting.vpr@141.11--141.74) [106576]"}
      (forall i_3_2: int, i_3_3: int ::
      
      (((i_3_2 != i_3_3 && (left <= i_3_2 && i_3_2 <= right_2)) && (left <= i_3_3 && i_3_3 <= right_2)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> (loc(a_2, i_3_2): Ref) != (loc(a_2, i_3_3): Ref)
    );
    
    // -- Define Inverse Function
      assume (forall i_3_2: int ::
        { (loc(a_2, i_3_2): Ref) } { (loc(a_2, i_3_2): Ref) }
        (left <= i_3_2 && i_3_2 <= right_2) && NoPerm < FullPerm ==> qpRange10((loc(a_2, i_3_2): Ref)) && invRecv10((loc(a_2, i_3_2): Ref)) == i_3_2
      );
      assume (forall o_9: Ref ::
        { invRecv10(o_9) }
        ((left <= invRecv10(o_9) && invRecv10(o_9) <= right_2) && NoPerm < FullPerm) && qpRange10(o_9) ==> (loc(a_2, invRecv10(o_9)): Ref) == o_9
      );
    
    // -- Assume set of fields is nonNull
      assume (forall i_3_2: int ::
        { (loc(a_2, i_3_2): Ref) } { (loc(a_2, i_3_2): Ref) }
        left <= i_3_2 && i_3_2 <= right_2 ==> (loc(a_2, i_3_2): Ref) != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, val] }
        (((left <= invRecv10(o_9) && invRecv10(o_9) <= right_2) && NoPerm < FullPerm) && qpRange10(o_9) ==> (NoPerm < FullPerm ==> (loc(a_2, invRecv10(o_9)): Ref) == o_9) && QPMask[o_9, val] == PostMask[o_9, val] + FullPerm) && (!(((left <= invRecv10(o_9) && invRecv10(o_9) <= right_2) && NoPerm < FullPerm) && qpRange10(o_9)) ==> QPMask[o_9, val] == PostMask[o_9, val])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { PostMask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != val ==> PostMask[o_9, f_5] == QPMask[o_9, f_5]
      );
    PostMask := QPMask;
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    assume storeIndex == n;
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall i: Int :: { loc(a, i) } left <= i && i < storeIndex ==> loc(a, i).val <= loc(a, storeIndex).val)
      if (*) {
        if (left <= i_13 && i_13 < storeIndex) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access loc(a, i).val (arrays_quickselect_rec_index-shifting.vpr@144.11--144.100) [106577]"}
            HasDirectPerm(PostMask, (loc(a_2, i_13): Ref), val);
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access loc(a, storeIndex).val (arrays_quickselect_rec_index-shifting.vpr@144.11--144.100) [106578]"}
            HasDirectPerm(PostMask, (loc(a_2, storeIndex): Ref), val);
        }
        assume false;
      }
    assume (forall i_5_1: int ::
      { (loc(a_2, i_5_1): Ref) }
      left <= i_5_1 && i_5_1 < storeIndex ==> PostHeap[(loc(a_2, i_5_1): Ref), val] <= PostHeap[(loc(a_2, storeIndex): Ref), val]
    );
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall i: Int :: { loc(a, i) } storeIndex < i && i <= right ==> loc(a, storeIndex).val <= loc(a, i).val)
      if (*) {
        if (storeIndex < i_23 && i_23 <= right_2) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access loc(a, storeIndex).val (arrays_quickselect_rec_index-shifting.vpr@145.11--145.100) [106579]"}
            HasDirectPerm(PostMask, (loc(a_2, storeIndex): Ref), val);
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access loc(a, i).val (arrays_quickselect_rec_index-shifting.vpr@145.11--145.100) [106580]"}
            HasDirectPerm(PostMask, (loc(a_2, i_23): Ref), val);
        }
        assume false;
      }
    assume (forall i_7_1: int ::
      { (loc(a_2, i_7_1): Ref) }
      storeIndex < i_7_1 && i_7_1 <= right_2 ==> PostHeap[(loc(a_2, storeIndex): Ref), val] <= PostHeap[(loc(a_2, i_7_1): Ref), val]
    );
    assume state(PostHeap, PostMask);
    assume Seq#Length(pw) == right_2 + 1 - left;
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall i: Int :: { pw[i] } 0 <= i && i < |pw| ==> left <= pw[i] && pw[i] <= right)
      if (*) {
        if (0 <= i_24 && i_24 < Seq#Length(pw)) {
          assert {:msg "  Contract might not be well-formed. Index pw[i] into pw might be negative. (arrays_quickselect_rec_index-shifting.vpr@148.11--148.82) [106581]"}
            i_24 >= 0;
          assert {:msg "  Contract might not be well-formed. Index pw[i] into pw might exceed sequence length. (arrays_quickselect_rec_index-shifting.vpr@148.11--148.82) [106582]"}
            i_24 < Seq#Length(pw);
          if (left <= Seq#Index(pw, i_24)) {
            assert {:msg "  Contract might not be well-formed. Index pw[i] into pw might be negative. (arrays_quickselect_rec_index-shifting.vpr@148.11--148.82) [106583]"}
              i_24 >= 0;
            assert {:msg "  Contract might not be well-formed. Index pw[i] into pw might exceed sequence length. (arrays_quickselect_rec_index-shifting.vpr@148.11--148.82) [106584]"}
              i_24 < Seq#Length(pw);
          }
        }
        assume false;
      }
    assume (forall i_9_1: int ::
      { Seq#Index(pw, i_9_1) }
      0 <= i_9_1 && i_9_1 < Seq#Length(pw) ==> left <= Seq#Index(pw, i_9_1) && Seq#Index(pw, i_9_1) <= right_2
    );
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall i: Int, j: Int :: { pw[i], pw[j] } 0 <= i && (i < j && j < |pw|) ==> pw[i] != pw[j])
      if (*) {
        if (0 <= i_25 && (i_25 < j_25 && j_25 < Seq#Length(pw))) {
          assert {:msg "  Contract might not be well-formed. Index pw[i] into pw might be negative. (arrays_quickselect_rec_index-shifting.vpr@149.11--149.82) [106585]"}
            i_25 >= 0;
          assert {:msg "  Contract might not be well-formed. Index pw[i] into pw might exceed sequence length. (arrays_quickselect_rec_index-shifting.vpr@149.11--149.82) [106586]"}
            i_25 < Seq#Length(pw);
          assert {:msg "  Contract might not be well-formed. Index pw[j] into pw might be negative. (arrays_quickselect_rec_index-shifting.vpr@149.11--149.82) [106587]"}
            j_25 >= 0;
          assert {:msg "  Contract might not be well-formed. Index pw[j] into pw might exceed sequence length. (arrays_quickselect_rec_index-shifting.vpr@149.11--149.82) [106588]"}
            j_25 < Seq#Length(pw);
        }
        assume false;
      }
    assume (forall i_11_1: int, j_1: int ::
      { Seq#Index(pw, i_11_1), Seq#Index(pw, j_1) }
      0 <= i_11_1 && (i_11_1 < j_1 && j_1 < Seq#Length(pw)) ==> Seq#Index(pw, i_11_1) != Seq#Index(pw, j_1)
    );
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall i: Int :: { old(pw[i]) } 0 <= i && i < |pw| ==> loc(a, left + i).val == old(loc(a, pw[i]).val))
      if (*) {
        if (0 <= i_27 && i_27 < Seq#Length(pw)) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access loc(a, left + i).val (arrays_quickselect_rec_index-shifting.vpr@151.11--151.32) [106589]"}
            HasDirectPerm(PostMask, (loc(a_2, left + i_27): Ref), val);
          assert {:msg "  Contract might not be well-formed. Index pw[i] into pw might be negative. (arrays_quickselect_rec_index-shifting.vpr@151.11--151.32) [106590]"}
            i_27 >= 0;
          assert {:msg "  Contract might not be well-formed. Index pw[i] into pw might exceed sequence length. (arrays_quickselect_rec_index-shifting.vpr@151.11--151.32) [106591]"}
            i_27 < Seq#Length(pw);
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access loc(a, pw[i]).val (arrays_quickselect_rec_index-shifting.vpr@151.11--151.32) [106592]"}
            HasDirectPerm(oldMask, (loc(a_2, Seq#Index(pw, i_27)): Ref), val);
        }
        assume false;
      }
    assume (forall i_13_1: int ::
      { Seq#Index(pw, i_13_1) }
      0 <= i_13_1 && i_13_1 < Seq#Length(pw) ==> PostHeap[(loc(a_2, left + i_13_1): Ref), val] == oldHeap[(loc(a_2, Seq#Index(pw, i_13_1)): Ref), val]
    );
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: if (left == right) -- arrays_quickselect_rec_index-shifting.vpr@156.3--209.4
    if (left == right_2) {
      
      // -- Translating statement: storeIndex := left -- arrays_quickselect_rec_index-shifting.vpr@158.5--158.23
        storeIndex := left;
        assume state(Heap, Mask);
      
      // -- Translating statement: pw := Seq(left) -- arrays_quickselect_rec_index-shifting.vpr@160.5--160.20
        pw := Seq#Singleton(left);
        assume state(Heap, Mask);
    } else {
      
      // -- Translating statement: inhale left <= pivotIndex && pivotIndex <= right -- arrays_quickselect_rec_index-shifting.vpr@163.5--163.53
        assume left <= pivotIndex;
        assume pivotIndex <= right_2;
        assume state(Heap, Mask);
        assume state(Heap, Mask);
      
      // -- Translating statement: pivotIndex, pwPar := partition(a, left, right, pivotIndex) -- arrays_quickselect_rec_index-shifting.vpr@165.5--165.63
        PreCallHeap := Heap;
        PreCallMask := Mask;
        arg_pivotIndex := pivotIndex;
        
        // -- Exhaling precondition
          ExhaleWellDef0Heap := Heap;
          ExhaleWellDef0Mask := Mask;
          assert {:msg "  The precondition of method partition might not hold. Assertion 0 <= left might not hold. (arrays_quickselect_rec_index-shifting.vpr@165.5--165.63) [106593]"}
            0 <= left;
          assert {:msg "  The precondition of method partition might not hold. Assertion left < right might not hold. (arrays_quickselect_rec_index-shifting.vpr@165.5--165.63) [106594]"}
            left < right_2;
          assert {:msg "  The precondition of method partition might not hold. Assertion right < len(a) might not hold. (arrays_quickselect_rec_index-shifting.vpr@165.5--165.63) [106595]"}
            right_2 < (len(a_2): int);
          assert {:msg "  The precondition of method partition might not hold. Assertion left <= pivotIndex might not hold. (arrays_quickselect_rec_index-shifting.vpr@165.5--165.63) [106596]"}
            left <= arg_pivotIndex;
          assert {:msg "  The precondition of method partition might not hold. Assertion pivotIndex <= right might not hold. (arrays_quickselect_rec_index-shifting.vpr@165.5--165.63) [106597]"}
            arg_pivotIndex <= right_2;
          havoc QPMask;
          
          // -- check that the permission amount is positive
            
          
          // -- check if receiver loc(a, i) is injective
            assert {:msg "  The precondition of method partition might not hold. Quantified resource loc(a, i).val might not be injective. (arrays_quickselect_rec_index-shifting.vpr@165.5--165.63) [106598]"}
              (forall i_25_1: int, i_25_2: int ::
              { neverTriggered12(i_25_1), neverTriggered12(i_25_2) }
              (((i_25_1 != i_25_2 && (left <= i_25_1 && i_25_1 <= right_2)) && (left <= i_25_2 && i_25_2 <= right_2)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> (loc(a_2, i_25_1): Ref) != (loc(a_2, i_25_2): Ref)
            );
          
          // -- check if sufficient permission is held
            assert {:msg "  The precondition of method partition might not hold. There might be insufficient permission to access loc(a, i).val (arrays_quickselect_rec_index-shifting.vpr@165.5--165.63) [106599]"}
              (forall i_25_1: int ::
              { (loc(a_2, i_25_1): Ref) } { (loc(a_2, i_25_1): Ref) }
              left <= i_25_1 && i_25_1 <= right_2 ==> Mask[(loc(a_2, i_25_1): Ref), val] >= FullPerm
            );
          
          // -- assumptions for inverse of receiver loc(a, i)
            assume (forall i_25_1: int ::
              { (loc(a_2, i_25_1): Ref) } { (loc(a_2, i_25_1): Ref) }
              (left <= i_25_1 && i_25_1 <= right_2) && NoPerm < FullPerm ==> qpRange12((loc(a_2, i_25_1): Ref)) && invRecv12((loc(a_2, i_25_1): Ref)) == i_25_1
            );
            assume (forall o_9: Ref ::
              { invRecv12(o_9) }
              (left <= invRecv12(o_9) && invRecv12(o_9) <= right_2) && (NoPerm < FullPerm && qpRange12(o_9)) ==> (loc(a_2, invRecv12(o_9)): Ref) == o_9
            );
          
          // -- assume permission updates for field val
            assume (forall o_9: Ref ::
              { QPMask[o_9, val] }
              ((left <= invRecv12(o_9) && invRecv12(o_9) <= right_2) && (NoPerm < FullPerm && qpRange12(o_9)) ==> (loc(a_2, invRecv12(o_9)): Ref) == o_9 && QPMask[o_9, val] == Mask[o_9, val] - FullPerm) && (!((left <= invRecv12(o_9) && invRecv12(o_9) <= right_2) && (NoPerm < FullPerm && qpRange12(o_9))) ==> QPMask[o_9, val] == Mask[o_9, val])
            );
          
          // -- assume permission updates for independent locations
            assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
              { QPMask[o_9, f_5] }
              f_5 != val ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
            );
          Mask := QPMask;
          // Finish exhale
          havoc ExhaleHeap;
          assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
          Heap := ExhaleHeap;
        
        // -- Havocing target variables
          havoc pivotIndex, pwPar;
        
        // -- Inhaling postcondition
          assume left <= pivotIndex;
          assume pivotIndex <= right_2;
          havoc QPMask;
          assert {:msg "  Method call might fail. Quantified resource loc(a, i).val might not be injective. (arrays_quickselect_rec_index-shifting.vpr@165.5--165.63) [106600]"}
            (forall i_26_1: int, i_26_2: int ::
            
            (((i_26_1 != i_26_2 && (left <= i_26_1 && i_26_1 <= right_2)) && (left <= i_26_2 && i_26_2 <= right_2)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> (loc(a_2, i_26_1): Ref) != (loc(a_2, i_26_2): Ref)
          );
          
          // -- Define Inverse Function
            assume (forall i_26_1: int ::
              { (loc(a_2, i_26_1): Ref) } { (loc(a_2, i_26_1): Ref) }
              (left <= i_26_1 && i_26_1 <= right_2) && NoPerm < FullPerm ==> qpRange13((loc(a_2, i_26_1): Ref)) && invRecv13((loc(a_2, i_26_1): Ref)) == i_26_1
            );
            assume (forall o_9: Ref ::
              { invRecv13(o_9) }
              ((left <= invRecv13(o_9) && invRecv13(o_9) <= right_2) && NoPerm < FullPerm) && qpRange13(o_9) ==> (loc(a_2, invRecv13(o_9)): Ref) == o_9
            );
          
          // -- Assume set of fields is nonNull
            assume (forall i_26_1: int ::
              { (loc(a_2, i_26_1): Ref) } { (loc(a_2, i_26_1): Ref) }
              left <= i_26_1 && i_26_1 <= right_2 ==> (loc(a_2, i_26_1): Ref) != null
            );
          
          // -- Define permissions
            assume (forall o_9: Ref ::
              { QPMask[o_9, val] }
              (((left <= invRecv13(o_9) && invRecv13(o_9) <= right_2) && NoPerm < FullPerm) && qpRange13(o_9) ==> (NoPerm < FullPerm ==> (loc(a_2, invRecv13(o_9)): Ref) == o_9) && QPMask[o_9, val] == Mask[o_9, val] + FullPerm) && (!(((left <= invRecv13(o_9) && invRecv13(o_9) <= right_2) && NoPerm < FullPerm) && qpRange13(o_9)) ==> QPMask[o_9, val] == Mask[o_9, val])
            );
            assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
              { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
              f_5 != val ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
            );
          Mask := QPMask;
          assume state(Heap, Mask);
          assume Heap[(loc(a_2, pivotIndex): Ref), val] == PreCallHeap[(loc(a_2, arg_pivotIndex): Ref), val];
          assume (forall i_27_2: int ::
            { (loc(a_2, i_27_2): Ref) }
            left <= i_27_2 && i_27_2 < pivotIndex ==> Heap[(loc(a_2, i_27_2): Ref), val] < Heap[(loc(a_2, pivotIndex): Ref), val]
          );
          assume (forall i_28: int ::
            { (loc(a_2, i_28): Ref) }
            pivotIndex < i_28 && i_28 <= right_2 ==> Heap[(loc(a_2, pivotIndex): Ref), val] <= Heap[(loc(a_2, i_28): Ref), val]
          );
          assume Seq#Length(pwPar) == right_2 + 1 - left;
          assume (forall i_29: int ::
            { Seq#Index(pwPar, i_29) }
            0 <= i_29 && i_29 < Seq#Length(pwPar) ==> left <= Seq#Index(pwPar, i_29) && Seq#Index(pwPar, i_29) <= right_2
          );
          assume (forall i_30: int, j_4_1: int ::
            { Seq#Index(pwPar, i_30), Seq#Index(pwPar, j_4_1) }
            0 <= i_30 && (i_30 < j_4_1 && j_4_1 < Seq#Length(pwPar)) ==> Seq#Index(pwPar, i_30) != Seq#Index(pwPar, j_4_1)
          );
          assume (forall i_31: int ::
            { Seq#Index(pwPar, i_31) }
            0 <= i_31 && i_31 < Seq#Length(pwPar) ==> Heap[(loc(a_2, left + i_31): Ref), val] == PreCallHeap[(loc(a_2, Seq#Index(pwPar, i_31)): Ref), val]
          );
          assume state(Heap, Mask);
        assume state(Heap, Mask);
      
      // -- Translating statement: if (n == pivotIndex) -- arrays_quickselect_rec_index-shifting.vpr@167.5--208.6
        if (n == pivotIndex) {
          
          // -- Translating statement: storeIndex := pivotIndex -- arrays_quickselect_rec_index-shifting.vpr@168.7--168.31
            storeIndex := pivotIndex;
            assume state(Heap, Mask);
          
          // -- Translating statement: pw := pwPar -- arrays_quickselect_rec_index-shifting.vpr@169.7--169.18
            pw := pwPar;
            assume state(Heap, Mask);
        } else {
          
          // -- Translating statement: if (n < pivotIndex) -- arrays_quickselect_rec_index-shifting.vpr@170.7--208.6
            if (n < pivotIndex) {
              
              // -- Translating statement: storeIndex, pwRec := select_rec(a, left, pivotIndex - 1, n) -- arrays_quickselect_rec_index-shifting.vpr@171.7--171.66
                PreCallHeap := Heap;
                PreCallMask := Mask;
                arg_right := pivotIndex - 1;
                
                // -- Exhaling precondition
                  ExhaleWellDef0Heap := Heap;
                  ExhaleWellDef0Mask := Mask;
                  assert {:msg "  The precondition of method select_rec might not hold. Assertion 0 <= left might not hold. (arrays_quickselect_rec_index-shifting.vpr@171.7--171.66) [106601]"}
                    0 <= left;
                  assert {:msg "  The precondition of method select_rec might not hold. Assertion left <= pivotIndex - 1 might not hold. (arrays_quickselect_rec_index-shifting.vpr@171.7--171.66) [106602]"}
                    left <= arg_right;
                  assert {:msg "  The precondition of method select_rec might not hold. Assertion pivotIndex - 1 < len(a) might not hold. (arrays_quickselect_rec_index-shifting.vpr@171.7--171.66) [106603]"}
                    arg_right < (len(a_2): int);
                  assert {:msg "  The precondition of method select_rec might not hold. Assertion left <= n might not hold. (arrays_quickselect_rec_index-shifting.vpr@171.7--171.66) [106604]"}
                    left <= n;
                  assert {:msg "  The precondition of method select_rec might not hold. Assertion n <= pivotIndex - 1 might not hold. (arrays_quickselect_rec_index-shifting.vpr@171.7--171.66) [106605]"}
                    n <= arg_right;
                  havoc QPMask;
                  
                  // -- check that the permission amount is positive
                    
                  
                  // -- check if receiver loc(a, i) is injective
                    assert {:msg "  The precondition of method select_rec might not hold. Quantified resource loc(a, i).val might not be injective. (arrays_quickselect_rec_index-shifting.vpr@171.7--171.66) [106606]"}
                      (forall i_32: int, i_32_1: int ::
                      { neverTriggered14(i_32), neverTriggered14(i_32_1) }
                      (((i_32 != i_32_1 && (left <= i_32 && i_32 <= arg_right)) && (left <= i_32_1 && i_32_1 <= arg_right)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> (loc(a_2, i_32): Ref) != (loc(a_2, i_32_1): Ref)
                    );
                  
                  // -- check if sufficient permission is held
                    assert {:msg "  The precondition of method select_rec might not hold. There might be insufficient permission to access loc(a, i).val (arrays_quickselect_rec_index-shifting.vpr@171.7--171.66) [106607]"}
                      (forall i_32: int ::
                      { (loc(a_2, i_32): Ref) } { (loc(a_2, i_32): Ref) }
                      left <= i_32 && i_32 <= arg_right ==> Mask[(loc(a_2, i_32): Ref), val] >= FullPerm
                    );
                  
                  // -- assumptions for inverse of receiver loc(a, i)
                    assume (forall i_32: int ::
                      { (loc(a_2, i_32): Ref) } { (loc(a_2, i_32): Ref) }
                      (left <= i_32 && i_32 <= arg_right) && NoPerm < FullPerm ==> qpRange14((loc(a_2, i_32): Ref)) && invRecv14((loc(a_2, i_32): Ref)) == i_32
                    );
                    assume (forall o_9: Ref ::
                      { invRecv14(o_9) }
                      (left <= invRecv14(o_9) && invRecv14(o_9) <= arg_right) && (NoPerm < FullPerm && qpRange14(o_9)) ==> (loc(a_2, invRecv14(o_9)): Ref) == o_9
                    );
                  
                  // -- assume permission updates for field val
                    assume (forall o_9: Ref ::
                      { QPMask[o_9, val] }
                      ((left <= invRecv14(o_9) && invRecv14(o_9) <= arg_right) && (NoPerm < FullPerm && qpRange14(o_9)) ==> (loc(a_2, invRecv14(o_9)): Ref) == o_9 && QPMask[o_9, val] == Mask[o_9, val] - FullPerm) && (!((left <= invRecv14(o_9) && invRecv14(o_9) <= arg_right) && (NoPerm < FullPerm && qpRange14(o_9))) ==> QPMask[o_9, val] == Mask[o_9, val])
                    );
                  
                  // -- assume permission updates for independent locations
                    assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
                      { QPMask[o_9, f_5] }
                      f_5 != val ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
                    );
                  Mask := QPMask;
                  // Finish exhale
                  havoc ExhaleHeap;
                  assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
                  Heap := ExhaleHeap;
                
                // -- Havocing target variables
                  havoc storeIndex, pwRec;
                
                // -- Inhaling postcondition
                  assume left <= storeIndex;
                  assume storeIndex <= arg_right;
                  havoc QPMask;
                  assert {:msg "  Method call might fail. Quantified resource loc(a, i).val might not be injective. (arrays_quickselect_rec_index-shifting.vpr@171.7--171.66) [106608]"}
                    (forall i_33: int, i_33_2: int ::
                    
                    (((i_33 != i_33_2 && (left <= i_33 && i_33 <= arg_right)) && (left <= i_33_2 && i_33_2 <= arg_right)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> (loc(a_2, i_33): Ref) != (loc(a_2, i_33_2): Ref)
                  );
                  
                  // -- Define Inverse Function
                    assume (forall i_33: int ::
                      { (loc(a_2, i_33): Ref) } { (loc(a_2, i_33): Ref) }
                      (left <= i_33 && i_33 <= arg_right) && NoPerm < FullPerm ==> qpRange15((loc(a_2, i_33): Ref)) && invRecv15((loc(a_2, i_33): Ref)) == i_33
                    );
                    assume (forall o_9: Ref ::
                      { invRecv15(o_9) }
                      ((left <= invRecv15(o_9) && invRecv15(o_9) <= arg_right) && NoPerm < FullPerm) && qpRange15(o_9) ==> (loc(a_2, invRecv15(o_9)): Ref) == o_9
                    );
                  
                  // -- Assume set of fields is nonNull
                    assume (forall i_33: int ::
                      { (loc(a_2, i_33): Ref) } { (loc(a_2, i_33): Ref) }
                      left <= i_33 && i_33 <= arg_right ==> (loc(a_2, i_33): Ref) != null
                    );
                  
                  // -- Define permissions
                    assume (forall o_9: Ref ::
                      { QPMask[o_9, val] }
                      (((left <= invRecv15(o_9) && invRecv15(o_9) <= arg_right) && NoPerm < FullPerm) && qpRange15(o_9) ==> (NoPerm < FullPerm ==> (loc(a_2, invRecv15(o_9)): Ref) == o_9) && QPMask[o_9, val] == Mask[o_9, val] + FullPerm) && (!(((left <= invRecv15(o_9) && invRecv15(o_9) <= arg_right) && NoPerm < FullPerm) && qpRange15(o_9)) ==> QPMask[o_9, val] == Mask[o_9, val])
                    );
                    assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
                      { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
                      f_5 != val ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
                    );
                  Mask := QPMask;
                  assume state(Heap, Mask);
                  assume storeIndex == n;
                  assume (forall i_34: int ::
                    { (loc(a_2, i_34): Ref) }
                    left <= i_34 && i_34 < storeIndex ==> Heap[(loc(a_2, i_34): Ref), val] <= Heap[(loc(a_2, storeIndex): Ref), val]
                  );
                  assume (forall i_35: int ::
                    { (loc(a_2, i_35): Ref) }
                    storeIndex < i_35 && i_35 <= arg_right ==> Heap[(loc(a_2, storeIndex): Ref), val] <= Heap[(loc(a_2, i_35): Ref), val]
                  );
                  assume Seq#Length(pwRec) == arg_right + 1 - left;
                  assume (forall i_36: int ::
                    { Seq#Index(pwRec, i_36) }
                    0 <= i_36 && i_36 < Seq#Length(pwRec) ==> left <= Seq#Index(pwRec, i_36) && Seq#Index(pwRec, i_36) <= arg_right
                  );
                  assume (forall i_37: int, j_5: int ::
                    { Seq#Index(pwRec, i_37), Seq#Index(pwRec, j_5) }
                    0 <= i_37 && (i_37 < j_5 && j_5 < Seq#Length(pwRec)) ==> Seq#Index(pwRec, i_37) != Seq#Index(pwRec, j_5)
                  );
                  assume (forall i_38: int ::
                    { Seq#Index(pwRec, i_38) }
                    0 <= i_38 && i_38 < Seq#Length(pwRec) ==> Heap[(loc(a_2, left + i_38): Ref), val] == PreCallHeap[(loc(a_2, Seq#Index(pwRec, i_38)): Ref), val]
                  );
                  assume state(Heap, Mask);
                assume state(Heap, Mask);
              
              // -- Translating statement: assert dummy(pwRec[storeIndex - left]) -- arrays_quickselect_rec_index-shifting.vpr@180.7--180.43
                ExhaleWellDef0Heap := Heap;
                ExhaleWellDef0Mask := Mask;
                
                // -- Check definedness of dummy(pwRec[storeIndex - left])
                  assert {:msg "  Assert might fail. Index pwRec[storeIndex - left] into pwRec might be negative. (arrays_quickselect_rec_index-shifting.vpr@180.14--180.43) [106609]"}
                    storeIndex - left >= 0;
                  assert {:msg "  Assert might fail. Index pwRec[storeIndex - left] into pwRec might exceed sequence length. (arrays_quickselect_rec_index-shifting.vpr@180.14--180.43) [106610]"}
                    storeIndex - left < Seq#Length(pwRec);
                  if (*) {
                    // Stop execution
                    assume false;
                  }
                assert {:msg "  Assert might fail. Assertion dummy(pwRec[storeIndex - left]) might not hold. (arrays_quickselect_rec_index-shifting.vpr@180.14--180.43) [106611]"}
                  dummy_1(Heap, Seq#Index(pwRec, storeIndex - left));
                assume state(Heap, Mask);
              
              // -- Translating statement: inhale |pw| == |pwPar| -- arrays_quickselect_rec_index-shifting.vpr@196.7--196.29
                assume Seq#Length(pw) == Seq#Length(pwPar);
                assume state(Heap, Mask);
                assume state(Heap, Mask);
              
              // -- Translating statement: inhale (forall i: Int ::
  //     { pw[i] }
  //     { pwRec[i] }
  //     0 <= i && i < |pwRec| ==> pw[i] == pwPar[pwRec[i] - left]) -- arrays_quickselect_rec_index-shifting.vpr@197.7--197.88
                
                // -- Check definedness of (forall i: Int :: { pw[i] } { pwRec[i] } 0 <= i && i < |pwRec| ==> pw[i] == pwPar[pwRec[i] - left])
                  if (*) {
                    if (0 <= i_16 && i_16 < Seq#Length(pwRec)) {
                      assert {:msg "  Inhale might fail. Index pw[i] into pw might be negative. (arrays_quickselect_rec_index-shifting.vpr@197.14--197.88) [106612]"}
                        i_16 >= 0;
                      assert {:msg "  Inhale might fail. Index pw[i] into pw might exceed sequence length. (arrays_quickselect_rec_index-shifting.vpr@197.14--197.88) [106613]"}
                        i_16 < Seq#Length(pw);
                      assert {:msg "  Inhale might fail. Index pwRec[i] into pwRec might be negative. (arrays_quickselect_rec_index-shifting.vpr@197.14--197.88) [106614]"}
                        i_16 >= 0;
                      assert {:msg "  Inhale might fail. Index pwRec[i] into pwRec might exceed sequence length. (arrays_quickselect_rec_index-shifting.vpr@197.14--197.88) [106615]"}
                        i_16 < Seq#Length(pwRec);
                      assert {:msg "  Inhale might fail. Index pwPar[pwRec[i] - left] into pwPar might be negative. (arrays_quickselect_rec_index-shifting.vpr@197.14--197.88) [106616]"}
                        Seq#Index(pwRec, i_16) - left >= 0;
                      assert {:msg "  Inhale might fail. Index pwPar[pwRec[i] - left] into pwPar might exceed sequence length. (arrays_quickselect_rec_index-shifting.vpr@197.14--197.88) [106617]"}
                        Seq#Index(pwRec, i_16) - left < Seq#Length(pwPar);
                    }
                    assume false;
                  }
                assume (forall i_40: int ::
                  { Seq#Index(pw, i_40) } { Seq#Index(pwRec, i_40) }
                  0 <= i_40 && i_40 < Seq#Length(pwRec) ==> Seq#Index(pw, i_40) == Seq#Index(pwPar, Seq#Index(pwRec, i_40) - left)
                );
                assume state(Heap, Mask);
                assume state(Heap, Mask);
              
              // -- Translating statement: inhale (forall i: Int ::
  //     { pw[i] }
  //     { pwPar[i] }
  //     |pwRec| <= i && i < |pwPar| ==> pw[i] == pwPar[i]) -- arrays_quickselect_rec_index-shifting.vpr@198.7--198.80
                
                // -- Check definedness of (forall i: Int :: { pw[i] } { pwPar[i] } |pwRec| <= i && i < |pwPar| ==> pw[i] == pwPar[i])
                  if (*) {
                    if (Seq#Length(pwRec) <= i_42 && i_42 < Seq#Length(pwPar)) {
                      assert {:msg "  Inhale might fail. Index pw[i] into pw might be negative. (arrays_quickselect_rec_index-shifting.vpr@198.14--198.80) [106618]"}
                        i_42 >= 0;
                      assert {:msg "  Inhale might fail. Index pw[i] into pw might exceed sequence length. (arrays_quickselect_rec_index-shifting.vpr@198.14--198.80) [106619]"}
                        i_42 < Seq#Length(pw);
                      assert {:msg "  Inhale might fail. Index pwPar[i] into pwPar might be negative. (arrays_quickselect_rec_index-shifting.vpr@198.14--198.80) [106620]"}
                        i_42 >= 0;
                      assert {:msg "  Inhale might fail. Index pwPar[i] into pwPar might exceed sequence length. (arrays_quickselect_rec_index-shifting.vpr@198.14--198.80) [106621]"}
                        i_42 < Seq#Length(pwPar);
                    }
                    assume false;
                  }
                assume (forall i_42_1: int ::
                  { Seq#Index(pw, i_42_1) } { Seq#Index(pwPar, i_42_1) }
                  Seq#Length(pwRec) <= i_42_1 && i_42_1 < Seq#Length(pwPar) ==> Seq#Index(pw, i_42_1) == Seq#Index(pwPar, i_42_1)
                );
                assume state(Heap, Mask);
                assume state(Heap, Mask);
            } else {
              
              // -- Translating statement: storeIndex, pwRec := select_rec(a, pivotIndex + 1, right, n) -- arrays_quickselect_rec_index-shifting.vpr@201.7--201.67
                PreCallHeap := Heap;
                PreCallMask := Mask;
                arg_left := pivotIndex + 1;
                
                // -- Exhaling precondition
                  ExhaleWellDef0Heap := Heap;
                  ExhaleWellDef0Mask := Mask;
                  assert {:msg "  The precondition of method select_rec might not hold. Assertion 0 <= pivotIndex + 1 might not hold. (arrays_quickselect_rec_index-shifting.vpr@201.7--201.67) [106622]"}
                    0 <= arg_left;
                  assert {:msg "  The precondition of method select_rec might not hold. Assertion pivotIndex + 1 <= right might not hold. (arrays_quickselect_rec_index-shifting.vpr@201.7--201.67) [106623]"}
                    arg_left <= right_2;
                  assert {:msg "  The precondition of method select_rec might not hold. Assertion right < len(a) might not hold. (arrays_quickselect_rec_index-shifting.vpr@201.7--201.67) [106624]"}
                    right_2 < (len(a_2): int);
                  assert {:msg "  The precondition of method select_rec might not hold. Assertion pivotIndex + 1 <= n might not hold. (arrays_quickselect_rec_index-shifting.vpr@201.7--201.67) [106625]"}
                    arg_left <= n;
                  assert {:msg "  The precondition of method select_rec might not hold. Assertion n <= right might not hold. (arrays_quickselect_rec_index-shifting.vpr@201.7--201.67) [106626]"}
                    n <= right_2;
                  havoc QPMask;
                  
                  // -- check that the permission amount is positive
                    
                  
                  // -- check if receiver loc(a, i) is injective
                    assert {:msg "  The precondition of method select_rec might not hold. Quantified resource loc(a, i).val might not be injective. (arrays_quickselect_rec_index-shifting.vpr@201.7--201.67) [106627]"}
                      (forall i_43: int, i_43_1: int ::
                      { neverTriggered16(i_43), neverTriggered16(i_43_1) }
                      (((i_43 != i_43_1 && (arg_left <= i_43 && i_43 <= right_2)) && (arg_left <= i_43_1 && i_43_1 <= right_2)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> (loc(a_2, i_43): Ref) != (loc(a_2, i_43_1): Ref)
                    );
                  
                  // -- check if sufficient permission is held
                    assert {:msg "  The precondition of method select_rec might not hold. There might be insufficient permission to access loc(a, i).val (arrays_quickselect_rec_index-shifting.vpr@201.7--201.67) [106628]"}
                      (forall i_43: int ::
                      { (loc(a_2, i_43): Ref) } { (loc(a_2, i_43): Ref) }
                      arg_left <= i_43 && i_43 <= right_2 ==> Mask[(loc(a_2, i_43): Ref), val] >= FullPerm
                    );
                  
                  // -- assumptions for inverse of receiver loc(a, i)
                    assume (forall i_43: int ::
                      { (loc(a_2, i_43): Ref) } { (loc(a_2, i_43): Ref) }
                      (arg_left <= i_43 && i_43 <= right_2) && NoPerm < FullPerm ==> qpRange16((loc(a_2, i_43): Ref)) && invRecv16((loc(a_2, i_43): Ref)) == i_43
                    );
                    assume (forall o_9: Ref ::
                      { invRecv16(o_9) }
                      (arg_left <= invRecv16(o_9) && invRecv16(o_9) <= right_2) && (NoPerm < FullPerm && qpRange16(o_9)) ==> (loc(a_2, invRecv16(o_9)): Ref) == o_9
                    );
                  
                  // -- assume permission updates for field val
                    assume (forall o_9: Ref ::
                      { QPMask[o_9, val] }
                      ((arg_left <= invRecv16(o_9) && invRecv16(o_9) <= right_2) && (NoPerm < FullPerm && qpRange16(o_9)) ==> (loc(a_2, invRecv16(o_9)): Ref) == o_9 && QPMask[o_9, val] == Mask[o_9, val] - FullPerm) && (!((arg_left <= invRecv16(o_9) && invRecv16(o_9) <= right_2) && (NoPerm < FullPerm && qpRange16(o_9))) ==> QPMask[o_9, val] == Mask[o_9, val])
                    );
                  
                  // -- assume permission updates for independent locations
                    assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
                      { QPMask[o_9, f_5] }
                      f_5 != val ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
                    );
                  Mask := QPMask;
                  // Finish exhale
                  havoc ExhaleHeap;
                  assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
                  Heap := ExhaleHeap;
                
                // -- Havocing target variables
                  havoc storeIndex, pwRec;
                
                // -- Inhaling postcondition
                  assume arg_left <= storeIndex;
                  assume storeIndex <= right_2;
                  havoc QPMask;
                  assert {:msg "  Method call might fail. Quantified resource loc(a, i).val might not be injective. (arrays_quickselect_rec_index-shifting.vpr@201.7--201.67) [106629]"}
                    (forall i_44: int, i_44_1: int ::
                    
                    (((i_44 != i_44_1 && (arg_left <= i_44 && i_44 <= right_2)) && (arg_left <= i_44_1 && i_44_1 <= right_2)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> (loc(a_2, i_44): Ref) != (loc(a_2, i_44_1): Ref)
                  );
                  
                  // -- Define Inverse Function
                    assume (forall i_44: int ::
                      { (loc(a_2, i_44): Ref) } { (loc(a_2, i_44): Ref) }
                      (arg_left <= i_44 && i_44 <= right_2) && NoPerm < FullPerm ==> qpRange17((loc(a_2, i_44): Ref)) && invRecv17((loc(a_2, i_44): Ref)) == i_44
                    );
                    assume (forall o_9: Ref ::
                      { invRecv17(o_9) }
                      ((arg_left <= invRecv17(o_9) && invRecv17(o_9) <= right_2) && NoPerm < FullPerm) && qpRange17(o_9) ==> (loc(a_2, invRecv17(o_9)): Ref) == o_9
                    );
                  
                  // -- Assume set of fields is nonNull
                    assume (forall i_44: int ::
                      { (loc(a_2, i_44): Ref) } { (loc(a_2, i_44): Ref) }
                      arg_left <= i_44 && i_44 <= right_2 ==> (loc(a_2, i_44): Ref) != null
                    );
                  
                  // -- Define permissions
                    assume (forall o_9: Ref ::
                      { QPMask[o_9, val] }
                      (((arg_left <= invRecv17(o_9) && invRecv17(o_9) <= right_2) && NoPerm < FullPerm) && qpRange17(o_9) ==> (NoPerm < FullPerm ==> (loc(a_2, invRecv17(o_9)): Ref) == o_9) && QPMask[o_9, val] == Mask[o_9, val] + FullPerm) && (!(((arg_left <= invRecv17(o_9) && invRecv17(o_9) <= right_2) && NoPerm < FullPerm) && qpRange17(o_9)) ==> QPMask[o_9, val] == Mask[o_9, val])
                    );
                    assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
                      { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
                      f_5 != val ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
                    );
                  Mask := QPMask;
                  assume state(Heap, Mask);
                  assume storeIndex == n;
                  assume (forall i_45: int ::
                    { (loc(a_2, i_45): Ref) }
                    arg_left <= i_45 && i_45 < storeIndex ==> Heap[(loc(a_2, i_45): Ref), val] <= Heap[(loc(a_2, storeIndex): Ref), val]
                  );
                  assume (forall i_46: int ::
                    { (loc(a_2, i_46): Ref) }
                    storeIndex < i_46 && i_46 <= right_2 ==> Heap[(loc(a_2, storeIndex): Ref), val] <= Heap[(loc(a_2, i_46): Ref), val]
                  );
                  assume Seq#Length(pwRec) == right_2 + 1 - arg_left;
                  assume (forall i_47: int ::
                    { Seq#Index(pwRec, i_47) }
                    0 <= i_47 && i_47 < Seq#Length(pwRec) ==> arg_left <= Seq#Index(pwRec, i_47) && Seq#Index(pwRec, i_47) <= right_2
                  );
                  assume (forall i_48: int, j_6_2: int ::
                    { Seq#Index(pwRec, i_48), Seq#Index(pwRec, j_6_2) }
                    0 <= i_48 && (i_48 < j_6_2 && j_6_2 < Seq#Length(pwRec)) ==> Seq#Index(pwRec, i_48) != Seq#Index(pwRec, j_6_2)
                  );
                  assume (forall i_49: int ::
                    { Seq#Index(pwRec, i_49) }
                    0 <= i_49 && i_49 < Seq#Length(pwRec) ==> Heap[(loc(a_2, arg_left + i_49): Ref), val] == PreCallHeap[(loc(a_2, Seq#Index(pwRec, i_49)): Ref), val]
                  );
                  assume state(Heap, Mask);
                assume state(Heap, Mask);
              
              // -- Translating statement: assert dummy(pwRec[storeIndex - (pivotIndex + 1)]) -- arrays_quickselect_rec_index-shifting.vpr@203.7--203.57
                ExhaleWellDef0Heap := Heap;
                ExhaleWellDef0Mask := Mask;
                
                // -- Check definedness of dummy(pwRec[storeIndex - (pivotIndex + 1)])
                  assert {:msg "  Assert might fail. Index pwRec[storeIndex - (pivotIndex + 1)] into pwRec might be negative. (arrays_quickselect_rec_index-shifting.vpr@203.14--203.57) [106630]"}
                    storeIndex - (pivotIndex + 1) >= 0;
                  assert {:msg "  Assert might fail. Index pwRec[storeIndex - (pivotIndex + 1)] into pwRec might exceed sequence length. (arrays_quickselect_rec_index-shifting.vpr@203.14--203.57) [106631]"}
                    storeIndex - (pivotIndex + 1) < Seq#Length(pwRec);
                  if (*) {
                    // Stop execution
                    assume false;
                  }
                assert {:msg "  Assert might fail. Assertion dummy(pwRec[storeIndex - (pivotIndex + 1)]) might not hold. (arrays_quickselect_rec_index-shifting.vpr@203.14--203.57) [106632]"}
                  dummy_1(Heap, Seq#Index(pwRec, storeIndex - (pivotIndex + 1)));
                assume state(Heap, Mask);
              
              // -- Translating statement: inhale |pw| == |pwPar| -- arrays_quickselect_rec_index-shifting.vpr@205.7--205.29
                assume Seq#Length(pw) == Seq#Length(pwPar);
                assume state(Heap, Mask);
                assume state(Heap, Mask);
              
              // -- Translating statement: inhale (forall i: Int ::
  //     { pw[i] }
  //     { pwPar[i] }
  //     0 <= i && i <= pivotIndex - left ==> pw[i] == pwPar[i]) -- arrays_quickselect_rec_index-shifting.vpr@206.7--206.85
                
                // -- Check definedness of (forall i: Int :: { pw[i] } { pwPar[i] } 0 <= i && i <= pivotIndex - left ==> pw[i] == pwPar[i])
                  if (*) {
                    if (0 <= i_51 && i_51 <= pivotIndex - left) {
                      assert {:msg "  Inhale might fail. Index pw[i] into pw might be negative. (arrays_quickselect_rec_index-shifting.vpr@206.14--206.85) [106633]"}
                        i_51 >= 0;
                      assert {:msg "  Inhale might fail. Index pw[i] into pw might exceed sequence length. (arrays_quickselect_rec_index-shifting.vpr@206.14--206.85) [106634]"}
                        i_51 < Seq#Length(pw);
                      assert {:msg "  Inhale might fail. Index pwPar[i] into pwPar might be negative. (arrays_quickselect_rec_index-shifting.vpr@206.14--206.85) [106635]"}
                        i_51 >= 0;
                      assert {:msg "  Inhale might fail. Index pwPar[i] into pwPar might exceed sequence length. (arrays_quickselect_rec_index-shifting.vpr@206.14--206.85) [106636]"}
                        i_51 < Seq#Length(pwPar);
                    }
                    assume false;
                  }
                assume (forall i_51_2: int ::
                  { Seq#Index(pw, i_51_2) } { Seq#Index(pwPar, i_51_2) }
                  0 <= i_51_2 && i_51_2 <= pivotIndex - left ==> Seq#Index(pw, i_51_2) == Seq#Index(pwPar, i_51_2)
                );
                assume state(Heap, Mask);
                assume state(Heap, Mask);
              
              // -- Translating statement: inhale (forall i: Int ::
  //     { pw[i] }
  //     pivotIndex + 1 - left <= i && i < |pw| ==>
  //     pw[i] == pwPar[pwRec[i - (pivotIndex + 1 - left)] - left]) -- arrays_quickselect_rec_index-shifting.vpr@207.7--207.131
                
                // -- Check definedness of (forall i: Int :: { pw[i] } pivotIndex + 1 - left <= i && i < |pw| ==> pw[i] == pwPar[pwRec[i - (pivotIndex + 1 - left)] - left])
                  if (*) {
                    if (pivotIndex + 1 - left <= i_53 && i_53 < Seq#Length(pw)) {
                      assert {:msg "  Inhale might fail. Index pw[i] into pw might be negative. (arrays_quickselect_rec_index-shifting.vpr@207.14--207.131) [106637]"}
                        i_53 >= 0;
                      assert {:msg "  Inhale might fail. Index pw[i] into pw might exceed sequence length. (arrays_quickselect_rec_index-shifting.vpr@207.14--207.131) [106638]"}
                        i_53 < Seq#Length(pw);
                      assert {:msg "  Inhale might fail. Index pwRec[i - (pivotIndex + 1 - left)] into pwRec might be negative. (arrays_quickselect_rec_index-shifting.vpr@207.14--207.131) [106639]"}
                        i_53 - (pivotIndex + 1 - left) >= 0;
                      assert {:msg "  Inhale might fail. Index pwRec[i - (pivotIndex + 1 - left)] into pwRec might exceed sequence length. (arrays_quickselect_rec_index-shifting.vpr@207.14--207.131) [106640]"}
                        i_53 - (pivotIndex + 1 - left) < Seq#Length(pwRec);
                      assert {:msg "  Inhale might fail. Index pwPar[pwRec[i - (pivotIndex + 1 - left)] - left] into pwPar might be negative. (arrays_quickselect_rec_index-shifting.vpr@207.14--207.131) [106641]"}
                        Seq#Index(pwRec, i_53 - (pivotIndex + 1 - left)) - left >= 0;
                      assert {:msg "  Inhale might fail. Index pwPar[pwRec[i - (pivotIndex + 1 - left)] - left] into pwPar might exceed sequence length. (arrays_quickselect_rec_index-shifting.vpr@207.14--207.131) [106642]"}
                        Seq#Index(pwRec, i_53 - (pivotIndex + 1 - left)) - left < Seq#Length(pwPar);
                    }
                    assume false;
                  }
                assume (forall i_53_2: int ::
                  { Seq#Index(pw, i_53_2) }
                  pivotIndex + 1 - left <= i_53_2 && i_53_2 < Seq#Length(pw) ==> Seq#Index(pw, i_53_2) == Seq#Index(pwPar, Seq#Index(pwRec, i_53_2 - (pivotIndex + 1 - left)) - left)
                );
                assume state(Heap, Mask);
                assume state(Heap, Mask);
            }
            assume state(Heap, Mask);
        }
        assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Postcondition of select_rec might not hold. Assertion left <= storeIndex might not hold. (arrays_quickselect_rec_index-shifting.vpr@139.11--139.52) [106643]"}
      left <= storeIndex;
    assert {:msg "  Postcondition of select_rec might not hold. Assertion storeIndex <= right might not hold. (arrays_quickselect_rec_index-shifting.vpr@139.11--139.52) [106644]"}
      storeIndex <= right_2;
    havoc QPMask;
    
    // -- check that the permission amount is positive
      
    
    // -- check if receiver loc(a, i) is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource loc(a, i).val might not be injective. (arrays_quickselect_rec_index-shifting.vpr@141.11--141.74) [106645]"}
        (forall i_14_1: int, i_14_2: int ::
        { neverTriggered11(i_14_1), neverTriggered11(i_14_2) }
        (((i_14_1 != i_14_2 && (left <= i_14_1 && i_14_1 <= right_2)) && (left <= i_14_2 && i_14_2 <= right_2)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> (loc(a_2, i_14_1): Ref) != (loc(a_2, i_14_2): Ref)
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Postcondition of select_rec might not hold. There might be insufficient permission to access loc(a, i).val (arrays_quickselect_rec_index-shifting.vpr@141.11--141.74) [106646]"}
        (forall i_14_1: int ::
        { (loc(a_2, i_14_1): Ref) } { (loc(a_2, i_14_1): Ref) }
        left <= i_14_1 && i_14_1 <= right_2 ==> Mask[(loc(a_2, i_14_1): Ref), val] >= FullPerm
      );
    
    // -- assumptions for inverse of receiver loc(a, i)
      assume (forall i_14_1: int ::
        { (loc(a_2, i_14_1): Ref) } { (loc(a_2, i_14_1): Ref) }
        (left <= i_14_1 && i_14_1 <= right_2) && NoPerm < FullPerm ==> qpRange11((loc(a_2, i_14_1): Ref)) && invRecv11((loc(a_2, i_14_1): Ref)) == i_14_1
      );
      assume (forall o_9: Ref ::
        { invRecv11(o_9) }
        (left <= invRecv11(o_9) && invRecv11(o_9) <= right_2) && (NoPerm < FullPerm && qpRange11(o_9)) ==> (loc(a_2, invRecv11(o_9)): Ref) == o_9
      );
    
    // -- assume permission updates for field val
      assume (forall o_9: Ref ::
        { QPMask[o_9, val] }
        ((left <= invRecv11(o_9) && invRecv11(o_9) <= right_2) && (NoPerm < FullPerm && qpRange11(o_9)) ==> (loc(a_2, invRecv11(o_9)): Ref) == o_9 && QPMask[o_9, val] == Mask[o_9, val] - FullPerm) && (!((left <= invRecv11(o_9) && invRecv11(o_9) <= right_2) && (NoPerm < FullPerm && qpRange11(o_9))) ==> QPMask[o_9, val] == Mask[o_9, val])
      );
    
    // -- assume permission updates for independent locations
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { QPMask[o_9, f_5] }
        f_5 != val ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    assert {:msg "  Postcondition of select_rec might not hold. Assertion storeIndex == n might not hold. (arrays_quickselect_rec_index-shifting.vpr@143.11--143.26) [106647]"}
      storeIndex == n;
    if (*) {
      if (left <= i_15_1 && i_15_1 < storeIndex) {
        assert {:msg "  Postcondition of select_rec might not hold. Assertion loc(a, i).val <= loc(a, storeIndex).val might not hold. (arrays_quickselect_rec_index-shifting.vpr@144.11--144.100) [106648]"}
          Heap[(loc(a_2, i_15_1): Ref), val] <= Heap[(loc(a_2, storeIndex): Ref), val];
      }
      assume false;
    }
    assume (forall i_16_1_1: int ::
      { (loc(a_2, i_16_1_1): Ref) }
      left <= i_16_1_1 && i_16_1_1 < storeIndex ==> Heap[(loc(a_2, i_16_1_1): Ref), val] <= Heap[(loc(a_2, storeIndex): Ref), val]
    );
    if (*) {
      if (storeIndex < i_17_1 && i_17_1 <= right_2) {
        assert {:msg "  Postcondition of select_rec might not hold. Assertion loc(a, storeIndex).val <= loc(a, i).val might not hold. (arrays_quickselect_rec_index-shifting.vpr@145.11--145.100) [106649]"}
          Heap[(loc(a_2, storeIndex): Ref), val] <= Heap[(loc(a_2, i_17_1): Ref), val];
      }
      assume false;
    }
    assume (forall i_18_1_1: int ::
      { (loc(a_2, i_18_1_1): Ref) }
      storeIndex < i_18_1_1 && i_18_1_1 <= right_2 ==> Heap[(loc(a_2, storeIndex): Ref), val] <= Heap[(loc(a_2, i_18_1_1): Ref), val]
    );
    assert {:msg "  Postcondition of select_rec might not hold. Assertion |pw| == right + 1 - left might not hold. (arrays_quickselect_rec_index-shifting.vpr@147.11--147.35) [106650]"}
      Seq#Length(pw) == right_2 + 1 - left;
    if (*) {
      if (0 <= i_19_1 && i_19_1 < Seq#Length(pw)) {
        assert {:msg "  Postcondition of select_rec might not hold. Assertion left <= pw[i] might not hold. (arrays_quickselect_rec_index-shifting.vpr@148.11--148.82) [106651]"}
          left <= Seq#Index(pw, i_19_1);
        assert {:msg "  Postcondition of select_rec might not hold. Assertion pw[i] <= right might not hold. (arrays_quickselect_rec_index-shifting.vpr@148.11--148.82) [106652]"}
          Seq#Index(pw, i_19_1) <= right_2;
      }
      assume false;
    }
    assume (forall i_20_1: int ::
      { Seq#Index(pw, i_20_1) }
      0 <= i_20_1 && i_20_1 < Seq#Length(pw) ==> left <= Seq#Index(pw, i_20_1) && Seq#Index(pw, i_20_1) <= right_2
    );
    if (*) {
      if (0 <= i_21_1 && (i_21_1 < j_2_2 && j_2_2 < Seq#Length(pw))) {
        assert {:msg "  Postcondition of select_rec might not hold. Assertion pw[i] != pw[j] might not hold. (arrays_quickselect_rec_index-shifting.vpr@149.11--149.82) [106653]"}
          Seq#Index(pw, i_21_1) != Seq#Index(pw, j_2_2);
      }
      assume false;
    }
    assume (forall i_22_1_1: int, j_3_1_1: int ::
      { Seq#Index(pw, i_22_1_1), Seq#Index(pw, j_3_1_1) }
      0 <= i_22_1_1 && (i_22_1_1 < j_3_1_1 && j_3_1_1 < Seq#Length(pw)) ==> Seq#Index(pw, i_22_1_1) != Seq#Index(pw, j_3_1_1)
    );
    if (*) {
      if (0 <= i_23_1 && i_23_1 < Seq#Length(pw)) {
        assert {:msg "  Postcondition of select_rec might not hold. Assertion loc(a, left + i).val == old(loc(a, pw[i]).val) might not hold. (arrays_quickselect_rec_index-shifting.vpr@151.11--151.32) [106654]"}
          Heap[(loc(a_2, left + i_23_1): Ref), val] == oldHeap[(loc(a_2, Seq#Index(pw, i_23_1)): Ref), val];
      }
      assume false;
    }
    assume (forall i_24_1_1: int ::
      { Seq#Index(pw, i_24_1_1) }
      0 <= i_24_1_1 && i_24_1_1 < Seq#Length(pw) ==> Heap[(loc(a_2, left + i_24_1_1): Ref), val] == oldHeap[(loc(a_2, Seq#Index(pw, i_24_1_1)): Ref), val]
    );
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method client
// ==================================================

procedure client(a_2: IArrayDomainType) returns ()
  modifies Heap, Mask;
{
  var QPMask: MaskType;
  var i_55: int;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var PreCallHeap: HeapType;
  var PreCallMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleHeap: HeapType;
  var storeIndex: int;
  var pw: (Seq int);
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Checked inhaling of precondition
    assume 10 < (len(a_2): int);
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall i: Int :: { loc(a, i) } 0 <= i && i < len(a) ==> acc(loc(a, i).val, write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource loc(a, i).val might not be injective. (arrays_quickselect_rec_index-shifting.vpr@214.12--214.72) [106655]"}
      (forall i_1: int, i_1_1: int ::
      
      (((i_1 != i_1_1 && (0 <= i_1 && i_1 < (len(a_2): int))) && (0 <= i_1_1 && i_1_1 < (len(a_2): int))) && NoPerm < FullPerm) && NoPerm < FullPerm ==> (loc(a_2, i_1): Ref) != (loc(a_2, i_1_1): Ref)
    );
    
    // -- Define Inverse Function
      assume (forall i_1: int ::
        { (loc(a_2, i_1): Ref) } { (loc(a_2, i_1): Ref) }
        (0 <= i_1 && i_1 < (len(a_2): int)) && NoPerm < FullPerm ==> qpRange18((loc(a_2, i_1): Ref)) && invRecv18((loc(a_2, i_1): Ref)) == i_1
      );
      assume (forall o_9: Ref ::
        { invRecv18(o_9) }
        ((0 <= invRecv18(o_9) && invRecv18(o_9) < (len(a_2): int)) && NoPerm < FullPerm) && qpRange18(o_9) ==> (loc(a_2, invRecv18(o_9)): Ref) == o_9
      );
    
    // -- Assume set of fields is nonNull
      assume (forall i_1: int ::
        { (loc(a_2, i_1): Ref) } { (loc(a_2, i_1): Ref) }
        0 <= i_1 && i_1 < (len(a_2): int) ==> (loc(a_2, i_1): Ref) != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, val] }
        (((0 <= invRecv18(o_9) && invRecv18(o_9) < (len(a_2): int)) && NoPerm < FullPerm) && qpRange18(o_9) ==> (NoPerm < FullPerm ==> (loc(a_2, invRecv18(o_9)): Ref) == o_9) && QPMask[o_9, val] == Mask[o_9, val] + FullPerm) && (!(((0 <= invRecv18(o_9) && invRecv18(o_9) < (len(a_2): int)) && NoPerm < FullPerm) && qpRange18(o_9)) ==> QPMask[o_9, val] == Mask[o_9, val])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != val ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall i: Int :: { loc(a, i) } 0 <= i && i <= 10 ==> loc(a, i).val == i)
      if (*) {
        if (0 <= i_55 && i_55 <= 10) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access loc(a, i).val (arrays_quickselect_rec_index-shifting.vpr@215.12--215.69) [106656]"}
            HasDirectPerm(Mask, (loc(a_2, i_55): Ref), val);
        }
        assume false;
      }
    assume (forall i_3_2: int ::
      { (loc(a_2, i_3_2): Ref) }
      0 <= i_3_2 && i_3_2 <= 10 ==> Heap[(loc(a_2, i_3_2): Ref), val] == i_3_2
    );
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
    
    // -- Check definedness of (forall i: Int :: { loc(a, i) } 0 <= i && i < len(a) ==> acc(loc(a, i).val, write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource loc(a, i).val might not be injective. (arrays_quickselect_rec_index-shifting.vpr@216.11--216.71) [106657]"}
      (forall i_5_1: int, i_5_2: int ::
      
      (((i_5_1 != i_5_2 && (0 <= i_5_1 && i_5_1 < (len(a_2): int))) && (0 <= i_5_2 && i_5_2 < (len(a_2): int))) && NoPerm < FullPerm) && NoPerm < FullPerm ==> (loc(a_2, i_5_1): Ref) != (loc(a_2, i_5_2): Ref)
    );
    
    // -- Define Inverse Function
      assume (forall i_5_1: int ::
        { (loc(a_2, i_5_1): Ref) } { (loc(a_2, i_5_1): Ref) }
        (0 <= i_5_1 && i_5_1 < (len(a_2): int)) && NoPerm < FullPerm ==> qpRange19((loc(a_2, i_5_1): Ref)) && invRecv19((loc(a_2, i_5_1): Ref)) == i_5_1
      );
      assume (forall o_9: Ref ::
        { invRecv19(o_9) }
        ((0 <= invRecv19(o_9) && invRecv19(o_9) < (len(a_2): int)) && NoPerm < FullPerm) && qpRange19(o_9) ==> (loc(a_2, invRecv19(o_9)): Ref) == o_9
      );
    
    // -- Assume set of fields is nonNull
      assume (forall i_5_1: int ::
        { (loc(a_2, i_5_1): Ref) } { (loc(a_2, i_5_1): Ref) }
        0 <= i_5_1 && i_5_1 < (len(a_2): int) ==> (loc(a_2, i_5_1): Ref) != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, val] }
        (((0 <= invRecv19(o_9) && invRecv19(o_9) < (len(a_2): int)) && NoPerm < FullPerm) && qpRange19(o_9) ==> (NoPerm < FullPerm ==> (loc(a_2, invRecv19(o_9)): Ref) == o_9) && QPMask[o_9, val] == PostMask[o_9, val] + FullPerm) && (!(((0 <= invRecv19(o_9) && invRecv19(o_9) < (len(a_2): int)) && NoPerm < FullPerm) && qpRange19(o_9)) ==> QPMask[o_9, val] == PostMask[o_9, val])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { PostMask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != val ==> PostMask[o_9, f_5] == QPMask[o_9, f_5]
      );
    PostMask := QPMask;
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: storeIndex, pw := select_rec(a, 0, 10, 3) -- arrays_quickselect_rec_index-shifting.vpr@221.3--221.44
    PreCallHeap := Heap;
    PreCallMask := Mask;
    
    // -- Exhaling precondition
      ExhaleWellDef0Heap := Heap;
      ExhaleWellDef0Mask := Mask;
      assert {:msg "  The precondition of method select_rec might not hold. Assertion 10 < len(a) might not hold. (arrays_quickselect_rec_index-shifting.vpr@221.3--221.44) [106658]"}
        10 < (len(a_2): int);
      havoc QPMask;
      
      // -- check that the permission amount is positive
        
      
      // -- check if receiver loc(a, i) is injective
        assert {:msg "  The precondition of method select_rec might not hold. Quantified resource loc(a, i).val might not be injective. (arrays_quickselect_rec_index-shifting.vpr@221.3--221.44) [106659]"}
          (forall i_7_1: int, i_7_2: int ::
          { neverTriggered21(i_7_1), neverTriggered21(i_7_2) }
          (((i_7_1 != i_7_2 && (0 <= i_7_1 && i_7_1 <= 10)) && (0 <= i_7_2 && i_7_2 <= 10)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> (loc(a_2, i_7_1): Ref) != (loc(a_2, i_7_2): Ref)
        );
      
      // -- check if sufficient permission is held
        assert {:msg "  The precondition of method select_rec might not hold. There might be insufficient permission to access loc(a, i).val (arrays_quickselect_rec_index-shifting.vpr@221.3--221.44) [106660]"}
          (forall i_7_1: int ::
          { (loc(a_2, i_7_1): Ref) } { (loc(a_2, i_7_1): Ref) }
          0 <= i_7_1 && i_7_1 <= 10 ==> Mask[(loc(a_2, i_7_1): Ref), val] >= FullPerm
        );
      
      // -- assumptions for inverse of receiver loc(a, i)
        assume (forall i_7_1: int ::
          { (loc(a_2, i_7_1): Ref) } { (loc(a_2, i_7_1): Ref) }
          (0 <= i_7_1 && i_7_1 <= 10) && NoPerm < FullPerm ==> qpRange21((loc(a_2, i_7_1): Ref)) && invRecv21((loc(a_2, i_7_1): Ref)) == i_7_1
        );
        assume (forall o_9: Ref ::
          { invRecv21(o_9) }
          (0 <= invRecv21(o_9) && invRecv21(o_9) <= 10) && (NoPerm < FullPerm && qpRange21(o_9)) ==> (loc(a_2, invRecv21(o_9)): Ref) == o_9
        );
      
      // -- assume permission updates for field val
        assume (forall o_9: Ref ::
          { QPMask[o_9, val] }
          ((0 <= invRecv21(o_9) && invRecv21(o_9) <= 10) && (NoPerm < FullPerm && qpRange21(o_9)) ==> (loc(a_2, invRecv21(o_9)): Ref) == o_9 && QPMask[o_9, val] == Mask[o_9, val] - FullPerm) && (!((0 <= invRecv21(o_9) && invRecv21(o_9) <= 10) && (NoPerm < FullPerm && qpRange21(o_9))) ==> QPMask[o_9, val] == Mask[o_9, val])
        );
      
      // -- assume permission updates for independent locations
        assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
          { QPMask[o_9, f_5] }
          f_5 != val ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
        );
      Mask := QPMask;
      // Finish exhale
      havoc ExhaleHeap;
      assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
      Heap := ExhaleHeap;
    
    // -- Havocing target variables
      havoc storeIndex, pw;
    
    // -- Inhaling postcondition
      assume 0 <= storeIndex;
      assume storeIndex <= 10;
      havoc QPMask;
      assert {:msg "  Method call might fail. Quantified resource loc(a, i).val might not be injective. (arrays_quickselect_rec_index-shifting.vpr@221.3--221.44) [106661]"}
        (forall i_8_1: int, i_8_2: int ::
        
        (((i_8_1 != i_8_2 && (0 <= i_8_1 && i_8_1 <= 10)) && (0 <= i_8_2 && i_8_2 <= 10)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> (loc(a_2, i_8_1): Ref) != (loc(a_2, i_8_2): Ref)
      );
      
      // -- Define Inverse Function
        assume (forall i_8_1: int ::
          { (loc(a_2, i_8_1): Ref) } { (loc(a_2, i_8_1): Ref) }
          (0 <= i_8_1 && i_8_1 <= 10) && NoPerm < FullPerm ==> qpRange22((loc(a_2, i_8_1): Ref)) && invRecv22((loc(a_2, i_8_1): Ref)) == i_8_1
        );
        assume (forall o_9: Ref ::
          { invRecv22(o_9) }
          ((0 <= invRecv22(o_9) && invRecv22(o_9) <= 10) && NoPerm < FullPerm) && qpRange22(o_9) ==> (loc(a_2, invRecv22(o_9)): Ref) == o_9
        );
      
      // -- Assume set of fields is nonNull
        assume (forall i_8_1: int ::
          { (loc(a_2, i_8_1): Ref) } { (loc(a_2, i_8_1): Ref) }
          0 <= i_8_1 && i_8_1 <= 10 ==> (loc(a_2, i_8_1): Ref) != null
        );
      
      // -- Define permissions
        assume (forall o_9: Ref ::
          { QPMask[o_9, val] }
          (((0 <= invRecv22(o_9) && invRecv22(o_9) <= 10) && NoPerm < FullPerm) && qpRange22(o_9) ==> (NoPerm < FullPerm ==> (loc(a_2, invRecv22(o_9)): Ref) == o_9) && QPMask[o_9, val] == Mask[o_9, val] + FullPerm) && (!(((0 <= invRecv22(o_9) && invRecv22(o_9) <= 10) && NoPerm < FullPerm) && qpRange22(o_9)) ==> QPMask[o_9, val] == Mask[o_9, val])
        );
        assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
          { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
          f_5 != val ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
        );
      Mask := QPMask;
      assume state(Heap, Mask);
      assume storeIndex == 3;
      assume (forall i_9_1: int ::
        { (loc(a_2, i_9_1): Ref) }
        0 <= i_9_1 && i_9_1 < storeIndex ==> Heap[(loc(a_2, i_9_1): Ref), val] <= Heap[(loc(a_2, storeIndex): Ref), val]
      );
      assume (forall i_10_1: int ::
        { (loc(a_2, i_10_1): Ref) }
        storeIndex < i_10_1 && i_10_1 <= 10 ==> Heap[(loc(a_2, storeIndex): Ref), val] <= Heap[(loc(a_2, i_10_1): Ref), val]
      );
      assume Seq#Length(pw) == 11;
      assume (forall i_11_1: int ::
        { Seq#Index(pw, i_11_1) }
        0 <= i_11_1 && i_11_1 < Seq#Length(pw) ==> 0 <= Seq#Index(pw, i_11_1) && Seq#Index(pw, i_11_1) <= 10
      );
      assume (forall i_12_1: int, j: int ::
        { Seq#Index(pw, i_12_1), Seq#Index(pw, j) }
        0 <= i_12_1 && (i_12_1 < j && j < Seq#Length(pw)) ==> Seq#Index(pw, i_12_1) != Seq#Index(pw, j)
      );
      assume (forall i_13_1: int ::
        { Seq#Index(pw, i_13_1) }
        0 <= i_13_1 && i_13_1 < Seq#Length(pw) ==> Heap[(loc(a_2, 0 + i_13_1): Ref), val] == PreCallHeap[(loc(a_2, Seq#Index(pw, i_13_1)): Ref), val]
      );
      assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert storeIndex == 3 -- arrays_quickselect_rec_index-shifting.vpr@223.3--223.25
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Assert might fail. Assertion storeIndex == 3 might not hold. (arrays_quickselect_rec_index-shifting.vpr@223.10--223.25) [106662]"}
      storeIndex == 3;
    assume state(Heap, Mask);
  
  // -- Translating statement: assert loc(a, storeIndex).val == old(loc(a, pw[storeIndex]).val) -- arrays_quickselect_rec_index-shifting.vpr@224.3--224.67
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of loc(a, storeIndex).val == old(loc(a, pw[storeIndex]).val)
      assert {:msg "  Assert might fail. There might be insufficient permission to access loc(a, storeIndex).val (arrays_quickselect_rec_index-shifting.vpr@224.10--224.67) [106663]"}
        HasDirectPerm(ExhaleWellDef0Mask, (loc(a_2, storeIndex): Ref), val);
      assert {:msg "  Assert might fail. Index pw[storeIndex] into pw might be negative. (arrays_quickselect_rec_index-shifting.vpr@224.10--224.67) [106664]"}
        storeIndex >= 0;
      assert {:msg "  Assert might fail. Index pw[storeIndex] into pw might exceed sequence length. (arrays_quickselect_rec_index-shifting.vpr@224.10--224.67) [106665]"}
        storeIndex < Seq#Length(pw);
      assert {:msg "  Assert might fail. There might be insufficient permission to access loc(a, pw[storeIndex]).val (arrays_quickselect_rec_index-shifting.vpr@224.10--224.67) [106666]"}
        HasDirectPerm(oldMask, (loc(a_2, Seq#Index(pw, storeIndex)): Ref), val);
    assert {:msg "  Assert might fail. Assertion loc(a, storeIndex).val == old(loc(a, pw[storeIndex]).val) might not hold. (arrays_quickselect_rec_index-shifting.vpr@224.10--224.67) [106667]"}
      Heap[(loc(a_2, storeIndex): Ref), val] == oldHeap[(loc(a_2, Seq#Index(pw, storeIndex)): Ref), val];
    assume state(Heap, Mask);
  
  // -- Translating statement: assert old(loc(a, 0).val) == 0 -- arrays_quickselect_rec_index-shifting.vpr@226.3--226.33
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of old(loc(a, 0).val) == 0
      assert {:msg "  Assert might fail. There might be insufficient permission to access loc(a, 0).val (arrays_quickselect_rec_index-shifting.vpr@226.10--226.33) [106668]"}
        HasDirectPerm(oldMask, (loc(a_2, 0): Ref), val);
    assert {:msg "  Assert might fail. Assertion old(loc(a, 0).val) == 0 might not hold. (arrays_quickselect_rec_index-shifting.vpr@226.10--226.33) [106669]"}
      oldHeap[(loc(a_2, 0): Ref), val] == 0;
    assume state(Heap, Mask);
  
  // -- Translating statement: assert old(loc(a, 3).val) == 3 -- arrays_quickselect_rec_index-shifting.vpr@227.3--227.33
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of old(loc(a, 3).val) == 3
      assert {:msg "  Assert might fail. There might be insufficient permission to access loc(a, 3).val (arrays_quickselect_rec_index-shifting.vpr@227.10--227.33) [106670]"}
        HasDirectPerm(oldMask, (loc(a_2, 3): Ref), val);
    assert {:msg "  Assert might fail. Assertion old(loc(a, 3).val) == 3 might not hold. (arrays_quickselect_rec_index-shifting.vpr@227.10--227.33) [106671]"}
      oldHeap[(loc(a_2, 3): Ref), val] == 3;
    assume state(Heap, Mask);
  
  // -- Translating statement: assert old(loc(a, 2).val) != old(loc(a, 3).val) -- arrays_quickselect_rec_index-shifting.vpr@228.3--228.50
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of old(loc(a, 2).val) != old(loc(a, 3).val)
      assert {:msg "  Assert might fail. There might be insufficient permission to access loc(a, 2).val (arrays_quickselect_rec_index-shifting.vpr@228.10--228.50) [106672]"}
        HasDirectPerm(oldMask, (loc(a_2, 2): Ref), val);
      assert {:msg "  Assert might fail. There might be insufficient permission to access loc(a, 3).val (arrays_quickselect_rec_index-shifting.vpr@228.10--228.50) [106673]"}
        HasDirectPerm(oldMask, (loc(a_2, 3): Ref), val);
    assert {:msg "  Assert might fail. Assertion old(loc(a, 2).val) != old(loc(a, 3).val) might not hold. (arrays_quickselect_rec_index-shifting.vpr@228.10--228.50) [106674]"}
      oldHeap[(loc(a_2, 2): Ref), val] != oldHeap[(loc(a_2, 3): Ref), val];
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    havoc QPMask;
    
    // -- check that the permission amount is positive
      
    
    // -- check if receiver loc(a, i) is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource loc(a, i).val might not be injective. (arrays_quickselect_rec_index-shifting.vpr@216.11--216.71) [106675]"}
        (forall i_6_2: int, i_6_3: int ::
        { neverTriggered20(i_6_2), neverTriggered20(i_6_3) }
        (((i_6_2 != i_6_3 && (0 <= i_6_2 && i_6_2 < (len(a_2): int))) && (0 <= i_6_3 && i_6_3 < (len(a_2): int))) && NoPerm < FullPerm) && NoPerm < FullPerm ==> (loc(a_2, i_6_2): Ref) != (loc(a_2, i_6_3): Ref)
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Postcondition of client might not hold. There might be insufficient permission to access loc(a, i).val (arrays_quickselect_rec_index-shifting.vpr@216.11--216.71) [106676]"}
        (forall i_6_2: int ::
        { (loc(a_2, i_6_2): Ref) } { (loc(a_2, i_6_2): Ref) }
        0 <= i_6_2 && i_6_2 < (len(a_2): int) ==> Mask[(loc(a_2, i_6_2): Ref), val] >= FullPerm
      );
    
    // -- assumptions for inverse of receiver loc(a, i)
      assume (forall i_6_2: int ::
        { (loc(a_2, i_6_2): Ref) } { (loc(a_2, i_6_2): Ref) }
        (0 <= i_6_2 && i_6_2 < (len(a_2): int)) && NoPerm < FullPerm ==> qpRange20((loc(a_2, i_6_2): Ref)) && invRecv20((loc(a_2, i_6_2): Ref)) == i_6_2
      );
      assume (forall o_9: Ref ::
        { invRecv20(o_9) }
        (0 <= invRecv20(o_9) && invRecv20(o_9) < (len(a_2): int)) && (NoPerm < FullPerm && qpRange20(o_9)) ==> (loc(a_2, invRecv20(o_9)): Ref) == o_9
      );
    
    // -- assume permission updates for field val
      assume (forall o_9: Ref ::
        { QPMask[o_9, val] }
        ((0 <= invRecv20(o_9) && invRecv20(o_9) < (len(a_2): int)) && (NoPerm < FullPerm && qpRange20(o_9)) ==> (loc(a_2, invRecv20(o_9)): Ref) == o_9 && QPMask[o_9, val] == Mask[o_9, val] - FullPerm) && (!((0 <= invRecv20(o_9) && invRecv20(o_9) < (len(a_2): int)) && (NoPerm < FullPerm && qpRange20(o_9))) ==> QPMask[o_9, val] == Mask[o_9, val])
      );
    
    // -- assume permission updates for independent locations
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { QPMask[o_9, f_5] }
        f_5 != val ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}