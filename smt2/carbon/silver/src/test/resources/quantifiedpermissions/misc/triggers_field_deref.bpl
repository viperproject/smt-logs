// 
// Translation of Viper program.
// 
// Date:         2025-01-26 23:16:28
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/quantifiedpermissions/misc/triggers_field_deref.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/quantifiedpermissions/misc/triggers_field_deref-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
axiom (forall o_119: Ref, f_78: (Field NormalField Ref), Heap: HeapType ::
  { Heap[o_119, f_78] }
  Heap[o_119, $allocated] ==> Heap[Heap[o_119, f_78], $allocated]
);
function  succHeap(Heap0: HeapType, Heap1: HeapType): bool;
function  succHeapTrans(Heap0: HeapType, Heap1: HeapType): bool;
function  IdenticalOnKnownLocations(Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType): bool;
function  IsPredicateField<A, B>(f_1: (Field A B)): bool;
function  IsWandField<A, B>(f_1: (Field A B)): bool;
function  getPredWandId<A, B>(f_1: (Field A B)): int;
// Frame all locations with direct permissions
axiom (forall <A, B> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_145: Ref, f_80: (Field A B) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_145, f_80] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, o_145, f_80) ==> Heap[o_145, f_80] == ExhaleHeap[o_145, f_80]
);
// Frame all predicate mask locations of predicates with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_56: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_56), ExhaleHeap[null, PredicateMaskField(pm_f_56)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_56) && IsPredicateField(pm_f_56) ==> Heap[null, PredicateMaskField(pm_f_56)] == ExhaleHeap[null, PredicateMaskField(pm_f_56)]
);
// Frame all locations with known folded permissions
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_56: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_56) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_56) && IsPredicateField(pm_f_56) ==> (forall <A, B> o2_57: Ref, f_80: (Field A B) ::
    { ExhaleHeap[o2_57, f_80] }
    Heap[null, PredicateMaskField(pm_f_56)][o2_57, f_80] ==> Heap[o2_57, f_80] == ExhaleHeap[o2_57, f_80]
  )
);
// Frame all wand mask locations of wands with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_56: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_56), ExhaleHeap[null, WandMaskField(pm_f_56)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_56) && IsWandField(pm_f_56) ==> Heap[null, WandMaskField(pm_f_56)] == ExhaleHeap[null, WandMaskField(pm_f_56)]
);
// Frame all locations in the footprint of magic wands
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_56: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_56) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_56) && IsWandField(pm_f_56) ==> (forall <A, B> o2_57: Ref, f_80: (Field A B) ::
    { ExhaleHeap[o2_57, f_80] }
    Heap[null, WandMaskField(pm_f_56)][o2_57, f_80] ==> Heap[o2_57, f_80] == ExhaleHeap[o2_57, f_80]
  )
);
// All previously-allocated references are still allocated
axiom (forall Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_145: Ref ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_145, $allocated] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> Heap[o_145, $allocated] ==> ExhaleHeap[o_145, $allocated]
);
// Updated Heaps are Successor Heaps
axiom (forall <A, B> Heap: HeapType, o_119: Ref, f_159: (Field A B), v: B ::
  { Heap[o_119, f_159:=v] }
  succHeap(Heap, Heap[o_119, f_159:=v])
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

function  neverTriggered1(z_1: Ref): bool;
function  neverTriggered2(z_1: Ref): bool;
function  neverTriggered3(z_3: Ref): bool;
function  neverTriggered4(z_1: Ref): bool;
function  neverTriggered5(z_3: Ref): bool;
function  neverTriggered6(z_1: Ref): bool;
function  neverTriggered7(z_3: Ref): bool;
function  neverTriggered8(z_5: Ref): bool;
function  neverTriggered9(z_1: Ref): bool;
function  neverTriggered10(z_3: Ref): bool;
function  neverTriggered11(z_5: Ref): bool;
function  neverTriggered12(z_7: Ref): bool;
function  neverTriggered13(z_1: Ref): bool;
function  neverTriggered14(z_3: Ref): bool;
function  neverTriggered15(z_5: Ref): bool;
function  neverTriggered16(z_7: Ref): bool;
function  neverTriggered17(z_1: Ref): bool;
function  neverTriggered18(z_1: Ref): bool;
function  neverTriggered19(z_1: Ref): bool;
function  neverTriggered20(z_1: Ref): bool;
function  neverTriggered21(z_3: Ref): bool;
function  neverTriggered22(z_5: Ref): bool;
function  neverTriggered23(z_7: Ref): bool;
function  neverTriggered24(z_1: Ref): bool;
function  neverTriggered25(z_3: Ref): bool;
function  neverTriggered26(z_5: Ref): bool;
function  neverTriggered27(z_7: Ref): bool;
function  neverTriggered28(z_1: Ref): bool;
function  neverTriggered29(z_3: Ref): bool;
function  neverTriggered30(z_5: Ref): bool;
function  neverTriggered31(z_7: Ref): bool;
function  neverTriggered32(x_1: int): bool;
function  neverTriggered33(x_1: int): bool;
// ==================================================
// Functions used as inverse of receiver expressions in quantified permissions during inhale and exhale
// ==================================================

function  invRecv1(recv: Ref): Ref;
function  invRecv2(recv: Ref): Ref;
function  invRecv3(recv: Ref): Ref;
function  invRecv4(recv: Ref): Ref;
function  invRecv5(recv: Ref): Ref;
function  invRecv6(recv: Ref): Ref;
function  invRecv7(recv: Ref): Ref;
function  invRecv8(recv: Ref): Ref;
function  invRecv9(recv: Ref): Ref;
function  invRecv10(recv: Ref): Ref;
function  invRecv11(recv: Ref): Ref;
function  invRecv12(recv: Ref): Ref;
function  invRecv13(recv: Ref): Ref;
function  invRecv14(recv: Ref): Ref;
function  invRecv15(recv: Ref): Ref;
function  invRecv16(recv: Ref): Ref;
function  invRecv17(recv: Ref): Ref;
function  invRecv18(recv: Ref): Ref;
function  invRecv19(recv: Ref): Ref;
function  invRecv20(recv: Ref): Ref;
function  invRecv21(recv: Ref): Ref;
function  invRecv22(recv: Ref): Ref;
function  invRecv23(recv: Ref): Ref;
function  invRecv24(recv: Ref): Ref;
function  invRecv25(recv: Ref): Ref;
function  invRecv26(recv: Ref): Ref;
function  invRecv27(recv: Ref): Ref;
function  invRecv28(recv: Ref): Ref;
function  invRecv29(recv: Ref): Ref;
function  invRecv30(recv: Ref): Ref;
function  invRecv31(recv: Ref): Ref;
function  invRecv32(recv: Ref): int;
function  invRecv33(recv: Ref): int;
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
function  qpRange33(recv: Ref): bool;

// ==================================================
// Preamble of Function and predicate module.
// ==================================================

// Function heights (higher height means its body is available earlier):
// - height 0: inv
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
// Translation of domain Dummy
// ==================================================

// The type for domain Dummy
type DummyDomainType;

// Translation of domain function fun01
function  fun01_1(x_37: Ref): bool;

// Translation of domain function fun02
function  fun02_1(v_29: int): int;

// ==================================================
// Translation of all fields
// ==================================================

const unique f_7: Field NormalField int;
axiom !IsPredicateField(f_7);
axiom !IsWandField(f_7);
const unique g: Field NormalField int;
axiom !IsPredicateField(g);
axiom !IsWandField(g);

// ==================================================
// Translation of function inv
// ==================================================

// Uninterpreted function definitions
function  inv_1(Heap: HeapType, v_2: int): bool;
function  inv'(Heap: HeapType, v_2: int): bool;
axiom (forall Heap: HeapType, v_2: int ::
  { inv_1(Heap, v_2) }
  inv_1(Heap, v_2) == inv'(Heap, v_2) && dummyFunction(inv#triggerStateless(v_2))
);
axiom (forall Heap: HeapType, v_2: int ::
  { inv'(Heap, v_2) }
  dummyFunction(inv#triggerStateless(v_2))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, v_2: int ::
  { state(Heap, Mask), inv_1(Heap, v_2) }
  state(Heap, Mask) && AssumeFunctionsAbove < 0 ==> inv_1(Heap, v_2) == (v_2 == 0)
);

// Framing axioms
function  inv#frame(frame: FrameType, v_2: int): bool;
axiom (forall Heap: HeapType, Mask: MaskType, v_2: int ::
  { state(Heap, Mask), inv'(Heap, v_2) }
  state(Heap, Mask) ==> inv'(Heap, v_2) == inv#frame(EmptyFrame, v_2)
);

// Trigger function (controlling recursive postconditions)
function  inv#trigger_1(frame: FrameType, v_2: int): bool;

// State-independent trigger function
function  inv#triggerStateless(v_2: int): bool;

// Check contract well-formedness and postcondition
procedure inv#definedness(v_2: int) returns (Result: bool)
  modifies Heap, Mask;
{
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume AssumeFunctionsAbove == 0;
  
  // -- Translate function body
    Result := v_2 == 0;
}

// ==================================================
// Translation of method test01
// ==================================================

procedure test01(x: Ref, y: Ref) returns ()
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var QPMask: MaskType;
  var z_14: Ref;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[x, $allocated];
    assume Heap[y, $allocated];
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: inhale (forall z: Ref ::z == x || z == y ==> acc(z.f, write)) -- triggers_field_deref.vpr@13.3--13.56
    
    // -- Check definedness of (forall z: Ref ::z == x || z == y ==> acc(z.f, write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Inhale might fail. Quantified resource z.f might not be injective. (triggers_field_deref.vpr@13.10--13.56) [176086]"}
      (forall z_1: Ref, z_1_1: Ref ::
      
      (((z_1 != z_1_1 && (z_1 == x || z_1 == y)) && (z_1_1 == x || z_1_1 == y)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> z_1 != z_1_1
    );
    
    // -- Define Inverse Function
      assume (forall z_1: Ref ::
        { Heap[z_1, f_7] } { QPMask[z_1, f_7] }
        (z_1 == x || z_1 == y) && NoPerm < FullPerm ==> qpRange1(z_1) && invRecv1(z_1) == z_1
      );
      assume (forall o_9: Ref ::
        { invRecv1(o_9) }
        ((invRecv1(o_9) == x || invRecv1(o_9) == y) && NoPerm < FullPerm) && qpRange1(o_9) ==> invRecv1(o_9) == o_9
      );
    
    // -- Assume set of fields is nonNull
      assume (forall z_1: Ref ::
        { Heap[z_1, f_7] } { QPMask[z_1, f_7] }
        z_1 == x || z_1 == y ==> z_1 != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, f_7] }
        (((invRecv1(o_9) == x || invRecv1(o_9) == y) && NoPerm < FullPerm) && qpRange1(o_9) ==> (NoPerm < FullPerm ==> invRecv1(o_9) == o_9) && QPMask[o_9, f_7] == Mask[o_9, f_7] + FullPerm) && (!(((invRecv1(o_9) == x || invRecv1(o_9) == y) && NoPerm < FullPerm) && qpRange1(o_9)) ==> QPMask[o_9, f_7] == Mask[o_9, f_7])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != f_7 ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale x != null && y != null -- triggers_field_deref.vpr@14.3--14.32
    assume x != null;
    assume y != null;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale (forall z: Ref :: { z.f } z == x || z == y ==> z.f > 0) -- triggers_field_deref.vpr@15.3--15.61
    
    // -- Check definedness of (forall z: Ref :: { z.f } z == x || z == y ==> z.f > 0)
      if (*) {
        if (z_14 == x || z_14 == y) {
          assert {:msg "  Inhale might fail. There might be insufficient permission to access z.f (triggers_field_deref.vpr@15.10--15.61) [176087]"}
            HasDirectPerm(Mask, z_14, f_7);
        }
        assume false;
      }
    assume (forall z_3: Ref ::
      { Heap[z_3, f_7] }
      z_3 == x || z_3 == y ==> Heap[z_3, f_7] > 0
    );
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert x.f > 0 -- triggers_field_deref.vpr@17.3--17.17
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of x.f > 0
      assert {:msg "  Assert might fail. There might be insufficient permission to access x.f (triggers_field_deref.vpr@17.10--17.17) [176088]"}
        HasDirectPerm(ExhaleWellDef0Mask, x, f_7);
    assert {:msg "  Assert might fail. Assertion x.f > 0 might not hold. (triggers_field_deref.vpr@17.10--17.17) [176089]"}
      Heap[x, f_7] > 0;
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test01b
// ==================================================

procedure test01b(x: Ref, y: Ref) returns ()
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var QPMask: MaskType;
  var z_26: Ref;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[x, $allocated];
    assume Heap[y, $allocated];
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: inhale (forall z: Ref ::z == x || z == y ==> acc(z.f, write)) -- triggers_field_deref.vpr@21.3--21.56
    
    // -- Check definedness of (forall z: Ref ::z == x || z == y ==> acc(z.f, write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Inhale might fail. Quantified resource z.f might not be injective. (triggers_field_deref.vpr@21.10--21.56) [176090]"}
      (forall z_1: Ref, z_1_1: Ref ::
      
      (((z_1 != z_1_1 && (z_1 == x || z_1 == y)) && (z_1_1 == x || z_1_1 == y)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> z_1 != z_1_1
    );
    
    // -- Define Inverse Function
      assume (forall z_1: Ref ::
        { Heap[z_1, f_7] } { QPMask[z_1, f_7] }
        (z_1 == x || z_1 == y) && NoPerm < FullPerm ==> qpRange2(z_1) && invRecv2(z_1) == z_1
      );
      assume (forall o_9: Ref ::
        { invRecv2(o_9) }
        ((invRecv2(o_9) == x || invRecv2(o_9) == y) && NoPerm < FullPerm) && qpRange2(o_9) ==> invRecv2(o_9) == o_9
      );
    
    // -- Assume set of fields is nonNull
      assume (forall z_1: Ref ::
        { Heap[z_1, f_7] } { QPMask[z_1, f_7] }
        z_1 == x || z_1 == y ==> z_1 != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, f_7] }
        (((invRecv2(o_9) == x || invRecv2(o_9) == y) && NoPerm < FullPerm) && qpRange2(o_9) ==> (NoPerm < FullPerm ==> invRecv2(o_9) == o_9) && QPMask[o_9, f_7] == Mask[o_9, f_7] + FullPerm) && (!(((invRecv2(o_9) == x || invRecv2(o_9) == y) && NoPerm < FullPerm) && qpRange2(o_9)) ==> QPMask[o_9, f_7] == Mask[o_9, f_7])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != f_7 ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale (forall z: Ref ::z == x || z == y ==> acc(z.g, write)) -- triggers_field_deref.vpr@22.3--22.56
    
    // -- Check definedness of (forall z: Ref ::z == x || z == y ==> acc(z.g, write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Inhale might fail. Quantified resource z.g might not be injective. (triggers_field_deref.vpr@22.10--22.56) [176091]"}
      (forall z_3: Ref, z_3_1: Ref ::
      
      (((z_3 != z_3_1 && (z_3 == x || z_3 == y)) && (z_3_1 == x || z_3_1 == y)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> z_3 != z_3_1
    );
    
    // -- Define Inverse Function
      assume (forall z_3: Ref ::
        { Heap[z_3, g] } { QPMask[z_3, g] }
        (z_3 == x || z_3 == y) && NoPerm < FullPerm ==> qpRange3(z_3) && invRecv3(z_3) == z_3
      );
      assume (forall o_9: Ref ::
        { invRecv3(o_9) }
        ((invRecv3(o_9) == x || invRecv3(o_9) == y) && NoPerm < FullPerm) && qpRange3(o_9) ==> invRecv3(o_9) == o_9
      );
    
    // -- Assume set of fields is nonNull
      assume (forall z_3: Ref ::
        { Heap[z_3, g] } { QPMask[z_3, g] }
        z_3 == x || z_3 == y ==> z_3 != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, g] }
        (((invRecv3(o_9) == x || invRecv3(o_9) == y) && NoPerm < FullPerm) && qpRange3(o_9) ==> (NoPerm < FullPerm ==> invRecv3(o_9) == o_9) && QPMask[o_9, g] == Mask[o_9, g] + FullPerm) && (!(((invRecv3(o_9) == x || invRecv3(o_9) == y) && NoPerm < FullPerm) && qpRange3(o_9)) ==> QPMask[o_9, g] == Mask[o_9, g])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != g ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale x != null && y != null -- triggers_field_deref.vpr@23.3--23.32
    assume x != null;
    assume y != null;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale (forall z: Ref ::
  //     { z.f }
  //     z == x || z == y ==> fun02(z.g) > 0 && fun02(z.f) > 0) -- triggers_field_deref.vpr@24.3--24.86
    
    // -- Check definedness of (forall z: Ref :: { z.f } z == x || z == y ==> fun02(z.g) > 0 && fun02(z.f) > 0)
      if (*) {
        if (z_26 == x || z_26 == y) {
          assert {:msg "  Inhale might fail. There might be insufficient permission to access z.g (triggers_field_deref.vpr@24.10--24.86) [176092]"}
            HasDirectPerm(Mask, z_26, g);
          if ((fun02_1(Heap[z_26, g]): int) > 0) {
            assert {:msg "  Inhale might fail. There might be insufficient permission to access z.f (triggers_field_deref.vpr@24.10--24.86) [176093]"}
              HasDirectPerm(Mask, z_26, f_7);
          }
        }
        assume false;
      }
    assume (forall z_5: Ref ::
      { Heap[z_5, f_7] }
      z_5 == x || z_5 == y ==> (fun02_1(Heap[z_5, g]): int) > 0 && (fun02_1(Heap[z_5, f_7]): int) > 0
    );
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert fun02(x.g) > 0 -- triggers_field_deref.vpr@27.3--27.24
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of fun02(x.g) > 0
      assert {:msg "  Assert might fail. There might be insufficient permission to access x.g (triggers_field_deref.vpr@27.10--27.24) [176094]"}
        HasDirectPerm(ExhaleWellDef0Mask, x, g);
    assert {:msg "  Assert might fail. Assertion fun02(x.g) > 0 might not hold. (triggers_field_deref.vpr@27.10--27.24) [176095]"}
      (fun02_1(Heap[x, g]): int) > 0;
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test02
// ==================================================

procedure test02(x: Ref, y: Ref) returns ()
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var QPMask: MaskType;
  var z_28: Ref;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[x, $allocated];
    assume Heap[y, $allocated];
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: inhale (forall z: Ref ::z == x || z == y ==> acc(z.f, write)) -- triggers_field_deref.vpr@31.3--31.56
    
    // -- Check definedness of (forall z: Ref ::z == x || z == y ==> acc(z.f, write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Inhale might fail. Quantified resource z.f might not be injective. (triggers_field_deref.vpr@31.10--31.56) [176096]"}
      (forall z_1: Ref, z_1_1: Ref ::
      
      (((z_1 != z_1_1 && (z_1 == x || z_1 == y)) && (z_1_1 == x || z_1_1 == y)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> z_1 != z_1_1
    );
    
    // -- Define Inverse Function
      assume (forall z_1: Ref ::
        { Heap[z_1, f_7] } { QPMask[z_1, f_7] }
        (z_1 == x || z_1 == y) && NoPerm < FullPerm ==> qpRange4(z_1) && invRecv4(z_1) == z_1
      );
      assume (forall o_9: Ref ::
        { invRecv4(o_9) }
        ((invRecv4(o_9) == x || invRecv4(o_9) == y) && NoPerm < FullPerm) && qpRange4(o_9) ==> invRecv4(o_9) == o_9
      );
    
    // -- Assume set of fields is nonNull
      assume (forall z_1: Ref ::
        { Heap[z_1, f_7] } { QPMask[z_1, f_7] }
        z_1 == x || z_1 == y ==> z_1 != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, f_7] }
        (((invRecv4(o_9) == x || invRecv4(o_9) == y) && NoPerm < FullPerm) && qpRange4(o_9) ==> (NoPerm < FullPerm ==> invRecv4(o_9) == o_9) && QPMask[o_9, f_7] == Mask[o_9, f_7] + FullPerm) && (!(((invRecv4(o_9) == x || invRecv4(o_9) == y) && NoPerm < FullPerm) && qpRange4(o_9)) ==> QPMask[o_9, f_7] == Mask[o_9, f_7])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != f_7 ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale (forall z: Ref ::z == x || z == y ==> acc(z.g, write)) -- triggers_field_deref.vpr@32.3--32.56
    
    // -- Check definedness of (forall z: Ref ::z == x || z == y ==> acc(z.g, write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Inhale might fail. Quantified resource z.g might not be injective. (triggers_field_deref.vpr@32.10--32.56) [176097]"}
      (forall z_3: Ref, z_3_1: Ref ::
      
      (((z_3 != z_3_1 && (z_3 == x || z_3 == y)) && (z_3_1 == x || z_3_1 == y)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> z_3 != z_3_1
    );
    
    // -- Define Inverse Function
      assume (forall z_3: Ref ::
        { Heap[z_3, g] } { QPMask[z_3, g] }
        (z_3 == x || z_3 == y) && NoPerm < FullPerm ==> qpRange5(z_3) && invRecv5(z_3) == z_3
      );
      assume (forall o_9: Ref ::
        { invRecv5(o_9) }
        ((invRecv5(o_9) == x || invRecv5(o_9) == y) && NoPerm < FullPerm) && qpRange5(o_9) ==> invRecv5(o_9) == o_9
      );
    
    // -- Assume set of fields is nonNull
      assume (forall z_3: Ref ::
        { Heap[z_3, g] } { QPMask[z_3, g] }
        z_3 == x || z_3 == y ==> z_3 != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, g] }
        (((invRecv5(o_9) == x || invRecv5(o_9) == y) && NoPerm < FullPerm) && qpRange5(o_9) ==> (NoPerm < FullPerm ==> invRecv5(o_9) == o_9) && QPMask[o_9, g] == Mask[o_9, g] + FullPerm) && (!(((invRecv5(o_9) == x || invRecv5(o_9) == y) && NoPerm < FullPerm) && qpRange5(o_9)) ==> QPMask[o_9, g] == Mask[o_9, g])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != g ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale x != null && y != null -- triggers_field_deref.vpr@33.3--33.32
    assume x != null;
    assume y != null;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale (forall z: Ref ::
  //     { fun01(z), z.f, z.g }
  //     z == x || z == y ==> z.f + z.g > 0) -- triggers_field_deref.vpr@34.3--34.82
    
    // -- Check definedness of (forall z: Ref :: { fun01(z), z.f, z.g } z == x || z == y ==> z.f + z.g > 0)
      if (*) {
        if (z_28 == x || z_28 == y) {
          assert {:msg "  Inhale might fail. There might be insufficient permission to access z.f (triggers_field_deref.vpr@34.10--34.82) [176098]"}
            HasDirectPerm(Mask, z_28, f_7);
          assert {:msg "  Inhale might fail. There might be insufficient permission to access z.g (triggers_field_deref.vpr@34.10--34.82) [176099]"}
            HasDirectPerm(Mask, z_28, g);
        }
        assume false;
      }
    assume (forall z_5: Ref ::
      { (fun01_1(z_5): bool), Heap[z_5, f_7], Heap[z_5, g] }
      z_5 == x || z_5 == y ==> Heap[z_5, f_7] + Heap[z_5, g] > 0
    );
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale fun01(x) -- triggers_field_deref.vpr@36.10--36.18
    assume (fun01_1(x): bool);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert x.f + x.g > 0 -- triggers_field_deref.vpr@37.3--37.23
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of x.f + x.g > 0
      assert {:msg "  Assert might fail. There might be insufficient permission to access x.f (triggers_field_deref.vpr@37.10--37.23) [176100]"}
        HasDirectPerm(ExhaleWellDef0Mask, x, f_7);
      assert {:msg "  Assert might fail. There might be insufficient permission to access x.g (triggers_field_deref.vpr@37.10--37.23) [176101]"}
        HasDirectPerm(ExhaleWellDef0Mask, x, g);
    assert {:msg "  Assert might fail. Assertion x.f + x.g > 0 might not hold. (triggers_field_deref.vpr@37.10--37.23) [176102]"}
      Heap[x, f_7] + Heap[x, g] > 0;
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test02b
// ==================================================

procedure test02b(x: Ref, y: Ref) returns ()
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var QPMask: MaskType;
  var z_30: Ref;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[x, $allocated];
    assume Heap[y, $allocated];
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: inhale (forall z: Ref ::z == x || z == y ==> acc(z.f, write)) -- triggers_field_deref.vpr@41.3--41.56
    
    // -- Check definedness of (forall z: Ref ::z == x || z == y ==> acc(z.f, write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Inhale might fail. Quantified resource z.f might not be injective. (triggers_field_deref.vpr@41.10--41.56) [176103]"}
      (forall z_1: Ref, z_1_1: Ref ::
      
      (((z_1 != z_1_1 && (z_1 == x || z_1 == y)) && (z_1_1 == x || z_1_1 == y)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> z_1 != z_1_1
    );
    
    // -- Define Inverse Function
      assume (forall z_1: Ref ::
        { Heap[z_1, f_7] } { QPMask[z_1, f_7] }
        (z_1 == x || z_1 == y) && NoPerm < FullPerm ==> qpRange6(z_1) && invRecv6(z_1) == z_1
      );
      assume (forall o_9: Ref ::
        { invRecv6(o_9) }
        ((invRecv6(o_9) == x || invRecv6(o_9) == y) && NoPerm < FullPerm) && qpRange6(o_9) ==> invRecv6(o_9) == o_9
      );
    
    // -- Assume set of fields is nonNull
      assume (forall z_1: Ref ::
        { Heap[z_1, f_7] } { QPMask[z_1, f_7] }
        z_1 == x || z_1 == y ==> z_1 != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, f_7] }
        (((invRecv6(o_9) == x || invRecv6(o_9) == y) && NoPerm < FullPerm) && qpRange6(o_9) ==> (NoPerm < FullPerm ==> invRecv6(o_9) == o_9) && QPMask[o_9, f_7] == Mask[o_9, f_7] + FullPerm) && (!(((invRecv6(o_9) == x || invRecv6(o_9) == y) && NoPerm < FullPerm) && qpRange6(o_9)) ==> QPMask[o_9, f_7] == Mask[o_9, f_7])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != f_7 ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale (forall z: Ref ::z == x ==> acc(z.g, write)) -- triggers_field_deref.vpr@42.3--42.46
    
    // -- Check definedness of (forall z: Ref ::z == x ==> acc(z.g, write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Inhale might fail. Quantified resource z.g might not be injective. (triggers_field_deref.vpr@42.10--42.46) [176104]"}
      (forall z_3: Ref, z_3_1: Ref ::
      
      (((z_3 != z_3_1 && z_3 == x) && z_3_1 == x) && NoPerm < FullPerm) && NoPerm < FullPerm ==> z_3 != z_3_1
    );
    
    // -- Define Inverse Function
      assume (forall z_3: Ref ::
        { Heap[z_3, g] } { QPMask[z_3, g] }
        z_3 == x && NoPerm < FullPerm ==> qpRange7(z_3) && invRecv7(z_3) == z_3
      );
      assume (forall o_9: Ref ::
        { invRecv7(o_9) }
        (invRecv7(o_9) == x && NoPerm < FullPerm) && qpRange7(o_9) ==> invRecv7(o_9) == o_9
      );
    
    // -- Assume set of fields is nonNull
      assume (forall z_3: Ref ::
        { Heap[z_3, g] } { QPMask[z_3, g] }
        z_3 == x ==> z_3 != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, g] }
        ((invRecv7(o_9) == x && NoPerm < FullPerm) && qpRange7(o_9) ==> (NoPerm < FullPerm ==> invRecv7(o_9) == o_9) && QPMask[o_9, g] == Mask[o_9, g] + FullPerm) && (!((invRecv7(o_9) == x && NoPerm < FullPerm) && qpRange7(o_9)) ==> QPMask[o_9, g] == Mask[o_9, g])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != g ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale (forall z: Ref ::z == y ==> acc(z.g, write)) -- triggers_field_deref.vpr@43.3--43.46
    
    // -- Check definedness of (forall z: Ref ::z == y ==> acc(z.g, write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Inhale might fail. Quantified resource z.g might not be injective. (triggers_field_deref.vpr@43.10--43.46) [176105]"}
      (forall z_5: Ref, z_5_2: Ref ::
      
      (((z_5 != z_5_2 && z_5 == y) && z_5_2 == y) && NoPerm < FullPerm) && NoPerm < FullPerm ==> z_5 != z_5_2
    );
    
    // -- Define Inverse Function
      assume (forall z_5: Ref ::
        { Heap[z_5, g] } { QPMask[z_5, g] }
        z_5 == y && NoPerm < FullPerm ==> qpRange8(z_5) && invRecv8(z_5) == z_5
      );
      assume (forall o_9: Ref ::
        { invRecv8(o_9) }
        (invRecv8(o_9) == y && NoPerm < FullPerm) && qpRange8(o_9) ==> invRecv8(o_9) == o_9
      );
    
    // -- Assume set of fields is nonNull
      assume (forall z_5: Ref ::
        { Heap[z_5, g] } { QPMask[z_5, g] }
        z_5 == y ==> z_5 != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, g] }
        ((invRecv8(o_9) == y && NoPerm < FullPerm) && qpRange8(o_9) ==> (NoPerm < FullPerm ==> invRecv8(o_9) == o_9) && QPMask[o_9, g] == Mask[o_9, g] + FullPerm) && (!((invRecv8(o_9) == y && NoPerm < FullPerm) && qpRange8(o_9)) ==> QPMask[o_9, g] == Mask[o_9, g])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != g ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale x != null && y != null -- triggers_field_deref.vpr@44.3--44.32
    assume x != null;
    assume y != null;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale (forall z: Ref ::
  //     { fun01(z), z.f, z.g }
  //     z == x || z == y ==> z.f + z.g > 0) -- triggers_field_deref.vpr@45.3--45.82
    
    // -- Check definedness of (forall z: Ref :: { fun01(z), z.f, z.g } z == x || z == y ==> z.f + z.g > 0)
      if (*) {
        if (z_30 == x || z_30 == y) {
          assert {:msg "  Inhale might fail. There might be insufficient permission to access z.f (triggers_field_deref.vpr@45.10--45.82) [176106]"}
            HasDirectPerm(Mask, z_30, f_7);
          assert {:msg "  Inhale might fail. There might be insufficient permission to access z.g (triggers_field_deref.vpr@45.10--45.82) [176107]"}
            HasDirectPerm(Mask, z_30, g);
        }
        assume false;
      }
    assume (forall z_7: Ref ::
      { (fun01_1(z_7): bool), Heap[z_7, f_7], Heap[z_7, g] }
      z_7 == x || z_7 == y ==> Heap[z_7, f_7] + Heap[z_7, g] > 0
    );
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale fun01(x) -- triggers_field_deref.vpr@47.10--47.18
    assume (fun01_1(x): bool);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert x.f + x.g > 0 -- triggers_field_deref.vpr@48.3--48.23
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of x.f + x.g > 0
      assert {:msg "  Assert might fail. There might be insufficient permission to access x.f (triggers_field_deref.vpr@48.10--48.23) [176108]"}
        HasDirectPerm(ExhaleWellDef0Mask, x, f_7);
      assert {:msg "  Assert might fail. There might be insufficient permission to access x.g (triggers_field_deref.vpr@48.10--48.23) [176109]"}
        HasDirectPerm(ExhaleWellDef0Mask, x, g);
    assert {:msg "  Assert might fail. Assertion x.f + x.g > 0 might not hold. (triggers_field_deref.vpr@48.10--48.23) [176110]"}
      Heap[x, f_7] + Heap[x, g] > 0;
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test02c
// ==================================================

procedure test02c(x: Ref, y: Ref) returns ()
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var QPMask: MaskType;
  var z_32: Ref;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[x, $allocated];
    assume Heap[y, $allocated];
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: inhale (forall z: Ref ::z == x ==> acc(z.f, write)) -- triggers_field_deref.vpr@52.3--52.46
    
    // -- Check definedness of (forall z: Ref ::z == x ==> acc(z.f, write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Inhale might fail. Quantified resource z.f might not be injective. (triggers_field_deref.vpr@52.10--52.46) [176111]"}
      (forall z_1: Ref, z_1_1: Ref ::
      
      (((z_1 != z_1_1 && z_1 == x) && z_1_1 == x) && NoPerm < FullPerm) && NoPerm < FullPerm ==> z_1 != z_1_1
    );
    
    // -- Define Inverse Function
      assume (forall z_1: Ref ::
        { Heap[z_1, f_7] } { QPMask[z_1, f_7] }
        z_1 == x && NoPerm < FullPerm ==> qpRange9(z_1) && invRecv9(z_1) == z_1
      );
      assume (forall o_9: Ref ::
        { invRecv9(o_9) }
        (invRecv9(o_9) == x && NoPerm < FullPerm) && qpRange9(o_9) ==> invRecv9(o_9) == o_9
      );
    
    // -- Assume set of fields is nonNull
      assume (forall z_1: Ref ::
        { Heap[z_1, f_7] } { QPMask[z_1, f_7] }
        z_1 == x ==> z_1 != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, f_7] }
        ((invRecv9(o_9) == x && NoPerm < FullPerm) && qpRange9(o_9) ==> (NoPerm < FullPerm ==> invRecv9(o_9) == o_9) && QPMask[o_9, f_7] == Mask[o_9, f_7] + FullPerm) && (!((invRecv9(o_9) == x && NoPerm < FullPerm) && qpRange9(o_9)) ==> QPMask[o_9, f_7] == Mask[o_9, f_7])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != f_7 ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale (forall z: Ref ::z == y ==> acc(z.f, write)) -- triggers_field_deref.vpr@53.3--53.46
    
    // -- Check definedness of (forall z: Ref ::z == y ==> acc(z.f, write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Inhale might fail. Quantified resource z.f might not be injective. (triggers_field_deref.vpr@53.10--53.46) [176112]"}
      (forall z_3: Ref, z_3_1: Ref ::
      
      (((z_3 != z_3_1 && z_3 == y) && z_3_1 == y) && NoPerm < FullPerm) && NoPerm < FullPerm ==> z_3 != z_3_1
    );
    
    // -- Define Inverse Function
      assume (forall z_3: Ref ::
        { Heap[z_3, f_7] } { QPMask[z_3, f_7] }
        z_3 == y && NoPerm < FullPerm ==> qpRange10(z_3) && invRecv10(z_3) == z_3
      );
      assume (forall o_9: Ref ::
        { invRecv10(o_9) }
        (invRecv10(o_9) == y && NoPerm < FullPerm) && qpRange10(o_9) ==> invRecv10(o_9) == o_9
      );
    
    // -- Assume set of fields is nonNull
      assume (forall z_3: Ref ::
        { Heap[z_3, f_7] } { QPMask[z_3, f_7] }
        z_3 == y ==> z_3 != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, f_7] }
        ((invRecv10(o_9) == y && NoPerm < FullPerm) && qpRange10(o_9) ==> (NoPerm < FullPerm ==> invRecv10(o_9) == o_9) && QPMask[o_9, f_7] == Mask[o_9, f_7] + FullPerm) && (!((invRecv10(o_9) == y && NoPerm < FullPerm) && qpRange10(o_9)) ==> QPMask[o_9, f_7] == Mask[o_9, f_7])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != f_7 ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale (forall z: Ref ::z == x ==> acc(z.g, write)) -- triggers_field_deref.vpr@54.3--54.46
    
    // -- Check definedness of (forall z: Ref ::z == x ==> acc(z.g, write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Inhale might fail. Quantified resource z.g might not be injective. (triggers_field_deref.vpr@54.10--54.46) [176113]"}
      (forall z_5: Ref, z_5_2: Ref ::
      
      (((z_5 != z_5_2 && z_5 == x) && z_5_2 == x) && NoPerm < FullPerm) && NoPerm < FullPerm ==> z_5 != z_5_2
    );
    
    // -- Define Inverse Function
      assume (forall z_5: Ref ::
        { Heap[z_5, g] } { QPMask[z_5, g] }
        z_5 == x && NoPerm < FullPerm ==> qpRange11(z_5) && invRecv11(z_5) == z_5
      );
      assume (forall o_9: Ref ::
        { invRecv11(o_9) }
        (invRecv11(o_9) == x && NoPerm < FullPerm) && qpRange11(o_9) ==> invRecv11(o_9) == o_9
      );
    
    // -- Assume set of fields is nonNull
      assume (forall z_5: Ref ::
        { Heap[z_5, g] } { QPMask[z_5, g] }
        z_5 == x ==> z_5 != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, g] }
        ((invRecv11(o_9) == x && NoPerm < FullPerm) && qpRange11(o_9) ==> (NoPerm < FullPerm ==> invRecv11(o_9) == o_9) && QPMask[o_9, g] == Mask[o_9, g] + FullPerm) && (!((invRecv11(o_9) == x && NoPerm < FullPerm) && qpRange11(o_9)) ==> QPMask[o_9, g] == Mask[o_9, g])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != g ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale (forall z: Ref ::z == y ==> acc(z.g, write)) -- triggers_field_deref.vpr@55.3--55.46
    
    // -- Check definedness of (forall z: Ref ::z == y ==> acc(z.g, write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Inhale might fail. Quantified resource z.g might not be injective. (triggers_field_deref.vpr@55.10--55.46) [176114]"}
      (forall z_7: Ref, z_7_2: Ref ::
      
      (((z_7 != z_7_2 && z_7 == y) && z_7_2 == y) && NoPerm < FullPerm) && NoPerm < FullPerm ==> z_7 != z_7_2
    );
    
    // -- Define Inverse Function
      assume (forall z_7: Ref ::
        { Heap[z_7, g] } { QPMask[z_7, g] }
        z_7 == y && NoPerm < FullPerm ==> qpRange12(z_7) && invRecv12(z_7) == z_7
      );
      assume (forall o_9: Ref ::
        { invRecv12(o_9) }
        (invRecv12(o_9) == y && NoPerm < FullPerm) && qpRange12(o_9) ==> invRecv12(o_9) == o_9
      );
    
    // -- Assume set of fields is nonNull
      assume (forall z_7: Ref ::
        { Heap[z_7, g] } { QPMask[z_7, g] }
        z_7 == y ==> z_7 != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, g] }
        ((invRecv12(o_9) == y && NoPerm < FullPerm) && qpRange12(o_9) ==> (NoPerm < FullPerm ==> invRecv12(o_9) == o_9) && QPMask[o_9, g] == Mask[o_9, g] + FullPerm) && (!((invRecv12(o_9) == y && NoPerm < FullPerm) && qpRange12(o_9)) ==> QPMask[o_9, g] == Mask[o_9, g])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != g ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale x != null && y != null -- triggers_field_deref.vpr@57.3--57.32
    assume x != null;
    assume y != null;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale (forall z: Ref ::
  //     { fun01(z), z.f, z.g }
  //     z == x || z == y ==> z.f + z.g > 0) -- triggers_field_deref.vpr@58.3--58.82
    
    // -- Check definedness of (forall z: Ref :: { fun01(z), z.f, z.g } z == x || z == y ==> z.f + z.g > 0)
      if (*) {
        if (z_32 == x || z_32 == y) {
          assert {:msg "  Inhale might fail. There might be insufficient permission to access z.f (triggers_field_deref.vpr@58.10--58.82) [176115]"}
            HasDirectPerm(Mask, z_32, f_7);
          assert {:msg "  Inhale might fail. There might be insufficient permission to access z.g (triggers_field_deref.vpr@58.10--58.82) [176116]"}
            HasDirectPerm(Mask, z_32, g);
        }
        assume false;
      }
    assume (forall z_9: Ref ::
      { (fun01_1(z_9): bool), Heap[z_9, f_7], Heap[z_9, g] }
      z_9 == x || z_9 == y ==> Heap[z_9, f_7] + Heap[z_9, g] > 0
    );
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale fun01(x) -- triggers_field_deref.vpr@60.10--60.18
    assume (fun01_1(x): bool);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert x.f + x.g > 0 -- triggers_field_deref.vpr@61.3--61.23
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of x.f + x.g > 0
      assert {:msg "  Assert might fail. There might be insufficient permission to access x.f (triggers_field_deref.vpr@61.10--61.23) [176117]"}
        HasDirectPerm(ExhaleWellDef0Mask, x, f_7);
      assert {:msg "  Assert might fail. There might be insufficient permission to access x.g (triggers_field_deref.vpr@61.10--61.23) [176118]"}
        HasDirectPerm(ExhaleWellDef0Mask, x, g);
    assert {:msg "  Assert might fail. Assertion x.f + x.g > 0 might not hold. (triggers_field_deref.vpr@61.10--61.23) [176119]"}
      Heap[x, f_7] + Heap[x, g] > 0;
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test03
// ==================================================

procedure test03(x: Ref, y: Ref) returns ()
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var QPMask: MaskType;
  var z_34: Ref;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[x, $allocated];
    assume Heap[y, $allocated];
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: inhale (forall z: Ref ::z == x ==> acc(z.f, write)) -- triggers_field_deref.vpr@65.3--65.46
    
    // -- Check definedness of (forall z: Ref ::z == x ==> acc(z.f, write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Inhale might fail. Quantified resource z.f might not be injective. (triggers_field_deref.vpr@65.10--65.46) [176120]"}
      (forall z_1: Ref, z_1_1: Ref ::
      
      (((z_1 != z_1_1 && z_1 == x) && z_1_1 == x) && NoPerm < FullPerm) && NoPerm < FullPerm ==> z_1 != z_1_1
    );
    
    // -- Define Inverse Function
      assume (forall z_1: Ref ::
        { Heap[z_1, f_7] } { QPMask[z_1, f_7] }
        z_1 == x && NoPerm < FullPerm ==> qpRange13(z_1) && invRecv13(z_1) == z_1
      );
      assume (forall o_9: Ref ::
        { invRecv13(o_9) }
        (invRecv13(o_9) == x && NoPerm < FullPerm) && qpRange13(o_9) ==> invRecv13(o_9) == o_9
      );
    
    // -- Assume set of fields is nonNull
      assume (forall z_1: Ref ::
        { Heap[z_1, f_7] } { QPMask[z_1, f_7] }
        z_1 == x ==> z_1 != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, f_7] }
        ((invRecv13(o_9) == x && NoPerm < FullPerm) && qpRange13(o_9) ==> (NoPerm < FullPerm ==> invRecv13(o_9) == o_9) && QPMask[o_9, f_7] == Mask[o_9, f_7] + FullPerm) && (!((invRecv13(o_9) == x && NoPerm < FullPerm) && qpRange13(o_9)) ==> QPMask[o_9, f_7] == Mask[o_9, f_7])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != f_7 ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale (forall z: Ref ::z == y ==> acc(z.f, write)) -- triggers_field_deref.vpr@66.3--66.46
    
    // -- Check definedness of (forall z: Ref ::z == y ==> acc(z.f, write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Inhale might fail. Quantified resource z.f might not be injective. (triggers_field_deref.vpr@66.10--66.46) [176121]"}
      (forall z_3: Ref, z_3_1: Ref ::
      
      (((z_3 != z_3_1 && z_3 == y) && z_3_1 == y) && NoPerm < FullPerm) && NoPerm < FullPerm ==> z_3 != z_3_1
    );
    
    // -- Define Inverse Function
      assume (forall z_3: Ref ::
        { Heap[z_3, f_7] } { QPMask[z_3, f_7] }
        z_3 == y && NoPerm < FullPerm ==> qpRange14(z_3) && invRecv14(z_3) == z_3
      );
      assume (forall o_9: Ref ::
        { invRecv14(o_9) }
        (invRecv14(o_9) == y && NoPerm < FullPerm) && qpRange14(o_9) ==> invRecv14(o_9) == o_9
      );
    
    // -- Assume set of fields is nonNull
      assume (forall z_3: Ref ::
        { Heap[z_3, f_7] } { QPMask[z_3, f_7] }
        z_3 == y ==> z_3 != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, f_7] }
        ((invRecv14(o_9) == y && NoPerm < FullPerm) && qpRange14(o_9) ==> (NoPerm < FullPerm ==> invRecv14(o_9) == o_9) && QPMask[o_9, f_7] == Mask[o_9, f_7] + FullPerm) && (!((invRecv14(o_9) == y && NoPerm < FullPerm) && qpRange14(o_9)) ==> QPMask[o_9, f_7] == Mask[o_9, f_7])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != f_7 ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale (forall z: Ref ::z == x ==> acc(z.g, write)) -- triggers_field_deref.vpr@67.3--67.46
    
    // -- Check definedness of (forall z: Ref ::z == x ==> acc(z.g, write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Inhale might fail. Quantified resource z.g might not be injective. (triggers_field_deref.vpr@67.10--67.46) [176122]"}
      (forall z_5: Ref, z_5_2: Ref ::
      
      (((z_5 != z_5_2 && z_5 == x) && z_5_2 == x) && NoPerm < FullPerm) && NoPerm < FullPerm ==> z_5 != z_5_2
    );
    
    // -- Define Inverse Function
      assume (forall z_5: Ref ::
        { Heap[z_5, g] } { QPMask[z_5, g] }
        z_5 == x && NoPerm < FullPerm ==> qpRange15(z_5) && invRecv15(z_5) == z_5
      );
      assume (forall o_9: Ref ::
        { invRecv15(o_9) }
        (invRecv15(o_9) == x && NoPerm < FullPerm) && qpRange15(o_9) ==> invRecv15(o_9) == o_9
      );
    
    // -- Assume set of fields is nonNull
      assume (forall z_5: Ref ::
        { Heap[z_5, g] } { QPMask[z_5, g] }
        z_5 == x ==> z_5 != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, g] }
        ((invRecv15(o_9) == x && NoPerm < FullPerm) && qpRange15(o_9) ==> (NoPerm < FullPerm ==> invRecv15(o_9) == o_9) && QPMask[o_9, g] == Mask[o_9, g] + FullPerm) && (!((invRecv15(o_9) == x && NoPerm < FullPerm) && qpRange15(o_9)) ==> QPMask[o_9, g] == Mask[o_9, g])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != g ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale (forall z: Ref ::z == y ==> acc(z.g, write)) -- triggers_field_deref.vpr@68.3--68.46
    
    // -- Check definedness of (forall z: Ref ::z == y ==> acc(z.g, write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Inhale might fail. Quantified resource z.g might not be injective. (triggers_field_deref.vpr@68.10--68.46) [176123]"}
      (forall z_7: Ref, z_7_2: Ref ::
      
      (((z_7 != z_7_2 && z_7 == y) && z_7_2 == y) && NoPerm < FullPerm) && NoPerm < FullPerm ==> z_7 != z_7_2
    );
    
    // -- Define Inverse Function
      assume (forall z_7: Ref ::
        { Heap[z_7, g] } { QPMask[z_7, g] }
        z_7 == y && NoPerm < FullPerm ==> qpRange16(z_7) && invRecv16(z_7) == z_7
      );
      assume (forall o_9: Ref ::
        { invRecv16(o_9) }
        (invRecv16(o_9) == y && NoPerm < FullPerm) && qpRange16(o_9) ==> invRecv16(o_9) == o_9
      );
    
    // -- Assume set of fields is nonNull
      assume (forall z_7: Ref ::
        { Heap[z_7, g] } { QPMask[z_7, g] }
        z_7 == y ==> z_7 != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, g] }
        ((invRecv16(o_9) == y && NoPerm < FullPerm) && qpRange16(o_9) ==> (NoPerm < FullPerm ==> invRecv16(o_9) == o_9) && QPMask[o_9, g] == Mask[o_9, g] + FullPerm) && (!((invRecv16(o_9) == y && NoPerm < FullPerm) && qpRange16(o_9)) ==> QPMask[o_9, g] == Mask[o_9, g])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != g ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale x != null && y != null -- triggers_field_deref.vpr@70.3--70.32
    assume x != null;
    assume y != null;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale (forall z: Ref ::
  //     { fun01(z), z.f, z.g }
  //     z == x || z == y ==> z.f + z.g + z.f > 0) -- triggers_field_deref.vpr@71.3--71.88
    
    // -- Check definedness of (forall z: Ref :: { fun01(z), z.f, z.g } z == x || z == y ==> z.f + z.g + z.f > 0)
      if (*) {
        if (z_34 == x || z_34 == y) {
          assert {:msg "  Inhale might fail. There might be insufficient permission to access z.f (triggers_field_deref.vpr@71.10--71.88) [176124]"}
            HasDirectPerm(Mask, z_34, f_7);
          assert {:msg "  Inhale might fail. There might be insufficient permission to access z.g (triggers_field_deref.vpr@71.10--71.88) [176125]"}
            HasDirectPerm(Mask, z_34, g);
          assert {:msg "  Inhale might fail. There might be insufficient permission to access z.f (triggers_field_deref.vpr@71.10--71.88) [176126]"}
            HasDirectPerm(Mask, z_34, f_7);
        }
        assume false;
      }
    assume (forall z_9: Ref ::
      { (fun01_1(z_9): bool), Heap[z_9, f_7], Heap[z_9, g] }
      z_9 == x || z_9 == y ==> Heap[z_9, f_7] + Heap[z_9, g] + Heap[z_9, f_7] > 0
    );
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale fun01(x) -- triggers_field_deref.vpr@73.10--73.18
    assume (fun01_1(x): bool);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert 2 * x.f + x.g > 0 -- triggers_field_deref.vpr@74.3--74.27
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of 2 * x.f + x.g > 0
      assert {:msg "  Assert might fail. There might be insufficient permission to access x.f (triggers_field_deref.vpr@74.10--74.27) [176127]"}
        HasDirectPerm(ExhaleWellDef0Mask, x, f_7);
      assert {:msg "  Assert might fail. There might be insufficient permission to access x.g (triggers_field_deref.vpr@74.10--74.27) [176128]"}
        HasDirectPerm(ExhaleWellDef0Mask, x, g);
    assert {:msg "  Assert might fail. Assertion 2 * x.f + x.g > 0 might not hold. (triggers_field_deref.vpr@74.10--74.27) [176129]"}
      2 * Heap[x, f_7] + Heap[x, g] > 0;
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test04
// ==================================================

procedure test04(x: Ref, y: Ref) returns ()
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var QPMask: MaskType;
  var z_36: Ref;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[x, $allocated];
    assume Heap[y, $allocated];
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: inhale (forall z: Ref ::z == x || z == y ==> acc(z.f, write)) -- triggers_field_deref.vpr@78.3--78.56
    
    // -- Check definedness of (forall z: Ref ::z == x || z == y ==> acc(z.f, write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Inhale might fail. Quantified resource z.f might not be injective. (triggers_field_deref.vpr@78.10--78.56) [176130]"}
      (forall z_1: Ref, z_1_1: Ref ::
      
      (((z_1 != z_1_1 && (z_1 == x || z_1 == y)) && (z_1_1 == x || z_1_1 == y)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> z_1 != z_1_1
    );
    
    // -- Define Inverse Function
      assume (forall z_1: Ref ::
        { Heap[z_1, f_7] } { QPMask[z_1, f_7] }
        (z_1 == x || z_1 == y) && NoPerm < FullPerm ==> qpRange17(z_1) && invRecv17(z_1) == z_1
      );
      assume (forall o_9: Ref ::
        { invRecv17(o_9) }
        ((invRecv17(o_9) == x || invRecv17(o_9) == y) && NoPerm < FullPerm) && qpRange17(o_9) ==> invRecv17(o_9) == o_9
      );
    
    // -- Assume set of fields is nonNull
      assume (forall z_1: Ref ::
        { Heap[z_1, f_7] } { QPMask[z_1, f_7] }
        z_1 == x || z_1 == y ==> z_1 != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, f_7] }
        (((invRecv17(o_9) == x || invRecv17(o_9) == y) && NoPerm < FullPerm) && qpRange17(o_9) ==> (NoPerm < FullPerm ==> invRecv17(o_9) == o_9) && QPMask[o_9, f_7] == Mask[o_9, f_7] + FullPerm) && (!(((invRecv17(o_9) == x || invRecv17(o_9) == y) && NoPerm < FullPerm) && qpRange17(o_9)) ==> QPMask[o_9, f_7] == Mask[o_9, f_7])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != f_7 ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale x != null && y != null -- triggers_field_deref.vpr@79.3--79.32
    assume x != null;
    assume y != null;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale (forall z: Ref ::
  //     { fun02(z.f) }
  //     z == x || z == y ==> fun02(z.f) == 0) -- triggers_field_deref.vpr@80.3--80.76
    
    // -- Check definedness of (forall z: Ref :: { fun02(z.f) } z == x || z == y ==> fun02(z.f) == 0)
      if (*) {
        if (z_36 == x || z_36 == y) {
          assert {:msg "  Inhale might fail. There might be insufficient permission to access z.f (triggers_field_deref.vpr@80.10--80.76) [176131]"}
            HasDirectPerm(Mask, z_36, f_7);
        }
        assume false;
      }
    assume (forall z_3: Ref ::
      { (fun02_1(Heap[z_3, f_7]): int) }
      z_3 == x || z_3 == y ==> (fun02_1(Heap[z_3, f_7]): int) == 0
    );
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert fun02(x.f) >= 0 -- triggers_field_deref.vpr@82.3--82.25
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of fun02(x.f) >= 0
      assert {:msg "  Assert might fail. There might be insufficient permission to access x.f (triggers_field_deref.vpr@82.10--82.25) [176132]"}
        HasDirectPerm(ExhaleWellDef0Mask, x, f_7);
    assert {:msg "  Assert might fail. Assertion fun02(x.f) >= 0 might not hold. (triggers_field_deref.vpr@82.10--82.25) [176133]"}
      (fun02_1(Heap[x, f_7]): int) >= 0;
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test04b
// ==================================================

procedure test04b(x: Ref, y: Ref) returns ()
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var QPMask: MaskType;
  var z_38: Ref;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[x, $allocated];
    assume Heap[y, $allocated];
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: inhale (forall z: Ref ::z == x || z == y ==> acc(z.f, write)) -- triggers_field_deref.vpr@88.3--88.56
    
    // -- Check definedness of (forall z: Ref ::z == x || z == y ==> acc(z.f, write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Inhale might fail. Quantified resource z.f might not be injective. (triggers_field_deref.vpr@88.10--88.56) [176134]"}
      (forall z_1: Ref, z_1_1: Ref ::
      
      (((z_1 != z_1_1 && (z_1 == x || z_1 == y)) && (z_1_1 == x || z_1_1 == y)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> z_1 != z_1_1
    );
    
    // -- Define Inverse Function
      assume (forall z_1: Ref ::
        { Heap[z_1, f_7] } { QPMask[z_1, f_7] }
        (z_1 == x || z_1 == y) && NoPerm < FullPerm ==> qpRange18(z_1) && invRecv18(z_1) == z_1
      );
      assume (forall o_9: Ref ::
        { invRecv18(o_9) }
        ((invRecv18(o_9) == x || invRecv18(o_9) == y) && NoPerm < FullPerm) && qpRange18(o_9) ==> invRecv18(o_9) == o_9
      );
    
    // -- Assume set of fields is nonNull
      assume (forall z_1: Ref ::
        { Heap[z_1, f_7] } { QPMask[z_1, f_7] }
        z_1 == x || z_1 == y ==> z_1 != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, f_7] }
        (((invRecv18(o_9) == x || invRecv18(o_9) == y) && NoPerm < FullPerm) && qpRange18(o_9) ==> (NoPerm < FullPerm ==> invRecv18(o_9) == o_9) && QPMask[o_9, f_7] == Mask[o_9, f_7] + FullPerm) && (!(((invRecv18(o_9) == x || invRecv18(o_9) == y) && NoPerm < FullPerm) && qpRange18(o_9)) ==> QPMask[o_9, f_7] == Mask[o_9, f_7])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != f_7 ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale x != null && y != null -- triggers_field_deref.vpr@89.3--89.32
    assume x != null;
    assume y != null;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale (forall z: Ref :: { inv(z.f) } z == x || z == y ==> inv(z.f)) -- triggers_field_deref.vpr@90.3--90.67
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall z: Ref :: { inv(z.f) } z == x || z == y ==> inv(z.f))
      if (*) {
        if (z_38 == x || z_38 == y) {
          assert {:msg "  Inhale might fail. There might be insufficient permission to access z.f (triggers_field_deref.vpr@90.10--90.67) [176135]"}
            HasDirectPerm(Mask, z_38, f_7);
          if (*) {
            // Stop execution
            assume false;
          }
        }
        assume false;
      }
    assume (forall z_3: Ref ::
      { inv#frame(EmptyFrame, Heap[z_3, f_7]) }
      z_3 == x || z_3 == y ==> inv_1(Heap, Heap[z_3, f_7])
    );
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert x.f == 0 -- triggers_field_deref.vpr@93.3--93.18
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of x.f == 0
      assert {:msg "  Assert might fail. There might be insufficient permission to access x.f (triggers_field_deref.vpr@93.10--93.18) [176136]"}
        HasDirectPerm(ExhaleWellDef0Mask, x, f_7);
    assert {:msg "  Assert might fail. Assertion x.f == 0 might not hold. (triggers_field_deref.vpr@93.10--93.18) [176137]"}
      Heap[x, f_7] == 0;
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test04c
// ==================================================

procedure test04c(x: Ref, y: Ref) returns ()
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var QPMask: MaskType;
  var z_40: Ref;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[x, $allocated];
    assume Heap[y, $allocated];
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: inhale (forall z: Ref ::z == x || z == y ==> acc(z.f, write)) -- triggers_field_deref.vpr@97.3--97.56
    
    // -- Check definedness of (forall z: Ref ::z == x || z == y ==> acc(z.f, write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Inhale might fail. Quantified resource z.f might not be injective. (triggers_field_deref.vpr@97.10--97.56) [176138]"}
      (forall z_1: Ref, z_1_1: Ref ::
      
      (((z_1 != z_1_1 && (z_1 == x || z_1 == y)) && (z_1_1 == x || z_1_1 == y)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> z_1 != z_1_1
    );
    
    // -- Define Inverse Function
      assume (forall z_1: Ref ::
        { Heap[z_1, f_7] } { QPMask[z_1, f_7] }
        (z_1 == x || z_1 == y) && NoPerm < FullPerm ==> qpRange19(z_1) && invRecv19(z_1) == z_1
      );
      assume (forall o_9: Ref ::
        { invRecv19(o_9) }
        ((invRecv19(o_9) == x || invRecv19(o_9) == y) && NoPerm < FullPerm) && qpRange19(o_9) ==> invRecv19(o_9) == o_9
      );
    
    // -- Assume set of fields is nonNull
      assume (forall z_1: Ref ::
        { Heap[z_1, f_7] } { QPMask[z_1, f_7] }
        z_1 == x || z_1 == y ==> z_1 != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, f_7] }
        (((invRecv19(o_9) == x || invRecv19(o_9) == y) && NoPerm < FullPerm) && qpRange19(o_9) ==> (NoPerm < FullPerm ==> invRecv19(o_9) == o_9) && QPMask[o_9, f_7] == Mask[o_9, f_7] + FullPerm) && (!(((invRecv19(o_9) == x || invRecv19(o_9) == y) && NoPerm < FullPerm) && qpRange19(o_9)) ==> QPMask[o_9, f_7] == Mask[o_9, f_7])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != f_7 ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale x != null && y != null -- triggers_field_deref.vpr@98.3--98.32
    assume x != null;
    assume y != null;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale (forall z: Ref :: { z.f } z == x || z == y ==> inv(z.f)) -- triggers_field_deref.vpr@99.3--99.62
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall z: Ref :: { z.f } z == x || z == y ==> inv(z.f))
      if (*) {
        if (z_40 == x || z_40 == y) {
          assert {:msg "  Inhale might fail. There might be insufficient permission to access z.f (triggers_field_deref.vpr@99.10--99.62) [176139]"}
            HasDirectPerm(Mask, z_40, f_7);
          if (*) {
            // Stop execution
            assume false;
          }
        }
        assume false;
      }
    assume (forall z_3: Ref ::
      { Heap[z_3, f_7] }
      z_3 == x || z_3 == y ==> inv_1(Heap, Heap[z_3, f_7])
    );
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert x.f == 0 -- triggers_field_deref.vpr@101.3--101.18
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of x.f == 0
      assert {:msg "  Assert might fail. There might be insufficient permission to access x.f (triggers_field_deref.vpr@101.10--101.18) [176140]"}
        HasDirectPerm(ExhaleWellDef0Mask, x, f_7);
    assert {:msg "  Assert might fail. Assertion x.f == 0 might not hold. (triggers_field_deref.vpr@101.10--101.18) [176141]"}
      Heap[x, f_7] == 0;
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test05
// ==================================================

procedure test05(x: Ref, y: Ref) returns ()
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var QPMask: MaskType;
  var z_42: Ref;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[x, $allocated];
    assume Heap[y, $allocated];
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: inhale (forall z: Ref ::z == x ==> acc(z.f, write)) -- triggers_field_deref.vpr@105.3--105.46
    
    // -- Check definedness of (forall z: Ref ::z == x ==> acc(z.f, write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Inhale might fail. Quantified resource z.f might not be injective. (triggers_field_deref.vpr@105.10--105.46) [176142]"}
      (forall z_1: Ref, z_1_1: Ref ::
      
      (((z_1 != z_1_1 && z_1 == x) && z_1_1 == x) && NoPerm < FullPerm) && NoPerm < FullPerm ==> z_1 != z_1_1
    );
    
    // -- Define Inverse Function
      assume (forall z_1: Ref ::
        { Heap[z_1, f_7] } { QPMask[z_1, f_7] }
        z_1 == x && NoPerm < FullPerm ==> qpRange20(z_1) && invRecv20(z_1) == z_1
      );
      assume (forall o_9: Ref ::
        { invRecv20(o_9) }
        (invRecv20(o_9) == x && NoPerm < FullPerm) && qpRange20(o_9) ==> invRecv20(o_9) == o_9
      );
    
    // -- Assume set of fields is nonNull
      assume (forall z_1: Ref ::
        { Heap[z_1, f_7] } { QPMask[z_1, f_7] }
        z_1 == x ==> z_1 != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, f_7] }
        ((invRecv20(o_9) == x && NoPerm < FullPerm) && qpRange20(o_9) ==> (NoPerm < FullPerm ==> invRecv20(o_9) == o_9) && QPMask[o_9, f_7] == Mask[o_9, f_7] + FullPerm) && (!((invRecv20(o_9) == x && NoPerm < FullPerm) && qpRange20(o_9)) ==> QPMask[o_9, f_7] == Mask[o_9, f_7])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != f_7 ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale (forall z: Ref ::z == y ==> acc(z.f, write)) -- triggers_field_deref.vpr@106.3--106.46
    
    // -- Check definedness of (forall z: Ref ::z == y ==> acc(z.f, write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Inhale might fail. Quantified resource z.f might not be injective. (triggers_field_deref.vpr@106.10--106.46) [176143]"}
      (forall z_3: Ref, z_3_1: Ref ::
      
      (((z_3 != z_3_1 && z_3 == y) && z_3_1 == y) && NoPerm < FullPerm) && NoPerm < FullPerm ==> z_3 != z_3_1
    );
    
    // -- Define Inverse Function
      assume (forall z_3: Ref ::
        { Heap[z_3, f_7] } { QPMask[z_3, f_7] }
        z_3 == y && NoPerm < FullPerm ==> qpRange21(z_3) && invRecv21(z_3) == z_3
      );
      assume (forall o_9: Ref ::
        { invRecv21(o_9) }
        (invRecv21(o_9) == y && NoPerm < FullPerm) && qpRange21(o_9) ==> invRecv21(o_9) == o_9
      );
    
    // -- Assume set of fields is nonNull
      assume (forall z_3: Ref ::
        { Heap[z_3, f_7] } { QPMask[z_3, f_7] }
        z_3 == y ==> z_3 != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, f_7] }
        ((invRecv21(o_9) == y && NoPerm < FullPerm) && qpRange21(o_9) ==> (NoPerm < FullPerm ==> invRecv21(o_9) == o_9) && QPMask[o_9, f_7] == Mask[o_9, f_7] + FullPerm) && (!((invRecv21(o_9) == y && NoPerm < FullPerm) && qpRange21(o_9)) ==> QPMask[o_9, f_7] == Mask[o_9, f_7])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != f_7 ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale (forall z: Ref ::z == x ==> acc(z.g, write)) -- triggers_field_deref.vpr@107.3--107.46
    
    // -- Check definedness of (forall z: Ref ::z == x ==> acc(z.g, write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Inhale might fail. Quantified resource z.g might not be injective. (triggers_field_deref.vpr@107.10--107.46) [176144]"}
      (forall z_5: Ref, z_5_2: Ref ::
      
      (((z_5 != z_5_2 && z_5 == x) && z_5_2 == x) && NoPerm < FullPerm) && NoPerm < FullPerm ==> z_5 != z_5_2
    );
    
    // -- Define Inverse Function
      assume (forall z_5: Ref ::
        { Heap[z_5, g] } { QPMask[z_5, g] }
        z_5 == x && NoPerm < FullPerm ==> qpRange22(z_5) && invRecv22(z_5) == z_5
      );
      assume (forall o_9: Ref ::
        { invRecv22(o_9) }
        (invRecv22(o_9) == x && NoPerm < FullPerm) && qpRange22(o_9) ==> invRecv22(o_9) == o_9
      );
    
    // -- Assume set of fields is nonNull
      assume (forall z_5: Ref ::
        { Heap[z_5, g] } { QPMask[z_5, g] }
        z_5 == x ==> z_5 != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, g] }
        ((invRecv22(o_9) == x && NoPerm < FullPerm) && qpRange22(o_9) ==> (NoPerm < FullPerm ==> invRecv22(o_9) == o_9) && QPMask[o_9, g] == Mask[o_9, g] + FullPerm) && (!((invRecv22(o_9) == x && NoPerm < FullPerm) && qpRange22(o_9)) ==> QPMask[o_9, g] == Mask[o_9, g])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != g ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale (forall z: Ref ::z == y ==> acc(z.g, write)) -- triggers_field_deref.vpr@108.3--108.46
    
    // -- Check definedness of (forall z: Ref ::z == y ==> acc(z.g, write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Inhale might fail. Quantified resource z.g might not be injective. (triggers_field_deref.vpr@108.10--108.46) [176145]"}
      (forall z_7: Ref, z_7_2: Ref ::
      
      (((z_7 != z_7_2 && z_7 == y) && z_7_2 == y) && NoPerm < FullPerm) && NoPerm < FullPerm ==> z_7 != z_7_2
    );
    
    // -- Define Inverse Function
      assume (forall z_7: Ref ::
        { Heap[z_7, g] } { QPMask[z_7, g] }
        z_7 == y && NoPerm < FullPerm ==> qpRange23(z_7) && invRecv23(z_7) == z_7
      );
      assume (forall o_9: Ref ::
        { invRecv23(o_9) }
        (invRecv23(o_9) == y && NoPerm < FullPerm) && qpRange23(o_9) ==> invRecv23(o_9) == o_9
      );
    
    // -- Assume set of fields is nonNull
      assume (forall z_7: Ref ::
        { Heap[z_7, g] } { QPMask[z_7, g] }
        z_7 == y ==> z_7 != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, g] }
        ((invRecv23(o_9) == y && NoPerm < FullPerm) && qpRange23(o_9) ==> (NoPerm < FullPerm ==> invRecv23(o_9) == o_9) && QPMask[o_9, g] == Mask[o_9, g] + FullPerm) && (!((invRecv23(o_9) == y && NoPerm < FullPerm) && qpRange23(o_9)) ==> QPMask[o_9, g] == Mask[o_9, g])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != g ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale x != null && y != null -- triggers_field_deref.vpr@110.3--110.32
    assume x != null;
    assume y != null;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale (forall z: Ref ::
  //     { fun01(z), z.f, z.g }
  //     z == x || z == y ==> z.f + z.g + z.f > 0) -- triggers_field_deref.vpr@111.3--111.88
    
    // -- Check definedness of (forall z: Ref :: { fun01(z), z.f, z.g } z == x || z == y ==> z.f + z.g + z.f > 0)
      if (*) {
        if (z_42 == x || z_42 == y) {
          assert {:msg "  Inhale might fail. There might be insufficient permission to access z.f (triggers_field_deref.vpr@111.10--111.88) [176146]"}
            HasDirectPerm(Mask, z_42, f_7);
          assert {:msg "  Inhale might fail. There might be insufficient permission to access z.g (triggers_field_deref.vpr@111.10--111.88) [176147]"}
            HasDirectPerm(Mask, z_42, g);
          assert {:msg "  Inhale might fail. There might be insufficient permission to access z.f (triggers_field_deref.vpr@111.10--111.88) [176148]"}
            HasDirectPerm(Mask, z_42, f_7);
        }
        assume false;
      }
    assume (forall z_9: Ref ::
      { (fun01_1(z_9): bool), Heap[z_9, f_7], Heap[z_9, g] }
      z_9 == x || z_9 == y ==> Heap[z_9, f_7] + Heap[z_9, g] + Heap[z_9, f_7] > 0
    );
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale fun01(x) -- triggers_field_deref.vpr@113.10--113.18
    assume (fun01_1(x): bool);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert 2 * x.f + x.g > 0 -- triggers_field_deref.vpr@114.3--114.27
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of 2 * x.f + x.g > 0
      assert {:msg "  Assert might fail. There might be insufficient permission to access x.f (triggers_field_deref.vpr@114.10--114.27) [176149]"}
        HasDirectPerm(ExhaleWellDef0Mask, x, f_7);
      assert {:msg "  Assert might fail. There might be insufficient permission to access x.g (triggers_field_deref.vpr@114.10--114.27) [176150]"}
        HasDirectPerm(ExhaleWellDef0Mask, x, g);
    assert {:msg "  Assert might fail. Assertion 2 * x.f + x.g > 0 might not hold. (triggers_field_deref.vpr@114.10--114.27) [176151]"}
      2 * Heap[x, f_7] + Heap[x, g] > 0;
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test06
// ==================================================

procedure test06(x: Ref, y: Ref) returns ()
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var QPMask: MaskType;
  var z_44: Ref;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[x, $allocated];
    assume Heap[y, $allocated];
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: inhale (forall z: Ref ::z == x ==> acc(z.f, write)) -- triggers_field_deref.vpr@118.3--118.46
    
    // -- Check definedness of (forall z: Ref ::z == x ==> acc(z.f, write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Inhale might fail. Quantified resource z.f might not be injective. (triggers_field_deref.vpr@118.10--118.46) [176152]"}
      (forall z_1: Ref, z_1_1: Ref ::
      
      (((z_1 != z_1_1 && z_1 == x) && z_1_1 == x) && NoPerm < FullPerm) && NoPerm < FullPerm ==> z_1 != z_1_1
    );
    
    // -- Define Inverse Function
      assume (forall z_1: Ref ::
        { Heap[z_1, f_7] } { QPMask[z_1, f_7] }
        z_1 == x && NoPerm < FullPerm ==> qpRange24(z_1) && invRecv24(z_1) == z_1
      );
      assume (forall o_9: Ref ::
        { invRecv24(o_9) }
        (invRecv24(o_9) == x && NoPerm < FullPerm) && qpRange24(o_9) ==> invRecv24(o_9) == o_9
      );
    
    // -- Assume set of fields is nonNull
      assume (forall z_1: Ref ::
        { Heap[z_1, f_7] } { QPMask[z_1, f_7] }
        z_1 == x ==> z_1 != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, f_7] }
        ((invRecv24(o_9) == x && NoPerm < FullPerm) && qpRange24(o_9) ==> (NoPerm < FullPerm ==> invRecv24(o_9) == o_9) && QPMask[o_9, f_7] == Mask[o_9, f_7] + FullPerm) && (!((invRecv24(o_9) == x && NoPerm < FullPerm) && qpRange24(o_9)) ==> QPMask[o_9, f_7] == Mask[o_9, f_7])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != f_7 ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale (forall z: Ref ::z == y ==> acc(z.f, write)) -- triggers_field_deref.vpr@119.3--119.46
    
    // -- Check definedness of (forall z: Ref ::z == y ==> acc(z.f, write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Inhale might fail. Quantified resource z.f might not be injective. (triggers_field_deref.vpr@119.10--119.46) [176153]"}
      (forall z_3: Ref, z_3_1: Ref ::
      
      (((z_3 != z_3_1 && z_3 == y) && z_3_1 == y) && NoPerm < FullPerm) && NoPerm < FullPerm ==> z_3 != z_3_1
    );
    
    // -- Define Inverse Function
      assume (forall z_3: Ref ::
        { Heap[z_3, f_7] } { QPMask[z_3, f_7] }
        z_3 == y && NoPerm < FullPerm ==> qpRange25(z_3) && invRecv25(z_3) == z_3
      );
      assume (forall o_9: Ref ::
        { invRecv25(o_9) }
        (invRecv25(o_9) == y && NoPerm < FullPerm) && qpRange25(o_9) ==> invRecv25(o_9) == o_9
      );
    
    // -- Assume set of fields is nonNull
      assume (forall z_3: Ref ::
        { Heap[z_3, f_7] } { QPMask[z_3, f_7] }
        z_3 == y ==> z_3 != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, f_7] }
        ((invRecv25(o_9) == y && NoPerm < FullPerm) && qpRange25(o_9) ==> (NoPerm < FullPerm ==> invRecv25(o_9) == o_9) && QPMask[o_9, f_7] == Mask[o_9, f_7] + FullPerm) && (!((invRecv25(o_9) == y && NoPerm < FullPerm) && qpRange25(o_9)) ==> QPMask[o_9, f_7] == Mask[o_9, f_7])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != f_7 ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale (forall z: Ref ::z == x ==> acc(z.g, write)) -- triggers_field_deref.vpr@120.3--120.46
    
    // -- Check definedness of (forall z: Ref ::z == x ==> acc(z.g, write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Inhale might fail. Quantified resource z.g might not be injective. (triggers_field_deref.vpr@120.10--120.46) [176154]"}
      (forall z_5: Ref, z_5_2: Ref ::
      
      (((z_5 != z_5_2 && z_5 == x) && z_5_2 == x) && NoPerm < FullPerm) && NoPerm < FullPerm ==> z_5 != z_5_2
    );
    
    // -- Define Inverse Function
      assume (forall z_5: Ref ::
        { Heap[z_5, g] } { QPMask[z_5, g] }
        z_5 == x && NoPerm < FullPerm ==> qpRange26(z_5) && invRecv26(z_5) == z_5
      );
      assume (forall o_9: Ref ::
        { invRecv26(o_9) }
        (invRecv26(o_9) == x && NoPerm < FullPerm) && qpRange26(o_9) ==> invRecv26(o_9) == o_9
      );
    
    // -- Assume set of fields is nonNull
      assume (forall z_5: Ref ::
        { Heap[z_5, g] } { QPMask[z_5, g] }
        z_5 == x ==> z_5 != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, g] }
        ((invRecv26(o_9) == x && NoPerm < FullPerm) && qpRange26(o_9) ==> (NoPerm < FullPerm ==> invRecv26(o_9) == o_9) && QPMask[o_9, g] == Mask[o_9, g] + FullPerm) && (!((invRecv26(o_9) == x && NoPerm < FullPerm) && qpRange26(o_9)) ==> QPMask[o_9, g] == Mask[o_9, g])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != g ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale (forall z: Ref ::z == y ==> acc(z.g, write)) -- triggers_field_deref.vpr@121.3--121.46
    
    // -- Check definedness of (forall z: Ref ::z == y ==> acc(z.g, write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Inhale might fail. Quantified resource z.g might not be injective. (triggers_field_deref.vpr@121.10--121.46) [176155]"}
      (forall z_7: Ref, z_7_2: Ref ::
      
      (((z_7 != z_7_2 && z_7 == y) && z_7_2 == y) && NoPerm < FullPerm) && NoPerm < FullPerm ==> z_7 != z_7_2
    );
    
    // -- Define Inverse Function
      assume (forall z_7: Ref ::
        { Heap[z_7, g] } { QPMask[z_7, g] }
        z_7 == y && NoPerm < FullPerm ==> qpRange27(z_7) && invRecv27(z_7) == z_7
      );
      assume (forall o_9: Ref ::
        { invRecv27(o_9) }
        (invRecv27(o_9) == y && NoPerm < FullPerm) && qpRange27(o_9) ==> invRecv27(o_9) == o_9
      );
    
    // -- Assume set of fields is nonNull
      assume (forall z_7: Ref ::
        { Heap[z_7, g] } { QPMask[z_7, g] }
        z_7 == y ==> z_7 != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, g] }
        ((invRecv27(o_9) == y && NoPerm < FullPerm) && qpRange27(o_9) ==> (NoPerm < FullPerm ==> invRecv27(o_9) == o_9) && QPMask[o_9, g] == Mask[o_9, g] + FullPerm) && (!((invRecv27(o_9) == y && NoPerm < FullPerm) && qpRange27(o_9)) ==> QPMask[o_9, g] == Mask[o_9, g])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != g ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale x != null && y != null -- triggers_field_deref.vpr@122.3--122.32
    assume x != null;
    assume y != null;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale (forall z: Ref ::
  //     { z.f, z.g }
  //     z == x || z == y ==> z.f > 0 && z.g > 0) -- triggers_field_deref.vpr@123.3--123.77
    
    // -- Check definedness of (forall z: Ref :: { z.f, z.g } z == x || z == y ==> z.f > 0 && z.g > 0)
      if (*) {
        if (z_44 == x || z_44 == y) {
          assert {:msg "  Inhale might fail. There might be insufficient permission to access z.f (triggers_field_deref.vpr@123.10--123.77) [176156]"}
            HasDirectPerm(Mask, z_44, f_7);
          if (Heap[z_44, f_7] > 0) {
            assert {:msg "  Inhale might fail. There might be insufficient permission to access z.g (triggers_field_deref.vpr@123.10--123.77) [176157]"}
              HasDirectPerm(Mask, z_44, g);
          }
        }
        assume false;
      }
    assume (forall z_9: Ref ::
      { Heap[z_9, f_7], Heap[z_9, g] }
      z_9 == x || z_9 == y ==> Heap[z_9, f_7] > 0 && Heap[z_9, g] > 0
    );
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale fun02(y.f) == 42 -- triggers_field_deref.vpr@125.10--125.26
    
    // -- Check definedness of fun02(y.f) == 42
      assert {:msg "  Inhale might fail. There might be insufficient permission to access y.f (triggers_field_deref.vpr@125.10--125.26) [176158]"}
        HasDirectPerm(Mask, y, f_7);
    assume (fun02_1(Heap[y, f_7]): int) == 42;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert y.g > 0 -- triggers_field_deref.vpr@126.3--126.17
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of y.g > 0
      assert {:msg "  Assert might fail. There might be insufficient permission to access y.g (triggers_field_deref.vpr@126.10--126.17) [176159]"}
        HasDirectPerm(ExhaleWellDef0Mask, y, g);
    assert {:msg "  Assert might fail. Assertion y.g > 0 might not hold. (triggers_field_deref.vpr@126.10--126.17) [176160]"}
      Heap[y, g] > 0;
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test06b
// ==================================================

procedure test06b(x: Ref, y: Ref) returns ()
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var QPMask: MaskType;
  var z_46: Ref;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[x, $allocated];
    assume Heap[y, $allocated];
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: inhale (forall z: Ref ::z == x ==> acc(z.f, write)) -- triggers_field_deref.vpr@130.3--130.46
    
    // -- Check definedness of (forall z: Ref ::z == x ==> acc(z.f, write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Inhale might fail. Quantified resource z.f might not be injective. (triggers_field_deref.vpr@130.10--130.46) [176161]"}
      (forall z_1: Ref, z_1_1: Ref ::
      
      (((z_1 != z_1_1 && z_1 == x) && z_1_1 == x) && NoPerm < FullPerm) && NoPerm < FullPerm ==> z_1 != z_1_1
    );
    
    // -- Define Inverse Function
      assume (forall z_1: Ref ::
        { Heap[z_1, f_7] } { QPMask[z_1, f_7] }
        z_1 == x && NoPerm < FullPerm ==> qpRange28(z_1) && invRecv28(z_1) == z_1
      );
      assume (forall o_9: Ref ::
        { invRecv28(o_9) }
        (invRecv28(o_9) == x && NoPerm < FullPerm) && qpRange28(o_9) ==> invRecv28(o_9) == o_9
      );
    
    // -- Assume set of fields is nonNull
      assume (forall z_1: Ref ::
        { Heap[z_1, f_7] } { QPMask[z_1, f_7] }
        z_1 == x ==> z_1 != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, f_7] }
        ((invRecv28(o_9) == x && NoPerm < FullPerm) && qpRange28(o_9) ==> (NoPerm < FullPerm ==> invRecv28(o_9) == o_9) && QPMask[o_9, f_7] == Mask[o_9, f_7] + FullPerm) && (!((invRecv28(o_9) == x && NoPerm < FullPerm) && qpRange28(o_9)) ==> QPMask[o_9, f_7] == Mask[o_9, f_7])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != f_7 ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale (forall z: Ref ::z == y ==> acc(z.f, write)) -- triggers_field_deref.vpr@131.3--131.46
    
    // -- Check definedness of (forall z: Ref ::z == y ==> acc(z.f, write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Inhale might fail. Quantified resource z.f might not be injective. (triggers_field_deref.vpr@131.10--131.46) [176162]"}
      (forall z_3: Ref, z_3_1: Ref ::
      
      (((z_3 != z_3_1 && z_3 == y) && z_3_1 == y) && NoPerm < FullPerm) && NoPerm < FullPerm ==> z_3 != z_3_1
    );
    
    // -- Define Inverse Function
      assume (forall z_3: Ref ::
        { Heap[z_3, f_7] } { QPMask[z_3, f_7] }
        z_3 == y && NoPerm < FullPerm ==> qpRange29(z_3) && invRecv29(z_3) == z_3
      );
      assume (forall o_9: Ref ::
        { invRecv29(o_9) }
        (invRecv29(o_9) == y && NoPerm < FullPerm) && qpRange29(o_9) ==> invRecv29(o_9) == o_9
      );
    
    // -- Assume set of fields is nonNull
      assume (forall z_3: Ref ::
        { Heap[z_3, f_7] } { QPMask[z_3, f_7] }
        z_3 == y ==> z_3 != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, f_7] }
        ((invRecv29(o_9) == y && NoPerm < FullPerm) && qpRange29(o_9) ==> (NoPerm < FullPerm ==> invRecv29(o_9) == o_9) && QPMask[o_9, f_7] == Mask[o_9, f_7] + FullPerm) && (!((invRecv29(o_9) == y && NoPerm < FullPerm) && qpRange29(o_9)) ==> QPMask[o_9, f_7] == Mask[o_9, f_7])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != f_7 ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale (forall z: Ref ::z == x ==> acc(z.g, write)) -- triggers_field_deref.vpr@132.3--132.46
    
    // -- Check definedness of (forall z: Ref ::z == x ==> acc(z.g, write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Inhale might fail. Quantified resource z.g might not be injective. (triggers_field_deref.vpr@132.10--132.46) [176163]"}
      (forall z_5: Ref, z_5_2: Ref ::
      
      (((z_5 != z_5_2 && z_5 == x) && z_5_2 == x) && NoPerm < FullPerm) && NoPerm < FullPerm ==> z_5 != z_5_2
    );
    
    // -- Define Inverse Function
      assume (forall z_5: Ref ::
        { Heap[z_5, g] } { QPMask[z_5, g] }
        z_5 == x && NoPerm < FullPerm ==> qpRange30(z_5) && invRecv30(z_5) == z_5
      );
      assume (forall o_9: Ref ::
        { invRecv30(o_9) }
        (invRecv30(o_9) == x && NoPerm < FullPerm) && qpRange30(o_9) ==> invRecv30(o_9) == o_9
      );
    
    // -- Assume set of fields is nonNull
      assume (forall z_5: Ref ::
        { Heap[z_5, g] } { QPMask[z_5, g] }
        z_5 == x ==> z_5 != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, g] }
        ((invRecv30(o_9) == x && NoPerm < FullPerm) && qpRange30(o_9) ==> (NoPerm < FullPerm ==> invRecv30(o_9) == o_9) && QPMask[o_9, g] == Mask[o_9, g] + FullPerm) && (!((invRecv30(o_9) == x && NoPerm < FullPerm) && qpRange30(o_9)) ==> QPMask[o_9, g] == Mask[o_9, g])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != g ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale (forall z: Ref ::z == y ==> acc(z.g, write)) -- triggers_field_deref.vpr@133.3--133.46
    
    // -- Check definedness of (forall z: Ref ::z == y ==> acc(z.g, write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Inhale might fail. Quantified resource z.g might not be injective. (triggers_field_deref.vpr@133.10--133.46) [176164]"}
      (forall z_7: Ref, z_7_2: Ref ::
      
      (((z_7 != z_7_2 && z_7 == y) && z_7_2 == y) && NoPerm < FullPerm) && NoPerm < FullPerm ==> z_7 != z_7_2
    );
    
    // -- Define Inverse Function
      assume (forall z_7: Ref ::
        { Heap[z_7, g] } { QPMask[z_7, g] }
        z_7 == y && NoPerm < FullPerm ==> qpRange31(z_7) && invRecv31(z_7) == z_7
      );
      assume (forall o_9: Ref ::
        { invRecv31(o_9) }
        (invRecv31(o_9) == y && NoPerm < FullPerm) && qpRange31(o_9) ==> invRecv31(o_9) == o_9
      );
    
    // -- Assume set of fields is nonNull
      assume (forall z_7: Ref ::
        { Heap[z_7, g] } { QPMask[z_7, g] }
        z_7 == y ==> z_7 != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, g] }
        ((invRecv31(o_9) == y && NoPerm < FullPerm) && qpRange31(o_9) ==> (NoPerm < FullPerm ==> invRecv31(o_9) == o_9) && QPMask[o_9, g] == Mask[o_9, g] + FullPerm) && (!((invRecv31(o_9) == y && NoPerm < FullPerm) && qpRange31(o_9)) ==> QPMask[o_9, g] == Mask[o_9, g])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != g ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale x != null && y != null -- triggers_field_deref.vpr@134.3--134.32
    assume x != null;
    assume y != null;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale (forall z: Ref ::
  //     { z.f, z.g }
  //     z == x || z == y ==> z.f > 0 && z.g > 0) -- triggers_field_deref.vpr@135.3--135.77
    
    // -- Check definedness of (forall z: Ref :: { z.f, z.g } z == x || z == y ==> z.f > 0 && z.g > 0)
      if (*) {
        if (z_46 == x || z_46 == y) {
          assert {:msg "  Inhale might fail. There might be insufficient permission to access z.f (triggers_field_deref.vpr@135.10--135.77) [176165]"}
            HasDirectPerm(Mask, z_46, f_7);
          if (Heap[z_46, f_7] > 0) {
            assert {:msg "  Inhale might fail. There might be insufficient permission to access z.g (triggers_field_deref.vpr@135.10--135.77) [176166]"}
              HasDirectPerm(Mask, z_46, g);
          }
        }
        assume false;
      }
    assume (forall z_9: Ref ::
      { Heap[z_9, f_7], Heap[z_9, g] }
      z_9 == x || z_9 == y ==> Heap[z_9, f_7] > 0 && Heap[z_9, g] > 0
    );
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale fun02(x.f) == 42 -- triggers_field_deref.vpr@137.10--137.26
    
    // -- Check definedness of fun02(x.f) == 42
      assert {:msg "  Inhale might fail. There might be insufficient permission to access x.f (triggers_field_deref.vpr@137.10--137.26) [176167]"}
        HasDirectPerm(Mask, x, f_7);
    assume (fun02_1(Heap[x, f_7]): int) == 42;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert y.g > 0 -- triggers_field_deref.vpr@139.3--139.17
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of y.g > 0
      assert {:msg "  Assert might fail. There might be insufficient permission to access y.g (triggers_field_deref.vpr@139.10--139.17) [176168]"}
        HasDirectPerm(ExhaleWellDef0Mask, y, g);
    assert {:msg "  Assert might fail. Assertion y.g > 0 might not hold. (triggers_field_deref.vpr@139.10--139.17) [176169]"}
      Heap[y, g] > 0;
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test07a
// ==================================================

procedure test07a(xs: (Seq Ref)) returns ()
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var i_77: int;
  var j_42: int;
  var x_61: int;
  var QPMask: MaskType;
  var x_63: int;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var x_76: int;
  var x_5: int;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: inhale (forall i: Int, j: Int ::
  //     { (i in [0..|xs|)), (j in [0..|xs|)) }
  //     { (i in [0..|xs|)), xs[j] }
  //     { (j in [0..|xs|)), xs[i] }
  //     { xs[i], xs[j] }
  //     (i in [0..|xs|)) && ((j in [0..|xs|)) && i != j) ==> xs[i] != xs[j]) -- triggers_field_deref.vpr@143.3--143.98
    
    // -- Check definedness of (forall i: Int, j: Int :: { (i in [0..|xs|)), (j in [0..|xs|)) } { (i in [0..|xs|)), xs[j] } { (j in [0..|xs|)), xs[i] } { xs[i], xs[j] } (i in [0..|xs|)) && ((j in [0..|xs|)) && i != j) ==> xs[i] != xs[j])
      if (*) {
        if (Seq#Contains(Seq#Range(0, Seq#Length(xs)), i_77) && (Seq#Contains(Seq#Range(0, Seq#Length(xs)), j_42) && i_77 != j_42)) {
          assert {:msg "  Inhale might fail. Index xs[i] into xs might be negative. (triggers_field_deref.vpr@143.11--143.97) [176170]"}
            i_77 >= 0;
          assert {:msg "  Inhale might fail. Index xs[i] into xs might exceed sequence length. (triggers_field_deref.vpr@143.11--143.97) [176171]"}
            i_77 < Seq#Length(xs);
          assert {:msg "  Inhale might fail. Index xs[j] into xs might be negative. (triggers_field_deref.vpr@143.11--143.97) [176172]"}
            j_42 >= 0;
          assert {:msg "  Inhale might fail. Index xs[j] into xs might exceed sequence length. (triggers_field_deref.vpr@143.11--143.97) [176173]"}
            j_42 < Seq#Length(xs);
        }
        assume false;
      }
    assume (forall i_1: int, j_1: int ::
      { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs)), i_1), Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs)), j_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs)), i_1), Seq#Contains(Seq#Range(0, Seq#Length(xs)), j_1) } { Seq#Contains(Seq#Range(0, Seq#Length(xs)), i_1), Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs)), j_1) } { Seq#Contains(Seq#Range(0, Seq#Length(xs)), i_1), Seq#Contains(Seq#Range(0, Seq#Length(xs)), j_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs)), i_1), Seq#Index(xs, j_1) } { Seq#Contains(Seq#Range(0, Seq#Length(xs)), i_1), Seq#Index(xs, j_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs)), j_1), Seq#Index(xs, i_1) } { Seq#Contains(Seq#Range(0, Seq#Length(xs)), j_1), Seq#Index(xs, i_1) } { Seq#Index(xs, i_1), Seq#Index(xs, j_1) }
      Seq#Contains(Seq#Range(0, Seq#Length(xs)), i_1) && (Seq#Contains(Seq#Range(0, Seq#Length(xs)), j_1) && i_1 != j_1) ==> Seq#Index(xs, i_1) != Seq#Index(xs, j_1)
    );
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale (forall x: Int ::
  //     { (x in [0..|xs|)) }
  //     { xs[x] }
  //     (x in [0..|xs|)) ==> acc(xs[x].f, write)) -- triggers_field_deref.vpr@144.3--144.60
    
    // -- Check definedness of (forall x: Int :: { (x in [0..|xs|)) } { xs[x] } (x in [0..|xs|)) ==> acc(xs[x].f, write))
      if (*) {
        if (Seq#Contains(Seq#Range(0, Seq#Length(xs)), x_61)) {
          assert {:msg "  Inhale might fail. Index xs[x] into xs might be negative. (triggers_field_deref.vpr@144.11--144.59) [176174]"}
            x_61 >= 0;
          assert {:msg "  Inhale might fail. Index xs[x] into xs might exceed sequence length. (triggers_field_deref.vpr@144.11--144.59) [176175]"}
            x_61 < Seq#Length(xs);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Inhale might fail. Quantified resource xs[x].f might not be injective. (triggers_field_deref.vpr@144.11--144.59) [176176]"}
      (forall x_1: int, x_1_1: int ::
      
      (((x_1 != x_1_1 && Seq#Contains(Seq#Range(0, Seq#Length(xs)), x_1)) && Seq#Contains(Seq#Range(0, Seq#Length(xs)), x_1_1)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(xs, x_1) != Seq#Index(xs, x_1_1)
    );
    
    // -- Define Inverse Function
      assume (forall x_1: int ::
        { Seq#Index(xs, x_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs)), x_1) } { Seq#Contains(Seq#Range(0, Seq#Length(xs)), x_1) } { Seq#Index(xs, x_1) }
        Seq#Contains(Seq#Range(0, Seq#Length(xs)), x_1) && NoPerm < FullPerm ==> qpRange32(Seq#Index(xs, x_1)) && invRecv32(Seq#Index(xs, x_1)) == x_1
      );
      assume (forall o_9: Ref ::
        { invRecv32(o_9) }
        (Seq#Contains(Seq#Range(0, Seq#Length(xs)), invRecv32(o_9)) && NoPerm < FullPerm) && qpRange32(o_9) ==> Seq#Index(xs, invRecv32(o_9)) == o_9
      );
    
    // -- Assume set of fields is nonNull
      assume (forall x_1: int ::
        { Seq#Index(xs, x_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs)), x_1) } { Seq#Contains(Seq#Range(0, Seq#Length(xs)), x_1) } { Seq#Index(xs, x_1) }
        Seq#Contains(Seq#Range(0, Seq#Length(xs)), x_1) ==> Seq#Index(xs, x_1) != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, f_7] }
        ((Seq#Contains(Seq#Range(0, Seq#Length(xs)), invRecv32(o_9)) && NoPerm < FullPerm) && qpRange32(o_9) ==> (NoPerm < FullPerm ==> Seq#Index(xs, invRecv32(o_9)) == o_9) && QPMask[o_9, f_7] == Mask[o_9, f_7] + FullPerm) && (!((Seq#Contains(Seq#Range(0, Seq#Length(xs)), invRecv32(o_9)) && NoPerm < FullPerm) && qpRange32(o_9)) ==> QPMask[o_9, f_7] == Mask[o_9, f_7])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != f_7 ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale (forall x: Int :: { xs[x].f } 0 <= x && x < |xs| ==> xs[x].f == 0) -- triggers_field_deref.vpr@146.3--146.80
    
    // -- Check definedness of (forall x: Int :: { xs[x].f } 0 <= x && x < |xs| ==> xs[x].f == 0)
      if (*) {
        if (0 <= x_63 && x_63 < Seq#Length(xs)) {
          assert {:msg "  Inhale might fail. Index xs[x] into xs might be negative. (triggers_field_deref.vpr@146.11--146.79) [176177]"}
            x_63 >= 0;
          assert {:msg "  Inhale might fail. Index xs[x] into xs might exceed sequence length. (triggers_field_deref.vpr@146.11--146.79) [176178]"}
            x_63 < Seq#Length(xs);
          assert {:msg "  Inhale might fail. There might be insufficient permission to access xs[x].f (triggers_field_deref.vpr@146.11--146.79) [176179]"}
            HasDirectPerm(Mask, Seq#Index(xs, x_63), f_7);
        }
        assume false;
      }
    assume (forall x_3: int ::
      { Heap[Seq#Index(xs, x_3), f_7] }
      0 <= x_3 && x_3 < Seq#Length(xs) ==> Heap[Seq#Index(xs, x_3), f_7] == 0
    );
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert (forall x: Int :: { xs[x].f } 0 <= x && x < |xs| ==> xs[x].f == 0) -- triggers_field_deref.vpr@147.3--147.80
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of (forall x: Int :: { xs[x].f } 0 <= x && x < |xs| ==> xs[x].f == 0)
      if (*) {
        if (0 <= x_76 && x_76 < Seq#Length(xs)) {
          assert {:msg "  Assert might fail. Index xs[x] into xs might be negative. (triggers_field_deref.vpr@147.11--147.79) [176180]"}
            x_76 >= 0;
          assert {:msg "  Assert might fail. Index xs[x] into xs might exceed sequence length. (triggers_field_deref.vpr@147.11--147.79) [176181]"}
            x_76 < Seq#Length(xs);
          assert {:msg "  Assert might fail. There might be insufficient permission to access xs[x].f (triggers_field_deref.vpr@147.11--147.79) [176182]"}
            HasDirectPerm(ExhaleWellDef0Mask, Seq#Index(xs, x_76), f_7);
        }
        assume false;
      }
    if (*) {
      if (0 <= x_5 && x_5 < Seq#Length(xs)) {
        assert {:msg "  Assert might fail. Assertion xs[x].f == 0 might not hold. (triggers_field_deref.vpr@147.11--147.79) [176183]"}
          Heap[Seq#Index(xs, x_5), f_7] == 0;
      }
      assume false;
    }
    assume (forall x_6_1_1: int ::
      { Heap[Seq#Index(xs, x_6_1_1), f_7] }
      0 <= x_6_1_1 && x_6_1_1 < Seq#Length(xs) ==> Heap[Seq#Index(xs, x_6_1_1), f_7] == 0
    );
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test07b
// ==================================================

procedure test07b(xs: (Seq Ref)) returns ()
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var i_79: int;
  var j_43: int;
  var x_79: int;
  var QPMask: MaskType;
  var x_84: int;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var x_85: int;
  var x_5: int;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: inhale (forall i: Int, j: Int ::
  //     { (i in [0..|xs|)), (j in [0..|xs|)) }
  //     { (i in [0..|xs|)), xs[j] }
  //     { (j in [0..|xs|)), xs[i] }
  //     { xs[i], xs[j] }
  //     (i in [0..|xs|)) && ((j in [0..|xs|)) && i != j) ==> xs[i] != xs[j]) -- triggers_field_deref.vpr@151.3--151.98
    
    // -- Check definedness of (forall i: Int, j: Int :: { (i in [0..|xs|)), (j in [0..|xs|)) } { (i in [0..|xs|)), xs[j] } { (j in [0..|xs|)), xs[i] } { xs[i], xs[j] } (i in [0..|xs|)) && ((j in [0..|xs|)) && i != j) ==> xs[i] != xs[j])
      if (*) {
        if (Seq#Contains(Seq#Range(0, Seq#Length(xs)), i_79) && (Seq#Contains(Seq#Range(0, Seq#Length(xs)), j_43) && i_79 != j_43)) {
          assert {:msg "  Inhale might fail. Index xs[i] into xs might be negative. (triggers_field_deref.vpr@151.11--151.97) [176184]"}
            i_79 >= 0;
          assert {:msg "  Inhale might fail. Index xs[i] into xs might exceed sequence length. (triggers_field_deref.vpr@151.11--151.97) [176185]"}
            i_79 < Seq#Length(xs);
          assert {:msg "  Inhale might fail. Index xs[j] into xs might be negative. (triggers_field_deref.vpr@151.11--151.97) [176186]"}
            j_43 >= 0;
          assert {:msg "  Inhale might fail. Index xs[j] into xs might exceed sequence length. (triggers_field_deref.vpr@151.11--151.97) [176187]"}
            j_43 < Seq#Length(xs);
        }
        assume false;
      }
    assume (forall i_1: int, j_1: int ::
      { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs)), i_1), Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs)), j_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs)), i_1), Seq#Contains(Seq#Range(0, Seq#Length(xs)), j_1) } { Seq#Contains(Seq#Range(0, Seq#Length(xs)), i_1), Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs)), j_1) } { Seq#Contains(Seq#Range(0, Seq#Length(xs)), i_1), Seq#Contains(Seq#Range(0, Seq#Length(xs)), j_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs)), i_1), Seq#Index(xs, j_1) } { Seq#Contains(Seq#Range(0, Seq#Length(xs)), i_1), Seq#Index(xs, j_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs)), j_1), Seq#Index(xs, i_1) } { Seq#Contains(Seq#Range(0, Seq#Length(xs)), j_1), Seq#Index(xs, i_1) } { Seq#Index(xs, i_1), Seq#Index(xs, j_1) }
      Seq#Contains(Seq#Range(0, Seq#Length(xs)), i_1) && (Seq#Contains(Seq#Range(0, Seq#Length(xs)), j_1) && i_1 != j_1) ==> Seq#Index(xs, i_1) != Seq#Index(xs, j_1)
    );
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale (forall x: Int ::
  //     { (x in [0..|xs|)) }
  //     { xs[x] }
  //     (x in [0..|xs|)) ==> acc(xs[x].f, write)) -- triggers_field_deref.vpr@152.3--152.60
    
    // -- Check definedness of (forall x: Int :: { (x in [0..|xs|)) } { xs[x] } (x in [0..|xs|)) ==> acc(xs[x].f, write))
      if (*) {
        if (Seq#Contains(Seq#Range(0, Seq#Length(xs)), x_79)) {
          assert {:msg "  Inhale might fail. Index xs[x] into xs might be negative. (triggers_field_deref.vpr@152.11--152.59) [176188]"}
            x_79 >= 0;
          assert {:msg "  Inhale might fail. Index xs[x] into xs might exceed sequence length. (triggers_field_deref.vpr@152.11--152.59) [176189]"}
            x_79 < Seq#Length(xs);
        }
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Inhale might fail. Quantified resource xs[x].f might not be injective. (triggers_field_deref.vpr@152.11--152.59) [176190]"}
      (forall x_1: int, x_1_1: int ::
      
      (((x_1 != x_1_1 && Seq#Contains(Seq#Range(0, Seq#Length(xs)), x_1)) && Seq#Contains(Seq#Range(0, Seq#Length(xs)), x_1_1)) && NoPerm < FullPerm) && NoPerm < FullPerm ==> Seq#Index(xs, x_1) != Seq#Index(xs, x_1_1)
    );
    
    // -- Define Inverse Function
      assume (forall x_1: int ::
        { Seq#Index(xs, x_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs)), x_1) } { Seq#Contains(Seq#Range(0, Seq#Length(xs)), x_1) } { Seq#Index(xs, x_1) }
        Seq#Contains(Seq#Range(0, Seq#Length(xs)), x_1) && NoPerm < FullPerm ==> qpRange33(Seq#Index(xs, x_1)) && invRecv33(Seq#Index(xs, x_1)) == x_1
      );
      assume (forall o_9: Ref ::
        { invRecv33(o_9) }
        (Seq#Contains(Seq#Range(0, Seq#Length(xs)), invRecv33(o_9)) && NoPerm < FullPerm) && qpRange33(o_9) ==> Seq#Index(xs, invRecv33(o_9)) == o_9
      );
    
    // -- Assume set of fields is nonNull
      assume (forall x_1: int ::
        { Seq#Index(xs, x_1) } { Seq#ContainsTrigger(Seq#Range(0, Seq#Length(xs)), x_1) } { Seq#Contains(Seq#Range(0, Seq#Length(xs)), x_1) } { Seq#Index(xs, x_1) }
        Seq#Contains(Seq#Range(0, Seq#Length(xs)), x_1) ==> Seq#Index(xs, x_1) != null
      );
    
    // -- Define permissions
      assume (forall o_9: Ref ::
        { QPMask[o_9, f_7] }
        ((Seq#Contains(Seq#Range(0, Seq#Length(xs)), invRecv33(o_9)) && NoPerm < FullPerm) && qpRange33(o_9) ==> (NoPerm < FullPerm ==> Seq#Index(xs, invRecv33(o_9)) == o_9) && QPMask[o_9, f_7] == Mask[o_9, f_7] + FullPerm) && (!((Seq#Contains(Seq#Range(0, Seq#Length(xs)), invRecv33(o_9)) && NoPerm < FullPerm) && qpRange33(o_9)) ==> QPMask[o_9, f_7] == Mask[o_9, f_7])
      );
      assume (forall <A, B> o_9: Ref, f_5: (Field A B) ::
        { Mask[o_9, f_5] } { QPMask[o_9, f_5] }
        f_5 != f_7 ==> Mask[o_9, f_5] == QPMask[o_9, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale (forall x: Int :: { xs[x] } 0 <= x && x < |xs| ==> xs[x].f == 0) -- triggers_field_deref.vpr@154.3--154.70
    
    // -- Check definedness of (forall x: Int :: { xs[x] } 0 <= x && x < |xs| ==> xs[x].f == 0)
      if (*) {
        if (0 <= x_84 && x_84 < Seq#Length(xs)) {
          assert {:msg "  Inhale might fail. Index xs[x] into xs might be negative. (triggers_field_deref.vpr@154.11--154.69) [176191]"}
            x_84 >= 0;
          assert {:msg "  Inhale might fail. Index xs[x] into xs might exceed sequence length. (triggers_field_deref.vpr@154.11--154.69) [176192]"}
            x_84 < Seq#Length(xs);
          assert {:msg "  Inhale might fail. There might be insufficient permission to access xs[x].f (triggers_field_deref.vpr@154.11--154.69) [176193]"}
            HasDirectPerm(Mask, Seq#Index(xs, x_84), f_7);
        }
        assume false;
      }
    assume (forall x_3: int ::
      { Seq#Index(xs, x_3) }
      0 <= x_3 && x_3 < Seq#Length(xs) ==> Heap[Seq#Index(xs, x_3), f_7] == 0
    );
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert (forall x: Int :: { xs[x] } 0 <= x && x < |xs| ==> xs[x].f == 0) -- triggers_field_deref.vpr@155.3--155.70
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of (forall x: Int :: { xs[x] } 0 <= x && x < |xs| ==> xs[x].f == 0)
      if (*) {
        if (0 <= x_85 && x_85 < Seq#Length(xs)) {
          assert {:msg "  Assert might fail. Index xs[x] into xs might be negative. (triggers_field_deref.vpr@155.11--155.69) [176194]"}
            x_85 >= 0;
          assert {:msg "  Assert might fail. Index xs[x] into xs might exceed sequence length. (triggers_field_deref.vpr@155.11--155.69) [176195]"}
            x_85 < Seq#Length(xs);
          assert {:msg "  Assert might fail. There might be insufficient permission to access xs[x].f (triggers_field_deref.vpr@155.11--155.69) [176196]"}
            HasDirectPerm(ExhaleWellDef0Mask, Seq#Index(xs, x_85), f_7);
        }
        assume false;
      }
    if (*) {
      if (0 <= x_5 && x_5 < Seq#Length(xs)) {
        assert {:msg "  Assert might fail. Assertion xs[x].f == 0 might not hold. (triggers_field_deref.vpr@155.11--155.69) [176197]"}
          Heap[Seq#Index(xs, x_5), f_7] == 0;
      }
      assume false;
    }
    assume (forall x_6_1_1: int ::
      { Seq#Index(xs, x_6_1_1) }
      0 <= x_6_1_1 && x_6_1_1 < Seq#Length(xs) ==> Heap[Seq#Index(xs, x_6_1_1), f_7] == 0
    );
    assume state(Heap, Mask);
}