// 
// Translation of Viper program.
// 
// Date:         2025-01-08 21:33:22
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/quantifiedpermissions/third_party/test_vector_add_c.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/quantifiedpermissions/third_party/test_vector_add_c-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
axiom (forall o_44: Ref, f_47: (Field NormalField Ref), Heap: HeapType ::
  { Heap[o_44, f_47] }
  Heap[o_44, $allocated] ==> Heap[Heap[o_44, f_47], $allocated]
);
function  succHeap(Heap0: HeapType, Heap1: HeapType): bool;
function  succHeapTrans(Heap0: HeapType, Heap1: HeapType): bool;
function  IdenticalOnKnownLocations(Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType): bool;
function  IsPredicateField<A, B>(f_1: (Field A B)): bool;
function  IsWandField<A, B>(f_1: (Field A B)): bool;
function  getPredWandId<A, B>(f_1: (Field A B)): int;
// Frame all locations with direct permissions
axiom (forall <A, B> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_51: Ref, f_50: (Field A B) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_51, f_50] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, o_51, f_50) ==> Heap[o_51, f_50] == ExhaleHeap[o_51, f_50]
);
// Frame all predicate mask locations of predicates with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_26: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_26), ExhaleHeap[null, PredicateMaskField(pm_f_26)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_26) && IsPredicateField(pm_f_26) ==> Heap[null, PredicateMaskField(pm_f_26)] == ExhaleHeap[null, PredicateMaskField(pm_f_26)]
);
// Frame all locations with known folded permissions
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_26: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_26) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_26) && IsPredicateField(pm_f_26) ==> (forall <A, B> o2_26: Ref, f_50: (Field A B) ::
    { ExhaleHeap[o2_26, f_50] }
    Heap[null, PredicateMaskField(pm_f_26)][o2_26, f_50] ==> Heap[o2_26, f_50] == ExhaleHeap[o2_26, f_50]
  )
);
// Frame all wand mask locations of wands with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_26: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_26), ExhaleHeap[null, WandMaskField(pm_f_26)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_26) && IsWandField(pm_f_26) ==> Heap[null, WandMaskField(pm_f_26)] == ExhaleHeap[null, WandMaskField(pm_f_26)]
);
// Frame all locations in the footprint of magic wands
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_26: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_26) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_26) && IsWandField(pm_f_26) ==> (forall <A, B> o2_26: Ref, f_50: (Field A B) ::
    { ExhaleHeap[o2_26, f_50] }
    Heap[null, WandMaskField(pm_f_26)][o2_26, f_50] ==> Heap[o2_26, f_50] == ExhaleHeap[o2_26, f_50]
  )
);
// All previously-allocated references are still allocated
axiom (forall Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_51: Ref ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_51, $allocated] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> Heap[o_51, $allocated] ==> ExhaleHeap[o_51, $allocated]
);
// Updated Heaps are Successor Heaps
axiom (forall <A, B> Heap: HeapType, o_44: Ref, f_42: (Field A B), v: B ::
  { Heap[o_44, f_42:=v] }
  succHeap(Heap, Heap[o_44, f_42:=v])
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

function  neverTriggered1(k_4_1: int): bool;
function  neverTriggered2(k_5: int): bool;
function  neverTriggered3(k_4_1: int): bool;
function  neverTriggered4(k_5: int): bool;
function  neverTriggered5(k_4_1: int): bool;
function  neverTriggered6(k_5: int): bool;
function  neverTriggered7(k_4_1: int): bool;
function  neverTriggered8(k_5: int): bool;
function  neverTriggered9(i_1: int): bool;
function  neverTriggered10(i_3: int): bool;
function  neverTriggered11(i_5: int): bool;
function  neverTriggered12(i_7_1: int): bool;
function  neverTriggered13(i_9_1: int): bool;
function  neverTriggered14(i_11_1: int): bool;
function  neverTriggered15(i_18_1: int): bool;
function  neverTriggered16(i_19: int): bool;
function  neverTriggered17(i_20_1: int): bool;
function  neverTriggered18(i_1: int): bool;
function  neverTriggered19(i_3: int): bool;
function  neverTriggered20(i_5: int): bool;
function  neverTriggered21(i_7_1: int): bool;
function  neverTriggered22(i_9_1: int): bool;
function  neverTriggered23(i_11_1: int): bool;
function  neverTriggered24(i_18_1: int): bool;
function  neverTriggered25(i_19: int): bool;
function  neverTriggered26(i_20_1: int): bool;
function  neverTriggered27(i_27: int): bool;
function  neverTriggered28(i_28: int): bool;
function  neverTriggered29(i_29_1: int): bool;
function  neverTriggered30(i_30_2: int): bool;
function  neverTriggered31(i_31_1: int): bool;
function  neverTriggered32(i_32_2: int): bool;
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
function  invRecv23(recv: Ref): int;
function  invRecv24(recv: Ref): int;
function  invRecv25(recv: Ref): int;
function  invRecv26(recv: Ref): int;
function  invRecv27(recv: Ref): int;
function  invRecv28(recv: Ref): int;
function  invRecv29(recv: Ref): int;
function  invRecv30(recv: Ref): int;
function  invRecv31(recv: Ref): int;
function  invRecv32(recv: Ref): int;
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
function  qpRange23(recv: Ref): bool;
function  qpRange24(recv: Ref): bool;
function  qpRange25(recv: Ref): bool;
function  qpRange26(recv: Ref): bool;
function  qpRange27(recv: Ref): bool;
function  qpRange28(recv: Ref): bool;
function  qpRange29(recv: Ref): bool;
function  qpRange30(recv: Ref): bool;
function  qpRange31(recv: Ref): bool;
function  qpRange32(recv: Ref): bool;

// ==================================================
// Preamble of Function and predicate module.
// ==================================================

// Function heights (higher height means its body is available earlier):
// - height 5: count_list
// - height 4: sum_list
// - height 3: sum_array
// - height 2: sum_square
// - height 1: count_array
// - height 0: count_square
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

const unique Ref__Integer_value: Field NormalField int;
axiom !IsPredicateField(Ref__Integer_value);
axiom !IsWandField(Ref__Integer_value);

// ==================================================
// Translation of function sum_list
// ==================================================

// Uninterpreted function definitions
function  sum_list(Heap: HeapType, i: int, hi: int, ar: (Seq int)): int;
function  sum_list'(Heap: HeapType, i: int, hi: int, ar: (Seq int)): int;
axiom (forall Heap: HeapType, i: int, hi: int, ar: (Seq int) ::
  { sum_list(Heap, i, hi, ar) }
  sum_list(Heap, i, hi, ar) == sum_list'(Heap, i, hi, ar) && dummyFunction(sum_list#triggerStateless(i, hi, ar))
);
axiom (forall Heap: HeapType, i: int, hi: int, ar: (Seq int) ::
  { sum_list'(Heap, i, hi, ar) }
  dummyFunction(sum_list#triggerStateless(i, hi, ar))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, i: int, hi: int, ar: (Seq int) ::
  { state(Heap, Mask), sum_list(Heap, i, hi, ar) }
  state(Heap, Mask) && AssumeFunctionsAbove < 4 ==> (0 <= i && i <= hi) && hi <= Seq#Length(ar) ==> sum_list(Heap, i, hi, ar) == (if i < hi then Seq#Index(ar, i) + sum_list'(Heap, i + 1, hi, ar) else 0)
);

// Framing axioms
function  sum_list#frame(frame: FrameType, i: int, hi: int, ar: (Seq int)): int;
axiom (forall Heap: HeapType, Mask: MaskType, i: int, hi: int, ar: (Seq int) ::
  { state(Heap, Mask), sum_list'(Heap, i, hi, ar) }
  state(Heap, Mask) ==> sum_list'(Heap, i, hi, ar) == sum_list#frame(EmptyFrame, i, hi, ar)
);

// Trigger function (controlling recursive postconditions)
function  sum_list#trigger(frame: FrameType, i: int, hi: int, ar: (Seq int)): bool;

// State-independent trigger function
function  sum_list#triggerStateless(i: int, hi: int, ar: (Seq int)): int;

// Check contract well-formedness and postcondition
procedure sum_list#definedness(i: int, hi: int, ar: (Seq int)) returns (Result: int)
  modifies Heap, Mask;
{
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume AssumeFunctionsAbove == 4;
  
  // -- Inhaling precondition (with checking)
    assume 0 <= i;
    assume i <= hi;
    assume state(Heap, Mask);
    assume hi <= Seq#Length(ar);
    assume state(Heap, Mask);
  
  // -- Check definedness of function body
    
    // -- Check definedness of (i < hi ? ar[i] + sum_list(i + 1, hi, ar) : 0)
      if (i < hi) {
        assert {:msg "  Function might not be well-formed. Index ar[i] into ar might be negative. (test_vector_add_c.vpr@6.1--11.2) [47342]"}
          i >= 0;
        assert {:msg "  Function might not be well-formed. Index ar[i] into ar might exceed sequence length. (test_vector_add_c.vpr@6.1--11.2) [47343]"}
          i < Seq#Length(ar);
        if (*) {
          // Exhale precondition of function application
          ExhaleWellDef0Mask := Mask;
          ExhaleWellDef0Heap := Heap;
          assert {:msg "  Precondition of function sum_list might not hold. Assertion 0 <= i + 1 might not hold. (test_vector_add_c.vpr@10.21--10.44) [47344]"}
            0 <= i + 1;
          assert {:msg "  Precondition of function sum_list might not hold. Assertion i + 1 <= hi might not hold. (test_vector_add_c.vpr@10.21--10.44) [47345]"}
            i + 1 <= hi;
          assert {:msg "  Precondition of function sum_list might not hold. Assertion hi <= |ar| might not hold. (test_vector_add_c.vpr@10.21--10.44) [47346]"}
            hi <= Seq#Length(ar);
          // Stop execution
          assume false;
        } else {
          // Enable postcondition for recursive call
          assume sum_list#trigger(EmptyFrame, i + 1, hi, ar);
        }
      }
  
  // -- Translate function body
    Result := (if i < hi then Seq#Index(ar, i) + sum_list(Heap, i + 1, hi, ar) else 0);
}

// ==================================================
// Translation of function sum_array
// ==================================================

// Uninterpreted function definitions
function  sum_array(Heap: HeapType, i: int, lo: int, hi: int, ar: (Seq Ref)): int;
function  sum_array'(Heap: HeapType, i: int, lo: int, hi: int, ar: (Seq Ref)): int;
axiom (forall Heap: HeapType, i: int, lo: int, hi: int, ar: (Seq Ref) ::
  { sum_array(Heap, i, lo, hi, ar) }
  sum_array(Heap, i, lo, hi, ar) == sum_array'(Heap, i, lo, hi, ar) && dummyFunction(sum_array#triggerStateless(i, lo, hi, ar))
);
axiom (forall Heap: HeapType, i: int, lo: int, hi: int, ar: (Seq Ref) ::
  { sum_array'(Heap, i, lo, hi, ar) }
  dummyFunction(sum_array#triggerStateless(i, lo, hi, ar))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, i: int, lo: int, hi: int, ar: (Seq Ref) ::
  { state(Heap, Mask), sum_array(Heap, i, lo, hi, ar) }
  state(Heap, Mask) && AssumeFunctionsAbove < 3 ==> ((0 <= lo && (lo <= i && i <= hi)) && hi <= Seq#Length(ar)) && (forall ix_20: int, jx_20: int ::
    { Seq#Index(ar, ix_20), Seq#Index(ar, jx_20) }
    ix_20 >= 0 && (ix_20 < Seq#Length(ar) && (jx_20 >= 0 && (jx_20 < Seq#Length(ar) && ix_20 != jx_20))) ==> Seq#Index(ar, ix_20) != Seq#Index(ar, jx_20)
  ) ==> sum_array(Heap, i, lo, hi, ar) == (if i < hi then Heap[Seq#Index(ar, i), Ref__Integer_value] + sum_array'(Heap, i + 1, lo, hi, ar) else 0)
);

// Framing axioms
function  sum_array#frame(frame: FrameType, i: int, lo: int, hi: int, ar: (Seq Ref)): int;
axiom (forall Heap: HeapType, Mask: MaskType, i: int, lo: int, hi: int, ar: (Seq Ref) ::
  { state(Heap, Mask), sum_array'(Heap, i, lo, hi, ar) }
  state(Heap, Mask) ==> sum_array'(Heap, i, lo, hi, ar) == sum_array#frame(FrameFragment(sum_array#condqp1(Heap, i, lo, hi, ar)), i, lo, hi, ar)
);
// ==================================================
// Function used for framing of quantified permission (forall k: Int :: { ar[k] } lo <= k && k < hi ==> acc(ar[k].Ref__Integer_value, wildcard)) in function sum_array
// ==================================================

function  sum_array#condqp1(Heap: HeapType, i_1_1_1: int, lo_1_1: int, hi_1_1: int, ar_1_1: (Seq Ref)): int;
function  sk_sum_array#condqp1(fnAppH1: int, fnAppH2: int): int;
axiom (forall Heap2Heap: HeapType, Heap1Heap: HeapType, i: int, lo: int, hi: int, ar: (Seq Ref) ::
  { sum_array#condqp1(Heap2Heap, i, lo, hi, ar), sum_array#condqp1(Heap1Heap, i, lo, hi, ar), succHeapTrans(Heap2Heap, Heap1Heap) }
  (lo <= sk_sum_array#condqp1(sum_array#condqp1(Heap2Heap, i, lo, hi, ar), sum_array#condqp1(Heap1Heap, i, lo, hi, ar)) && sk_sum_array#condqp1(sum_array#condqp1(Heap2Heap, i, lo, hi, ar), sum_array#condqp1(Heap1Heap, i, lo, hi, ar)) < hi <==> lo <= sk_sum_array#condqp1(sum_array#condqp1(Heap2Heap, i, lo, hi, ar), sum_array#condqp1(Heap1Heap, i, lo, hi, ar)) && sk_sum_array#condqp1(sum_array#condqp1(Heap2Heap, i, lo, hi, ar), sum_array#condqp1(Heap1Heap, i, lo, hi, ar)) < hi) && (lo <= sk_sum_array#condqp1(sum_array#condqp1(Heap2Heap, i, lo, hi, ar), sum_array#condqp1(Heap1Heap, i, lo, hi, ar)) && sk_sum_array#condqp1(sum_array#condqp1(Heap2Heap, i, lo, hi, ar), sum_array#condqp1(Heap1Heap, i, lo, hi, ar)) < hi ==> Heap2Heap[Seq#Index(ar, sk_sum_array#condqp1(sum_array#condqp1(Heap2Heap, i, lo, hi, ar), sum_array#condqp1(Heap1Heap, i, lo, hi, ar))), Ref__Integer_value] == Heap1Heap[Seq#Index(ar, sk_sum_array#condqp1(sum_array#condqp1(Heap2Heap, i, lo, hi, ar), sum_array#condqp1(Heap1Heap, i, lo, hi, ar))), Ref__Integer_value]) ==> sum_array#condqp1(Heap2Heap, i, lo, hi, ar) == sum_array#condqp1(Heap1Heap, i, lo, hi, ar)
);

// Trigger function (controlling recursive postconditions)
function  sum_array#trigger(frame: FrameType, i: int, lo: int, hi: int, ar: (Seq Ref)): bool;

// State-independent trigger function
function  sum_array#triggerStateless(i: int, lo: int, hi: int, ar: (Seq Ref)): int;

// Check contract well-formedness and postcondition
procedure sum_array#definedness(i: int, lo: int, hi: int, ar: (Seq Ref)) returns (Result: int)
  modifies Heap, Mask;
{
  var ix: int;
  var jx: int;
  var k_2: int;
  var QPMask: MaskType;
  var wildcard: real where wildcard > 0.000000000;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ix_4_1: int;
  var jx_4_1: int;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume AssumeFunctionsAbove == 3;
  
  // -- Inhaling precondition (with checking)
    assume 0 <= lo;
    assume lo <= i;
    assume i <= hi;
    assume state(Heap, Mask);
    assume hi <= Seq#Length(ar);
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall ix: Int, jx: Int :: { ar[ix], ar[jx] } ix >= 0 && (ix < |ar| && (jx >= 0 && (jx < |ar| && ix != jx))) ==> ar[ix] != ar[jx])
      if (*) {
        if (ix >= 0 && (ix < Seq#Length(ar) && (jx >= 0 && (jx < Seq#Length(ar) && ix != jx)))) {
          assert {:msg "  Contract might not be well-formed. Index ar[ix] into ar might be negative. (test_vector_add_c.vpr@16.12--16.116) [47347]"}
            ix >= 0;
          assert {:msg "  Contract might not be well-formed. Index ar[ix] into ar might exceed sequence length. (test_vector_add_c.vpr@16.12--16.116) [47348]"}
            ix < Seq#Length(ar);
          assert {:msg "  Contract might not be well-formed. Index ar[jx] into ar might be negative. (test_vector_add_c.vpr@16.12--16.116) [47349]"}
            jx >= 0;
          assert {:msg "  Contract might not be well-formed. Index ar[jx] into ar might exceed sequence length. (test_vector_add_c.vpr@16.12--16.116) [47350]"}
            jx < Seq#Length(ar);
        }
        assume false;
      }
    assume (forall ix_3: int, jx_3: int ::
      { Seq#Index(ar, ix_3), Seq#Index(ar, jx_3) }
      ix_3 >= 0 && (ix_3 < Seq#Length(ar) && (jx_3 >= 0 && (jx_3 < Seq#Length(ar) && ix_3 != jx_3))) ==> Seq#Index(ar, ix_3) != Seq#Index(ar, jx_3)
    );
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall k: Int :: { ar[k] } lo <= k && k < hi ==> acc(ar[k].Ref__Integer_value, wildcard))
      if (*) {
        if (lo <= k_2 && k_2 < hi) {
          assert {:msg "  Contract might not be well-formed. Index ar[k] into ar might be negative. (test_vector_add_c.vpr@17.13--17.95) [47351]"}
            k_2 >= 0;
          assert {:msg "  Contract might not be well-formed. Index ar[k] into ar might exceed sequence length. (test_vector_add_c.vpr@17.13--17.95) [47352]"}
            k_2 < Seq#Length(ar);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource ar[k].Ref__Integer_value might not be injective. (test_vector_add_c.vpr@17.13--17.95) [47353]"}
      (forall k_4_1: int, k_4_2: int ::
      
      (((k_4_1 != k_4_2 && (lo <= k_4_1 && k_4_1 < hi)) && (lo <= k_4_2 && k_4_2 < hi)) && NoPerm < wildcard) && NoPerm < wildcard ==> Seq#Index(ar, k_4_1) != Seq#Index(ar, k_4_2)
    );
    
    // -- Define Inverse Function
      assume (forall k_4_1: int ::
        { Seq#Index(ar, k_4_1) } { Seq#Index(ar, k_4_1) }
        lo <= k_4_1 && k_4_1 < hi ==> qpRange1(Seq#Index(ar, k_4_1)) && invRecv1(Seq#Index(ar, k_4_1)) == k_4_1
      );
      assume (forall o_4: Ref ::
        { invRecv1(o_4) }
        (lo <= invRecv1(o_4) && invRecv1(o_4) < hi) && qpRange1(o_4) ==> Seq#Index(ar, invRecv1(o_4)) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall k_4_1: int ::
        { Seq#Index(ar, k_4_1) } { Seq#Index(ar, k_4_1) }
        lo <= k_4_1 && k_4_1 < hi ==> Seq#Index(ar, k_4_1) != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, Ref__Integer_value] }
        ((lo <= invRecv1(o_4) && invRecv1(o_4) < hi) && qpRange1(o_4) ==> Seq#Index(ar, invRecv1(o_4)) == o_4 && Mask[o_4, Ref__Integer_value] < QPMask[o_4, Ref__Integer_value]) && (!((lo <= invRecv1(o_4) && invRecv1(o_4) < hi) && qpRange1(o_4)) ==> QPMask[o_4, Ref__Integer_value] == Mask[o_4, Ref__Integer_value])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != Ref__Integer_value ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Check definedness of function body
    
    // -- Check definedness of (i < hi ? ar[i].Ref__Integer_value + sum_array(i + 1, lo, hi, ar) : 0)
      if (i < hi) {
        assert {:msg "  Function might not be well-formed. Index ar[i] into ar might be negative. (test_vector_add_c.vpr@13.1--20.2) [47354]"}
          i >= 0;
        assert {:msg "  Function might not be well-formed. Index ar[i] into ar might exceed sequence length. (test_vector_add_c.vpr@13.1--20.2) [47355]"}
          i < Seq#Length(ar);
        assert {:msg "  Function might not be well-formed. There might be insufficient permission to access ar[i].Ref__Integer_value (test_vector_add_c.vpr@13.1--20.2) [47356]"}
          HasDirectPerm(Mask, Seq#Index(ar, i), Ref__Integer_value);
        if (*) {
          // Exhale precondition of function application
          ExhaleWellDef0Mask := Mask;
          ExhaleWellDef0Heap := Heap;
          assert {:msg "  Precondition of function sum_array might not hold. Assertion 0 <= lo might not hold. (test_vector_add_c.vpr@19.40--19.68) [47357]"}
            0 <= lo;
          assert {:msg "  Precondition of function sum_array might not hold. Assertion lo <= i + 1 might not hold. (test_vector_add_c.vpr@19.40--19.68) [47358]"}
            lo <= i + 1;
          assert {:msg "  Precondition of function sum_array might not hold. Assertion i + 1 <= hi might not hold. (test_vector_add_c.vpr@19.40--19.68) [47359]"}
            i + 1 <= hi;
          assert {:msg "  Precondition of function sum_array might not hold. Assertion hi <= |ar| might not hold. (test_vector_add_c.vpr@19.40--19.68) [47360]"}
            hi <= Seq#Length(ar);
          if (*) {
            if (ix_4_1 >= 0 && (ix_4_1 < Seq#Length(ar) && (jx_4_1 >= 0 && (jx_4_1 < Seq#Length(ar) && ix_4_1 != jx_4_1)))) {
              assert {:msg "  Precondition of function sum_array might not hold. Assertion ar[ix] != ar[jx] might not hold. (test_vector_add_c.vpr@19.40--19.68) [47361]"}
                Seq#Index(ar, ix_4_1) != Seq#Index(ar, jx_4_1);
            }
            assume false;
          }
          assume (forall ix_5_1: int, jx_5_1: int ::
            { Seq#Index(ar, ix_5_1), Seq#Index(ar, jx_5_1) }
            ix_5_1 >= 0 && (ix_5_1 < Seq#Length(ar) && (jx_5_1 >= 0 && (jx_5_1 < Seq#Length(ar) && ix_5_1 != jx_5_1))) ==> Seq#Index(ar, ix_5_1) != Seq#Index(ar, jx_5_1)
          );
          havoc QPMask;
          // wild card assumptions
          havoc wildcard;
          assert {:msg "  Precondition of function sum_array might not hold. There might be insufficient permission to access ar[k].Ref__Integer_value (test_vector_add_c.vpr@19.40--19.68) [47362]"}
            (forall k_5: int ::
            
            lo <= k_5 && k_5 < hi ==> Mask[Seq#Index(ar, k_5), Ref__Integer_value] > NoPerm
          );
          assume (forall k_5: int ::
            
            lo <= k_5 && k_5 < hi ==> wildcard < Mask[Seq#Index(ar, k_5), Ref__Integer_value]
          );
          
          // -- check that the permission amount is positive
            assert {:msg "  Precondition of function sum_array might not hold. Fraction wildcard might be negative. (test_vector_add_c.vpr@19.40--19.68) [47363]"}
              (forall k_5: int ::
              { Seq#Index(ar, k_5) } { Seq#Index(ar, k_5) }
              (lo <= k_5 && k_5 < hi) && dummyFunction(Heap[Seq#Index(ar, k_5), Ref__Integer_value]) ==> wildcard >= NoPerm
            );
          
          // -- check if receiver ar[k] is injective
            assert {:msg "  Precondition of function sum_array might not hold. Quantified resource ar[k].Ref__Integer_value might not be injective. (test_vector_add_c.vpr@19.40--19.68) [47364]"}
              (forall k_5: int, k_5_1: int ::
              { neverTriggered2(k_5), neverTriggered2(k_5_1) }
              (((k_5 != k_5_1 && (lo <= k_5 && k_5 < hi)) && (lo <= k_5_1 && k_5_1 < hi)) && NoPerm < wildcard) && NoPerm < wildcard ==> Seq#Index(ar, k_5) != Seq#Index(ar, k_5_1)
            );
          
          // -- check if sufficient permission is held
            assert {:msg "  Precondition of function sum_array might not hold. There might be insufficient permission to access ar[k].Ref__Integer_value (test_vector_add_c.vpr@19.40--19.68) [47365]"}
              (forall k_5: int ::
              { Seq#Index(ar, k_5) } { Seq#Index(ar, k_5) }
              lo <= k_5 && k_5 < hi ==> wildcard > NoPerm ==> Mask[Seq#Index(ar, k_5), Ref__Integer_value] > NoPerm
            );
          
          // -- assumptions for inverse of receiver ar[k]
            assume (forall k_5: int ::
              { Seq#Index(ar, k_5) } { Seq#Index(ar, k_5) }
              (lo <= k_5 && k_5 < hi) && NoPerm < wildcard ==> qpRange2(Seq#Index(ar, k_5)) && invRecv2(Seq#Index(ar, k_5)) == k_5
            );
            assume (forall o_4: Ref ::
              { invRecv2(o_4) }
              (lo <= invRecv2(o_4) && invRecv2(o_4) < hi) && (NoPerm < wildcard && qpRange2(o_4)) ==> Seq#Index(ar, invRecv2(o_4)) == o_4
            );
          // Finish exhale
          havoc ExhaleHeap;
          assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
          Heap := ExhaleHeap;
          // Stop execution
          assume false;
        } else {
          // Enable postcondition for recursive call
          assume sum_array#trigger(FrameFragment(sum_array#condqp1(Heap, i + 1, lo, hi, ar)), i + 1, lo, hi, ar);
        }
      }
  
  // -- Translate function body
    Result := (if i < hi then Heap[Seq#Index(ar, i), Ref__Integer_value] + sum_array(Heap, i + 1, lo, hi, ar) else 0);
}

// ==================================================
// Translation of function sum_square
// ==================================================

// Uninterpreted function definitions
function  sum_square(Heap: HeapType, i: int, lo: int, hi: int, step: int, vmin: int, vmax: int, ar: (Seq Ref)): int;
function  sum_square'(Heap: HeapType, i: int, lo: int, hi: int, step: int, vmin: int, vmax: int, ar: (Seq Ref)): int;
axiom (forall Heap: HeapType, i: int, lo: int, hi: int, step: int, vmin: int, vmax: int, ar: (Seq Ref) ::
  { sum_square(Heap, i, lo, hi, step, vmin, vmax, ar) }
  sum_square(Heap, i, lo, hi, step, vmin, vmax, ar) == sum_square'(Heap, i, lo, hi, step, vmin, vmax, ar) && dummyFunction(sum_square#triggerStateless(i, lo, hi, step, vmin, vmax, ar))
);
axiom (forall Heap: HeapType, i: int, lo: int, hi: int, step: int, vmin: int, vmax: int, ar: (Seq Ref) ::
  { sum_square'(Heap, i, lo, hi, step, vmin, vmax, ar) }
  dummyFunction(sum_square#triggerStateless(i, lo, hi, step, vmin, vmax, ar))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, i: int, lo: int, hi: int, step: int, vmin: int, vmax: int, ar: (Seq Ref) ::
  { state(Heap, Mask), sum_square(Heap, i, lo, hi, step, vmin, vmax, ar) }
  state(Heap, Mask) && AssumeFunctionsAbove < 2 ==> (((0 <= lo && (lo <= hi && (hi <= step && step > 0))) && (0 <= vmin && (vmin <= i && i <= vmax))) && vmax <= Seq#Length(ar)) && (forall ix_20: int, jx_20: int ::
    { Seq#Index(ar, ix_20), Seq#Index(ar, jx_20) }
    ix_20 >= 0 && (ix_20 < Seq#Length(ar) && (jx_20 >= 0 && (jx_20 < Seq#Length(ar) && ix_20 != jx_20))) ==> Seq#Index(ar, ix_20) != Seq#Index(ar, jx_20)
  ) ==> sum_square(Heap, i, lo, hi, step, vmin, vmax, ar) == (if i < vmax then (if lo <= i mod step && i mod step < hi then Heap[Seq#Index(ar, i), Ref__Integer_value] else 0) + sum_square'(Heap, i + 1, lo, hi, step, vmin, vmax, ar) else 0)
);

// Framing axioms
function  sum_square#frame(frame: FrameType, i: int, lo: int, hi: int, step: int, vmin: int, vmax: int, ar: (Seq Ref)): int;
axiom (forall Heap: HeapType, Mask: MaskType, i: int, lo: int, hi: int, step: int, vmin: int, vmax: int, ar: (Seq Ref) ::
  { state(Heap, Mask), sum_square'(Heap, i, lo, hi, step, vmin, vmax, ar) }
  state(Heap, Mask) ==> sum_square'(Heap, i, lo, hi, step, vmin, vmax, ar) == sum_square#frame(FrameFragment(sum_square#condqp2(Heap, i, lo, hi, step, vmin, vmax, ar)), i, lo, hi, step, vmin, vmax, ar)
);
// ==================================================
// Function used for framing of quantified permission (forall k: Int :: { ar[k] } min <= k && (k < max && (lo <= k % step && k % step < hi)) ==> acc(ar[k].Ref__Integer_value, wildcard)) in function sum_square
// ==================================================

function  sum_square#condqp2(Heap: HeapType, i_1_1_1: int, lo_1_1: int, hi_1_1: int, step_1_1: int, vmin_1_1: int, vmax_1_1: int, ar_1_1: (Seq Ref)): int;
function  sk_sum_square#condqp2(fnAppH1: int, fnAppH2: int): int;
axiom (forall Heap2Heap: HeapType, Heap1Heap: HeapType, i: int, lo: int, hi: int, step: int, vmin: int, vmax: int, ar: (Seq Ref) ::
  { sum_square#condqp2(Heap2Heap, i, lo, hi, step, vmin, vmax, ar), sum_square#condqp2(Heap1Heap, i, lo, hi, step, vmin, vmax, ar), succHeapTrans(Heap2Heap, Heap1Heap) }
  (vmin <= sk_sum_square#condqp2(sum_square#condqp2(Heap2Heap, i, lo, hi, step, vmin, vmax, ar), sum_square#condqp2(Heap1Heap, i, lo, hi, step, vmin, vmax, ar)) && (sk_sum_square#condqp2(sum_square#condqp2(Heap2Heap, i, lo, hi, step, vmin, vmax, ar), sum_square#condqp2(Heap1Heap, i, lo, hi, step, vmin, vmax, ar)) < vmax && (lo <= sk_sum_square#condqp2(sum_square#condqp2(Heap2Heap, i, lo, hi, step, vmin, vmax, ar), sum_square#condqp2(Heap1Heap, i, lo, hi, step, vmin, vmax, ar)) mod step && sk_sum_square#condqp2(sum_square#condqp2(Heap2Heap, i, lo, hi, step, vmin, vmax, ar), sum_square#condqp2(Heap1Heap, i, lo, hi, step, vmin, vmax, ar)) mod step < hi)) <==> vmin <= sk_sum_square#condqp2(sum_square#condqp2(Heap2Heap, i, lo, hi, step, vmin, vmax, ar), sum_square#condqp2(Heap1Heap, i, lo, hi, step, vmin, vmax, ar)) && (sk_sum_square#condqp2(sum_square#condqp2(Heap2Heap, i, lo, hi, step, vmin, vmax, ar), sum_square#condqp2(Heap1Heap, i, lo, hi, step, vmin, vmax, ar)) < vmax && (lo <= sk_sum_square#condqp2(sum_square#condqp2(Heap2Heap, i, lo, hi, step, vmin, vmax, ar), sum_square#condqp2(Heap1Heap, i, lo, hi, step, vmin, vmax, ar)) mod step && sk_sum_square#condqp2(sum_square#condqp2(Heap2Heap, i, lo, hi, step, vmin, vmax, ar), sum_square#condqp2(Heap1Heap, i, lo, hi, step, vmin, vmax, ar)) mod step < hi))) && (vmin <= sk_sum_square#condqp2(sum_square#condqp2(Heap2Heap, i, lo, hi, step, vmin, vmax, ar), sum_square#condqp2(Heap1Heap, i, lo, hi, step, vmin, vmax, ar)) && (sk_sum_square#condqp2(sum_square#condqp2(Heap2Heap, i, lo, hi, step, vmin, vmax, ar), sum_square#condqp2(Heap1Heap, i, lo, hi, step, vmin, vmax, ar)) < vmax && (lo <= sk_sum_square#condqp2(sum_square#condqp2(Heap2Heap, i, lo, hi, step, vmin, vmax, ar), sum_square#condqp2(Heap1Heap, i, lo, hi, step, vmin, vmax, ar)) mod step && sk_sum_square#condqp2(sum_square#condqp2(Heap2Heap, i, lo, hi, step, vmin, vmax, ar), sum_square#condqp2(Heap1Heap, i, lo, hi, step, vmin, vmax, ar)) mod step < hi)) ==> Heap2Heap[Seq#Index(ar, sk_sum_square#condqp2(sum_square#condqp2(Heap2Heap, i, lo, hi, step, vmin, vmax, ar), sum_square#condqp2(Heap1Heap, i, lo, hi, step, vmin, vmax, ar))), Ref__Integer_value] == Heap1Heap[Seq#Index(ar, sk_sum_square#condqp2(sum_square#condqp2(Heap2Heap, i, lo, hi, step, vmin, vmax, ar), sum_square#condqp2(Heap1Heap, i, lo, hi, step, vmin, vmax, ar))), Ref__Integer_value]) ==> sum_square#condqp2(Heap2Heap, i, lo, hi, step, vmin, vmax, ar) == sum_square#condqp2(Heap1Heap, i, lo, hi, step, vmin, vmax, ar)
);

// Trigger function (controlling recursive postconditions)
function  sum_square#trigger(frame: FrameType, i: int, lo: int, hi: int, step: int, vmin: int, vmax: int, ar: (Seq Ref)): bool;

// State-independent trigger function
function  sum_square#triggerStateless(i: int, lo: int, hi: int, step: int, vmin: int, vmax: int, ar: (Seq Ref)): int;

// Check contract well-formedness and postcondition
procedure sum_square#definedness(i: int, lo: int, hi: int, step: int, vmin: int, vmax: int, ar: (Seq Ref)) returns (Result: int)
  modifies Heap, Mask;
{
  var ix_2: int;
  var jx_2: int;
  var k_7: int;
  var QPMask: MaskType;
  var wildcard: real where wildcard > 0.000000000;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ix_4_1: int;
  var jx_4_1: int;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume AssumeFunctionsAbove == 2;
  
  // -- Inhaling precondition (with checking)
    assume 0 <= lo;
    assume lo <= hi;
    assume hi <= step;
    assume step > 0;
    assume state(Heap, Mask);
    assume 0 <= vmin;
    assume vmin <= i;
    assume i <= vmax;
    assume state(Heap, Mask);
    assume vmax <= Seq#Length(ar);
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall ix: Int, jx: Int :: { ar[ix], ar[jx] } ix >= 0 && (ix < |ar| && (jx >= 0 && (jx < |ar| && ix != jx))) ==> ar[ix] != ar[jx])
      if (*) {
        if (ix_2 >= 0 && (ix_2 < Seq#Length(ar) && (jx_2 >= 0 && (jx_2 < Seq#Length(ar) && ix_2 != jx_2)))) {
          assert {:msg "  Contract might not be well-formed. Index ar[ix] into ar might be negative. (test_vector_add_c.vpr@26.12--26.116) [47366]"}
            ix_2 >= 0;
          assert {:msg "  Contract might not be well-formed. Index ar[ix] into ar might exceed sequence length. (test_vector_add_c.vpr@26.12--26.116) [47367]"}
            ix_2 < Seq#Length(ar);
          assert {:msg "  Contract might not be well-formed. Index ar[jx] into ar might be negative. (test_vector_add_c.vpr@26.12--26.116) [47368]"}
            jx_2 >= 0;
          assert {:msg "  Contract might not be well-formed. Index ar[jx] into ar might exceed sequence length. (test_vector_add_c.vpr@26.12--26.116) [47369]"}
            jx_2 < Seq#Length(ar);
        }
        assume false;
      }
    assume (forall ix_3: int, jx_3: int ::
      { Seq#Index(ar, ix_3), Seq#Index(ar, jx_3) }
      ix_3 >= 0 && (ix_3 < Seq#Length(ar) && (jx_3 >= 0 && (jx_3 < Seq#Length(ar) && ix_3 != jx_3))) ==> Seq#Index(ar, ix_3) != Seq#Index(ar, jx_3)
    );
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall k: Int :: { ar[k] } min <= k && (k < max && (lo <= k % step && k % step < hi)) ==> acc(ar[k].Ref__Integer_value, wildcard))
      if (*) {
        if (vmin <= k_7) {
          if (k_7 < vmax) {
            assert {:msg "  Contract might not be well-formed. Divisor step might be zero. (test_vector_add_c.vpr@27.13--27.136) [47370]"}
              step != 0;
            if (lo <= k_7 mod step) {
              assert {:msg "  Contract might not be well-formed. Divisor step might be zero. (test_vector_add_c.vpr@27.13--27.136) [47371]"}
                step != 0;
            }
          }
        }
        if (vmin <= k_7 && (k_7 < vmax && (lo <= k_7 mod step && k_7 mod step < hi))) {
          assert {:msg "  Contract might not be well-formed. Index ar[k] into ar might be negative. (test_vector_add_c.vpr@27.13--27.136) [47372]"}
            k_7 >= 0;
          assert {:msg "  Contract might not be well-formed. Index ar[k] into ar might exceed sequence length. (test_vector_add_c.vpr@27.13--27.136) [47373]"}
            k_7 < Seq#Length(ar);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource ar[k].Ref__Integer_value might not be injective. (test_vector_add_c.vpr@27.13--27.136) [47374]"}
      (forall k_4_1: int, k_4_2: int ::
      
      (((k_4_1 != k_4_2 && (vmin <= k_4_1 && (k_4_1 < vmax && (lo <= k_4_1 mod step && k_4_1 mod step < hi)))) && (vmin <= k_4_2 && (k_4_2 < vmax && (lo <= k_4_2 mod step && k_4_2 mod step < hi)))) && NoPerm < wildcard) && NoPerm < wildcard ==> Seq#Index(ar, k_4_1) != Seq#Index(ar, k_4_2)
    );
    
    // -- Define Inverse Function
      assume (forall k_4_1: int ::
        { Seq#Index(ar, k_4_1) } { Seq#Index(ar, k_4_1) }
        vmin <= k_4_1 && (k_4_1 < vmax && (lo <= k_4_1 mod step && k_4_1 mod step < hi)) ==> qpRange3(Seq#Index(ar, k_4_1)) && invRecv3(Seq#Index(ar, k_4_1)) == k_4_1
      );
      assume (forall o_4: Ref ::
        { invRecv3(o_4) }
        (vmin <= invRecv3(o_4) && (invRecv3(o_4) < vmax && (lo <= invRecv3(o_4) mod step && invRecv3(o_4) mod step < hi))) && qpRange3(o_4) ==> Seq#Index(ar, invRecv3(o_4)) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall k_4_1: int ::
        { Seq#Index(ar, k_4_1) } { Seq#Index(ar, k_4_1) }
        vmin <= k_4_1 && (k_4_1 < vmax && (lo <= k_4_1 mod step && k_4_1 mod step < hi)) ==> Seq#Index(ar, k_4_1) != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, Ref__Integer_value] }
        ((vmin <= invRecv3(o_4) && (invRecv3(o_4) < vmax && (lo <= invRecv3(o_4) mod step && invRecv3(o_4) mod step < hi))) && qpRange3(o_4) ==> Seq#Index(ar, invRecv3(o_4)) == o_4 && Mask[o_4, Ref__Integer_value] < QPMask[o_4, Ref__Integer_value]) && (!((vmin <= invRecv3(o_4) && (invRecv3(o_4) < vmax && (lo <= invRecv3(o_4) mod step && invRecv3(o_4) mod step < hi))) && qpRange3(o_4)) ==> QPMask[o_4, Ref__Integer_value] == Mask[o_4, Ref__Integer_value])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != Ref__Integer_value ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Check definedness of function body
    
    // -- Check definedness of (i < max ? (lo <= i % step && i % step < hi ? ar[i].Ref__Integer_value : 0) + sum_square(i + 1, lo, hi, step, min, max, ar) : 0)
      if (i < vmax) {
        assert {:msg "  Function might not be well-formed. Divisor step might be zero. (test_vector_add_c.vpr@22.1--30.2) [47375]"}
          step != 0;
        if (lo <= i mod step) {
          assert {:msg "  Function might not be well-formed. Divisor step might be zero. (test_vector_add_c.vpr@22.1--30.2) [47376]"}
            step != 0;
        }
        if (lo <= i mod step && i mod step < hi) {
          assert {:msg "  Function might not be well-formed. Index ar[i] into ar might be negative. (test_vector_add_c.vpr@22.1--30.2) [47377]"}
            i >= 0;
          assert {:msg "  Function might not be well-formed. Index ar[i] into ar might exceed sequence length. (test_vector_add_c.vpr@22.1--30.2) [47378]"}
            i < Seq#Length(ar);
          assert {:msg "  Function might not be well-formed. There might be insufficient permission to access ar[i].Ref__Integer_value (test_vector_add_c.vpr@22.1--30.2) [47379]"}
            HasDirectPerm(Mask, Seq#Index(ar, i), Ref__Integer_value);
        }
        if (*) {
          // Exhale precondition of function application
          ExhaleWellDef0Mask := Mask;
          ExhaleWellDef0Heap := Heap;
          assert {:msg "  Precondition of function sum_square might not hold. Assertion 0 <= lo might not hold. (test_vector_add_c.vpr@29.85--29.130) [47380]"}
            0 <= lo;
          assert {:msg "  Precondition of function sum_square might not hold. Assertion lo <= hi might not hold. (test_vector_add_c.vpr@29.85--29.130) [47381]"}
            lo <= hi;
          assert {:msg "  Precondition of function sum_square might not hold. Assertion hi <= step might not hold. (test_vector_add_c.vpr@29.85--29.130) [47382]"}
            hi <= step;
          assert {:msg "  Precondition of function sum_square might not hold. Assertion step > 0 might not hold. (test_vector_add_c.vpr@29.85--29.130) [47383]"}
            step > 0;
          assert {:msg "  Precondition of function sum_square might not hold. Assertion 0 <= min might not hold. (test_vector_add_c.vpr@29.85--29.130) [47384]"}
            0 <= vmin;
          assert {:msg "  Precondition of function sum_square might not hold. Assertion min <= i + 1 might not hold. (test_vector_add_c.vpr@29.85--29.130) [47385]"}
            vmin <= i + 1;
          assert {:msg "  Precondition of function sum_square might not hold. Assertion i + 1 <= max might not hold. (test_vector_add_c.vpr@29.85--29.130) [47386]"}
            i + 1 <= vmax;
          assert {:msg "  Precondition of function sum_square might not hold. Assertion max <= |ar| might not hold. (test_vector_add_c.vpr@29.85--29.130) [47387]"}
            vmax <= Seq#Length(ar);
          if (*) {
            if (ix_4_1 >= 0 && (ix_4_1 < Seq#Length(ar) && (jx_4_1 >= 0 && (jx_4_1 < Seq#Length(ar) && ix_4_1 != jx_4_1)))) {
              assert {:msg "  Precondition of function sum_square might not hold. Assertion ar[ix] != ar[jx] might not hold. (test_vector_add_c.vpr@29.85--29.130) [47388]"}
                Seq#Index(ar, ix_4_1) != Seq#Index(ar, jx_4_1);
            }
            assume false;
          }
          assume (forall ix_5_1: int, jx_5_1: int ::
            { Seq#Index(ar, ix_5_1), Seq#Index(ar, jx_5_1) }
            ix_5_1 >= 0 && (ix_5_1 < Seq#Length(ar) && (jx_5_1 >= 0 && (jx_5_1 < Seq#Length(ar) && ix_5_1 != jx_5_1))) ==> Seq#Index(ar, ix_5_1) != Seq#Index(ar, jx_5_1)
          );
          havoc QPMask;
          // wild card assumptions
          havoc wildcard;
          assert {:msg "  Precondition of function sum_square might not hold. There might be insufficient permission to access ar[k].Ref__Integer_value (test_vector_add_c.vpr@29.85--29.130) [47389]"}
            (forall k_5: int ::
            
            vmin <= k_5 && (k_5 < vmax && (lo <= k_5 mod step && k_5 mod step < hi)) ==> Mask[Seq#Index(ar, k_5), Ref__Integer_value] > NoPerm
          );
          assume (forall k_5: int ::
            
            vmin <= k_5 && (k_5 < vmax && (lo <= k_5 mod step && k_5 mod step < hi)) ==> wildcard < Mask[Seq#Index(ar, k_5), Ref__Integer_value]
          );
          
          // -- check that the permission amount is positive
            assert {:msg "  Precondition of function sum_square might not hold. Fraction wildcard might be negative. (test_vector_add_c.vpr@29.85--29.130) [47390]"}
              (forall k_5: int ::
              { Seq#Index(ar, k_5) } { Seq#Index(ar, k_5) }
              (vmin <= k_5 && (k_5 < vmax && (lo <= k_5 mod step && k_5 mod step < hi))) && dummyFunction(Heap[Seq#Index(ar, k_5), Ref__Integer_value]) ==> wildcard >= NoPerm
            );
          
          // -- check if receiver ar[k] is injective
            assert {:msg "  Precondition of function sum_square might not hold. Quantified resource ar[k].Ref__Integer_value might not be injective. (test_vector_add_c.vpr@29.85--29.130) [47391]"}
              (forall k_5: int, k_5_1: int ::
              { neverTriggered4(k_5), neverTriggered4(k_5_1) }
              (((k_5 != k_5_1 && (vmin <= k_5 && (k_5 < vmax && (lo <= k_5 mod step && k_5 mod step < hi)))) && (vmin <= k_5_1 && (k_5_1 < vmax && (lo <= k_5_1 mod step && k_5_1 mod step < hi)))) && NoPerm < wildcard) && NoPerm < wildcard ==> Seq#Index(ar, k_5) != Seq#Index(ar, k_5_1)
            );
          
          // -- check if sufficient permission is held
            assert {:msg "  Precondition of function sum_square might not hold. There might be insufficient permission to access ar[k].Ref__Integer_value (test_vector_add_c.vpr@29.85--29.130) [47392]"}
              (forall k_5: int ::
              { Seq#Index(ar, k_5) } { Seq#Index(ar, k_5) }
              vmin <= k_5 && (k_5 < vmax && (lo <= k_5 mod step && k_5 mod step < hi)) ==> wildcard > NoPerm ==> Mask[Seq#Index(ar, k_5), Ref__Integer_value] > NoPerm
            );
          
          // -- assumptions for inverse of receiver ar[k]
            assume (forall k_5: int ::
              { Seq#Index(ar, k_5) } { Seq#Index(ar, k_5) }
              (vmin <= k_5 && (k_5 < vmax && (lo <= k_5 mod step && k_5 mod step < hi))) && NoPerm < wildcard ==> qpRange4(Seq#Index(ar, k_5)) && invRecv4(Seq#Index(ar, k_5)) == k_5
            );
            assume (forall o_4: Ref ::
              { invRecv4(o_4) }
              (vmin <= invRecv4(o_4) && (invRecv4(o_4) < vmax && (lo <= invRecv4(o_4) mod step && invRecv4(o_4) mod step < hi))) && (NoPerm < wildcard && qpRange4(o_4)) ==> Seq#Index(ar, invRecv4(o_4)) == o_4
            );
          // Finish exhale
          havoc ExhaleHeap;
          assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
          Heap := ExhaleHeap;
          // Stop execution
          assume false;
        } else {
          // Enable postcondition for recursive call
          assume sum_square#trigger(FrameFragment(sum_square#condqp2(Heap, i + 1, lo, hi, step, vmin, vmax, ar)), i + 1, lo, hi, step, vmin, vmax, ar);
        }
      }
  
  // -- Translate function body
    Result := (if i < vmax then (if lo <= i mod step && i mod step < hi then Heap[Seq#Index(ar, i), Ref__Integer_value] else 0) + sum_square(Heap, i + 1, lo, hi, step, vmin, vmax, ar) else 0);
}

// ==================================================
// Translation of function count_square
// ==================================================

// Uninterpreted function definitions
function  count_square(Heap: HeapType, i: int, lo: int, hi: int, step: int, vmin: int, vmax: int, ar: (Seq Ref), v_2: int): int;
function  count_square'(Heap: HeapType, i: int, lo: int, hi: int, step: int, vmin: int, vmax: int, ar: (Seq Ref), v_2: int): int;
axiom (forall Heap: HeapType, i: int, lo: int, hi: int, step: int, vmin: int, vmax: int, ar: (Seq Ref), v_2: int ::
  { count_square(Heap, i, lo, hi, step, vmin, vmax, ar, v_2) }
  count_square(Heap, i, lo, hi, step, vmin, vmax, ar, v_2) == count_square'(Heap, i, lo, hi, step, vmin, vmax, ar, v_2) && dummyFunction(count_square#triggerStateless(i, lo, hi, step, vmin, vmax, ar, v_2))
);
axiom (forall Heap: HeapType, i: int, lo: int, hi: int, step: int, vmin: int, vmax: int, ar: (Seq Ref), v_2: int ::
  { count_square'(Heap, i, lo, hi, step, vmin, vmax, ar, v_2) }
  dummyFunction(count_square#triggerStateless(i, lo, hi, step, vmin, vmax, ar, v_2))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, i: int, lo: int, hi: int, step: int, vmin: int, vmax: int, ar: (Seq Ref), v_2: int ::
  { state(Heap, Mask), count_square(Heap, i, lo, hi, step, vmin, vmax, ar, v_2) }
  state(Heap, Mask) && AssumeFunctionsAbove < 0 ==> (((0 <= lo && (lo <= hi && (hi <= step && step > 0))) && (0 <= vmin && (vmin <= i && i <= vmax))) && vmax <= Seq#Length(ar)) && (forall ix_20: int, jx_20: int ::
    { Seq#Index(ar, ix_20), Seq#Index(ar, jx_20) }
    ix_20 >= 0 && (ix_20 < Seq#Length(ar) && (jx_20 >= 0 && (jx_20 < Seq#Length(ar) && ix_20 != jx_20))) ==> Seq#Index(ar, ix_20) != Seq#Index(ar, jx_20)
  ) ==> count_square(Heap, i, lo, hi, step, vmin, vmax, ar, v_2) == (if i < vmax then (if lo <= i mod step && (i mod step < hi && Heap[Seq#Index(ar, i), Ref__Integer_value] == v_2) then 1 else 0) + count_square'(Heap, i + 1, lo, hi, step, vmin, vmax, ar, v_2) else 0)
);

// Framing axioms
function  count_square#frame(frame: FrameType, i: int, lo: int, hi: int, step: int, vmin: int, vmax: int, ar: (Seq Ref), v_2: int): int;
axiom (forall Heap: HeapType, Mask: MaskType, i: int, lo: int, hi: int, step: int, vmin: int, vmax: int, ar: (Seq Ref), v_2: int ::
  { state(Heap, Mask), count_square'(Heap, i, lo, hi, step, vmin, vmax, ar, v_2) }
  state(Heap, Mask) ==> count_square'(Heap, i, lo, hi, step, vmin, vmax, ar, v_2) == count_square#frame(FrameFragment(count_square#condqp3(Heap, i, lo, hi, step, vmin, vmax, ar, v_2)), i, lo, hi, step, vmin, vmax, ar, v_2)
);
// ==================================================
// Function used for framing of quantified permission (forall k: Int :: { ar[k] } min <= k && (k < max && (lo <= k % step && k % step < hi)) ==> acc(ar[k].Ref__Integer_value, wildcard)) in function count_square
// ==================================================

function  count_square#condqp3(Heap: HeapType, i_1_1_1: int, lo_1_1: int, hi_1_1: int, step_1_1: int, vmin_1_1: int, vmax_1_1: int, ar_1_1: (Seq Ref), v_1_1_1: int): int;
function  sk_count_square#condqp3(fnAppH1: int, fnAppH2: int): int;
axiom (forall Heap2Heap: HeapType, Heap1Heap: HeapType, i: int, lo: int, hi: int, step: int, vmin: int, vmax: int, ar: (Seq Ref), v_2: int ::
  { count_square#condqp3(Heap2Heap, i, lo, hi, step, vmin, vmax, ar, v_2), count_square#condqp3(Heap1Heap, i, lo, hi, step, vmin, vmax, ar, v_2), succHeapTrans(Heap2Heap, Heap1Heap) }
  (vmin <= sk_count_square#condqp3(count_square#condqp3(Heap2Heap, i, lo, hi, step, vmin, vmax, ar, v_2), count_square#condqp3(Heap1Heap, i, lo, hi, step, vmin, vmax, ar, v_2)) && (sk_count_square#condqp3(count_square#condqp3(Heap2Heap, i, lo, hi, step, vmin, vmax, ar, v_2), count_square#condqp3(Heap1Heap, i, lo, hi, step, vmin, vmax, ar, v_2)) < vmax && (lo <= sk_count_square#condqp3(count_square#condqp3(Heap2Heap, i, lo, hi, step, vmin, vmax, ar, v_2), count_square#condqp3(Heap1Heap, i, lo, hi, step, vmin, vmax, ar, v_2)) mod step && sk_count_square#condqp3(count_square#condqp3(Heap2Heap, i, lo, hi, step, vmin, vmax, ar, v_2), count_square#condqp3(Heap1Heap, i, lo, hi, step, vmin, vmax, ar, v_2)) mod step < hi)) <==> vmin <= sk_count_square#condqp3(count_square#condqp3(Heap2Heap, i, lo, hi, step, vmin, vmax, ar, v_2), count_square#condqp3(Heap1Heap, i, lo, hi, step, vmin, vmax, ar, v_2)) && (sk_count_square#condqp3(count_square#condqp3(Heap2Heap, i, lo, hi, step, vmin, vmax, ar, v_2), count_square#condqp3(Heap1Heap, i, lo, hi, step, vmin, vmax, ar, v_2)) < vmax && (lo <= sk_count_square#condqp3(count_square#condqp3(Heap2Heap, i, lo, hi, step, vmin, vmax, ar, v_2), count_square#condqp3(Heap1Heap, i, lo, hi, step, vmin, vmax, ar, v_2)) mod step && sk_count_square#condqp3(count_square#condqp3(Heap2Heap, i, lo, hi, step, vmin, vmax, ar, v_2), count_square#condqp3(Heap1Heap, i, lo, hi, step, vmin, vmax, ar, v_2)) mod step < hi))) && (vmin <= sk_count_square#condqp3(count_square#condqp3(Heap2Heap, i, lo, hi, step, vmin, vmax, ar, v_2), count_square#condqp3(Heap1Heap, i, lo, hi, step, vmin, vmax, ar, v_2)) && (sk_count_square#condqp3(count_square#condqp3(Heap2Heap, i, lo, hi, step, vmin, vmax, ar, v_2), count_square#condqp3(Heap1Heap, i, lo, hi, step, vmin, vmax, ar, v_2)) < vmax && (lo <= sk_count_square#condqp3(count_square#condqp3(Heap2Heap, i, lo, hi, step, vmin, vmax, ar, v_2), count_square#condqp3(Heap1Heap, i, lo, hi, step, vmin, vmax, ar, v_2)) mod step && sk_count_square#condqp3(count_square#condqp3(Heap2Heap, i, lo, hi, step, vmin, vmax, ar, v_2), count_square#condqp3(Heap1Heap, i, lo, hi, step, vmin, vmax, ar, v_2)) mod step < hi)) ==> Heap2Heap[Seq#Index(ar, sk_count_square#condqp3(count_square#condqp3(Heap2Heap, i, lo, hi, step, vmin, vmax, ar, v_2), count_square#condqp3(Heap1Heap, i, lo, hi, step, vmin, vmax, ar, v_2))), Ref__Integer_value] == Heap1Heap[Seq#Index(ar, sk_count_square#condqp3(count_square#condqp3(Heap2Heap, i, lo, hi, step, vmin, vmax, ar, v_2), count_square#condqp3(Heap1Heap, i, lo, hi, step, vmin, vmax, ar, v_2))), Ref__Integer_value]) ==> count_square#condqp3(Heap2Heap, i, lo, hi, step, vmin, vmax, ar, v_2) == count_square#condqp3(Heap1Heap, i, lo, hi, step, vmin, vmax, ar, v_2)
);

// Trigger function (controlling recursive postconditions)
function  count_square#trigger(frame: FrameType, i: int, lo: int, hi: int, step: int, vmin: int, vmax: int, ar: (Seq Ref), v_2: int): bool;

// State-independent trigger function
function  count_square#triggerStateless(i: int, lo: int, hi: int, step: int, vmin: int, vmax: int, ar: (Seq Ref), v_2: int): int;

// Check contract well-formedness and postcondition
procedure count_square#definedness(i: int, lo: int, hi: int, step: int, vmin: int, vmax: int, ar: (Seq Ref), v_2: int) returns (Result: int)
  modifies Heap, Mask;
{
  var ix_21: int;
  var jx_21: int;
  var k_12: int;
  var QPMask: MaskType;
  var wildcard: real where wildcard > 0.000000000;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ix_4_1: int;
  var jx_4_1: int;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume AssumeFunctionsAbove == 0;
  
  // -- Inhaling precondition (with checking)
    assume 0 <= lo;
    assume lo <= hi;
    assume hi <= step;
    assume step > 0;
    assume state(Heap, Mask);
    assume 0 <= vmin;
    assume vmin <= i;
    assume i <= vmax;
    assume state(Heap, Mask);
    assume vmax <= Seq#Length(ar);
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall ix: Int, jx: Int :: { ar[ix], ar[jx] } ix >= 0 && (ix < |ar| && (jx >= 0 && (jx < |ar| && ix != jx))) ==> ar[ix] != ar[jx])
      if (*) {
        if (ix_21 >= 0 && (ix_21 < Seq#Length(ar) && (jx_21 >= 0 && (jx_21 < Seq#Length(ar) && ix_21 != jx_21)))) {
          assert {:msg "  Contract might not be well-formed. Index ar[ix] into ar might be negative. (test_vector_add_c.vpr@36.12--36.116) [47393]"}
            ix_21 >= 0;
          assert {:msg "  Contract might not be well-formed. Index ar[ix] into ar might exceed sequence length. (test_vector_add_c.vpr@36.12--36.116) [47394]"}
            ix_21 < Seq#Length(ar);
          assert {:msg "  Contract might not be well-formed. Index ar[jx] into ar might be negative. (test_vector_add_c.vpr@36.12--36.116) [47395]"}
            jx_21 >= 0;
          assert {:msg "  Contract might not be well-formed. Index ar[jx] into ar might exceed sequence length. (test_vector_add_c.vpr@36.12--36.116) [47396]"}
            jx_21 < Seq#Length(ar);
        }
        assume false;
      }
    assume (forall ix_3: int, jx_3: int ::
      { Seq#Index(ar, ix_3), Seq#Index(ar, jx_3) }
      ix_3 >= 0 && (ix_3 < Seq#Length(ar) && (jx_3 >= 0 && (jx_3 < Seq#Length(ar) && ix_3 != jx_3))) ==> Seq#Index(ar, ix_3) != Seq#Index(ar, jx_3)
    );
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall k: Int :: { ar[k] } min <= k && (k < max && (lo <= k % step && k % step < hi)) ==> acc(ar[k].Ref__Integer_value, wildcard))
      if (*) {
        if (vmin <= k_12) {
          if (k_12 < vmax) {
            assert {:msg "  Contract might not be well-formed. Divisor step might be zero. (test_vector_add_c.vpr@37.13--37.136) [47397]"}
              step != 0;
            if (lo <= k_12 mod step) {
              assert {:msg "  Contract might not be well-formed. Divisor step might be zero. (test_vector_add_c.vpr@37.13--37.136) [47398]"}
                step != 0;
            }
          }
        }
        if (vmin <= k_12 && (k_12 < vmax && (lo <= k_12 mod step && k_12 mod step < hi))) {
          assert {:msg "  Contract might not be well-formed. Index ar[k] into ar might be negative. (test_vector_add_c.vpr@37.13--37.136) [47399]"}
            k_12 >= 0;
          assert {:msg "  Contract might not be well-formed. Index ar[k] into ar might exceed sequence length. (test_vector_add_c.vpr@37.13--37.136) [47400]"}
            k_12 < Seq#Length(ar);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource ar[k].Ref__Integer_value might not be injective. (test_vector_add_c.vpr@37.13--37.136) [47401]"}
      (forall k_4_1: int, k_4_2: int ::
      
      (((k_4_1 != k_4_2 && (vmin <= k_4_1 && (k_4_1 < vmax && (lo <= k_4_1 mod step && k_4_1 mod step < hi)))) && (vmin <= k_4_2 && (k_4_2 < vmax && (lo <= k_4_2 mod step && k_4_2 mod step < hi)))) && NoPerm < wildcard) && NoPerm < wildcard ==> Seq#Index(ar, k_4_1) != Seq#Index(ar, k_4_2)
    );
    
    // -- Define Inverse Function
      assume (forall k_4_1: int ::
        { Seq#Index(ar, k_4_1) } { Seq#Index(ar, k_4_1) }
        vmin <= k_4_1 && (k_4_1 < vmax && (lo <= k_4_1 mod step && k_4_1 mod step < hi)) ==> qpRange5(Seq#Index(ar, k_4_1)) && invRecv5(Seq#Index(ar, k_4_1)) == k_4_1
      );
      assume (forall o_4: Ref ::
        { invRecv5(o_4) }
        (vmin <= invRecv5(o_4) && (invRecv5(o_4) < vmax && (lo <= invRecv5(o_4) mod step && invRecv5(o_4) mod step < hi))) && qpRange5(o_4) ==> Seq#Index(ar, invRecv5(o_4)) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall k_4_1: int ::
        { Seq#Index(ar, k_4_1) } { Seq#Index(ar, k_4_1) }
        vmin <= k_4_1 && (k_4_1 < vmax && (lo <= k_4_1 mod step && k_4_1 mod step < hi)) ==> Seq#Index(ar, k_4_1) != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, Ref__Integer_value] }
        ((vmin <= invRecv5(o_4) && (invRecv5(o_4) < vmax && (lo <= invRecv5(o_4) mod step && invRecv5(o_4) mod step < hi))) && qpRange5(o_4) ==> Seq#Index(ar, invRecv5(o_4)) == o_4 && Mask[o_4, Ref__Integer_value] < QPMask[o_4, Ref__Integer_value]) && (!((vmin <= invRecv5(o_4) && (invRecv5(o_4) < vmax && (lo <= invRecv5(o_4) mod step && invRecv5(o_4) mod step < hi))) && qpRange5(o_4)) ==> QPMask[o_4, Ref__Integer_value] == Mask[o_4, Ref__Integer_value])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != Ref__Integer_value ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Check definedness of function body
    
    // -- Check definedness of (i < max ? (lo <= i % step && (i % step < hi && ar[i].Ref__Integer_value == v) ? 1 : 0) + count_square(i + 1, lo, hi, step, min, max, ar, v) : 0)
      if (i < vmax) {
        assert {:msg "  Function might not be well-formed. Divisor step might be zero. (test_vector_add_c.vpr@32.1--40.2) [47402]"}
          step != 0;
        if (lo <= i mod step) {
          assert {:msg "  Function might not be well-formed. Divisor step might be zero. (test_vector_add_c.vpr@32.1--40.2) [47403]"}
            step != 0;
          if (i mod step < hi) {
            assert {:msg "  Function might not be well-formed. Index ar[i] into ar might be negative. (test_vector_add_c.vpr@32.1--40.2) [47404]"}
              i >= 0;
            assert {:msg "  Function might not be well-formed. Index ar[i] into ar might exceed sequence length. (test_vector_add_c.vpr@32.1--40.2) [47405]"}
              i < Seq#Length(ar);
            assert {:msg "  Function might not be well-formed. There might be insufficient permission to access ar[i].Ref__Integer_value (test_vector_add_c.vpr@32.1--40.2) [47406]"}
              HasDirectPerm(Mask, Seq#Index(ar, i), Ref__Integer_value);
          }
        }
        if (*) {
          // Exhale precondition of function application
          ExhaleWellDef0Mask := Mask;
          ExhaleWellDef0Heap := Heap;
          assert {:msg "  Precondition of function count_square might not hold. Assertion 0 <= lo might not hold. (test_vector_add_c.vpr@39.97--39.147) [47407]"}
            0 <= lo;
          assert {:msg "  Precondition of function count_square might not hold. Assertion lo <= hi might not hold. (test_vector_add_c.vpr@39.97--39.147) [47408]"}
            lo <= hi;
          assert {:msg "  Precondition of function count_square might not hold. Assertion hi <= step might not hold. (test_vector_add_c.vpr@39.97--39.147) [47409]"}
            hi <= step;
          assert {:msg "  Precondition of function count_square might not hold. Assertion step > 0 might not hold. (test_vector_add_c.vpr@39.97--39.147) [47410]"}
            step > 0;
          assert {:msg "  Precondition of function count_square might not hold. Assertion 0 <= min might not hold. (test_vector_add_c.vpr@39.97--39.147) [47411]"}
            0 <= vmin;
          assert {:msg "  Precondition of function count_square might not hold. Assertion min <= i + 1 might not hold. (test_vector_add_c.vpr@39.97--39.147) [47412]"}
            vmin <= i + 1;
          assert {:msg "  Precondition of function count_square might not hold. Assertion i + 1 <= max might not hold. (test_vector_add_c.vpr@39.97--39.147) [47413]"}
            i + 1 <= vmax;
          assert {:msg "  Precondition of function count_square might not hold. Assertion max <= |ar| might not hold. (test_vector_add_c.vpr@39.97--39.147) [47414]"}
            vmax <= Seq#Length(ar);
          if (*) {
            if (ix_4_1 >= 0 && (ix_4_1 < Seq#Length(ar) && (jx_4_1 >= 0 && (jx_4_1 < Seq#Length(ar) && ix_4_1 != jx_4_1)))) {
              assert {:msg "  Precondition of function count_square might not hold. Assertion ar[ix] != ar[jx] might not hold. (test_vector_add_c.vpr@39.97--39.147) [47415]"}
                Seq#Index(ar, ix_4_1) != Seq#Index(ar, jx_4_1);
            }
            assume false;
          }
          assume (forall ix_5_1: int, jx_5_1: int ::
            { Seq#Index(ar, ix_5_1), Seq#Index(ar, jx_5_1) }
            ix_5_1 >= 0 && (ix_5_1 < Seq#Length(ar) && (jx_5_1 >= 0 && (jx_5_1 < Seq#Length(ar) && ix_5_1 != jx_5_1))) ==> Seq#Index(ar, ix_5_1) != Seq#Index(ar, jx_5_1)
          );
          havoc QPMask;
          // wild card assumptions
          havoc wildcard;
          assert {:msg "  Precondition of function count_square might not hold. There might be insufficient permission to access ar[k].Ref__Integer_value (test_vector_add_c.vpr@39.97--39.147) [47416]"}
            (forall k_5: int ::
            
            vmin <= k_5 && (k_5 < vmax && (lo <= k_5 mod step && k_5 mod step < hi)) ==> Mask[Seq#Index(ar, k_5), Ref__Integer_value] > NoPerm
          );
          assume (forall k_5: int ::
            
            vmin <= k_5 && (k_5 < vmax && (lo <= k_5 mod step && k_5 mod step < hi)) ==> wildcard < Mask[Seq#Index(ar, k_5), Ref__Integer_value]
          );
          
          // -- check that the permission amount is positive
            assert {:msg "  Precondition of function count_square might not hold. Fraction wildcard might be negative. (test_vector_add_c.vpr@39.97--39.147) [47417]"}
              (forall k_5: int ::
              { Seq#Index(ar, k_5) } { Seq#Index(ar, k_5) }
              (vmin <= k_5 && (k_5 < vmax && (lo <= k_5 mod step && k_5 mod step < hi))) && dummyFunction(Heap[Seq#Index(ar, k_5), Ref__Integer_value]) ==> wildcard >= NoPerm
            );
          
          // -- check if receiver ar[k] is injective
            assert {:msg "  Precondition of function count_square might not hold. Quantified resource ar[k].Ref__Integer_value might not be injective. (test_vector_add_c.vpr@39.97--39.147) [47418]"}
              (forall k_5: int, k_5_1: int ::
              { neverTriggered6(k_5), neverTriggered6(k_5_1) }
              (((k_5 != k_5_1 && (vmin <= k_5 && (k_5 < vmax && (lo <= k_5 mod step && k_5 mod step < hi)))) && (vmin <= k_5_1 && (k_5_1 < vmax && (lo <= k_5_1 mod step && k_5_1 mod step < hi)))) && NoPerm < wildcard) && NoPerm < wildcard ==> Seq#Index(ar, k_5) != Seq#Index(ar, k_5_1)
            );
          
          // -- check if sufficient permission is held
            assert {:msg "  Precondition of function count_square might not hold. There might be insufficient permission to access ar[k].Ref__Integer_value (test_vector_add_c.vpr@39.97--39.147) [47419]"}
              (forall k_5: int ::
              { Seq#Index(ar, k_5) } { Seq#Index(ar, k_5) }
              vmin <= k_5 && (k_5 < vmax && (lo <= k_5 mod step && k_5 mod step < hi)) ==> wildcard > NoPerm ==> Mask[Seq#Index(ar, k_5), Ref__Integer_value] > NoPerm
            );
          
          // -- assumptions for inverse of receiver ar[k]
            assume (forall k_5: int ::
              { Seq#Index(ar, k_5) } { Seq#Index(ar, k_5) }
              (vmin <= k_5 && (k_5 < vmax && (lo <= k_5 mod step && k_5 mod step < hi))) && NoPerm < wildcard ==> qpRange6(Seq#Index(ar, k_5)) && invRecv6(Seq#Index(ar, k_5)) == k_5
            );
            assume (forall o_4: Ref ::
              { invRecv6(o_4) }
              (vmin <= invRecv6(o_4) && (invRecv6(o_4) < vmax && (lo <= invRecv6(o_4) mod step && invRecv6(o_4) mod step < hi))) && (NoPerm < wildcard && qpRange6(o_4)) ==> Seq#Index(ar, invRecv6(o_4)) == o_4
            );
          // Finish exhale
          havoc ExhaleHeap;
          assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
          Heap := ExhaleHeap;
          // Stop execution
          assume false;
        } else {
          // Enable postcondition for recursive call
          assume count_square#trigger(FrameFragment(count_square#condqp3(Heap, i + 1, lo, hi, step, vmin, vmax, ar, v_2)), i + 1, lo, hi, step, vmin, vmax, ar, v_2);
        }
      }
  
  // -- Translate function body
    Result := (if i < vmax then (if lo <= i mod step && (i mod step < hi && Heap[Seq#Index(ar, i), Ref__Integer_value] == v_2) then 1 else 0) + count_square(Heap, i + 1, lo, hi, step, vmin, vmax, ar, v_2) else 0);
}

// ==================================================
// Translation of function count_list
// ==================================================

// Uninterpreted function definitions
function  count_list(Heap: HeapType, i: int, hi: int, ar: (Seq int), v_2: int): int;
function  count_list'(Heap: HeapType, i: int, hi: int, ar: (Seq int), v_2: int): int;
axiom (forall Heap: HeapType, i: int, hi: int, ar: (Seq int), v_2: int ::
  { count_list(Heap, i, hi, ar, v_2) }
  count_list(Heap, i, hi, ar, v_2) == count_list'(Heap, i, hi, ar, v_2) && dummyFunction(count_list#triggerStateless(i, hi, ar, v_2))
);
axiom (forall Heap: HeapType, i: int, hi: int, ar: (Seq int), v_2: int ::
  { count_list'(Heap, i, hi, ar, v_2) }
  dummyFunction(count_list#triggerStateless(i, hi, ar, v_2))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, i: int, hi: int, ar: (Seq int), v_2: int ::
  { state(Heap, Mask), count_list(Heap, i, hi, ar, v_2) }
  state(Heap, Mask) && AssumeFunctionsAbove < 5 ==> (0 <= i && i <= hi) && hi <= Seq#Length(ar) ==> count_list(Heap, i, hi, ar, v_2) == (if i < hi then (if Seq#Index(ar, i) == v_2 then 1 else 0) + count_list'(Heap, i + 1, hi, ar, v_2) else 0)
);

// Framing axioms
function  count_list#frame(frame: FrameType, i: int, hi: int, ar: (Seq int), v_2: int): int;
axiom (forall Heap: HeapType, Mask: MaskType, i: int, hi: int, ar: (Seq int), v_2: int ::
  { state(Heap, Mask), count_list'(Heap, i, hi, ar, v_2) }
  state(Heap, Mask) ==> count_list'(Heap, i, hi, ar, v_2) == count_list#frame(EmptyFrame, i, hi, ar, v_2)
);

// Trigger function (controlling recursive postconditions)
function  count_list#trigger(frame: FrameType, i: int, hi: int, ar: (Seq int), v_2: int): bool;

// State-independent trigger function
function  count_list#triggerStateless(i: int, hi: int, ar: (Seq int), v_2: int): int;

// Check contract well-formedness and postcondition
procedure count_list#definedness(i: int, hi: int, ar: (Seq int), v_2: int) returns (Result: int)
  modifies Heap, Mask;
{
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume AssumeFunctionsAbove == 5;
  
  // -- Inhaling precondition (with checking)
    assume 0 <= i;
    assume i <= hi;
    assume state(Heap, Mask);
    assume hi <= Seq#Length(ar);
    assume state(Heap, Mask);
  
  // -- Check definedness of function body
    
    // -- Check definedness of (i < hi ? (ar[i] == v ? 1 : 0) + count_list(i + 1, hi, ar, v) : 0)
      if (i < hi) {
        assert {:msg "  Function might not be well-formed. Index ar[i] into ar might be negative. (test_vector_add_c.vpr@42.1--47.2) [47420]"}
          i >= 0;
        assert {:msg "  Function might not be well-formed. Index ar[i] into ar might exceed sequence length. (test_vector_add_c.vpr@42.1--47.2) [47421]"}
          i < Seq#Length(ar);
        if (*) {
          // Exhale precondition of function application
          ExhaleWellDef0Mask := Mask;
          ExhaleWellDef0Heap := Heap;
          assert {:msg "  Precondition of function count_list might not hold. Assertion 0 <= i + 1 might not hold. (test_vector_add_c.vpr@46.36--46.64) [47422]"}
            0 <= i + 1;
          assert {:msg "  Precondition of function count_list might not hold. Assertion i + 1 <= hi might not hold. (test_vector_add_c.vpr@46.36--46.64) [47423]"}
            i + 1 <= hi;
          assert {:msg "  Precondition of function count_list might not hold. Assertion hi <= |ar| might not hold. (test_vector_add_c.vpr@46.36--46.64) [47424]"}
            hi <= Seq#Length(ar);
          // Stop execution
          assume false;
        } else {
          // Enable postcondition for recursive call
          assume count_list#trigger(EmptyFrame, i + 1, hi, ar, v_2);
        }
      }
  
  // -- Translate function body
    Result := (if i < hi then (if Seq#Index(ar, i) == v_2 then 1 else 0) + count_list(Heap, i + 1, hi, ar, v_2) else 0);
}

// ==================================================
// Translation of function count_array
// ==================================================

// Uninterpreted function definitions
function  count_array(Heap: HeapType, i: int, hi: int, ar: (Seq Ref), v_2: int): int;
function  count_array'(Heap: HeapType, i: int, hi: int, ar: (Seq Ref), v_2: int): int;
axiom (forall Heap: HeapType, i: int, hi: int, ar: (Seq Ref), v_2: int ::
  { count_array(Heap, i, hi, ar, v_2) }
  count_array(Heap, i, hi, ar, v_2) == count_array'(Heap, i, hi, ar, v_2) && dummyFunction(count_array#triggerStateless(i, hi, ar, v_2))
);
axiom (forall Heap: HeapType, i: int, hi: int, ar: (Seq Ref), v_2: int ::
  { count_array'(Heap, i, hi, ar, v_2) }
  dummyFunction(count_array#triggerStateless(i, hi, ar, v_2))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, i: int, hi: int, ar: (Seq Ref), v_2: int ::
  { state(Heap, Mask), count_array(Heap, i, hi, ar, v_2) }
  state(Heap, Mask) && AssumeFunctionsAbove < 1 ==> ((0 <= i && i <= hi) && hi <= Seq#Length(ar)) && (forall ix_20: int, jx_20: int ::
    { Seq#Index(ar, ix_20), Seq#Index(ar, jx_20) }
    ix_20 >= 0 && (ix_20 < Seq#Length(ar) && (jx_20 >= 0 && (jx_20 < Seq#Length(ar) && ix_20 != jx_20))) ==> Seq#Index(ar, ix_20) != Seq#Index(ar, jx_20)
  ) ==> count_array(Heap, i, hi, ar, v_2) == (if i < hi then (if Heap[Seq#Index(ar, i), Ref__Integer_value] == v_2 then 1 else 0) + count_array'(Heap, i + 1, hi, ar, v_2) else 0)
);

// Framing axioms
function  count_array#frame(frame: FrameType, i: int, hi: int, ar: (Seq Ref), v_2: int): int;
axiom (forall Heap: HeapType, Mask: MaskType, i: int, hi: int, ar: (Seq Ref), v_2: int ::
  { state(Heap, Mask), count_array'(Heap, i, hi, ar, v_2) }
  state(Heap, Mask) ==> count_array'(Heap, i, hi, ar, v_2) == count_array#frame(FrameFragment(count_array#condqp4(Heap, i, hi, ar, v_2)), i, hi, ar, v_2)
);
// ==================================================
// Function used for framing of quantified permission (forall k: Int :: { ar[k] } 0 <= k && k < hi ==> acc(ar[k].Ref__Integer_value, wildcard)) in function count_array
// ==================================================

function  count_array#condqp4(Heap: HeapType, i_1_1_1: int, hi_1_1: int, ar_1_1: (Seq Ref), v_1_1_1: int): int;
function  sk_count_array#condqp4(fnAppH1: int, fnAppH2: int): int;
axiom (forall Heap2Heap: HeapType, Heap1Heap: HeapType, i: int, hi: int, ar: (Seq Ref), v_2: int ::
  { count_array#condqp4(Heap2Heap, i, hi, ar, v_2), count_array#condqp4(Heap1Heap, i, hi, ar, v_2), succHeapTrans(Heap2Heap, Heap1Heap) }
  (0 <= sk_count_array#condqp4(count_array#condqp4(Heap2Heap, i, hi, ar, v_2), count_array#condqp4(Heap1Heap, i, hi, ar, v_2)) && sk_count_array#condqp4(count_array#condqp4(Heap2Heap, i, hi, ar, v_2), count_array#condqp4(Heap1Heap, i, hi, ar, v_2)) < hi <==> 0 <= sk_count_array#condqp4(count_array#condqp4(Heap2Heap, i, hi, ar, v_2), count_array#condqp4(Heap1Heap, i, hi, ar, v_2)) && sk_count_array#condqp4(count_array#condqp4(Heap2Heap, i, hi, ar, v_2), count_array#condqp4(Heap1Heap, i, hi, ar, v_2)) < hi) && (0 <= sk_count_array#condqp4(count_array#condqp4(Heap2Heap, i, hi, ar, v_2), count_array#condqp4(Heap1Heap, i, hi, ar, v_2)) && sk_count_array#condqp4(count_array#condqp4(Heap2Heap, i, hi, ar, v_2), count_array#condqp4(Heap1Heap, i, hi, ar, v_2)) < hi ==> Heap2Heap[Seq#Index(ar, sk_count_array#condqp4(count_array#condqp4(Heap2Heap, i, hi, ar, v_2), count_array#condqp4(Heap1Heap, i, hi, ar, v_2))), Ref__Integer_value] == Heap1Heap[Seq#Index(ar, sk_count_array#condqp4(count_array#condqp4(Heap2Heap, i, hi, ar, v_2), count_array#condqp4(Heap1Heap, i, hi, ar, v_2))), Ref__Integer_value]) ==> count_array#condqp4(Heap2Heap, i, hi, ar, v_2) == count_array#condqp4(Heap1Heap, i, hi, ar, v_2)
);

// Trigger function (controlling recursive postconditions)
function  count_array#trigger(frame: FrameType, i: int, hi: int, ar: (Seq Ref), v_2: int): bool;

// State-independent trigger function
function  count_array#triggerStateless(i: int, hi: int, ar: (Seq Ref), v_2: int): int;

// Check contract well-formedness and postcondition
procedure count_array#definedness(i: int, hi: int, ar: (Seq Ref), v_2: int) returns (Result: int)
  modifies Heap, Mask;
{
  var ix_22: int;
  var jx_22: int;
  var k_16: int;
  var QPMask: MaskType;
  var wildcard: real where wildcard > 0.000000000;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ix_4_1: int;
  var jx_4_1: int;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume AssumeFunctionsAbove == 1;
  
  // -- Inhaling precondition (with checking)
    assume 0 <= i;
    assume i <= hi;
    assume state(Heap, Mask);
    assume hi <= Seq#Length(ar);
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall ix: Int, jx: Int :: { ar[ix], ar[jx] } ix >= 0 && (ix < |ar| && (jx >= 0 && (jx < |ar| && ix != jx))) ==> ar[ix] != ar[jx])
      if (*) {
        if (ix_22 >= 0 && (ix_22 < Seq#Length(ar) && (jx_22 >= 0 && (jx_22 < Seq#Length(ar) && ix_22 != jx_22)))) {
          assert {:msg "  Contract might not be well-formed. Index ar[ix] into ar might be negative. (test_vector_add_c.vpr@52.12--52.116) [47425]"}
            ix_22 >= 0;
          assert {:msg "  Contract might not be well-formed. Index ar[ix] into ar might exceed sequence length. (test_vector_add_c.vpr@52.12--52.116) [47426]"}
            ix_22 < Seq#Length(ar);
          assert {:msg "  Contract might not be well-formed. Index ar[jx] into ar might be negative. (test_vector_add_c.vpr@52.12--52.116) [47427]"}
            jx_22 >= 0;
          assert {:msg "  Contract might not be well-formed. Index ar[jx] into ar might exceed sequence length. (test_vector_add_c.vpr@52.12--52.116) [47428]"}
            jx_22 < Seq#Length(ar);
        }
        assume false;
      }
    assume (forall ix_3: int, jx_3: int ::
      { Seq#Index(ar, ix_3), Seq#Index(ar, jx_3) }
      ix_3 >= 0 && (ix_3 < Seq#Length(ar) && (jx_3 >= 0 && (jx_3 < Seq#Length(ar) && ix_3 != jx_3))) ==> Seq#Index(ar, ix_3) != Seq#Index(ar, jx_3)
    );
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall k: Int :: { ar[k] } 0 <= k && k < hi ==> acc(ar[k].Ref__Integer_value, wildcard))
      if (*) {
        if (0 <= k_16 && k_16 < hi) {
          assert {:msg "  Contract might not be well-formed. Index ar[k] into ar might be negative. (test_vector_add_c.vpr@53.13--53.94) [47429]"}
            k_16 >= 0;
          assert {:msg "  Contract might not be well-formed. Index ar[k] into ar might exceed sequence length. (test_vector_add_c.vpr@53.13--53.94) [47430]"}
            k_16 < Seq#Length(ar);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource ar[k].Ref__Integer_value might not be injective. (test_vector_add_c.vpr@53.13--53.94) [47431]"}
      (forall k_4_1: int, k_4_2: int ::
      
      (((k_4_1 != k_4_2 && (0 <= k_4_1 && k_4_1 < hi)) && (0 <= k_4_2 && k_4_2 < hi)) && NoPerm < wildcard) && NoPerm < wildcard ==> Seq#Index(ar, k_4_1) != Seq#Index(ar, k_4_2)
    );
    
    // -- Define Inverse Function
      assume (forall k_4_1: int ::
        { Seq#Index(ar, k_4_1) } { Seq#Index(ar, k_4_1) }
        0 <= k_4_1 && k_4_1 < hi ==> qpRange7(Seq#Index(ar, k_4_1)) && invRecv7(Seq#Index(ar, k_4_1)) == k_4_1
      );
      assume (forall o_4: Ref ::
        { invRecv7(o_4) }
        (0 <= invRecv7(o_4) && invRecv7(o_4) < hi) && qpRange7(o_4) ==> Seq#Index(ar, invRecv7(o_4)) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall k_4_1: int ::
        { Seq#Index(ar, k_4_1) } { Seq#Index(ar, k_4_1) }
        0 <= k_4_1 && k_4_1 < hi ==> Seq#Index(ar, k_4_1) != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, Ref__Integer_value] }
        ((0 <= invRecv7(o_4) && invRecv7(o_4) < hi) && qpRange7(o_4) ==> Seq#Index(ar, invRecv7(o_4)) == o_4 && Mask[o_4, Ref__Integer_value] < QPMask[o_4, Ref__Integer_value]) && (!((0 <= invRecv7(o_4) && invRecv7(o_4) < hi) && qpRange7(o_4)) ==> QPMask[o_4, Ref__Integer_value] == Mask[o_4, Ref__Integer_value])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != Ref__Integer_value ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Check definedness of function body
    
    // -- Check definedness of (i < hi ? (ar[i].Ref__Integer_value == v ? 1 : 0) + count_array(i + 1, hi, ar, v) : 0)
      if (i < hi) {
        assert {:msg "  Function might not be well-formed. Index ar[i] into ar might be negative. (test_vector_add_c.vpr@49.1--56.2) [47432]"}
          i >= 0;
        assert {:msg "  Function might not be well-formed. Index ar[i] into ar might exceed sequence length. (test_vector_add_c.vpr@49.1--56.2) [47433]"}
          i < Seq#Length(ar);
        assert {:msg "  Function might not be well-formed. There might be insufficient permission to access ar[i].Ref__Integer_value (test_vector_add_c.vpr@49.1--56.2) [47434]"}
          HasDirectPerm(Mask, Seq#Index(ar, i), Ref__Integer_value);
        if (*) {
          // Exhale precondition of function application
          ExhaleWellDef0Mask := Mask;
          ExhaleWellDef0Heap := Heap;
          assert {:msg "  Precondition of function count_array might not hold. Assertion 0 <= i + 1 might not hold. (test_vector_add_c.vpr@55.55--55.84) [47435]"}
            0 <= i + 1;
          assert {:msg "  Precondition of function count_array might not hold. Assertion i + 1 <= hi might not hold. (test_vector_add_c.vpr@55.55--55.84) [47436]"}
            i + 1 <= hi;
          assert {:msg "  Precondition of function count_array might not hold. Assertion hi <= |ar| might not hold. (test_vector_add_c.vpr@55.55--55.84) [47437]"}
            hi <= Seq#Length(ar);
          if (*) {
            if (ix_4_1 >= 0 && (ix_4_1 < Seq#Length(ar) && (jx_4_1 >= 0 && (jx_4_1 < Seq#Length(ar) && ix_4_1 != jx_4_1)))) {
              assert {:msg "  Precondition of function count_array might not hold. Assertion ar[ix] != ar[jx] might not hold. (test_vector_add_c.vpr@55.55--55.84) [47438]"}
                Seq#Index(ar, ix_4_1) != Seq#Index(ar, jx_4_1);
            }
            assume false;
          }
          assume (forall ix_5_1: int, jx_5_1: int ::
            { Seq#Index(ar, ix_5_1), Seq#Index(ar, jx_5_1) }
            ix_5_1 >= 0 && (ix_5_1 < Seq#Length(ar) && (jx_5_1 >= 0 && (jx_5_1 < Seq#Length(ar) && ix_5_1 != jx_5_1))) ==> Seq#Index(ar, ix_5_1) != Seq#Index(ar, jx_5_1)
          );
          havoc QPMask;
          // wild card assumptions
          havoc wildcard;
          assert {:msg "  Precondition of function count_array might not hold. There might be insufficient permission to access ar[k].Ref__Integer_value (test_vector_add_c.vpr@55.55--55.84) [47439]"}
            (forall k_5: int ::
            
            0 <= k_5 && k_5 < hi ==> Mask[Seq#Index(ar, k_5), Ref__Integer_value] > NoPerm
          );
          assume (forall k_5: int ::
            
            0 <= k_5 && k_5 < hi ==> wildcard < Mask[Seq#Index(ar, k_5), Ref__Integer_value]
          );
          
          // -- check that the permission amount is positive
            assert {:msg "  Precondition of function count_array might not hold. Fraction wildcard might be negative. (test_vector_add_c.vpr@55.55--55.84) [47440]"}
              (forall k_5: int ::
              { Seq#Index(ar, k_5) } { Seq#Index(ar, k_5) }
              (0 <= k_5 && k_5 < hi) && dummyFunction(Heap[Seq#Index(ar, k_5), Ref__Integer_value]) ==> wildcard >= NoPerm
            );
          
          // -- check if receiver ar[k] is injective
            assert {:msg "  Precondition of function count_array might not hold. Quantified resource ar[k].Ref__Integer_value might not be injective. (test_vector_add_c.vpr@55.55--55.84) [47441]"}
              (forall k_5: int, k_5_1: int ::
              { neverTriggered8(k_5), neverTriggered8(k_5_1) }
              (((k_5 != k_5_1 && (0 <= k_5 && k_5 < hi)) && (0 <= k_5_1 && k_5_1 < hi)) && NoPerm < wildcard) && NoPerm < wildcard ==> Seq#Index(ar, k_5) != Seq#Index(ar, k_5_1)
            );
          
          // -- check if sufficient permission is held
            assert {:msg "  Precondition of function count_array might not hold. There might be insufficient permission to access ar[k].Ref__Integer_value (test_vector_add_c.vpr@55.55--55.84) [47442]"}
              (forall k_5: int ::
              { Seq#Index(ar, k_5) } { Seq#Index(ar, k_5) }
              0 <= k_5 && k_5 < hi ==> wildcard > NoPerm ==> Mask[Seq#Index(ar, k_5), Ref__Integer_value] > NoPerm
            );
          
          // -- assumptions for inverse of receiver ar[k]
            assume (forall k_5: int ::
              { Seq#Index(ar, k_5) } { Seq#Index(ar, k_5) }
              (0 <= k_5 && k_5 < hi) && NoPerm < wildcard ==> qpRange8(Seq#Index(ar, k_5)) && invRecv8(Seq#Index(ar, k_5)) == k_5
            );
            assume (forall o_4: Ref ::
              { invRecv8(o_4) }
              (0 <= invRecv8(o_4) && invRecv8(o_4) < hi) && (NoPerm < wildcard && qpRange8(o_4)) ==> Seq#Index(ar, invRecv8(o_4)) == o_4
            );
          // Finish exhale
          havoc ExhaleHeap;
          assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
          Heap := ExhaleHeap;
          // Stop execution
          assume false;
        } else {
          // Enable postcondition for recursive call
          assume count_array#trigger(FrameFragment(count_array#condqp4(Heap, i + 1, hi, ar, v_2)), i + 1, hi, ar, v_2);
        }
      }
  
  // -- Translate function body
    Result := (if i < hi then (if Heap[Seq#Index(ar, i), Ref__Integer_value] == v_2 then 1 else 0) + count_array(Heap, i + 1, hi, ar, v_2) else 0);
}

// ==================================================
// Translation of method Ref__loop_main_69
// ==================================================

procedure Ref__loop_main_69(diz: Ref, current_thread_id: int, b_24: (Seq Ref), len: int, a_2: (Seq Ref), c: (Seq Ref)) returns ()
  modifies Heap, Mask;
{
  var ix_23: int;
  var jx_23: int;
  var i_12: int;
  var QPMask: MaskType;
  var ix_5: int;
  var jx_5: int;
  var i_18: int;
  var ix_24: int;
  var jx_24: int;
  var i_20: int;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var i_22: int;
  var i_24: int;
  var i_29: int;
  var i_30: int;
  var i_31: int;
  var i_32: int;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var i_21: int;
  var i_23: int;
  var i_25: int;
  var ExhaleHeap: HeapType;
  
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
    if (0 < len) {
      assume Seq#Length(a_2) == len;
    }
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall ix: Int, jx: Int :: { a[ix], a[jx] } ix >= 0 && (ix < |a| && (jx >= 0 && (jx < |a| && ix != jx))) ==> a[ix] != a[jx])
      if (*) {
        if (ix_23 >= 0 && (ix_23 < Seq#Length(a_2) && (jx_23 >= 0 && (jx_23 < Seq#Length(a_2) && ix_23 != jx_23)))) {
          assert {:msg "  Contract might not be well-formed. Index a[ix] into a might be negative. (test_vector_add_c.vpr@62.12--62.112) [47443]"}
            ix_23 >= 0;
          assert {:msg "  Contract might not be well-formed. Index a[ix] into a might exceed sequence length. (test_vector_add_c.vpr@62.12--62.112) [47444]"}
            ix_23 < Seq#Length(a_2);
          assert {:msg "  Contract might not be well-formed. Index a[jx] into a might be negative. (test_vector_add_c.vpr@62.12--62.112) [47445]"}
            jx_23 >= 0;
          assert {:msg "  Contract might not be well-formed. Index a[jx] into a might exceed sequence length. (test_vector_add_c.vpr@62.12--62.112) [47446]"}
            jx_23 < Seq#Length(a_2);
        }
        assume false;
      }
    assume (forall ix_1: int, jx_1: int ::
      { Seq#Index(a_2, ix_1), Seq#Index(a_2, jx_1) }
      ix_1 >= 0 && (ix_1 < Seq#Length(a_2) && (jx_1 >= 0 && (jx_1 < Seq#Length(a_2) && ix_1 != jx_1))) ==> Seq#Index(a_2, ix_1) != Seq#Index(a_2, jx_1)
    );
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall i: Int :: { a[i] } 0 <= i && i < len ==> acc(a[i].Ref__Integer_value, write))
      if (*) {
        if (0 <= i_12 && i_12 < len) {
          assert {:msg "  Contract might not be well-formed. Index a[i] into a might be negative. (test_vector_add_c.vpr@63.13--63.91) [47447]"}
            i_12 >= 0;
          assert {:msg "  Contract might not be well-formed. Index a[i] into a might exceed sequence length. (test_vector_add_c.vpr@63.13--63.91) [47448]"}
            i_12 < Seq#Length(a_2);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource a[i].Ref__Integer_value might not be injective. (test_vector_add_c.vpr@63.13--63.91) [47449]"}
      (forall i_1: int, i_1_1: int ::
      
      (((i_1 != i_1_1 && (0 <= i_1 && i_1 < len)) && (0 <= i_1_1 && i_1_1 < len)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(a_2, i_1) != Seq#Index(a_2, i_1_1)
    );
    
    // -- Define Inverse Function
      assume (forall i_1: int ::
        { Seq#Index(a_2, i_1) } { Seq#Index(a_2, i_1) }
        (0 <= i_1 && i_1 < len) && NoPerm < FullPerm ==> qpRange9(Seq#Index(a_2, i_1)) && invRecv9(Seq#Index(a_2, i_1)) == i_1
      );
      assume (forall o_4: Ref ::
        { invRecv9(o_4) }
        ((0 <= invRecv9(o_4) && invRecv9(o_4) < len) && NoPerm < FullPerm) && qpRange9(o_4) ==> Seq#Index(a_2, invRecv9(o_4)) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall i_1: int ::
        { Seq#Index(a_2, i_1) } { Seq#Index(a_2, i_1) }
        0 <= i_1 && i_1 < len ==> Seq#Index(a_2, i_1) != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, Ref__Integer_value] }
        (((0 <= invRecv9(o_4) && invRecv9(o_4) < len) && NoPerm < FullPerm) && qpRange9(o_4) ==> (NoPerm < FullPerm ==> Seq#Index(a_2, invRecv9(o_4)) == o_4) && QPMask[o_4, Ref__Integer_value] == Mask[o_4, Ref__Integer_value] + FullPerm) && (!(((0 <= invRecv9(o_4) && invRecv9(o_4) < len) && NoPerm < FullPerm) && qpRange9(o_4)) ==> QPMask[o_4, Ref__Integer_value] == Mask[o_4, Ref__Integer_value])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != Ref__Integer_value ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    if (0 < len) {
      assume Seq#Length(b_24) == len;
    }
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall ix: Int, jx: Int :: { b[ix], b[jx] } ix >= 0 && (ix < |b| && (jx >= 0 && (jx < |b| && ix != jx))) ==> b[ix] != b[jx])
      if (*) {
        if (ix_5 >= 0 && (ix_5 < Seq#Length(b_24) && (jx_5 >= 0 && (jx_5 < Seq#Length(b_24) && ix_5 != jx_5)))) {
          assert {:msg "  Contract might not be well-formed. Index b[ix] into b might be negative. (test_vector_add_c.vpr@65.12--65.112) [47450]"}
            ix_5 >= 0;
          assert {:msg "  Contract might not be well-formed. Index b[ix] into b might exceed sequence length. (test_vector_add_c.vpr@65.12--65.112) [47451]"}
            ix_5 < Seq#Length(b_24);
          assert {:msg "  Contract might not be well-formed. Index b[jx] into b might be negative. (test_vector_add_c.vpr@65.12--65.112) [47452]"}
            jx_5 >= 0;
          assert {:msg "  Contract might not be well-formed. Index b[jx] into b might exceed sequence length. (test_vector_add_c.vpr@65.12--65.112) [47453]"}
            jx_5 < Seq#Length(b_24);
        }
        assume false;
      }
    assume (forall ix_3: int, jx_3: int ::
      { Seq#Index(b_24, ix_3), Seq#Index(b_24, jx_3) }
      ix_3 >= 0 && (ix_3 < Seq#Length(b_24) && (jx_3 >= 0 && (jx_3 < Seq#Length(b_24) && ix_3 != jx_3))) ==> Seq#Index(b_24, ix_3) != Seq#Index(b_24, jx_3)
    );
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall i: Int :: { b[i] } 0 <= i && i < len ==> acc(b[i].Ref__Integer_value, 1 / 2))
      if (*) {
        if (0 <= i_18 && i_18 < len) {
          assert {:msg "  Contract might not be well-formed. Index b[i] into b might be negative. (test_vector_add_c.vpr@66.13--66.91) [47454]"}
            i_18 >= 0;
          assert {:msg "  Contract might not be well-formed. Index b[i] into b might exceed sequence length. (test_vector_add_c.vpr@66.13--66.91) [47455]"}
            i_18 < Seq#Length(b_24);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource b[i].Ref__Integer_value might not be injective. (test_vector_add_c.vpr@66.13--66.91) [47456]"}
      (forall i_3: int, i_3_1: int ::
      
      (((i_3 != i_3_1 && (0 <= i_3 && i_3 < len)) && (0 <= i_3_1 && i_3_1 < len)) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> Seq#Index(b_24, i_3) != Seq#Index(b_24, i_3_1)
    );
    
    // -- Define Inverse Function
      assume (forall i_3: int ::
        { Seq#Index(b_24, i_3) } { Seq#Index(b_24, i_3) }
        (0 <= i_3 && i_3 < len) && NoPerm < 1 / 2 ==> qpRange10(Seq#Index(b_24, i_3)) && invRecv10(Seq#Index(b_24, i_3)) == i_3
      );
      assume (forall o_4: Ref ::
        { invRecv10(o_4) }
        ((0 <= invRecv10(o_4) && invRecv10(o_4) < len) && NoPerm < 1 / 2) && qpRange10(o_4) ==> Seq#Index(b_24, invRecv10(o_4)) == o_4
      );
    // Check that permission expression is non-negative for all fields
    assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (test_vector_add_c.vpr@66.13--66.91) [47457]"}
      (forall i_3: int ::
      { Seq#Index(b_24, i_3) } { Seq#Index(b_24, i_3) }
      0 <= i_3 && i_3 < len ==> 1 / 2 >= NoPerm
    );
    
    // -- Assume set of fields is nonNull
      assume (forall i_3: int ::
        { Seq#Index(b_24, i_3) } { Seq#Index(b_24, i_3) }
        (0 <= i_3 && i_3 < len) && 1 / 2 > NoPerm ==> Seq#Index(b_24, i_3) != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, Ref__Integer_value] }
        (((0 <= invRecv10(o_4) && invRecv10(o_4) < len) && NoPerm < 1 / 2) && qpRange10(o_4) ==> (NoPerm < 1 / 2 ==> Seq#Index(b_24, invRecv10(o_4)) == o_4) && QPMask[o_4, Ref__Integer_value] == Mask[o_4, Ref__Integer_value] + 1 / 2) && (!(((0 <= invRecv10(o_4) && invRecv10(o_4) < len) && NoPerm < 1 / 2) && qpRange10(o_4)) ==> QPMask[o_4, Ref__Integer_value] == Mask[o_4, Ref__Integer_value])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != Ref__Integer_value ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    if (0 < len) {
      assume Seq#Length(c) == len;
    }
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall ix: Int, jx: Int :: { c[ix], c[jx] } ix >= 0 && (ix < |c| && (jx >= 0 && (jx < |c| && ix != jx))) ==> c[ix] != c[jx])
      if (*) {
        if (ix_24 >= 0 && (ix_24 < Seq#Length(c) && (jx_24 >= 0 && (jx_24 < Seq#Length(c) && ix_24 != jx_24)))) {
          assert {:msg "  Contract might not be well-formed. Index c[ix] into c might be negative. (test_vector_add_c.vpr@68.12--68.112) [47458]"}
            ix_24 >= 0;
          assert {:msg "  Contract might not be well-formed. Index c[ix] into c might exceed sequence length. (test_vector_add_c.vpr@68.12--68.112) [47459]"}
            ix_24 < Seq#Length(c);
          assert {:msg "  Contract might not be well-formed. Index c[jx] into c might be negative. (test_vector_add_c.vpr@68.12--68.112) [47460]"}
            jx_24 >= 0;
          assert {:msg "  Contract might not be well-formed. Index c[jx] into c might exceed sequence length. (test_vector_add_c.vpr@68.12--68.112) [47461]"}
            jx_24 < Seq#Length(c);
        }
        assume false;
      }
    assume (forall ix_5_2: int, jx_5_2: int ::
      { Seq#Index(c, ix_5_2), Seq#Index(c, jx_5_2) }
      ix_5_2 >= 0 && (ix_5_2 < Seq#Length(c) && (jx_5_2 >= 0 && (jx_5_2 < Seq#Length(c) && ix_5_2 != jx_5_2))) ==> Seq#Index(c, ix_5_2) != Seq#Index(c, jx_5_2)
    );
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall i: Int :: { c[i] } 0 <= i && i < len ==> acc(c[i].Ref__Integer_value, 1 / 2))
      if (*) {
        if (0 <= i_20 && i_20 < len) {
          assert {:msg "  Contract might not be well-formed. Index c[i] into c might be negative. (test_vector_add_c.vpr@69.13--69.91) [47462]"}
            i_20 >= 0;
          assert {:msg "  Contract might not be well-formed. Index c[i] into c might exceed sequence length. (test_vector_add_c.vpr@69.13--69.91) [47463]"}
            i_20 < Seq#Length(c);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource c[i].Ref__Integer_value might not be injective. (test_vector_add_c.vpr@69.13--69.91) [47464]"}
      (forall i_5: int, i_5_1: int ::
      
      (((i_5 != i_5_1 && (0 <= i_5 && i_5 < len)) && (0 <= i_5_1 && i_5_1 < len)) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> Seq#Index(c, i_5) != Seq#Index(c, i_5_1)
    );
    
    // -- Define Inverse Function
      assume (forall i_5: int ::
        { Seq#Index(c, i_5) } { Seq#Index(c, i_5) }
        (0 <= i_5 && i_5 < len) && NoPerm < 1 / 2 ==> qpRange11(Seq#Index(c, i_5)) && invRecv11(Seq#Index(c, i_5)) == i_5
      );
      assume (forall o_4: Ref ::
        { invRecv11(o_4) }
        ((0 <= invRecv11(o_4) && invRecv11(o_4) < len) && NoPerm < 1 / 2) && qpRange11(o_4) ==> Seq#Index(c, invRecv11(o_4)) == o_4
      );
    // Check that permission expression is non-negative for all fields
    assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (test_vector_add_c.vpr@69.13--69.91) [47465]"}
      (forall i_5: int ::
      { Seq#Index(c, i_5) } { Seq#Index(c, i_5) }
      0 <= i_5 && i_5 < len ==> 1 / 2 >= NoPerm
    );
    
    // -- Assume set of fields is nonNull
      assume (forall i_5: int ::
        { Seq#Index(c, i_5) } { Seq#Index(c, i_5) }
        (0 <= i_5 && i_5 < len) && 1 / 2 > NoPerm ==> Seq#Index(c, i_5) != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, Ref__Integer_value] }
        (((0 <= invRecv11(o_4) && invRecv11(o_4) < len) && NoPerm < 1 / 2) && qpRange11(o_4) ==> (NoPerm < 1 / 2 ==> Seq#Index(c, invRecv11(o_4)) == o_4) && QPMask[o_4, Ref__Integer_value] == Mask[o_4, Ref__Integer_value] + 1 / 2) && (!(((0 <= invRecv11(o_4) && invRecv11(o_4) < len) && NoPerm < 1 / 2) && qpRange11(o_4)) ==> QPMask[o_4, Ref__Integer_value] == Mask[o_4, Ref__Integer_value])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != Ref__Integer_value ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
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
    if (0 < len) {
      assume Seq#Length(a_2) == len;
    }
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall i: Int :: { a[i] } 0 <= i && i < len ==> acc(a[i].Ref__Integer_value, write))
      if (*) {
        if (0 <= i_22 && i_22 < len) {
          assert {:msg "  Contract might not be well-formed. Index a[i] into a might be negative. (test_vector_add_c.vpr@71.12--71.90) [47466]"}
            i_22 >= 0;
          assert {:msg "  Contract might not be well-formed. Index a[i] into a might exceed sequence length. (test_vector_add_c.vpr@71.12--71.90) [47467]"}
            i_22 < Seq#Length(a_2);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource a[i].Ref__Integer_value might not be injective. (test_vector_add_c.vpr@71.12--71.90) [47468]"}
      (forall i_7_1: int, i_7_2: int ::
      
      (((i_7_1 != i_7_2 && (0 <= i_7_1 && i_7_1 < len)) && (0 <= i_7_2 && i_7_2 < len)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(a_2, i_7_1) != Seq#Index(a_2, i_7_2)
    );
    
    // -- Define Inverse Function
      assume (forall i_7_1: int ::
        { Seq#Index(a_2, i_7_1) } { Seq#Index(a_2, i_7_1) }
        (0 <= i_7_1 && i_7_1 < len) && NoPerm < FullPerm ==> qpRange12(Seq#Index(a_2, i_7_1)) && invRecv12(Seq#Index(a_2, i_7_1)) == i_7_1
      );
      assume (forall o_4: Ref ::
        { invRecv12(o_4) }
        ((0 <= invRecv12(o_4) && invRecv12(o_4) < len) && NoPerm < FullPerm) && qpRange12(o_4) ==> Seq#Index(a_2, invRecv12(o_4)) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall i_7_1: int ::
        { Seq#Index(a_2, i_7_1) } { Seq#Index(a_2, i_7_1) }
        0 <= i_7_1 && i_7_1 < len ==> Seq#Index(a_2, i_7_1) != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, Ref__Integer_value] }
        (((0 <= invRecv12(o_4) && invRecv12(o_4) < len) && NoPerm < FullPerm) && qpRange12(o_4) ==> (NoPerm < FullPerm ==> Seq#Index(a_2, invRecv12(o_4)) == o_4) && QPMask[o_4, Ref__Integer_value] == PostMask[o_4, Ref__Integer_value] + FullPerm) && (!(((0 <= invRecv12(o_4) && invRecv12(o_4) < len) && NoPerm < FullPerm) && qpRange12(o_4)) ==> QPMask[o_4, Ref__Integer_value] == PostMask[o_4, Ref__Integer_value])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { PostMask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != Ref__Integer_value ==> PostMask[o_4, f_5] == QPMask[o_4, f_5]
      );
    PostMask := QPMask;
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    if (0 < len) {
      assume Seq#Length(b_24) == len;
    }
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall i: Int :: { b[i] } 0 <= i && i < len ==> acc(b[i].Ref__Integer_value, 1 / 2))
      if (*) {
        if (0 <= i_24 && i_24 < len) {
          assert {:msg "  Contract might not be well-formed. Index b[i] into b might be negative. (test_vector_add_c.vpr@73.12--73.90) [47469]"}
            i_24 >= 0;
          assert {:msg "  Contract might not be well-formed. Index b[i] into b might exceed sequence length. (test_vector_add_c.vpr@73.12--73.90) [47470]"}
            i_24 < Seq#Length(b_24);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource b[i].Ref__Integer_value might not be injective. (test_vector_add_c.vpr@73.12--73.90) [47471]"}
      (forall i_9_1: int, i_9_2: int ::
      
      (((i_9_1 != i_9_2 && (0 <= i_9_1 && i_9_1 < len)) && (0 <= i_9_2 && i_9_2 < len)) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> Seq#Index(b_24, i_9_1) != Seq#Index(b_24, i_9_2)
    );
    
    // -- Define Inverse Function
      assume (forall i_9_1: int ::
        { Seq#Index(b_24, i_9_1) } { Seq#Index(b_24, i_9_1) }
        (0 <= i_9_1 && i_9_1 < len) && NoPerm < 1 / 2 ==> qpRange13(Seq#Index(b_24, i_9_1)) && invRecv13(Seq#Index(b_24, i_9_1)) == i_9_1
      );
      assume (forall o_4: Ref ::
        { invRecv13(o_4) }
        ((0 <= invRecv13(o_4) && invRecv13(o_4) < len) && NoPerm < 1 / 2) && qpRange13(o_4) ==> Seq#Index(b_24, invRecv13(o_4)) == o_4
      );
    // Check that permission expression is non-negative for all fields
    assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (test_vector_add_c.vpr@73.12--73.90) [47472]"}
      (forall i_9_1: int ::
      { Seq#Index(b_24, i_9_1) } { Seq#Index(b_24, i_9_1) }
      0 <= i_9_1 && i_9_1 < len ==> 1 / 2 >= NoPerm
    );
    
    // -- Assume set of fields is nonNull
      assume (forall i_9_1: int ::
        { Seq#Index(b_24, i_9_1) } { Seq#Index(b_24, i_9_1) }
        (0 <= i_9_1 && i_9_1 < len) && 1 / 2 > NoPerm ==> Seq#Index(b_24, i_9_1) != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, Ref__Integer_value] }
        (((0 <= invRecv13(o_4) && invRecv13(o_4) < len) && NoPerm < 1 / 2) && qpRange13(o_4) ==> (NoPerm < 1 / 2 ==> Seq#Index(b_24, invRecv13(o_4)) == o_4) && QPMask[o_4, Ref__Integer_value] == PostMask[o_4, Ref__Integer_value] + 1 / 2) && (!(((0 <= invRecv13(o_4) && invRecv13(o_4) < len) && NoPerm < 1 / 2) && qpRange13(o_4)) ==> QPMask[o_4, Ref__Integer_value] == PostMask[o_4, Ref__Integer_value])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { PostMask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != Ref__Integer_value ==> PostMask[o_4, f_5] == QPMask[o_4, f_5]
      );
    PostMask := QPMask;
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    if (0 < len) {
      assume Seq#Length(c) == len;
    }
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall i: Int :: { c[i] } 0 <= i && i < len ==> acc(c[i].Ref__Integer_value, 1 / 2))
      if (*) {
        if (0 <= i_29 && i_29 < len) {
          assert {:msg "  Contract might not be well-formed. Index c[i] into c might be negative. (test_vector_add_c.vpr@75.12--75.90) [47473]"}
            i_29 >= 0;
          assert {:msg "  Contract might not be well-formed. Index c[i] into c might exceed sequence length. (test_vector_add_c.vpr@75.12--75.90) [47474]"}
            i_29 < Seq#Length(c);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource c[i].Ref__Integer_value might not be injective. (test_vector_add_c.vpr@75.12--75.90) [47475]"}
      (forall i_11_1: int, i_11_2: int ::
      
      (((i_11_1 != i_11_2 && (0 <= i_11_1 && i_11_1 < len)) && (0 <= i_11_2 && i_11_2 < len)) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> Seq#Index(c, i_11_1) != Seq#Index(c, i_11_2)
    );
    
    // -- Define Inverse Function
      assume (forall i_11_1: int ::
        { Seq#Index(c, i_11_1) } { Seq#Index(c, i_11_1) }
        (0 <= i_11_1 && i_11_1 < len) && NoPerm < 1 / 2 ==> qpRange14(Seq#Index(c, i_11_1)) && invRecv14(Seq#Index(c, i_11_1)) == i_11_1
      );
      assume (forall o_4: Ref ::
        { invRecv14(o_4) }
        ((0 <= invRecv14(o_4) && invRecv14(o_4) < len) && NoPerm < 1 / 2) && qpRange14(o_4) ==> Seq#Index(c, invRecv14(o_4)) == o_4
      );
    // Check that permission expression is non-negative for all fields
    assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (test_vector_add_c.vpr@75.12--75.90) [47476]"}
      (forall i_11_1: int ::
      { Seq#Index(c, i_11_1) } { Seq#Index(c, i_11_1) }
      0 <= i_11_1 && i_11_1 < len ==> 1 / 2 >= NoPerm
    );
    
    // -- Assume set of fields is nonNull
      assume (forall i_11_1: int ::
        { Seq#Index(c, i_11_1) } { Seq#Index(c, i_11_1) }
        (0 <= i_11_1 && i_11_1 < len) && 1 / 2 > NoPerm ==> Seq#Index(c, i_11_1) != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, Ref__Integer_value] }
        (((0 <= invRecv14(o_4) && invRecv14(o_4) < len) && NoPerm < 1 / 2) && qpRange14(o_4) ==> (NoPerm < 1 / 2 ==> Seq#Index(c, invRecv14(o_4)) == o_4) && QPMask[o_4, Ref__Integer_value] == PostMask[o_4, Ref__Integer_value] + 1 / 2) && (!(((0 <= invRecv14(o_4) && invRecv14(o_4) < len) && NoPerm < 1 / 2) && qpRange14(o_4)) ==> QPMask[o_4, Ref__Integer_value] == PostMask[o_4, Ref__Integer_value])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { PostMask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != Ref__Integer_value ==> PostMask[o_4, f_5] == QPMask[o_4, f_5]
      );
    PostMask := QPMask;
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall i: Int :: { old(b[i]) } 0 <= i && i < len ==> b[i].Ref__Integer_value == old(b[i].Ref__Integer_value))
      if (*) {
        if (0 <= i_30 && i_30 < len) {
          assert {:msg "  Contract might not be well-formed. Index b[i] into b might be negative. (test_vector_add_c.vpr@76.12--76.112) [47477]"}
            i_30 >= 0;
          assert {:msg "  Contract might not be well-formed. Index b[i] into b might exceed sequence length. (test_vector_add_c.vpr@76.12--76.112) [47478]"}
            i_30 < Seq#Length(b_24);
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access b[i].Ref__Integer_value (test_vector_add_c.vpr@76.12--76.112) [47479]"}
            HasDirectPerm(PostMask, Seq#Index(b_24, i_30), Ref__Integer_value);
          assert {:msg "  Contract might not be well-formed. Index b[i] into b might be negative. (test_vector_add_c.vpr@76.12--76.112) [47480]"}
            i_30 >= 0;
          assert {:msg "  Contract might not be well-formed. Index b[i] into b might exceed sequence length. (test_vector_add_c.vpr@76.12--76.112) [47481]"}
            i_30 < Seq#Length(b_24);
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access b[i].Ref__Integer_value (test_vector_add_c.vpr@76.12--76.112) [47482]"}
            HasDirectPerm(oldMask, Seq#Index(b_24, i_30), Ref__Integer_value);
        }
        assume false;
      }
    assume (forall i_13_1: int ::
      { Seq#Index(b_24, i_13_1) }
      0 <= i_13_1 && i_13_1 < len ==> PostHeap[Seq#Index(b_24, i_13_1), Ref__Integer_value] == oldHeap[Seq#Index(b_24, i_13_1), Ref__Integer_value]
    );
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall i: Int :: { old(c[i]) } 0 <= i && i < len ==> c[i].Ref__Integer_value == old(c[i].Ref__Integer_value))
      if (*) {
        if (0 <= i_31 && i_31 < len) {
          assert {:msg "  Contract might not be well-formed. Index c[i] into c might be negative. (test_vector_add_c.vpr@77.12--77.112) [47483]"}
            i_31 >= 0;
          assert {:msg "  Contract might not be well-formed. Index c[i] into c might exceed sequence length. (test_vector_add_c.vpr@77.12--77.112) [47484]"}
            i_31 < Seq#Length(c);
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access c[i].Ref__Integer_value (test_vector_add_c.vpr@77.12--77.112) [47485]"}
            HasDirectPerm(PostMask, Seq#Index(c, i_31), Ref__Integer_value);
          assert {:msg "  Contract might not be well-formed. Index c[i] into c might be negative. (test_vector_add_c.vpr@77.12--77.112) [47486]"}
            i_31 >= 0;
          assert {:msg "  Contract might not be well-formed. Index c[i] into c might exceed sequence length. (test_vector_add_c.vpr@77.12--77.112) [47487]"}
            i_31 < Seq#Length(c);
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access c[i].Ref__Integer_value (test_vector_add_c.vpr@77.12--77.112) [47488]"}
            HasDirectPerm(oldMask, Seq#Index(c, i_31), Ref__Integer_value);
        }
        assume false;
      }
    assume (forall i_15: int ::
      { Seq#Index(c, i_15) }
      0 <= i_15 && i_15 < len ==> PostHeap[Seq#Index(c, i_15), Ref__Integer_value] == oldHeap[Seq#Index(c, i_15), Ref__Integer_value]
    );
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall i: Int :: { a[i] } { b[i] } { c[i] } 0 <= i && i < len ==> a[i].Ref__Integer_value == b[i].Ref__Integer_value + c[i].Ref__Integer_value)
      if (*) {
        if (0 <= i_32 && i_32 < len) {
          assert {:msg "  Contract might not be well-formed. Index a[i] into a might be negative. (test_vector_add_c.vpr@78.12--78.133) [47489]"}
            i_32 >= 0;
          assert {:msg "  Contract might not be well-formed. Index a[i] into a might exceed sequence length. (test_vector_add_c.vpr@78.12--78.133) [47490]"}
            i_32 < Seq#Length(a_2);
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access a[i].Ref__Integer_value (test_vector_add_c.vpr@78.12--78.133) [47491]"}
            HasDirectPerm(PostMask, Seq#Index(a_2, i_32), Ref__Integer_value);
          assert {:msg "  Contract might not be well-formed. Index b[i] into b might be negative. (test_vector_add_c.vpr@78.12--78.133) [47492]"}
            i_32 >= 0;
          assert {:msg "  Contract might not be well-formed. Index b[i] into b might exceed sequence length. (test_vector_add_c.vpr@78.12--78.133) [47493]"}
            i_32 < Seq#Length(b_24);
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access b[i].Ref__Integer_value (test_vector_add_c.vpr@78.12--78.133) [47494]"}
            HasDirectPerm(PostMask, Seq#Index(b_24, i_32), Ref__Integer_value);
          assert {:msg "  Contract might not be well-formed. Index c[i] into c might be negative. (test_vector_add_c.vpr@78.12--78.133) [47495]"}
            i_32 >= 0;
          assert {:msg "  Contract might not be well-formed. Index c[i] into c might exceed sequence length. (test_vector_add_c.vpr@78.12--78.133) [47496]"}
            i_32 < Seq#Length(c);
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access c[i].Ref__Integer_value (test_vector_add_c.vpr@78.12--78.133) [47497]"}
            HasDirectPerm(PostMask, Seq#Index(c, i_32), Ref__Integer_value);
        }
        assume false;
      }
    assume (forall i_17: int ::
      { Seq#Index(a_2, i_17) } { Seq#Index(b_24, i_17) } { Seq#Index(c, i_17) }
      0 <= i_17 && i_17 < len ==> PostHeap[Seq#Index(a_2, i_17), Ref__Integer_value] == PostHeap[Seq#Index(b_24, i_17), Ref__Integer_value] + PostHeap[Seq#Index(c, i_17), Ref__Integer_value]
    );
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: inhale false -- test_vector_add_c.vpr@80.3--80.15
    assume false;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    if (0 < len) {
      assert {:msg "  Postcondition of Ref__loop_main_69 might not hold. Assertion |a| == len might not hold. (test_vector_add_c.vpr@70.11--70.37) [47498]"}
        Seq#Length(a_2) == len;
    }
    havoc QPMask;
    
    // -- check that the permission amount is positive
      
    
    // -- check if receiver a[i] is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource a[i].Ref__Integer_value might not be injective. (test_vector_add_c.vpr@71.12--71.90) [47499]"}
        (forall i_18_1: int, i_18_2: int ::
        { neverTriggered15(i_18_1), neverTriggered15(i_18_2) }
        (((i_18_1 != i_18_2 && (0 <= i_18_1 && i_18_1 < len)) && (0 <= i_18_2 && i_18_2 < len)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(a_2, i_18_1) != Seq#Index(a_2, i_18_2)
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Postcondition of Ref__loop_main_69 might not hold. There might be insufficient permission to access a[i].Ref__Integer_value (test_vector_add_c.vpr@71.12--71.90) [47500]"}
        (forall i_18_1: int ::
        { Seq#Index(a_2, i_18_1) } { Seq#Index(a_2, i_18_1) }
        0 <= i_18_1 && i_18_1 < len ==> Mask[Seq#Index(a_2, i_18_1), Ref__Integer_value] >= FullPerm
      );
    
    // -- assumptions for inverse of receiver a[i]
      assume (forall i_18_1: int ::
        { Seq#Index(a_2, i_18_1) } { Seq#Index(a_2, i_18_1) }
        (0 <= i_18_1 && i_18_1 < len) && NoPerm < FullPerm ==> qpRange15(Seq#Index(a_2, i_18_1)) && invRecv15(Seq#Index(a_2, i_18_1)) == i_18_1
      );
      assume (forall o_4: Ref ::
        { invRecv15(o_4) }
        (0 <= invRecv15(o_4) && invRecv15(o_4) < len) && (NoPerm < FullPerm && qpRange15(o_4)) ==> Seq#Index(a_2, invRecv15(o_4)) == o_4
      );
    
    // -- assume permission updates for field Ref__Integer_value
      assume (forall o_4: Ref ::
        { QPMask[o_4, Ref__Integer_value] }
        ((0 <= invRecv15(o_4) && invRecv15(o_4) < len) && (NoPerm < FullPerm && qpRange15(o_4)) ==> Seq#Index(a_2, invRecv15(o_4)) == o_4 && QPMask[o_4, Ref__Integer_value] == Mask[o_4, Ref__Integer_value] - FullPerm) && (!((0 <= invRecv15(o_4) && invRecv15(o_4) < len) && (NoPerm < FullPerm && qpRange15(o_4))) ==> QPMask[o_4, Ref__Integer_value] == Mask[o_4, Ref__Integer_value])
      );
    
    // -- assume permission updates for independent locations
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { QPMask[o_4, f_5] }
        f_5 != Ref__Integer_value ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    if (0 < len) {
      assert {:msg "  Postcondition of Ref__loop_main_69 might not hold. Assertion |b| == len might not hold. (test_vector_add_c.vpr@72.11--72.37) [47501]"}
        Seq#Length(b_24) == len;
    }
    havoc QPMask;
    
    // -- check that the permission amount is positive
      assert {:msg "  Postcondition of Ref__loop_main_69 might not hold. Fraction 1 / 2 might be negative. (test_vector_add_c.vpr@73.12--73.90) [47502]"}
        (forall i_19: int ::
        { Seq#Index(b_24, i_19) } { Seq#Index(b_24, i_19) }
        (0 <= i_19 && i_19 < len) && dummyFunction(Heap[Seq#Index(b_24, i_19), Ref__Integer_value]) ==> 1 / 2 >= NoPerm
      );
    
    // -- check if receiver b[i] is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource b[i].Ref__Integer_value might not be injective. (test_vector_add_c.vpr@73.12--73.90) [47503]"}
        (forall i_19: int, i_19_1: int ::
        { neverTriggered16(i_19), neverTriggered16(i_19_1) }
        (((i_19 != i_19_1 && (0 <= i_19 && i_19 < len)) && (0 <= i_19_1 && i_19_1 < len)) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> Seq#Index(b_24, i_19) != Seq#Index(b_24, i_19_1)
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Postcondition of Ref__loop_main_69 might not hold. There might be insufficient permission to access b[i].Ref__Integer_value (test_vector_add_c.vpr@73.12--73.90) [47504]"}
        (forall i_19: int ::
        { Seq#Index(b_24, i_19) } { Seq#Index(b_24, i_19) }
        0 <= i_19 && i_19 < len ==> Mask[Seq#Index(b_24, i_19), Ref__Integer_value] >= 1 / 2
      );
    
    // -- assumptions for inverse of receiver b[i]
      assume (forall i_19: int ::
        { Seq#Index(b_24, i_19) } { Seq#Index(b_24, i_19) }
        (0 <= i_19 && i_19 < len) && NoPerm < 1 / 2 ==> qpRange16(Seq#Index(b_24, i_19)) && invRecv16(Seq#Index(b_24, i_19)) == i_19
      );
      assume (forall o_4: Ref ::
        { invRecv16(o_4) }
        (0 <= invRecv16(o_4) && invRecv16(o_4) < len) && (NoPerm < 1 / 2 && qpRange16(o_4)) ==> Seq#Index(b_24, invRecv16(o_4)) == o_4
      );
    
    // -- assume permission updates for field Ref__Integer_value
      assume (forall o_4: Ref ::
        { QPMask[o_4, Ref__Integer_value] }
        ((0 <= invRecv16(o_4) && invRecv16(o_4) < len) && (NoPerm < 1 / 2 && qpRange16(o_4)) ==> Seq#Index(b_24, invRecv16(o_4)) == o_4 && QPMask[o_4, Ref__Integer_value] == Mask[o_4, Ref__Integer_value] - 1 / 2) && (!((0 <= invRecv16(o_4) && invRecv16(o_4) < len) && (NoPerm < 1 / 2 && qpRange16(o_4))) ==> QPMask[o_4, Ref__Integer_value] == Mask[o_4, Ref__Integer_value])
      );
    
    // -- assume permission updates for independent locations
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { QPMask[o_4, f_5] }
        f_5 != Ref__Integer_value ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    if (0 < len) {
      assert {:msg "  Postcondition of Ref__loop_main_69 might not hold. Assertion |c| == len might not hold. (test_vector_add_c.vpr@74.11--74.37) [47505]"}
        Seq#Length(c) == len;
    }
    havoc QPMask;
    
    // -- check that the permission amount is positive
      assert {:msg "  Postcondition of Ref__loop_main_69 might not hold. Fraction 1 / 2 might be negative. (test_vector_add_c.vpr@75.12--75.90) [47506]"}
        (forall i_20_1: int ::
        { Seq#Index(c, i_20_1) } { Seq#Index(c, i_20_1) }
        (0 <= i_20_1 && i_20_1 < len) && dummyFunction(Heap[Seq#Index(c, i_20_1), Ref__Integer_value]) ==> 1 / 2 >= NoPerm
      );
    
    // -- check if receiver c[i] is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource c[i].Ref__Integer_value might not be injective. (test_vector_add_c.vpr@75.12--75.90) [47507]"}
        (forall i_20_1: int, i_20_2: int ::
        { neverTriggered17(i_20_1), neverTriggered17(i_20_2) }
        (((i_20_1 != i_20_2 && (0 <= i_20_1 && i_20_1 < len)) && (0 <= i_20_2 && i_20_2 < len)) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> Seq#Index(c, i_20_1) != Seq#Index(c, i_20_2)
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Postcondition of Ref__loop_main_69 might not hold. There might be insufficient permission to access c[i].Ref__Integer_value (test_vector_add_c.vpr@75.12--75.90) [47508]"}
        (forall i_20_1: int ::
        { Seq#Index(c, i_20_1) } { Seq#Index(c, i_20_1) }
        0 <= i_20_1 && i_20_1 < len ==> Mask[Seq#Index(c, i_20_1), Ref__Integer_value] >= 1 / 2
      );
    
    // -- assumptions for inverse of receiver c[i]
      assume (forall i_20_1: int ::
        { Seq#Index(c, i_20_1) } { Seq#Index(c, i_20_1) }
        (0 <= i_20_1 && i_20_1 < len) && NoPerm < 1 / 2 ==> qpRange17(Seq#Index(c, i_20_1)) && invRecv17(Seq#Index(c, i_20_1)) == i_20_1
      );
      assume (forall o_4: Ref ::
        { invRecv17(o_4) }
        (0 <= invRecv17(o_4) && invRecv17(o_4) < len) && (NoPerm < 1 / 2 && qpRange17(o_4)) ==> Seq#Index(c, invRecv17(o_4)) == o_4
      );
    
    // -- assume permission updates for field Ref__Integer_value
      assume (forall o_4: Ref ::
        { QPMask[o_4, Ref__Integer_value] }
        ((0 <= invRecv17(o_4) && invRecv17(o_4) < len) && (NoPerm < 1 / 2 && qpRange17(o_4)) ==> Seq#Index(c, invRecv17(o_4)) == o_4 && QPMask[o_4, Ref__Integer_value] == Mask[o_4, Ref__Integer_value] - 1 / 2) && (!((0 <= invRecv17(o_4) && invRecv17(o_4) < len) && (NoPerm < 1 / 2 && qpRange17(o_4))) ==> QPMask[o_4, Ref__Integer_value] == Mask[o_4, Ref__Integer_value])
      );
    
    // -- assume permission updates for independent locations
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { QPMask[o_4, f_5] }
        f_5 != Ref__Integer_value ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    if (*) {
      if (0 <= i_21 && i_21 < len) {
        assert {:msg "  Postcondition of Ref__loop_main_69 might not hold. Assertion b[i].Ref__Integer_value == old(b[i].Ref__Integer_value) might not hold. (test_vector_add_c.vpr@76.12--76.112) [47509]"}
          Heap[Seq#Index(b_24, i_21), Ref__Integer_value] == oldHeap[Seq#Index(b_24, i_21), Ref__Integer_value];
      }
      assume false;
    }
    assume (forall i_22_1_1: int ::
      { Seq#Index(b_24, i_22_1_1) }
      0 <= i_22_1_1 && i_22_1_1 < len ==> Heap[Seq#Index(b_24, i_22_1_1), Ref__Integer_value] == oldHeap[Seq#Index(b_24, i_22_1_1), Ref__Integer_value]
    );
    if (*) {
      if (0 <= i_23 && i_23 < len) {
        assert {:msg "  Postcondition of Ref__loop_main_69 might not hold. Assertion c[i].Ref__Integer_value == old(c[i].Ref__Integer_value) might not hold. (test_vector_add_c.vpr@77.12--77.112) [47510]"}
          Heap[Seq#Index(c, i_23), Ref__Integer_value] == oldHeap[Seq#Index(c, i_23), Ref__Integer_value];
      }
      assume false;
    }
    assume (forall i_24_1_1: int ::
      { Seq#Index(c, i_24_1_1) }
      0 <= i_24_1_1 && i_24_1_1 < len ==> Heap[Seq#Index(c, i_24_1_1), Ref__Integer_value] == oldHeap[Seq#Index(c, i_24_1_1), Ref__Integer_value]
    );
    if (*) {
      if (0 <= i_25 && i_25 < len) {
        assert {:msg "  Postcondition of Ref__loop_main_69 might not hold. Assertion a[i].Ref__Integer_value == b[i].Ref__Integer_value + c[i].Ref__Integer_value might not hold. (test_vector_add_c.vpr@78.12--78.133) [47511]"}
          Heap[Seq#Index(a_2, i_25), Ref__Integer_value] == Heap[Seq#Index(b_24, i_25), Ref__Integer_value] + Heap[Seq#Index(c, i_25), Ref__Integer_value];
      }
      assume false;
    }
    assume (forall i_26_1_1: int ::
      { Seq#Index(a_2, i_26_1_1) } { Seq#Index(b_24, i_26_1_1) } { Seq#Index(c, i_26_1_1) }
      0 <= i_26_1_1 && i_26_1_1 < len ==> Heap[Seq#Index(a_2, i_26_1_1), Ref__Integer_value] == Heap[Seq#Index(b_24, i_26_1_1), Ref__Integer_value] + Heap[Seq#Index(c, i_26_1_1), Ref__Integer_value]
    );
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method Ref__loop_body_69
// ==================================================

procedure Ref__loop_body_69(diz: Ref, current_thread_id: int, len: int, b_24: (Seq Ref), a_2: (Seq Ref), i: int, c: (Seq Ref)) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var __flatten_2: Ref;
  var __flatten_4: Ref;
  var __flatten_5: Ref;
  var __flatten_3: int;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleHeap: HeapType;
  
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
    assume 0 <= i;
    assume i < len;
    assume state(Heap, Mask);
    assume Seq#Length(a_2) == len;
    assume state(Heap, Mask);
    
    // -- Check definedness of acc(a[i].Ref__Integer_value, write)
      assert {:msg "  Contract might not be well-formed. Index a[i] into a might be negative. (test_vector_add_c.vpr@88.12--88.47) [47512]"}
        i >= 0;
      assert {:msg "  Contract might not be well-formed. Index a[i] into a might exceed sequence length. (test_vector_add_c.vpr@88.12--88.47) [47513]"}
        i < Seq#Length(a_2);
    perm := FullPerm;
    assume Seq#Index(a_2, i) != null;
    Mask := Mask[Seq#Index(a_2, i), Ref__Integer_value:=Mask[Seq#Index(a_2, i), Ref__Integer_value] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume Seq#Length(b_24) == len;
    assume state(Heap, Mask);
    
    // -- Check definedness of acc(b[i].Ref__Integer_value, 1 / 2)
      assert {:msg "  Contract might not be well-formed. Index b[i] into b might be negative. (test_vector_add_c.vpr@90.12--90.47) [47514]"}
        i >= 0;
      assert {:msg "  Contract might not be well-formed. Index b[i] into b might exceed sequence length. (test_vector_add_c.vpr@90.12--90.47) [47515]"}
        i < Seq#Length(b_24);
    perm := 1 / 2;
    assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (test_vector_add_c.vpr@90.12--90.47) [47516]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> Seq#Index(b_24, i) != null;
    Mask := Mask[Seq#Index(b_24, i), Ref__Integer_value:=Mask[Seq#Index(b_24, i), Ref__Integer_value] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume Seq#Length(c) == len;
    assume state(Heap, Mask);
    
    // -- Check definedness of acc(c[i].Ref__Integer_value, 1 / 2)
      assert {:msg "  Contract might not be well-formed. Index c[i] into c might be negative. (test_vector_add_c.vpr@92.12--92.47) [47517]"}
        i >= 0;
      assert {:msg "  Contract might not be well-formed. Index c[i] into c might exceed sequence length. (test_vector_add_c.vpr@92.12--92.47) [47518]"}
        i < Seq#Length(c);
    perm := 1 / 2;
    assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (test_vector_add_c.vpr@92.12--92.47) [47519]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> Seq#Index(c, i) != null;
    Mask := Mask[Seq#Index(c, i), Ref__Integer_value:=Mask[Seq#Index(c, i), Ref__Integer_value] + perm];
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
    assume 0 <= i;
    assume i < len;
    assume state(PostHeap, PostMask);
    assume Seq#Length(a_2) == len;
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of acc(a[i].Ref__Integer_value, write)
      assert {:msg "  Contract might not be well-formed. Index a[i] into a might be negative. (test_vector_add_c.vpr@95.11--95.46) [47520]"}
        i >= 0;
      assert {:msg "  Contract might not be well-formed. Index a[i] into a might exceed sequence length. (test_vector_add_c.vpr@95.11--95.46) [47521]"}
        i < Seq#Length(a_2);
    perm := FullPerm;
    assume Seq#Index(a_2, i) != null;
    PostMask := PostMask[Seq#Index(a_2, i), Ref__Integer_value:=PostMask[Seq#Index(a_2, i), Ref__Integer_value] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    assume Seq#Length(b_24) == len;
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of acc(b[i].Ref__Integer_value, 1 / 2)
      assert {:msg "  Contract might not be well-formed. Index b[i] into b might be negative. (test_vector_add_c.vpr@97.11--97.46) [47522]"}
        i >= 0;
      assert {:msg "  Contract might not be well-formed. Index b[i] into b might exceed sequence length. (test_vector_add_c.vpr@97.11--97.46) [47523]"}
        i < Seq#Length(b_24);
    perm := 1 / 2;
    assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (test_vector_add_c.vpr@97.11--97.46) [47524]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> Seq#Index(b_24, i) != null;
    PostMask := PostMask[Seq#Index(b_24, i), Ref__Integer_value:=PostMask[Seq#Index(b_24, i), Ref__Integer_value] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    assume Seq#Length(c) == len;
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of acc(c[i].Ref__Integer_value, 1 / 2)
      assert {:msg "  Contract might not be well-formed. Index c[i] into c might be negative. (test_vector_add_c.vpr@99.11--99.46) [47525]"}
        i >= 0;
      assert {:msg "  Contract might not be well-formed. Index c[i] into c might exceed sequence length. (test_vector_add_c.vpr@99.11--99.46) [47526]"}
        i < Seq#Length(c);
    perm := 1 / 2;
    assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (test_vector_add_c.vpr@99.11--99.46) [47527]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> Seq#Index(c, i) != null;
    PostMask := PostMask[Seq#Index(c, i), Ref__Integer_value:=PostMask[Seq#Index(c, i), Ref__Integer_value] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of b[i].Ref__Integer_value == old(b[i].Ref__Integer_value)
      assert {:msg "  Contract might not be well-formed. Index b[i] into b might be negative. (test_vector_add_c.vpr@100.11--100.66) [47528]"}
        i >= 0;
      assert {:msg "  Contract might not be well-formed. Index b[i] into b might exceed sequence length. (test_vector_add_c.vpr@100.11--100.66) [47529]"}
        i < Seq#Length(b_24);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access b[i].Ref__Integer_value (test_vector_add_c.vpr@100.11--100.66) [47530]"}
        HasDirectPerm(PostMask, Seq#Index(b_24, i), Ref__Integer_value);
      assert {:msg "  Contract might not be well-formed. Index b[i] into b might be negative. (test_vector_add_c.vpr@100.11--100.66) [47531]"}
        i >= 0;
      assert {:msg "  Contract might not be well-formed. Index b[i] into b might exceed sequence length. (test_vector_add_c.vpr@100.11--100.66) [47532]"}
        i < Seq#Length(b_24);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access b[i].Ref__Integer_value (test_vector_add_c.vpr@100.11--100.66) [47533]"}
        HasDirectPerm(oldMask, Seq#Index(b_24, i), Ref__Integer_value);
    assume PostHeap[Seq#Index(b_24, i), Ref__Integer_value] == oldHeap[Seq#Index(b_24, i), Ref__Integer_value];
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of c[i].Ref__Integer_value == old(c[i].Ref__Integer_value)
      assert {:msg "  Contract might not be well-formed. Index c[i] into c might be negative. (test_vector_add_c.vpr@101.11--101.66) [47534]"}
        i >= 0;
      assert {:msg "  Contract might not be well-formed. Index c[i] into c might exceed sequence length. (test_vector_add_c.vpr@101.11--101.66) [47535]"}
        i < Seq#Length(c);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access c[i].Ref__Integer_value (test_vector_add_c.vpr@101.11--101.66) [47536]"}
        HasDirectPerm(PostMask, Seq#Index(c, i), Ref__Integer_value);
      assert {:msg "  Contract might not be well-formed. Index c[i] into c might be negative. (test_vector_add_c.vpr@101.11--101.66) [47537]"}
        i >= 0;
      assert {:msg "  Contract might not be well-formed. Index c[i] into c might exceed sequence length. (test_vector_add_c.vpr@101.11--101.66) [47538]"}
        i < Seq#Length(c);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access c[i].Ref__Integer_value (test_vector_add_c.vpr@101.11--101.66) [47539]"}
        HasDirectPerm(oldMask, Seq#Index(c, i), Ref__Integer_value);
    assume PostHeap[Seq#Index(c, i), Ref__Integer_value] == oldHeap[Seq#Index(c, i), Ref__Integer_value];
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of a[i].Ref__Integer_value == b[i].Ref__Integer_value + c[i].Ref__Integer_value
      assert {:msg "  Contract might not be well-formed. Index a[i] into a might be negative. (test_vector_add_c.vpr@102.11--102.87) [47540]"}
        i >= 0;
      assert {:msg "  Contract might not be well-formed. Index a[i] into a might exceed sequence length. (test_vector_add_c.vpr@102.11--102.87) [47541]"}
        i < Seq#Length(a_2);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access a[i].Ref__Integer_value (test_vector_add_c.vpr@102.11--102.87) [47542]"}
        HasDirectPerm(PostMask, Seq#Index(a_2, i), Ref__Integer_value);
      assert {:msg "  Contract might not be well-formed. Index b[i] into b might be negative. (test_vector_add_c.vpr@102.11--102.87) [47543]"}
        i >= 0;
      assert {:msg "  Contract might not be well-formed. Index b[i] into b might exceed sequence length. (test_vector_add_c.vpr@102.11--102.87) [47544]"}
        i < Seq#Length(b_24);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access b[i].Ref__Integer_value (test_vector_add_c.vpr@102.11--102.87) [47545]"}
        HasDirectPerm(PostMask, Seq#Index(b_24, i), Ref__Integer_value);
      assert {:msg "  Contract might not be well-formed. Index c[i] into c might be negative. (test_vector_add_c.vpr@102.11--102.87) [47546]"}
        i >= 0;
      assert {:msg "  Contract might not be well-formed. Index c[i] into c might exceed sequence length. (test_vector_add_c.vpr@102.11--102.87) [47547]"}
        i < Seq#Length(c);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access c[i].Ref__Integer_value (test_vector_add_c.vpr@102.11--102.87) [47548]"}
        HasDirectPerm(PostMask, Seq#Index(c, i), Ref__Integer_value);
    assume PostHeap[Seq#Index(a_2, i), Ref__Integer_value] == PostHeap[Seq#Index(b_24, i), Ref__Integer_value] + PostHeap[Seq#Index(c, i), Ref__Integer_value];
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Assumptions about local variables
    assume Heap[__flatten_2, $allocated];
    assume Heap[__flatten_4, $allocated];
    assume Heap[__flatten_5, $allocated];
  
  // -- Translating statement: __flatten_2 := a[i] -- test_vector_add_c.vpr@108.3--108.22
    
    // -- Check definedness of a[i]
      assert {:msg "  Assignment might fail. Index a[i] into a might be negative. (test_vector_add_c.vpr@108.3--108.22) [47549]"}
        i >= 0;
      assert {:msg "  Assignment might fail. Index a[i] into a might exceed sequence length. (test_vector_add_c.vpr@108.3--108.22) [47550]"}
        i < Seq#Length(a_2);
    __flatten_2 := Seq#Index(a_2, i);
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_4 := b[i] -- test_vector_add_c.vpr@109.3--109.22
    
    // -- Check definedness of b[i]
      assert {:msg "  Assignment might fail. Index b[i] into b might be negative. (test_vector_add_c.vpr@109.3--109.22) [47551]"}
        i >= 0;
      assert {:msg "  Assignment might fail. Index b[i] into b might exceed sequence length. (test_vector_add_c.vpr@109.3--109.22) [47552]"}
        i < Seq#Length(b_24);
    __flatten_4 := Seq#Index(b_24, i);
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_5 := c[i] -- test_vector_add_c.vpr@110.3--110.22
    
    // -- Check definedness of c[i]
      assert {:msg "  Assignment might fail. Index c[i] into c might be negative. (test_vector_add_c.vpr@110.3--110.22) [47553]"}
        i >= 0;
      assert {:msg "  Assignment might fail. Index c[i] into c might exceed sequence length. (test_vector_add_c.vpr@110.3--110.22) [47554]"}
        i < Seq#Length(c);
    __flatten_5 := Seq#Index(c, i);
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_3 := __flatten_4.Ref__Integer_value +
  //   __flatten_5.Ref__Integer_value -- test_vector_add_c.vpr@111.3--111.81
    
    // -- Check definedness of __flatten_4.Ref__Integer_value + __flatten_5.Ref__Integer_value
      assert {:msg "  Assignment might fail. There might be insufficient permission to access __flatten_4.Ref__Integer_value (test_vector_add_c.vpr@111.3--111.81) [47555]"}
        HasDirectPerm(Mask, __flatten_4, Ref__Integer_value);
      assert {:msg "  Assignment might fail. There might be insufficient permission to access __flatten_5.Ref__Integer_value (test_vector_add_c.vpr@111.3--111.81) [47556]"}
        HasDirectPerm(Mask, __flatten_5, Ref__Integer_value);
    __flatten_3 := Heap[__flatten_4, Ref__Integer_value] + Heap[__flatten_5, Ref__Integer_value];
    assume state(Heap, Mask);
  
  // -- Translating statement: __flatten_2.Ref__Integer_value := __flatten_3 -- test_vector_add_c.vpr@112.3--112.48
    assert {:msg "  Assignment might fail. There might be insufficient permission to access __flatten_2.Ref__Integer_value (test_vector_add_c.vpr@112.3--112.48) [47557]"}
      FullPerm == Mask[__flatten_2, Ref__Integer_value];
    Heap := Heap[__flatten_2, Ref__Integer_value:=__flatten_3];
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    assert {:msg "  Postcondition of Ref__loop_body_69 might not hold. Assertion 0 <= i might not hold. (test_vector_add_c.vpr@93.11--93.32) [47558]"}
      0 <= i;
    assert {:msg "  Postcondition of Ref__loop_body_69 might not hold. Assertion i < len might not hold. (test_vector_add_c.vpr@93.11--93.32) [47559]"}
      i < len;
    assert {:msg "  Postcondition of Ref__loop_body_69 might not hold. Assertion |a| == len might not hold. (test_vector_add_c.vpr@94.11--94.21) [47560]"}
      Seq#Length(a_2) == len;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of Ref__loop_body_69 might not hold. There might be insufficient permission to access a[i].Ref__Integer_value (test_vector_add_c.vpr@95.11--95.46) [47561]"}
        perm <= Mask[Seq#Index(a_2, i), Ref__Integer_value];
    }
    Mask := Mask[Seq#Index(a_2, i), Ref__Integer_value:=Mask[Seq#Index(a_2, i), Ref__Integer_value] - perm];
    assert {:msg "  Postcondition of Ref__loop_body_69 might not hold. Assertion |b| == len might not hold. (test_vector_add_c.vpr@96.11--96.21) [47562]"}
      Seq#Length(b_24) == len;
    perm := 1 / 2;
    assert {:msg "  Postcondition of Ref__loop_body_69 might not hold. Fraction 1 / 2 might be negative. (test_vector_add_c.vpr@97.11--97.46) [47563]"}
      perm >= NoPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of Ref__loop_body_69 might not hold. There might be insufficient permission to access b[i].Ref__Integer_value (test_vector_add_c.vpr@97.11--97.46) [47564]"}
        perm <= Mask[Seq#Index(b_24, i), Ref__Integer_value];
    }
    Mask := Mask[Seq#Index(b_24, i), Ref__Integer_value:=Mask[Seq#Index(b_24, i), Ref__Integer_value] - perm];
    assert {:msg "  Postcondition of Ref__loop_body_69 might not hold. Assertion |c| == len might not hold. (test_vector_add_c.vpr@98.11--98.21) [47565]"}
      Seq#Length(c) == len;
    perm := 1 / 2;
    assert {:msg "  Postcondition of Ref__loop_body_69 might not hold. Fraction 1 / 2 might be negative. (test_vector_add_c.vpr@99.11--99.46) [47566]"}
      perm >= NoPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of Ref__loop_body_69 might not hold. There might be insufficient permission to access c[i].Ref__Integer_value (test_vector_add_c.vpr@99.11--99.46) [47567]"}
        perm <= Mask[Seq#Index(c, i), Ref__Integer_value];
    }
    Mask := Mask[Seq#Index(c, i), Ref__Integer_value:=Mask[Seq#Index(c, i), Ref__Integer_value] - perm];
    assert {:msg "  Postcondition of Ref__loop_body_69 might not hold. Assertion b[i].Ref__Integer_value == old(b[i].Ref__Integer_value) might not hold. (test_vector_add_c.vpr@100.11--100.66) [47568]"}
      Heap[Seq#Index(b_24, i), Ref__Integer_value] == oldHeap[Seq#Index(b_24, i), Ref__Integer_value];
    assert {:msg "  Postcondition of Ref__loop_body_69 might not hold. Assertion c[i].Ref__Integer_value == old(c[i].Ref__Integer_value) might not hold. (test_vector_add_c.vpr@101.11--101.66) [47569]"}
      Heap[Seq#Index(c, i), Ref__Integer_value] == oldHeap[Seq#Index(c, i), Ref__Integer_value];
    assert {:msg "  Postcondition of Ref__loop_body_69 might not hold. Assertion a[i].Ref__Integer_value == b[i].Ref__Integer_value + c[i].Ref__Integer_value might not hold. (test_vector_add_c.vpr@102.11--102.87) [47570]"}
      Heap[Seq#Index(a_2, i), Ref__Integer_value] == Heap[Seq#Index(b_24, i), Ref__Integer_value] + Heap[Seq#Index(c, i), Ref__Integer_value];
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method Ref__vector_add
// ==================================================

procedure Ref__vector_add(diz: Ref, current_thread_id: int, a_2: (Seq Ref), b_24: (Seq Ref), c: (Seq Ref), len: int) returns ()
  modifies Heap, Mask;
{
  var ix_12: int;
  var jx_12: int;
  var i_34: int;
  var QPMask: MaskType;
  var ix_15: int;
  var jx_15: int;
  var i_36: int;
  var ix_17: int;
  var jx_17: int;
  var i_43: int;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var i_45: int;
  var i_56: int;
  var i_47: int;
  var i_48: int;
  var i_58: int;
  var i_50: int;
  var PreCallHeap: HeapType;
  var PreCallMask: MaskType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ix_6: int;
  var jx_6: int;
  var ix_8_1: int;
  var jx_8_1: int;
  var ix_10: int;
  var jx_10: int;
  var ExhaleHeap: HeapType;
  var i_21: int;
  var i_23: int;
  var i_25: int;
  
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
    assume Seq#Length(a_2) == len;
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall ix: Int, jx: Int :: { a[ix], a[jx] } ix >= 0 && (ix < |a| && (jx >= 0 && (jx < |a| && ix != jx))) ==> a[ix] != a[jx])
      if (*) {
        if (ix_12 >= 0 && (ix_12 < Seq#Length(a_2) && (jx_12 >= 0 && (jx_12 < Seq#Length(a_2) && ix_12 != jx_12)))) {
          assert {:msg "  Contract might not be well-formed. Index a[ix] into a might be negative. (test_vector_add_c.vpr@119.12--119.112) [47571]"}
            ix_12 >= 0;
          assert {:msg "  Contract might not be well-formed. Index a[ix] into a might exceed sequence length. (test_vector_add_c.vpr@119.12--119.112) [47572]"}
            ix_12 < Seq#Length(a_2);
          assert {:msg "  Contract might not be well-formed. Index a[jx] into a might be negative. (test_vector_add_c.vpr@119.12--119.112) [47573]"}
            jx_12 >= 0;
          assert {:msg "  Contract might not be well-formed. Index a[jx] into a might exceed sequence length. (test_vector_add_c.vpr@119.12--119.112) [47574]"}
            jx_12 < Seq#Length(a_2);
        }
        assume false;
      }
    assume (forall ix_1: int, jx_1: int ::
      { Seq#Index(a_2, ix_1), Seq#Index(a_2, jx_1) }
      ix_1 >= 0 && (ix_1 < Seq#Length(a_2) && (jx_1 >= 0 && (jx_1 < Seq#Length(a_2) && ix_1 != jx_1))) ==> Seq#Index(a_2, ix_1) != Seq#Index(a_2, jx_1)
    );
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall i: Int :: { a[i] } 0 <= i && i < len ==> acc(a[i].Ref__Integer_value, write))
      if (*) {
        if (0 <= i_34 && i_34 < len) {
          assert {:msg "  Contract might not be well-formed. Index a[i] into a might be negative. (test_vector_add_c.vpr@120.13--120.91) [47575]"}
            i_34 >= 0;
          assert {:msg "  Contract might not be well-formed. Index a[i] into a might exceed sequence length. (test_vector_add_c.vpr@120.13--120.91) [47576]"}
            i_34 < Seq#Length(a_2);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource a[i].Ref__Integer_value might not be injective. (test_vector_add_c.vpr@120.13--120.91) [47577]"}
      (forall i_1: int, i_1_1: int ::
      
      (((i_1 != i_1_1 && (0 <= i_1 && i_1 < len)) && (0 <= i_1_1 && i_1_1 < len)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(a_2, i_1) != Seq#Index(a_2, i_1_1)
    );
    
    // -- Define Inverse Function
      assume (forall i_1: int ::
        { Seq#Index(a_2, i_1) } { Seq#Index(a_2, i_1) }
        (0 <= i_1 && i_1 < len) && NoPerm < FullPerm ==> qpRange18(Seq#Index(a_2, i_1)) && invRecv18(Seq#Index(a_2, i_1)) == i_1
      );
      assume (forall o_4: Ref ::
        { invRecv18(o_4) }
        ((0 <= invRecv18(o_4) && invRecv18(o_4) < len) && NoPerm < FullPerm) && qpRange18(o_4) ==> Seq#Index(a_2, invRecv18(o_4)) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall i_1: int ::
        { Seq#Index(a_2, i_1) } { Seq#Index(a_2, i_1) }
        0 <= i_1 && i_1 < len ==> Seq#Index(a_2, i_1) != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, Ref__Integer_value] }
        (((0 <= invRecv18(o_4) && invRecv18(o_4) < len) && NoPerm < FullPerm) && qpRange18(o_4) ==> (NoPerm < FullPerm ==> Seq#Index(a_2, invRecv18(o_4)) == o_4) && QPMask[o_4, Ref__Integer_value] == Mask[o_4, Ref__Integer_value] + FullPerm) && (!(((0 <= invRecv18(o_4) && invRecv18(o_4) < len) && NoPerm < FullPerm) && qpRange18(o_4)) ==> QPMask[o_4, Ref__Integer_value] == Mask[o_4, Ref__Integer_value])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != Ref__Integer_value ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume Seq#Length(b_24) == len;
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall ix: Int, jx: Int :: { b[ix], b[jx] } ix >= 0 && (ix < |b| && (jx >= 0 && (jx < |b| && ix != jx))) ==> b[ix] != b[jx])
      if (*) {
        if (ix_15 >= 0 && (ix_15 < Seq#Length(b_24) && (jx_15 >= 0 && (jx_15 < Seq#Length(b_24) && ix_15 != jx_15)))) {
          assert {:msg "  Contract might not be well-formed. Index b[ix] into b might be negative. (test_vector_add_c.vpr@122.12--122.112) [47578]"}
            ix_15 >= 0;
          assert {:msg "  Contract might not be well-formed. Index b[ix] into b might exceed sequence length. (test_vector_add_c.vpr@122.12--122.112) [47579]"}
            ix_15 < Seq#Length(b_24);
          assert {:msg "  Contract might not be well-formed. Index b[jx] into b might be negative. (test_vector_add_c.vpr@122.12--122.112) [47580]"}
            jx_15 >= 0;
          assert {:msg "  Contract might not be well-formed. Index b[jx] into b might exceed sequence length. (test_vector_add_c.vpr@122.12--122.112) [47581]"}
            jx_15 < Seq#Length(b_24);
        }
        assume false;
      }
    assume (forall ix_3: int, jx_3: int ::
      { Seq#Index(b_24, ix_3), Seq#Index(b_24, jx_3) }
      ix_3 >= 0 && (ix_3 < Seq#Length(b_24) && (jx_3 >= 0 && (jx_3 < Seq#Length(b_24) && ix_3 != jx_3))) ==> Seq#Index(b_24, ix_3) != Seq#Index(b_24, jx_3)
    );
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall i: Int :: { b[i] } 0 <= i && i < len ==> acc(b[i].Ref__Integer_value, 1 / 2))
      if (*) {
        if (0 <= i_36 && i_36 < len) {
          assert {:msg "  Contract might not be well-formed. Index b[i] into b might be negative. (test_vector_add_c.vpr@123.13--123.91) [47582]"}
            i_36 >= 0;
          assert {:msg "  Contract might not be well-formed. Index b[i] into b might exceed sequence length. (test_vector_add_c.vpr@123.13--123.91) [47583]"}
            i_36 < Seq#Length(b_24);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource b[i].Ref__Integer_value might not be injective. (test_vector_add_c.vpr@123.13--123.91) [47584]"}
      (forall i_3: int, i_3_1: int ::
      
      (((i_3 != i_3_1 && (0 <= i_3 && i_3 < len)) && (0 <= i_3_1 && i_3_1 < len)) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> Seq#Index(b_24, i_3) != Seq#Index(b_24, i_3_1)
    );
    
    // -- Define Inverse Function
      assume (forall i_3: int ::
        { Seq#Index(b_24, i_3) } { Seq#Index(b_24, i_3) }
        (0 <= i_3 && i_3 < len) && NoPerm < 1 / 2 ==> qpRange19(Seq#Index(b_24, i_3)) && invRecv19(Seq#Index(b_24, i_3)) == i_3
      );
      assume (forall o_4: Ref ::
        { invRecv19(o_4) }
        ((0 <= invRecv19(o_4) && invRecv19(o_4) < len) && NoPerm < 1 / 2) && qpRange19(o_4) ==> Seq#Index(b_24, invRecv19(o_4)) == o_4
      );
    // Check that permission expression is non-negative for all fields
    assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (test_vector_add_c.vpr@123.13--123.91) [47585]"}
      (forall i_3: int ::
      { Seq#Index(b_24, i_3) } { Seq#Index(b_24, i_3) }
      0 <= i_3 && i_3 < len ==> 1 / 2 >= NoPerm
    );
    
    // -- Assume set of fields is nonNull
      assume (forall i_3: int ::
        { Seq#Index(b_24, i_3) } { Seq#Index(b_24, i_3) }
        (0 <= i_3 && i_3 < len) && 1 / 2 > NoPerm ==> Seq#Index(b_24, i_3) != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, Ref__Integer_value] }
        (((0 <= invRecv19(o_4) && invRecv19(o_4) < len) && NoPerm < 1 / 2) && qpRange19(o_4) ==> (NoPerm < 1 / 2 ==> Seq#Index(b_24, invRecv19(o_4)) == o_4) && QPMask[o_4, Ref__Integer_value] == Mask[o_4, Ref__Integer_value] + 1 / 2) && (!(((0 <= invRecv19(o_4) && invRecv19(o_4) < len) && NoPerm < 1 / 2) && qpRange19(o_4)) ==> QPMask[o_4, Ref__Integer_value] == Mask[o_4, Ref__Integer_value])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != Ref__Integer_value ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume Seq#Length(c) == len;
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall ix: Int, jx: Int :: { c[ix], c[jx] } ix >= 0 && (ix < |c| && (jx >= 0 && (jx < |c| && ix != jx))) ==> c[ix] != c[jx])
      if (*) {
        if (ix_17 >= 0 && (ix_17 < Seq#Length(c) && (jx_17 >= 0 && (jx_17 < Seq#Length(c) && ix_17 != jx_17)))) {
          assert {:msg "  Contract might not be well-formed. Index c[ix] into c might be negative. (test_vector_add_c.vpr@125.12--125.112) [47586]"}
            ix_17 >= 0;
          assert {:msg "  Contract might not be well-formed. Index c[ix] into c might exceed sequence length. (test_vector_add_c.vpr@125.12--125.112) [47587]"}
            ix_17 < Seq#Length(c);
          assert {:msg "  Contract might not be well-formed. Index c[jx] into c might be negative. (test_vector_add_c.vpr@125.12--125.112) [47588]"}
            jx_17 >= 0;
          assert {:msg "  Contract might not be well-formed. Index c[jx] into c might exceed sequence length. (test_vector_add_c.vpr@125.12--125.112) [47589]"}
            jx_17 < Seq#Length(c);
        }
        assume false;
      }
    assume (forall ix_5_2: int, jx_5_2: int ::
      { Seq#Index(c, ix_5_2), Seq#Index(c, jx_5_2) }
      ix_5_2 >= 0 && (ix_5_2 < Seq#Length(c) && (jx_5_2 >= 0 && (jx_5_2 < Seq#Length(c) && ix_5_2 != jx_5_2))) ==> Seq#Index(c, ix_5_2) != Seq#Index(c, jx_5_2)
    );
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall i: Int :: { c[i] } 0 <= i && i < len ==> acc(c[i].Ref__Integer_value, 1 / 2))
      if (*) {
        if (0 <= i_43 && i_43 < len) {
          assert {:msg "  Contract might not be well-formed. Index c[i] into c might be negative. (test_vector_add_c.vpr@126.13--126.91) [47590]"}
            i_43 >= 0;
          assert {:msg "  Contract might not be well-formed. Index c[i] into c might exceed sequence length. (test_vector_add_c.vpr@126.13--126.91) [47591]"}
            i_43 < Seq#Length(c);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource c[i].Ref__Integer_value might not be injective. (test_vector_add_c.vpr@126.13--126.91) [47592]"}
      (forall i_5: int, i_5_1: int ::
      
      (((i_5 != i_5_1 && (0 <= i_5 && i_5 < len)) && (0 <= i_5_1 && i_5_1 < len)) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> Seq#Index(c, i_5) != Seq#Index(c, i_5_1)
    );
    
    // -- Define Inverse Function
      assume (forall i_5: int ::
        { Seq#Index(c, i_5) } { Seq#Index(c, i_5) }
        (0 <= i_5 && i_5 < len) && NoPerm < 1 / 2 ==> qpRange20(Seq#Index(c, i_5)) && invRecv20(Seq#Index(c, i_5)) == i_5
      );
      assume (forall o_4: Ref ::
        { invRecv20(o_4) }
        ((0 <= invRecv20(o_4) && invRecv20(o_4) < len) && NoPerm < 1 / 2) && qpRange20(o_4) ==> Seq#Index(c, invRecv20(o_4)) == o_4
      );
    // Check that permission expression is non-negative for all fields
    assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (test_vector_add_c.vpr@126.13--126.91) [47593]"}
      (forall i_5: int ::
      { Seq#Index(c, i_5) } { Seq#Index(c, i_5) }
      0 <= i_5 && i_5 < len ==> 1 / 2 >= NoPerm
    );
    
    // -- Assume set of fields is nonNull
      assume (forall i_5: int ::
        { Seq#Index(c, i_5) } { Seq#Index(c, i_5) }
        (0 <= i_5 && i_5 < len) && 1 / 2 > NoPerm ==> Seq#Index(c, i_5) != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, Ref__Integer_value] }
        (((0 <= invRecv20(o_4) && invRecv20(o_4) < len) && NoPerm < 1 / 2) && qpRange20(o_4) ==> (NoPerm < 1 / 2 ==> Seq#Index(c, invRecv20(o_4)) == o_4) && QPMask[o_4, Ref__Integer_value] == Mask[o_4, Ref__Integer_value] + 1 / 2) && (!(((0 <= invRecv20(o_4) && invRecv20(o_4) < len) && NoPerm < 1 / 2) && qpRange20(o_4)) ==> QPMask[o_4, Ref__Integer_value] == Mask[o_4, Ref__Integer_value])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != Ref__Integer_value ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
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
    assume Seq#Length(a_2) == len;
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall i: Int :: { a[i] } 0 <= i && i < len ==> acc(a[i].Ref__Integer_value, write))
      if (*) {
        if (0 <= i_45 && i_45 < len) {
          assert {:msg "  Contract might not be well-formed. Index a[i] into a might be negative. (test_vector_add_c.vpr@128.12--128.90) [47594]"}
            i_45 >= 0;
          assert {:msg "  Contract might not be well-formed. Index a[i] into a might exceed sequence length. (test_vector_add_c.vpr@128.12--128.90) [47595]"}
            i_45 < Seq#Length(a_2);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource a[i].Ref__Integer_value might not be injective. (test_vector_add_c.vpr@128.12--128.90) [47596]"}
      (forall i_7_1: int, i_7_2: int ::
      
      (((i_7_1 != i_7_2 && (0 <= i_7_1 && i_7_1 < len)) && (0 <= i_7_2 && i_7_2 < len)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(a_2, i_7_1) != Seq#Index(a_2, i_7_2)
    );
    
    // -- Define Inverse Function
      assume (forall i_7_1: int ::
        { Seq#Index(a_2, i_7_1) } { Seq#Index(a_2, i_7_1) }
        (0 <= i_7_1 && i_7_1 < len) && NoPerm < FullPerm ==> qpRange21(Seq#Index(a_2, i_7_1)) && invRecv21(Seq#Index(a_2, i_7_1)) == i_7_1
      );
      assume (forall o_4: Ref ::
        { invRecv21(o_4) }
        ((0 <= invRecv21(o_4) && invRecv21(o_4) < len) && NoPerm < FullPerm) && qpRange21(o_4) ==> Seq#Index(a_2, invRecv21(o_4)) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall i_7_1: int ::
        { Seq#Index(a_2, i_7_1) } { Seq#Index(a_2, i_7_1) }
        0 <= i_7_1 && i_7_1 < len ==> Seq#Index(a_2, i_7_1) != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, Ref__Integer_value] }
        (((0 <= invRecv21(o_4) && invRecv21(o_4) < len) && NoPerm < FullPerm) && qpRange21(o_4) ==> (NoPerm < FullPerm ==> Seq#Index(a_2, invRecv21(o_4)) == o_4) && QPMask[o_4, Ref__Integer_value] == PostMask[o_4, Ref__Integer_value] + FullPerm) && (!(((0 <= invRecv21(o_4) && invRecv21(o_4) < len) && NoPerm < FullPerm) && qpRange21(o_4)) ==> QPMask[o_4, Ref__Integer_value] == PostMask[o_4, Ref__Integer_value])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { PostMask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != Ref__Integer_value ==> PostMask[o_4, f_5] == QPMask[o_4, f_5]
      );
    PostMask := QPMask;
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    assume Seq#Length(b_24) == len;
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall i: Int :: { b[i] } 0 <= i && i < len ==> acc(b[i].Ref__Integer_value, 1 / 2))
      if (*) {
        if (0 <= i_56 && i_56 < len) {
          assert {:msg "  Contract might not be well-formed. Index b[i] into b might be negative. (test_vector_add_c.vpr@130.12--130.90) [47597]"}
            i_56 >= 0;
          assert {:msg "  Contract might not be well-formed. Index b[i] into b might exceed sequence length. (test_vector_add_c.vpr@130.12--130.90) [47598]"}
            i_56 < Seq#Length(b_24);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource b[i].Ref__Integer_value might not be injective. (test_vector_add_c.vpr@130.12--130.90) [47599]"}
      (forall i_9_1: int, i_9_2: int ::
      
      (((i_9_1 != i_9_2 && (0 <= i_9_1 && i_9_1 < len)) && (0 <= i_9_2 && i_9_2 < len)) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> Seq#Index(b_24, i_9_1) != Seq#Index(b_24, i_9_2)
    );
    
    // -- Define Inverse Function
      assume (forall i_9_1: int ::
        { Seq#Index(b_24, i_9_1) } { Seq#Index(b_24, i_9_1) }
        (0 <= i_9_1 && i_9_1 < len) && NoPerm < 1 / 2 ==> qpRange22(Seq#Index(b_24, i_9_1)) && invRecv22(Seq#Index(b_24, i_9_1)) == i_9_1
      );
      assume (forall o_4: Ref ::
        { invRecv22(o_4) }
        ((0 <= invRecv22(o_4) && invRecv22(o_4) < len) && NoPerm < 1 / 2) && qpRange22(o_4) ==> Seq#Index(b_24, invRecv22(o_4)) == o_4
      );
    // Check that permission expression is non-negative for all fields
    assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (test_vector_add_c.vpr@130.12--130.90) [47600]"}
      (forall i_9_1: int ::
      { Seq#Index(b_24, i_9_1) } { Seq#Index(b_24, i_9_1) }
      0 <= i_9_1 && i_9_1 < len ==> 1 / 2 >= NoPerm
    );
    
    // -- Assume set of fields is nonNull
      assume (forall i_9_1: int ::
        { Seq#Index(b_24, i_9_1) } { Seq#Index(b_24, i_9_1) }
        (0 <= i_9_1 && i_9_1 < len) && 1 / 2 > NoPerm ==> Seq#Index(b_24, i_9_1) != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, Ref__Integer_value] }
        (((0 <= invRecv22(o_4) && invRecv22(o_4) < len) && NoPerm < 1 / 2) && qpRange22(o_4) ==> (NoPerm < 1 / 2 ==> Seq#Index(b_24, invRecv22(o_4)) == o_4) && QPMask[o_4, Ref__Integer_value] == PostMask[o_4, Ref__Integer_value] + 1 / 2) && (!(((0 <= invRecv22(o_4) && invRecv22(o_4) < len) && NoPerm < 1 / 2) && qpRange22(o_4)) ==> QPMask[o_4, Ref__Integer_value] == PostMask[o_4, Ref__Integer_value])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { PostMask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != Ref__Integer_value ==> PostMask[o_4, f_5] == QPMask[o_4, f_5]
      );
    PostMask := QPMask;
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    assume Seq#Length(c) == len;
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall i: Int :: { c[i] } 0 <= i && i < len ==> acc(c[i].Ref__Integer_value, 1 / 2))
      if (*) {
        if (0 <= i_47 && i_47 < len) {
          assert {:msg "  Contract might not be well-formed. Index c[i] into c might be negative. (test_vector_add_c.vpr@132.12--132.90) [47601]"}
            i_47 >= 0;
          assert {:msg "  Contract might not be well-formed. Index c[i] into c might exceed sequence length. (test_vector_add_c.vpr@132.12--132.90) [47602]"}
            i_47 < Seq#Length(c);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource c[i].Ref__Integer_value might not be injective. (test_vector_add_c.vpr@132.12--132.90) [47603]"}
      (forall i_11_1: int, i_11_2: int ::
      
      (((i_11_1 != i_11_2 && (0 <= i_11_1 && i_11_1 < len)) && (0 <= i_11_2 && i_11_2 < len)) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> Seq#Index(c, i_11_1) != Seq#Index(c, i_11_2)
    );
    
    // -- Define Inverse Function
      assume (forall i_11_1: int ::
        { Seq#Index(c, i_11_1) } { Seq#Index(c, i_11_1) }
        (0 <= i_11_1 && i_11_1 < len) && NoPerm < 1 / 2 ==> qpRange23(Seq#Index(c, i_11_1)) && invRecv23(Seq#Index(c, i_11_1)) == i_11_1
      );
      assume (forall o_4: Ref ::
        { invRecv23(o_4) }
        ((0 <= invRecv23(o_4) && invRecv23(o_4) < len) && NoPerm < 1 / 2) && qpRange23(o_4) ==> Seq#Index(c, invRecv23(o_4)) == o_4
      );
    // Check that permission expression is non-negative for all fields
    assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (test_vector_add_c.vpr@132.12--132.90) [47604]"}
      (forall i_11_1: int ::
      { Seq#Index(c, i_11_1) } { Seq#Index(c, i_11_1) }
      0 <= i_11_1 && i_11_1 < len ==> 1 / 2 >= NoPerm
    );
    
    // -- Assume set of fields is nonNull
      assume (forall i_11_1: int ::
        { Seq#Index(c, i_11_1) } { Seq#Index(c, i_11_1) }
        (0 <= i_11_1 && i_11_1 < len) && 1 / 2 > NoPerm ==> Seq#Index(c, i_11_1) != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, Ref__Integer_value] }
        (((0 <= invRecv23(o_4) && invRecv23(o_4) < len) && NoPerm < 1 / 2) && qpRange23(o_4) ==> (NoPerm < 1 / 2 ==> Seq#Index(c, invRecv23(o_4)) == o_4) && QPMask[o_4, Ref__Integer_value] == PostMask[o_4, Ref__Integer_value] + 1 / 2) && (!(((0 <= invRecv23(o_4) && invRecv23(o_4) < len) && NoPerm < 1 / 2) && qpRange23(o_4)) ==> QPMask[o_4, Ref__Integer_value] == PostMask[o_4, Ref__Integer_value])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { PostMask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != Ref__Integer_value ==> PostMask[o_4, f_5] == QPMask[o_4, f_5]
      );
    PostMask := QPMask;
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall i: Int :: { a[i] } { b[i] } { c[i] } 0 <= i && i < len ==> a[i].Ref__Integer_value == b[i].Ref__Integer_value + c[i].Ref__Integer_value)
      if (*) {
        if (0 <= i_48 && i_48 < len) {
          assert {:msg "  Contract might not be well-formed. Index a[i] into a might be negative. (test_vector_add_c.vpr@133.12--133.133) [47605]"}
            i_48 >= 0;
          assert {:msg "  Contract might not be well-formed. Index a[i] into a might exceed sequence length. (test_vector_add_c.vpr@133.12--133.133) [47606]"}
            i_48 < Seq#Length(a_2);
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access a[i].Ref__Integer_value (test_vector_add_c.vpr@133.12--133.133) [47607]"}
            HasDirectPerm(PostMask, Seq#Index(a_2, i_48), Ref__Integer_value);
          assert {:msg "  Contract might not be well-formed. Index b[i] into b might be negative. (test_vector_add_c.vpr@133.12--133.133) [47608]"}
            i_48 >= 0;
          assert {:msg "  Contract might not be well-formed. Index b[i] into b might exceed sequence length. (test_vector_add_c.vpr@133.12--133.133) [47609]"}
            i_48 < Seq#Length(b_24);
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access b[i].Ref__Integer_value (test_vector_add_c.vpr@133.12--133.133) [47610]"}
            HasDirectPerm(PostMask, Seq#Index(b_24, i_48), Ref__Integer_value);
          assert {:msg "  Contract might not be well-formed. Index c[i] into c might be negative. (test_vector_add_c.vpr@133.12--133.133) [47611]"}
            i_48 >= 0;
          assert {:msg "  Contract might not be well-formed. Index c[i] into c might exceed sequence length. (test_vector_add_c.vpr@133.12--133.133) [47612]"}
            i_48 < Seq#Length(c);
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access c[i].Ref__Integer_value (test_vector_add_c.vpr@133.12--133.133) [47613]"}
            HasDirectPerm(PostMask, Seq#Index(c, i_48), Ref__Integer_value);
        }
        assume false;
      }
    assume (forall i_13_1: int ::
      { Seq#Index(a_2, i_13_1) } { Seq#Index(b_24, i_13_1) } { Seq#Index(c, i_13_1) }
      0 <= i_13_1 && i_13_1 < len ==> PostHeap[Seq#Index(a_2, i_13_1), Ref__Integer_value] == PostHeap[Seq#Index(b_24, i_13_1), Ref__Integer_value] + PostHeap[Seq#Index(c, i_13_1), Ref__Integer_value]
    );
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall i: Int :: { old(b[i]) } 0 <= i && i < len ==> b[i].Ref__Integer_value == old(b[i].Ref__Integer_value))
      if (*) {
        if (0 <= i_58 && i_58 < len) {
          assert {:msg "  Contract might not be well-formed. Index b[i] into b might be negative. (test_vector_add_c.vpr@134.12--134.112) [47614]"}
            i_58 >= 0;
          assert {:msg "  Contract might not be well-formed. Index b[i] into b might exceed sequence length. (test_vector_add_c.vpr@134.12--134.112) [47615]"}
            i_58 < Seq#Length(b_24);
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access b[i].Ref__Integer_value (test_vector_add_c.vpr@134.12--134.112) [47616]"}
            HasDirectPerm(PostMask, Seq#Index(b_24, i_58), Ref__Integer_value);
          assert {:msg "  Contract might not be well-formed. Index b[i] into b might be negative. (test_vector_add_c.vpr@134.12--134.112) [47617]"}
            i_58 >= 0;
          assert {:msg "  Contract might not be well-formed. Index b[i] into b might exceed sequence length. (test_vector_add_c.vpr@134.12--134.112) [47618]"}
            i_58 < Seq#Length(b_24);
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access b[i].Ref__Integer_value (test_vector_add_c.vpr@134.12--134.112) [47619]"}
            HasDirectPerm(oldMask, Seq#Index(b_24, i_58), Ref__Integer_value);
        }
        assume false;
      }
    assume (forall i_15: int ::
      { Seq#Index(b_24, i_15) }
      0 <= i_15 && i_15 < len ==> PostHeap[Seq#Index(b_24, i_15), Ref__Integer_value] == oldHeap[Seq#Index(b_24, i_15), Ref__Integer_value]
    );
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall i: Int :: { old(c[i]) } 0 <= i && i < len ==> c[i].Ref__Integer_value == old(c[i].Ref__Integer_value))
      if (*) {
        if (0 <= i_50 && i_50 < len) {
          assert {:msg "  Contract might not be well-formed. Index c[i] into c might be negative. (test_vector_add_c.vpr@135.12--135.112) [47620]"}
            i_50 >= 0;
          assert {:msg "  Contract might not be well-formed. Index c[i] into c might exceed sequence length. (test_vector_add_c.vpr@135.12--135.112) [47621]"}
            i_50 < Seq#Length(c);
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access c[i].Ref__Integer_value (test_vector_add_c.vpr@135.12--135.112) [47622]"}
            HasDirectPerm(PostMask, Seq#Index(c, i_50), Ref__Integer_value);
          assert {:msg "  Contract might not be well-formed. Index c[i] into c might be negative. (test_vector_add_c.vpr@135.12--135.112) [47623]"}
            i_50 >= 0;
          assert {:msg "  Contract might not be well-formed. Index c[i] into c might exceed sequence length. (test_vector_add_c.vpr@135.12--135.112) [47624]"}
            i_50 < Seq#Length(c);
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access c[i].Ref__Integer_value (test_vector_add_c.vpr@135.12--135.112) [47625]"}
            HasDirectPerm(oldMask, Seq#Index(c, i_50), Ref__Integer_value);
        }
        assume false;
      }
    assume (forall i_17: int ::
      { Seq#Index(c, i_17) }
      0 <= i_17 && i_17 < len ==> PostHeap[Seq#Index(c, i_17), Ref__Integer_value] == oldHeap[Seq#Index(c, i_17), Ref__Integer_value]
    );
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: Ref__loop_main_69(diz, current_thread_id, b, len, a, c) -- test_vector_add_c.vpr@137.3--137.58
    PreCallHeap := Heap;
    PreCallMask := Mask;
    
    // -- Exhaling precondition
      ExhaleWellDef0Mask := Mask;
      ExhaleWellDef0Heap := Heap;
      assert {:msg "  The precondition of method Ref__loop_main_69 might not hold. Assertion diz != null might not hold. (test_vector_add_c.vpr@137.3--137.58) [47626]"}
        diz != null;
      assert {:msg "  The precondition of method Ref__loop_main_69 might not hold. Assertion current_thread_id >= 0 might not hold. (test_vector_add_c.vpr@137.3--137.58) [47627]"}
        current_thread_id >= 0;
      if (0 < len) {
        assert {:msg "  The precondition of method Ref__loop_main_69 might not hold. Assertion |a| == len might not hold. (test_vector_add_c.vpr@137.3--137.58) [47628]"}
          Seq#Length(a_2) == len;
      }
      if (*) {
        if (ix_6 >= 0 && (ix_6 < Seq#Length(a_2) && (jx_6 >= 0 && (jx_6 < Seq#Length(a_2) && ix_6 != jx_6)))) {
          assert {:msg "  The precondition of method Ref__loop_main_69 might not hold. Assertion a[ix] != a[jx] might not hold. (test_vector_add_c.vpr@137.3--137.58) [47629]"}
            Seq#Index(a_2, ix_6) != Seq#Index(a_2, jx_6);
        }
        assume false;
      }
      assume (forall ix_7_1: int, jx_7_1: int ::
        { Seq#Index(a_2, ix_7_1), Seq#Index(a_2, jx_7_1) }
        ix_7_1 >= 0 && (ix_7_1 < Seq#Length(a_2) && (jx_7_1 >= 0 && (jx_7_1 < Seq#Length(a_2) && ix_7_1 != jx_7_1))) ==> Seq#Index(a_2, ix_7_1) != Seq#Index(a_2, jx_7_1)
      );
      havoc QPMask;
      
      // -- check that the permission amount is positive
        
      
      // -- check if receiver a[i] is injective
        assert {:msg "  The precondition of method Ref__loop_main_69 might not hold. Quantified resource a[i].Ref__Integer_value might not be injective. (test_vector_add_c.vpr@137.3--137.58) [47630]"}
          (forall i_27: int, i_27_1: int ::
          { neverTriggered27(i_27), neverTriggered27(i_27_1) }
          (((i_27 != i_27_1 && (0 <= i_27 && i_27 < len)) && (0 <= i_27_1 && i_27_1 < len)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(a_2, i_27) != Seq#Index(a_2, i_27_1)
        );
      
      // -- check if sufficient permission is held
        assert {:msg "  The precondition of method Ref__loop_main_69 might not hold. There might be insufficient permission to access a[i].Ref__Integer_value (test_vector_add_c.vpr@137.3--137.58) [47631]"}
          (forall i_27: int ::
          { Seq#Index(a_2, i_27) } { Seq#Index(a_2, i_27) }
          0 <= i_27 && i_27 < len ==> Mask[Seq#Index(a_2, i_27), Ref__Integer_value] >= FullPerm
        );
      
      // -- assumptions for inverse of receiver a[i]
        assume (forall i_27: int ::
          { Seq#Index(a_2, i_27) } { Seq#Index(a_2, i_27) }
          (0 <= i_27 && i_27 < len) && NoPerm < FullPerm ==> qpRange27(Seq#Index(a_2, i_27)) && invRecv27(Seq#Index(a_2, i_27)) == i_27
        );
        assume (forall o_4: Ref ::
          { invRecv27(o_4) }
          (0 <= invRecv27(o_4) && invRecv27(o_4) < len) && (NoPerm < FullPerm && qpRange27(o_4)) ==> Seq#Index(a_2, invRecv27(o_4)) == o_4
        );
      
      // -- assume permission updates for field Ref__Integer_value
        assume (forall o_4: Ref ::
          { QPMask[o_4, Ref__Integer_value] }
          ((0 <= invRecv27(o_4) && invRecv27(o_4) < len) && (NoPerm < FullPerm && qpRange27(o_4)) ==> Seq#Index(a_2, invRecv27(o_4)) == o_4 && QPMask[o_4, Ref__Integer_value] == Mask[o_4, Ref__Integer_value] - FullPerm) && (!((0 <= invRecv27(o_4) && invRecv27(o_4) < len) && (NoPerm < FullPerm && qpRange27(o_4))) ==> QPMask[o_4, Ref__Integer_value] == Mask[o_4, Ref__Integer_value])
        );
      
      // -- assume permission updates for independent locations
        assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
          { QPMask[o_4, f_5] }
          f_5 != Ref__Integer_value ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
        );
      Mask := QPMask;
      if (0 < len) {
        assert {:msg "  The precondition of method Ref__loop_main_69 might not hold. Assertion |b| == len might not hold. (test_vector_add_c.vpr@137.3--137.58) [47632]"}
          Seq#Length(b_24) == len;
      }
      if (*) {
        if (ix_8_1 >= 0 && (ix_8_1 < Seq#Length(b_24) && (jx_8_1 >= 0 && (jx_8_1 < Seq#Length(b_24) && ix_8_1 != jx_8_1)))) {
          assert {:msg "  The precondition of method Ref__loop_main_69 might not hold. Assertion b[ix] != b[jx] might not hold. (test_vector_add_c.vpr@137.3--137.58) [47633]"}
            Seq#Index(b_24, ix_8_1) != Seq#Index(b_24, jx_8_1);
        }
        assume false;
      }
      assume (forall ix_9_1: int, jx_9_1: int ::
        { Seq#Index(b_24, ix_9_1), Seq#Index(b_24, jx_9_1) }
        ix_9_1 >= 0 && (ix_9_1 < Seq#Length(b_24) && (jx_9_1 >= 0 && (jx_9_1 < Seq#Length(b_24) && ix_9_1 != jx_9_1))) ==> Seq#Index(b_24, ix_9_1) != Seq#Index(b_24, jx_9_1)
      );
      havoc QPMask;
      
      // -- check that the permission amount is positive
        assert {:msg "  The precondition of method Ref__loop_main_69 might not hold. Fraction 1 / 2 might be negative. (test_vector_add_c.vpr@137.3--137.58) [47634]"}
          (forall i_28: int ::
          { Seq#Index(b_24, i_28) } { Seq#Index(b_24, i_28) }
          (0 <= i_28 && i_28 < len) && dummyFunction(Heap[Seq#Index(b_24, i_28), Ref__Integer_value]) ==> 1 / 2 >= NoPerm
        );
      
      // -- check if receiver b[i] is injective
        assert {:msg "  The precondition of method Ref__loop_main_69 might not hold. Quantified resource b[i].Ref__Integer_value might not be injective. (test_vector_add_c.vpr@137.3--137.58) [47635]"}
          (forall i_28: int, i_28_1: int ::
          { neverTriggered28(i_28), neverTriggered28(i_28_1) }
          (((i_28 != i_28_1 && (0 <= i_28 && i_28 < len)) && (0 <= i_28_1 && i_28_1 < len)) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> Seq#Index(b_24, i_28) != Seq#Index(b_24, i_28_1)
        );
      
      // -- check if sufficient permission is held
        assert {:msg "  The precondition of method Ref__loop_main_69 might not hold. There might be insufficient permission to access b[i].Ref__Integer_value (test_vector_add_c.vpr@137.3--137.58) [47636]"}
          (forall i_28: int ::
          { Seq#Index(b_24, i_28) } { Seq#Index(b_24, i_28) }
          0 <= i_28 && i_28 < len ==> Mask[Seq#Index(b_24, i_28), Ref__Integer_value] >= 1 / 2
        );
      
      // -- assumptions for inverse of receiver b[i]
        assume (forall i_28: int ::
          { Seq#Index(b_24, i_28) } { Seq#Index(b_24, i_28) }
          (0 <= i_28 && i_28 < len) && NoPerm < 1 / 2 ==> qpRange28(Seq#Index(b_24, i_28)) && invRecv28(Seq#Index(b_24, i_28)) == i_28
        );
        assume (forall o_4: Ref ::
          { invRecv28(o_4) }
          (0 <= invRecv28(o_4) && invRecv28(o_4) < len) && (NoPerm < 1 / 2 && qpRange28(o_4)) ==> Seq#Index(b_24, invRecv28(o_4)) == o_4
        );
      
      // -- assume permission updates for field Ref__Integer_value
        assume (forall o_4: Ref ::
          { QPMask[o_4, Ref__Integer_value] }
          ((0 <= invRecv28(o_4) && invRecv28(o_4) < len) && (NoPerm < 1 / 2 && qpRange28(o_4)) ==> Seq#Index(b_24, invRecv28(o_4)) == o_4 && QPMask[o_4, Ref__Integer_value] == Mask[o_4, Ref__Integer_value] - 1 / 2) && (!((0 <= invRecv28(o_4) && invRecv28(o_4) < len) && (NoPerm < 1 / 2 && qpRange28(o_4))) ==> QPMask[o_4, Ref__Integer_value] == Mask[o_4, Ref__Integer_value])
        );
      
      // -- assume permission updates for independent locations
        assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
          { QPMask[o_4, f_5] }
          f_5 != Ref__Integer_value ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
        );
      Mask := QPMask;
      if (0 < len) {
        assert {:msg "  The precondition of method Ref__loop_main_69 might not hold. Assertion |c| == len might not hold. (test_vector_add_c.vpr@137.3--137.58) [47637]"}
          Seq#Length(c) == len;
      }
      if (*) {
        if (ix_10 >= 0 && (ix_10 < Seq#Length(c) && (jx_10 >= 0 && (jx_10 < Seq#Length(c) && ix_10 != jx_10)))) {
          assert {:msg "  The precondition of method Ref__loop_main_69 might not hold. Assertion c[ix] != c[jx] might not hold. (test_vector_add_c.vpr@137.3--137.58) [47638]"}
            Seq#Index(c, ix_10) != Seq#Index(c, jx_10);
        }
        assume false;
      }
      assume (forall ix_11_1: int, jx_11_1: int ::
        { Seq#Index(c, ix_11_1), Seq#Index(c, jx_11_1) }
        ix_11_1 >= 0 && (ix_11_1 < Seq#Length(c) && (jx_11_1 >= 0 && (jx_11_1 < Seq#Length(c) && ix_11_1 != jx_11_1))) ==> Seq#Index(c, ix_11_1) != Seq#Index(c, jx_11_1)
      );
      havoc QPMask;
      
      // -- check that the permission amount is positive
        assert {:msg "  The precondition of method Ref__loop_main_69 might not hold. Fraction 1 / 2 might be negative. (test_vector_add_c.vpr@137.3--137.58) [47639]"}
          (forall i_29_1: int ::
          { Seq#Index(c, i_29_1) } { Seq#Index(c, i_29_1) }
          (0 <= i_29_1 && i_29_1 < len) && dummyFunction(Heap[Seq#Index(c, i_29_1), Ref__Integer_value]) ==> 1 / 2 >= NoPerm
        );
      
      // -- check if receiver c[i] is injective
        assert {:msg "  The precondition of method Ref__loop_main_69 might not hold. Quantified resource c[i].Ref__Integer_value might not be injective. (test_vector_add_c.vpr@137.3--137.58) [47640]"}
          (forall i_29_1: int, i_29_2: int ::
          { neverTriggered29(i_29_1), neverTriggered29(i_29_2) }
          (((i_29_1 != i_29_2 && (0 <= i_29_1 && i_29_1 < len)) && (0 <= i_29_2 && i_29_2 < len)) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> Seq#Index(c, i_29_1) != Seq#Index(c, i_29_2)
        );
      
      // -- check if sufficient permission is held
        assert {:msg "  The precondition of method Ref__loop_main_69 might not hold. There might be insufficient permission to access c[i].Ref__Integer_value (test_vector_add_c.vpr@137.3--137.58) [47641]"}
          (forall i_29_1: int ::
          { Seq#Index(c, i_29_1) } { Seq#Index(c, i_29_1) }
          0 <= i_29_1 && i_29_1 < len ==> Mask[Seq#Index(c, i_29_1), Ref__Integer_value] >= 1 / 2
        );
      
      // -- assumptions for inverse of receiver c[i]
        assume (forall i_29_1: int ::
          { Seq#Index(c, i_29_1) } { Seq#Index(c, i_29_1) }
          (0 <= i_29_1 && i_29_1 < len) && NoPerm < 1 / 2 ==> qpRange29(Seq#Index(c, i_29_1)) && invRecv29(Seq#Index(c, i_29_1)) == i_29_1
        );
        assume (forall o_4: Ref ::
          { invRecv29(o_4) }
          (0 <= invRecv29(o_4) && invRecv29(o_4) < len) && (NoPerm < 1 / 2 && qpRange29(o_4)) ==> Seq#Index(c, invRecv29(o_4)) == o_4
        );
      
      // -- assume permission updates for field Ref__Integer_value
        assume (forall o_4: Ref ::
          { QPMask[o_4, Ref__Integer_value] }
          ((0 <= invRecv29(o_4) && invRecv29(o_4) < len) && (NoPerm < 1 / 2 && qpRange29(o_4)) ==> Seq#Index(c, invRecv29(o_4)) == o_4 && QPMask[o_4, Ref__Integer_value] == Mask[o_4, Ref__Integer_value] - 1 / 2) && (!((0 <= invRecv29(o_4) && invRecv29(o_4) < len) && (NoPerm < 1 / 2 && qpRange29(o_4))) ==> QPMask[o_4, Ref__Integer_value] == Mask[o_4, Ref__Integer_value])
        );
      
      // -- assume permission updates for independent locations
        assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
          { QPMask[o_4, f_5] }
          f_5 != Ref__Integer_value ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
        );
      Mask := QPMask;
      // Finish exhale
      havoc ExhaleHeap;
      assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
      Heap := ExhaleHeap;
    
    // -- Inhaling postcondition
      if (0 < len) {
        assume Seq#Length(a_2) == len;
      }
      havoc QPMask;
      assert {:msg "  Method call might fail. Quantified resource a[i].Ref__Integer_value might not be injective. (test_vector_add_c.vpr@137.3--137.58) [47642]"}
        (forall i_30_2: int, i_30_3: int ::
        
        (((i_30_2 != i_30_3 && (0 <= i_30_2 && i_30_2 < len)) && (0 <= i_30_3 && i_30_3 < len)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(a_2, i_30_2) != Seq#Index(a_2, i_30_3)
      );
      
      // -- Define Inverse Function
        assume (forall i_30_2: int ::
          { Seq#Index(a_2, i_30_2) } { Seq#Index(a_2, i_30_2) }
          (0 <= i_30_2 && i_30_2 < len) && NoPerm < FullPerm ==> qpRange30(Seq#Index(a_2, i_30_2)) && invRecv30(Seq#Index(a_2, i_30_2)) == i_30_2
        );
        assume (forall o_4: Ref ::
          { invRecv30(o_4) }
          ((0 <= invRecv30(o_4) && invRecv30(o_4) < len) && NoPerm < FullPerm) && qpRange30(o_4) ==> Seq#Index(a_2, invRecv30(o_4)) == o_4
        );
      
      // -- Assume set of fields is nonNull
        assume (forall i_30_2: int ::
          { Seq#Index(a_2, i_30_2) } { Seq#Index(a_2, i_30_2) }
          0 <= i_30_2 && i_30_2 < len ==> Seq#Index(a_2, i_30_2) != null
        );
      
      // -- Define permissions
        assume (forall o_4: Ref ::
          { QPMask[o_4, Ref__Integer_value] }
          (((0 <= invRecv30(o_4) && invRecv30(o_4) < len) && NoPerm < FullPerm) && qpRange30(o_4) ==> (NoPerm < FullPerm ==> Seq#Index(a_2, invRecv30(o_4)) == o_4) && QPMask[o_4, Ref__Integer_value] == Mask[o_4, Ref__Integer_value] + FullPerm) && (!(((0 <= invRecv30(o_4) && invRecv30(o_4) < len) && NoPerm < FullPerm) && qpRange30(o_4)) ==> QPMask[o_4, Ref__Integer_value] == Mask[o_4, Ref__Integer_value])
        );
        assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
          { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
          f_5 != Ref__Integer_value ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
        );
      Mask := QPMask;
      assume state(Heap, Mask);
      if (0 < len) {
        assume Seq#Length(b_24) == len;
      }
      havoc QPMask;
      assert {:msg "  Method call might fail. Quantified resource b[i].Ref__Integer_value might not be injective. (test_vector_add_c.vpr@137.3--137.58) [47643]"}
        (forall i_31_1: int, i_31_2: int ::
        
        (((i_31_1 != i_31_2 && (0 <= i_31_1 && i_31_1 < len)) && (0 <= i_31_2 && i_31_2 < len)) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> Seq#Index(b_24, i_31_1) != Seq#Index(b_24, i_31_2)
      );
      
      // -- Define Inverse Function
        assume (forall i_31_1: int ::
          { Seq#Index(b_24, i_31_1) } { Seq#Index(b_24, i_31_1) }
          (0 <= i_31_1 && i_31_1 < len) && NoPerm < 1 / 2 ==> qpRange31(Seq#Index(b_24, i_31_1)) && invRecv31(Seq#Index(b_24, i_31_1)) == i_31_1
        );
        assume (forall o_4: Ref ::
          { invRecv31(o_4) }
          ((0 <= invRecv31(o_4) && invRecv31(o_4) < len) && NoPerm < 1 / 2) && qpRange31(o_4) ==> Seq#Index(b_24, invRecv31(o_4)) == o_4
        );
      // Check that permission expression is non-negative for all fields
      assert {:msg "  Method call might fail. Fraction 1 / 2 might be negative. (test_vector_add_c.vpr@137.3--137.58) [47644]"}
        (forall i_31_1: int ::
        { Seq#Index(b_24, i_31_1) } { Seq#Index(b_24, i_31_1) }
        0 <= i_31_1 && i_31_1 < len ==> 1 / 2 >= NoPerm
      );
      
      // -- Assume set of fields is nonNull
        assume (forall i_31_1: int ::
          { Seq#Index(b_24, i_31_1) } { Seq#Index(b_24, i_31_1) }
          (0 <= i_31_1 && i_31_1 < len) && 1 / 2 > NoPerm ==> Seq#Index(b_24, i_31_1) != null
        );
      
      // -- Define permissions
        assume (forall o_4: Ref ::
          { QPMask[o_4, Ref__Integer_value] }
          (((0 <= invRecv31(o_4) && invRecv31(o_4) < len) && NoPerm < 1 / 2) && qpRange31(o_4) ==> (NoPerm < 1 / 2 ==> Seq#Index(b_24, invRecv31(o_4)) == o_4) && QPMask[o_4, Ref__Integer_value] == Mask[o_4, Ref__Integer_value] + 1 / 2) && (!(((0 <= invRecv31(o_4) && invRecv31(o_4) < len) && NoPerm < 1 / 2) && qpRange31(o_4)) ==> QPMask[o_4, Ref__Integer_value] == Mask[o_4, Ref__Integer_value])
        );
        assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
          { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
          f_5 != Ref__Integer_value ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
        );
      Mask := QPMask;
      assume state(Heap, Mask);
      if (0 < len) {
        assume Seq#Length(c) == len;
      }
      havoc QPMask;
      assert {:msg "  Method call might fail. Quantified resource c[i].Ref__Integer_value might not be injective. (test_vector_add_c.vpr@137.3--137.58) [47645]"}
        (forall i_32_2: int, i_32_3: int ::
        
        (((i_32_2 != i_32_3 && (0 <= i_32_2 && i_32_2 < len)) && (0 <= i_32_3 && i_32_3 < len)) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> Seq#Index(c, i_32_2) != Seq#Index(c, i_32_3)
      );
      
      // -- Define Inverse Function
        assume (forall i_32_2: int ::
          { Seq#Index(c, i_32_2) } { Seq#Index(c, i_32_2) }
          (0 <= i_32_2 && i_32_2 < len) && NoPerm < 1 / 2 ==> qpRange32(Seq#Index(c, i_32_2)) && invRecv32(Seq#Index(c, i_32_2)) == i_32_2
        );
        assume (forall o_4: Ref ::
          { invRecv32(o_4) }
          ((0 <= invRecv32(o_4) && invRecv32(o_4) < len) && NoPerm < 1 / 2) && qpRange32(o_4) ==> Seq#Index(c, invRecv32(o_4)) == o_4
        );
      // Check that permission expression is non-negative for all fields
      assert {:msg "  Method call might fail. Fraction 1 / 2 might be negative. (test_vector_add_c.vpr@137.3--137.58) [47646]"}
        (forall i_32_2: int ::
        { Seq#Index(c, i_32_2) } { Seq#Index(c, i_32_2) }
        0 <= i_32_2 && i_32_2 < len ==> 1 / 2 >= NoPerm
      );
      
      // -- Assume set of fields is nonNull
        assume (forall i_32_2: int ::
          { Seq#Index(c, i_32_2) } { Seq#Index(c, i_32_2) }
          (0 <= i_32_2 && i_32_2 < len) && 1 / 2 > NoPerm ==> Seq#Index(c, i_32_2) != null
        );
      
      // -- Define permissions
        assume (forall o_4: Ref ::
          { QPMask[o_4, Ref__Integer_value] }
          (((0 <= invRecv32(o_4) && invRecv32(o_4) < len) && NoPerm < 1 / 2) && qpRange32(o_4) ==> (NoPerm < 1 / 2 ==> Seq#Index(c, invRecv32(o_4)) == o_4) && QPMask[o_4, Ref__Integer_value] == Mask[o_4, Ref__Integer_value] + 1 / 2) && (!(((0 <= invRecv32(o_4) && invRecv32(o_4) < len) && NoPerm < 1 / 2) && qpRange32(o_4)) ==> QPMask[o_4, Ref__Integer_value] == Mask[o_4, Ref__Integer_value])
        );
        assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
          { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
          f_5 != Ref__Integer_value ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
        );
      Mask := QPMask;
      assume state(Heap, Mask);
      assume (forall i_33_1: int ::
        { Seq#Index(b_24, i_33_1) }
        0 <= i_33_1 && i_33_1 < len ==> Heap[Seq#Index(b_24, i_33_1), Ref__Integer_value] == PreCallHeap[Seq#Index(b_24, i_33_1), Ref__Integer_value]
      );
      assume (forall i_34_2: int ::
        { Seq#Index(c, i_34_2) }
        0 <= i_34_2 && i_34_2 < len ==> Heap[Seq#Index(c, i_34_2), Ref__Integer_value] == PreCallHeap[Seq#Index(c, i_34_2), Ref__Integer_value]
      );
      assume (forall i_35_1: int ::
        { Seq#Index(a_2, i_35_1) } { Seq#Index(b_24, i_35_1) } { Seq#Index(c, i_35_1) }
        0 <= i_35_1 && i_35_1 < len ==> Heap[Seq#Index(a_2, i_35_1), Ref__Integer_value] == Heap[Seq#Index(b_24, i_35_1), Ref__Integer_value] + Heap[Seq#Index(c, i_35_1), Ref__Integer_value]
      );
      assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    assert {:msg "  Postcondition of Ref__vector_add might not hold. Assertion |a| == len might not hold. (test_vector_add_c.vpr@127.11--127.21) [47647]"}
      Seq#Length(a_2) == len;
    havoc QPMask;
    
    // -- check that the permission amount is positive
      
    
    // -- check if receiver a[i] is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource a[i].Ref__Integer_value might not be injective. (test_vector_add_c.vpr@128.12--128.90) [47648]"}
        (forall i_18_1: int, i_18_2: int ::
        { neverTriggered24(i_18_1), neverTriggered24(i_18_2) }
        (((i_18_1 != i_18_2 && (0 <= i_18_1 && i_18_1 < len)) && (0 <= i_18_2 && i_18_2 < len)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(a_2, i_18_1) != Seq#Index(a_2, i_18_2)
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Postcondition of Ref__vector_add might not hold. There might be insufficient permission to access a[i].Ref__Integer_value (test_vector_add_c.vpr@128.12--128.90) [47649]"}
        (forall i_18_1: int ::
        { Seq#Index(a_2, i_18_1) } { Seq#Index(a_2, i_18_1) }
        0 <= i_18_1 && i_18_1 < len ==> Mask[Seq#Index(a_2, i_18_1), Ref__Integer_value] >= FullPerm
      );
    
    // -- assumptions for inverse of receiver a[i]
      assume (forall i_18_1: int ::
        { Seq#Index(a_2, i_18_1) } { Seq#Index(a_2, i_18_1) }
        (0 <= i_18_1 && i_18_1 < len) && NoPerm < FullPerm ==> qpRange24(Seq#Index(a_2, i_18_1)) && invRecv24(Seq#Index(a_2, i_18_1)) == i_18_1
      );
      assume (forall o_4: Ref ::
        { invRecv24(o_4) }
        (0 <= invRecv24(o_4) && invRecv24(o_4) < len) && (NoPerm < FullPerm && qpRange24(o_4)) ==> Seq#Index(a_2, invRecv24(o_4)) == o_4
      );
    
    // -- assume permission updates for field Ref__Integer_value
      assume (forall o_4: Ref ::
        { QPMask[o_4, Ref__Integer_value] }
        ((0 <= invRecv24(o_4) && invRecv24(o_4) < len) && (NoPerm < FullPerm && qpRange24(o_4)) ==> Seq#Index(a_2, invRecv24(o_4)) == o_4 && QPMask[o_4, Ref__Integer_value] == Mask[o_4, Ref__Integer_value] - FullPerm) && (!((0 <= invRecv24(o_4) && invRecv24(o_4) < len) && (NoPerm < FullPerm && qpRange24(o_4))) ==> QPMask[o_4, Ref__Integer_value] == Mask[o_4, Ref__Integer_value])
      );
    
    // -- assume permission updates for independent locations
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { QPMask[o_4, f_5] }
        f_5 != Ref__Integer_value ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assert {:msg "  Postcondition of Ref__vector_add might not hold. Assertion |b| == len might not hold. (test_vector_add_c.vpr@129.11--129.21) [47650]"}
      Seq#Length(b_24) == len;
    havoc QPMask;
    
    // -- check that the permission amount is positive
      assert {:msg "  Postcondition of Ref__vector_add might not hold. Fraction 1 / 2 might be negative. (test_vector_add_c.vpr@130.12--130.90) [47651]"}
        (forall i_19: int ::
        { Seq#Index(b_24, i_19) } { Seq#Index(b_24, i_19) }
        (0 <= i_19 && i_19 < len) && dummyFunction(Heap[Seq#Index(b_24, i_19), Ref__Integer_value]) ==> 1 / 2 >= NoPerm
      );
    
    // -- check if receiver b[i] is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource b[i].Ref__Integer_value might not be injective. (test_vector_add_c.vpr@130.12--130.90) [47652]"}
        (forall i_19: int, i_19_1: int ::
        { neverTriggered25(i_19), neverTriggered25(i_19_1) }
        (((i_19 != i_19_1 && (0 <= i_19 && i_19 < len)) && (0 <= i_19_1 && i_19_1 < len)) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> Seq#Index(b_24, i_19) != Seq#Index(b_24, i_19_1)
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Postcondition of Ref__vector_add might not hold. There might be insufficient permission to access b[i].Ref__Integer_value (test_vector_add_c.vpr@130.12--130.90) [47653]"}
        (forall i_19: int ::
        { Seq#Index(b_24, i_19) } { Seq#Index(b_24, i_19) }
        0 <= i_19 && i_19 < len ==> Mask[Seq#Index(b_24, i_19), Ref__Integer_value] >= 1 / 2
      );
    
    // -- assumptions for inverse of receiver b[i]
      assume (forall i_19: int ::
        { Seq#Index(b_24, i_19) } { Seq#Index(b_24, i_19) }
        (0 <= i_19 && i_19 < len) && NoPerm < 1 / 2 ==> qpRange25(Seq#Index(b_24, i_19)) && invRecv25(Seq#Index(b_24, i_19)) == i_19
      );
      assume (forall o_4: Ref ::
        { invRecv25(o_4) }
        (0 <= invRecv25(o_4) && invRecv25(o_4) < len) && (NoPerm < 1 / 2 && qpRange25(o_4)) ==> Seq#Index(b_24, invRecv25(o_4)) == o_4
      );
    
    // -- assume permission updates for field Ref__Integer_value
      assume (forall o_4: Ref ::
        { QPMask[o_4, Ref__Integer_value] }
        ((0 <= invRecv25(o_4) && invRecv25(o_4) < len) && (NoPerm < 1 / 2 && qpRange25(o_4)) ==> Seq#Index(b_24, invRecv25(o_4)) == o_4 && QPMask[o_4, Ref__Integer_value] == Mask[o_4, Ref__Integer_value] - 1 / 2) && (!((0 <= invRecv25(o_4) && invRecv25(o_4) < len) && (NoPerm < 1 / 2 && qpRange25(o_4))) ==> QPMask[o_4, Ref__Integer_value] == Mask[o_4, Ref__Integer_value])
      );
    
    // -- assume permission updates for independent locations
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { QPMask[o_4, f_5] }
        f_5 != Ref__Integer_value ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assert {:msg "  Postcondition of Ref__vector_add might not hold. Assertion |c| == len might not hold. (test_vector_add_c.vpr@131.11--131.21) [47654]"}
      Seq#Length(c) == len;
    havoc QPMask;
    
    // -- check that the permission amount is positive
      assert {:msg "  Postcondition of Ref__vector_add might not hold. Fraction 1 / 2 might be negative. (test_vector_add_c.vpr@132.12--132.90) [47655]"}
        (forall i_20_1: int ::
        { Seq#Index(c, i_20_1) } { Seq#Index(c, i_20_1) }
        (0 <= i_20_1 && i_20_1 < len) && dummyFunction(Heap[Seq#Index(c, i_20_1), Ref__Integer_value]) ==> 1 / 2 >= NoPerm
      );
    
    // -- check if receiver c[i] is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource c[i].Ref__Integer_value might not be injective. (test_vector_add_c.vpr@132.12--132.90) [47656]"}
        (forall i_20_1: int, i_20_2: int ::
        { neverTriggered26(i_20_1), neverTriggered26(i_20_2) }
        (((i_20_1 != i_20_2 && (0 <= i_20_1 && i_20_1 < len)) && (0 <= i_20_2 && i_20_2 < len)) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> Seq#Index(c, i_20_1) != Seq#Index(c, i_20_2)
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Postcondition of Ref__vector_add might not hold. There might be insufficient permission to access c[i].Ref__Integer_value (test_vector_add_c.vpr@132.12--132.90) [47657]"}
        (forall i_20_1: int ::
        { Seq#Index(c, i_20_1) } { Seq#Index(c, i_20_1) }
        0 <= i_20_1 && i_20_1 < len ==> Mask[Seq#Index(c, i_20_1), Ref__Integer_value] >= 1 / 2
      );
    
    // -- assumptions for inverse of receiver c[i]
      assume (forall i_20_1: int ::
        { Seq#Index(c, i_20_1) } { Seq#Index(c, i_20_1) }
        (0 <= i_20_1 && i_20_1 < len) && NoPerm < 1 / 2 ==> qpRange26(Seq#Index(c, i_20_1)) && invRecv26(Seq#Index(c, i_20_1)) == i_20_1
      );
      assume (forall o_4: Ref ::
        { invRecv26(o_4) }
        (0 <= invRecv26(o_4) && invRecv26(o_4) < len) && (NoPerm < 1 / 2 && qpRange26(o_4)) ==> Seq#Index(c, invRecv26(o_4)) == o_4
      );
    
    // -- assume permission updates for field Ref__Integer_value
      assume (forall o_4: Ref ::
        { QPMask[o_4, Ref__Integer_value] }
        ((0 <= invRecv26(o_4) && invRecv26(o_4) < len) && (NoPerm < 1 / 2 && qpRange26(o_4)) ==> Seq#Index(c, invRecv26(o_4)) == o_4 && QPMask[o_4, Ref__Integer_value] == Mask[o_4, Ref__Integer_value] - 1 / 2) && (!((0 <= invRecv26(o_4) && invRecv26(o_4) < len) && (NoPerm < 1 / 2 && qpRange26(o_4))) ==> QPMask[o_4, Ref__Integer_value] == Mask[o_4, Ref__Integer_value])
      );
    
    // -- assume permission updates for independent locations
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { QPMask[o_4, f_5] }
        f_5 != Ref__Integer_value ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    if (*) {
      if (0 <= i_21 && i_21 < len) {
        assert {:msg "  Postcondition of Ref__vector_add might not hold. Assertion a[i].Ref__Integer_value == b[i].Ref__Integer_value + c[i].Ref__Integer_value might not hold. (test_vector_add_c.vpr@133.12--133.133) [47658]"}
          Heap[Seq#Index(a_2, i_21), Ref__Integer_value] == Heap[Seq#Index(b_24, i_21), Ref__Integer_value] + Heap[Seq#Index(c, i_21), Ref__Integer_value];
      }
      assume false;
    }
    assume (forall i_22_1_1: int ::
      { Seq#Index(a_2, i_22_1_1) } { Seq#Index(b_24, i_22_1_1) } { Seq#Index(c, i_22_1_1) }
      0 <= i_22_1_1 && i_22_1_1 < len ==> Heap[Seq#Index(a_2, i_22_1_1), Ref__Integer_value] == Heap[Seq#Index(b_24, i_22_1_1), Ref__Integer_value] + Heap[Seq#Index(c, i_22_1_1), Ref__Integer_value]
    );
    if (*) {
      if (0 <= i_23 && i_23 < len) {
        assert {:msg "  Postcondition of Ref__vector_add might not hold. Assertion b[i].Ref__Integer_value == old(b[i].Ref__Integer_value) might not hold. (test_vector_add_c.vpr@134.12--134.112) [47659]"}
          Heap[Seq#Index(b_24, i_23), Ref__Integer_value] == oldHeap[Seq#Index(b_24, i_23), Ref__Integer_value];
      }
      assume false;
    }
    assume (forall i_24_1_1: int ::
      { Seq#Index(b_24, i_24_1_1) }
      0 <= i_24_1_1 && i_24_1_1 < len ==> Heap[Seq#Index(b_24, i_24_1_1), Ref__Integer_value] == oldHeap[Seq#Index(b_24, i_24_1_1), Ref__Integer_value]
    );
    if (*) {
      if (0 <= i_25 && i_25 < len) {
        assert {:msg "  Postcondition of Ref__vector_add might not hold. Assertion c[i].Ref__Integer_value == old(c[i].Ref__Integer_value) might not hold. (test_vector_add_c.vpr@135.12--135.112) [47660]"}
          Heap[Seq#Index(c, i_25), Ref__Integer_value] == oldHeap[Seq#Index(c, i_25), Ref__Integer_value];
      }
      assume false;
    }
    assume (forall i_26_1_1: int ::
      { Seq#Index(c, i_26_1_1) }
      0 <= i_26_1_1 && i_26_1_1 < len ==> Heap[Seq#Index(c, i_26_1_1), Ref__Integer_value] == oldHeap[Seq#Index(c, i_26_1_1), Ref__Integer_value]
    );
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}