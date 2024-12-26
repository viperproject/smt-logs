// 
// Translation of Viper program.
// 
// Date:         2024-12-26 19:52:03
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/graphs/static/unsound/list-swap.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/graphs/static/unsound/list-swap-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
axiom (forall o_47: Ref, f_43: (Field NormalField Ref), Heap: HeapType ::
  { Heap[o_47, f_43] }
  Heap[o_47, $allocated] ==> Heap[Heap[o_47, f_43], $allocated]
);
function  succHeap(Heap0: HeapType, Heap1: HeapType): bool;
function  succHeapTrans(Heap0: HeapType, Heap1: HeapType): bool;
function  IdenticalOnKnownLocations(Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType): bool;
function  IsPredicateField<A, B>(f_1: (Field A B)): bool;
function  IsWandField<A, B>(f_1: (Field A B)): bool;
function  getPredWandId<A, B>(f_1: (Field A B)): int;
// Frame all locations with direct permissions
axiom (forall <A, B> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_28: Ref, f_32: (Field A B) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_28, f_32] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, o_28, f_32) ==> Heap[o_28, f_32] == ExhaleHeap[o_28, f_32]
);
// Frame all predicate mask locations of predicates with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_23: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_23), ExhaleHeap[null, PredicateMaskField(pm_f_23)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_23) && IsPredicateField(pm_f_23) ==> Heap[null, PredicateMaskField(pm_f_23)] == ExhaleHeap[null, PredicateMaskField(pm_f_23)]
);
// Frame all locations with known folded permissions
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_23: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_23) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_23) && IsPredicateField(pm_f_23) ==> (forall <A, B> o2_23: Ref, f_32: (Field A B) ::
    { ExhaleHeap[o2_23, f_32] }
    Heap[null, PredicateMaskField(pm_f_23)][o2_23, f_32] ==> Heap[o2_23, f_32] == ExhaleHeap[o2_23, f_32]
  )
);
// Frame all wand mask locations of wands with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_23: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_23), ExhaleHeap[null, WandMaskField(pm_f_23)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_23) && IsWandField(pm_f_23) ==> Heap[null, WandMaskField(pm_f_23)] == ExhaleHeap[null, WandMaskField(pm_f_23)]
);
// Frame all locations in the footprint of magic wands
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_23: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_23) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_23) && IsWandField(pm_f_23) ==> (forall <A, B> o2_23: Ref, f_32: (Field A B) ::
    { ExhaleHeap[o2_23, f_32] }
    Heap[null, WandMaskField(pm_f_23)][o2_23, f_32] ==> Heap[o2_23, f_32] == ExhaleHeap[o2_23, f_32]
  )
);
// All previously-allocated references are still allocated
axiom (forall Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_28: Ref ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_28, $allocated] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> Heap[o_28, $allocated] ==> ExhaleHeap[o_28, $allocated]
);
// Updated Heaps are Successor Heaps
axiom (forall <A, B> Heap: HeapType, o_47: Ref, f_51: (Field A B), v: B ::
  { Heap[o_47, f_51:=v] }
  succHeap(Heap, Heap[o_47, f_51:=v])
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

function  neverTriggered1(n_3: Ref): bool;
function  neverTriggered2(n_5: Ref): bool;
function  neverTriggered3(n_7: Ref): bool;
function  neverTriggered4(n_8: Ref): bool;
function  neverTriggered5(n_9: Ref): bool;
function  neverTriggered6(n_10_1: Ref): bool;
function  neverTriggered7(n_11_1: Ref): bool;
function  neverTriggered8(n_12_1: Ref): bool;
function  neverTriggered9(n_13: Ref): bool;
function  neverTriggered10(n_14: Ref): bool;
function  neverTriggered11(n_15: Ref): bool;
function  neverTriggered12(n_1: Ref): bool;
function  neverTriggered13(n$1_1: Ref): bool;
function  neverTriggered14(n_2: Ref): bool;
function  neverTriggered15(n_3: Ref): bool;
function  neverTriggered16(n_4_1: Ref): bool;
function  neverTriggered17(n_5: Ref): bool;
function  neverTriggered18(n_6: Ref): bool;
function  neverTriggered19(n_7: Ref): bool;
function  neverTriggered20(n_8: Ref): bool;
function  neverTriggered21(n_9: Ref): bool;
function  neverTriggered22(n$1_2: Ref): bool;
function  neverTriggered23(n_1: Ref): bool;
function  neverTriggered24(n$1_1: Ref): bool;
function  neverTriggered25(n_2: Ref): bool;
function  neverTriggered26(n_3: Ref): bool;
function  neverTriggered27(n_4_1: Ref): bool;
function  neverTriggered28(n_5: Ref): bool;
function  neverTriggered29(n_6: Ref): bool;
function  neverTriggered30(n_7: Ref): bool;
function  neverTriggered31(n_8: Ref): bool;
function  neverTriggered32(n_9: Ref): bool;
function  neverTriggered33(n$1_2: Ref): bool;
function  neverTriggered34(n_1: Ref): bool;
function  neverTriggered35(n_2: Ref): bool;
function  neverTriggered36(n_3: Ref): bool;
function  neverTriggered37(n_4_1: Ref): bool;
function  neverTriggered38(n_5: Ref): bool;
function  neverTriggered39(n$2: Ref): bool;
function  neverTriggered40(n$2_2: Ref): bool;
function  neverTriggered41(n_6: Ref): bool;
function  neverTriggered42(n_7: Ref): bool;
function  neverTriggered43(n_8: Ref): bool;
function  neverTriggered44(n_9: Ref): bool;
function  neverTriggered45(n_10_1: Ref): bool;
function  neverTriggered46(n_11_1: Ref): bool;
function  neverTriggered47(n_12_1: Ref): bool;
function  neverTriggered48(n$2_3: Ref): bool;
function  neverTriggered49(n_13: Ref): bool;
function  neverTriggered50(n$1_2: Ref): bool;
function  neverTriggered51(n_14: Ref): bool;
function  neverTriggered52(n$1_3: Ref): bool;
function  neverTriggered53(n_15: Ref): bool;
function  neverTriggered54(n$1_4: Ref): bool;
function  neverTriggered55(n_16: Ref): bool;
function  neverTriggered56(n$1_5: Ref): bool;
function  neverTriggered57(n_17: Ref): bool;
function  neverTriggered58(n$1_6: Ref): bool;
function  neverTriggered59(n_18: Ref): bool;
function  neverTriggered60(n$1_7: Ref): bool;
function  neverTriggered61(n_19: Ref): bool;
function  neverTriggered62(n$1_8: Ref): bool;
function  neverTriggered63(n_20: Ref): bool;
function  neverTriggered64(n$1_9: Ref): bool;
function  neverTriggered65(n_21: Ref): bool;
function  neverTriggered66(n$1_10: Ref): bool;
function  neverTriggered67(n_22: Ref): bool;
function  neverTriggered68(n$1_11: Ref): bool;
function  neverTriggered69(n_23: Ref): bool;
function  neverTriggered70(n_24: Ref): bool;
function  neverTriggered71(n$2_14: Ref): bool;
function  neverTriggered72(n$2_15: Ref): bool;
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
function  invRecv32(recv: Ref): Ref;
function  invRecv33(recv: Ref): Ref;
function  invRecv34(recv: Ref): Ref;
function  invRecv35(recv: Ref): Ref;
function  invRecv36(recv: Ref): Ref;
function  invRecv37(recv: Ref): Ref;
function  invRecv38(recv: Ref): Ref;
function  invRecv39(recv: Ref): Ref;
function  invRecv40(recv: Ref): Ref;
function  invRecv41(recv: Ref): Ref;
function  invRecv42(recv: Ref): Ref;
function  invRecv43(recv: Ref): Ref;
function  invRecv44(recv: Ref): Ref;
function  invRecv45(recv: Ref): Ref;
function  invRecv46(recv: Ref): Ref;
function  invRecv47(recv: Ref): Ref;
function  invRecv48(recv: Ref): Ref;
function  invRecv49(recv: Ref): Ref;
function  invRecv50(recv: Ref): Ref;
function  invRecv51(recv: Ref): Ref;
function  invRecv52(recv: Ref): Ref;
function  invRecv53(recv: Ref): Ref;
function  invRecv54(recv: Ref): Ref;
function  invRecv55(recv: Ref): Ref;
function  invRecv56(recv: Ref): Ref;
function  invRecv57(recv: Ref): Ref;
function  invRecv58(recv: Ref): Ref;
function  invRecv59(recv: Ref): Ref;
function  invRecv60(recv: Ref): Ref;
function  invRecv61(recv: Ref): Ref;
function  invRecv62(recv: Ref): Ref;
function  invRecv63(recv: Ref): Ref;
function  invRecv64(recv: Ref): Ref;
function  invRecv65(recv: Ref): Ref;
function  invRecv66(recv: Ref): Ref;
function  invRecv67(recv: Ref): Ref;
function  invRecv68(recv: Ref): Ref;
function  invRecv69(recv: Ref): Ref;
function  invRecv70(recv: Ref): Ref;
function  invRecv71(recv: Ref): Ref;
function  invRecv72(recv: Ref): Ref;
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
function  qpRange34(recv: Ref): bool;
function  qpRange35(recv: Ref): bool;
function  qpRange36(recv: Ref): bool;
function  qpRange37(recv: Ref): bool;
function  qpRange38(recv: Ref): bool;
function  qpRange39(recv: Ref): bool;
function  qpRange40(recv: Ref): bool;
function  qpRange41(recv: Ref): bool;
function  qpRange42(recv: Ref): bool;
function  qpRange43(recv: Ref): bool;
function  qpRange44(recv: Ref): bool;
function  qpRange45(recv: Ref): bool;
function  qpRange46(recv: Ref): bool;
function  qpRange47(recv: Ref): bool;
function  qpRange48(recv: Ref): bool;
function  qpRange49(recv: Ref): bool;
function  qpRange50(recv: Ref): bool;
function  qpRange51(recv: Ref): bool;
function  qpRange52(recv: Ref): bool;
function  qpRange53(recv: Ref): bool;
function  qpRange54(recv: Ref): bool;
function  qpRange55(recv: Ref): bool;
function  qpRange56(recv: Ref): bool;
function  qpRange57(recv: Ref): bool;
function  qpRange58(recv: Ref): bool;
function  qpRange59(recv: Ref): bool;
function  qpRange60(recv: Ref): bool;
function  qpRange61(recv: Ref): bool;
function  qpRange62(recv: Ref): bool;
function  qpRange63(recv: Ref): bool;
function  qpRange64(recv: Ref): bool;
function  qpRange65(recv: Ref): bool;
function  qpRange66(recv: Ref): bool;
function  qpRange67(recv: Ref): bool;
function  qpRange68(recv: Ref): bool;
function  qpRange69(recv: Ref): bool;
function  qpRange70(recv: Ref): bool;
function  qpRange71(recv: Ref): bool;
function  qpRange72(recv: Ref): bool;

// ==================================================
// Preamble of Function and predicate module.
// ==================================================

// Function heights (higher height means its body is available earlier):
// - height 1: $$
// - height 0: apply_TCFraming
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
// Translation of domain Edge
// ==================================================

// The type for domain Edge
type EdgeDomainType;

// Translation of domain function edge_pred
function  edge_pred(e: EdgeDomainType): Ref;

// Translation of domain function edge_succ
function  edge_succ(e: EdgeDomainType): Ref;

// Translation of domain function create_edge
function  create_edge(p_16: Ref, s_17: Ref): EdgeDomainType;

// Translation of domain function create_edge_
function  create_edge_(p_16: Ref, s_17: Ref): EdgeDomainType;

// Translation of domain axiom edge_injectivity
axiom (forall p_1: Ref, s_2: Ref ::
  { (create_edge(p_1, s_2): EdgeDomainType) }
  (edge_pred((create_edge(p_1, s_2): EdgeDomainType)): Ref) == p_1 && (edge_succ((create_edge(p_1, s_2): EdgeDomainType)): Ref) == s_2
);

// ==================================================
// Translation of domain TrClo
// ==================================================

// The type for domain TrClo
type TrCloDomainType;

// Translation of domain function exists_path
function  exists_path(EG: (Set EdgeDomainType), start_1: Ref, end_1: Ref): bool;

// Translation of domain function exists_path_
function  exists_path_(EG: (Set EdgeDomainType), start_1: Ref, end_1: Ref): bool;

// Translation of domain function exists_spath
function  exists_spath(EG: (Set EdgeDomainType), from_1: (Set Ref), to_1: Ref): bool;

// Translation of domain function apply_noExit
function  apply_noExit(EG: (Set EdgeDomainType), U: (Set Ref), M_1: (Set Ref)): bool;

// Translation of domain function inst_uReach
function  inst_uReach(EG: (Set EdgeDomainType), x_8: Ref): Set Ref;

// Translation of domain function inst_uReach_rev
function  inst_uReach_rev(EG: (Set EdgeDomainType), x_8: Ref): Set Ref;

// Translation of domain function acyclic_graph
function  acyclic_graph(EG: (Set EdgeDomainType)): bool;

// Translation of domain function unshared_graph
function  unshared_graph(EG: (Set EdgeDomainType)): bool;

// Translation of domain function func_graph
function  func_graph(EG: (Set EdgeDomainType)): bool;

// Translation of domain function edge
function  edge(EG: (Set EdgeDomainType), p_16: Ref, s_17: Ref): bool;

// Translation of domain function edge_
function  edge_(EG: (Set EdgeDomainType), p_16: Ref, s_17: Ref): bool;

// Translation of domain function succs
function  succs(EG: (Set EdgeDomainType), pred_1: Ref): Set Ref;

// Translation of domain axiom ax_Succs
axiom (forall EG_1: (Set EdgeDomainType), pred_2: Ref, succ: Ref ::
  { (succs(EG_1, pred_2): Set Ref)[succ] }
  (succs(EG_1, pred_2): Set Ref)[succ] == (edge_(EG_1, pred_2, succ): bool)
);

// Translation of domain axiom ax_EdgeSynonim
axiom (forall EG_1: (Set EdgeDomainType), p_1: Ref, s_2: Ref ::
  { (edge(EG_1, p_1, s_2): bool) }
  (edge(EG_1, p_1, s_2): bool) == (edge_(EG_1, p_1, s_2): bool)
);

// Translation of domain axiom ax_Edge
axiom (forall EG_1: (Set EdgeDomainType), p_1: Ref, s_2: Ref ::
  { EG_1[(create_edge(p_1, s_2): EdgeDomainType)] } { (edge(EG_1, p_1, s_2): bool) }
  (edge_(EG_1, p_1, s_2): bool) == EG_1[(create_edge(p_1, s_2): EdgeDomainType)]
);

// Translation of domain axiom ax_NoExit
axiom (forall EG_1: (Set EdgeDomainType), U_1: (Set Ref), M: (Set Ref) ::
  { (apply_noExit(EG_1, U_1, M): bool) }
  (apply_noExit(EG_1, U_1, M): bool) ==> (forall u_3: Ref, v_2: Ref ::
    { (edge(EG_1, u_3, v_2): bool) } { M[u_3], M[v_2] }
    M[u_3] && (U_1[v_2] && !M[v_2]) ==> !(edge(EG_1, u_3, v_2): bool)
  ) ==> (forall u_1: Ref, v_1_1: Ref ::
    { (exists_path(EG_1, u_1, v_1_1): bool) } { M[u_1], M[v_1_1] }
    M[u_1] && (U_1[v_1_1] && !M[v_1_1]) ==> !(exists_path(EG_1, u_1, v_1_1): bool)
  )
);

// Translation of domain axiom ax_instantiation_uReach
axiom (forall EG_1: (Set EdgeDomainType), x: Ref, v_2: Ref ::
  { (inst_uReach(EG_1, x): Set Ref)[v_2] } { (exists_path(EG_1, x, v_2): bool) }
  (inst_uReach(EG_1, x): Set Ref)[v_2] == (exists_path(EG_1, x, v_2): bool)
);

// Translation of domain axiom ax_instantiation_uReach_rev
axiom (forall EG_1: (Set EdgeDomainType), u_3: Ref, y: Ref ::
  { (inst_uReach_rev(EG_1, y): Set Ref)[u_3] } { (exists_path(EG_1, u_3, y): bool) }
  (inst_uReach_rev(EG_1, y): Set Ref)[u_3] == (exists_path(EG_1, u_3, y): bool)
);

// Translation of domain axiom ax_Alias
axiom (forall EG_1: (Set EdgeDomainType), start: Ref, end: Ref ::
  { (exists_path(EG_1, start, end): bool) }
  (exists_path(EG_1, start, end): bool) == (exists_path_(EG_1, start, end): bool)
);

// Translation of domain axiom ax_ExistsPath
axiom (forall EG_1: (Set EdgeDomainType), start: Ref, end: Ref ::
  { (exists_path(EG_1, start, end): bool) } { (edge(EG_1, start, end): bool) }
  (exists_path_(EG_1, start, end): bool) == (start == end || (exists w_2: Ref ::
    { (edge(EG_1, start, w_2): bool) } { (exists_path_(EG_1, w_2, end): bool) }
    (edge(EG_1, start, w_2): bool) && (exists_path_(EG_1, w_2, end): bool)
  ))
);

// Translation of domain axiom ax_ExistsPathTrans
axiom (forall EG_1: (Set EdgeDomainType), u_3: Ref, v_2: Ref, w_2: Ref ::
  { (exists_path(EG_1, u_3, w_2): bool), (exists_path(EG_1, w_2, v_2): bool) }
  (exists_path_(EG_1, u_3, w_2): bool) && (exists_path_(EG_1, w_2, v_2): bool) ==> (exists_path_(EG_1, u_3, v_2): bool)
);

// Translation of domain axiom ax_AcyclicGraph
axiom (forall EG_1: (Set EdgeDomainType) ::
  { (acyclic_graph(EG_1): bool) }
  (acyclic_graph(EG_1): bool) == (forall v1: Ref, v2: Ref ::
    { (edge(EG_1, v1, v2): bool) } { (exists_path(EG_1, v2, v1): bool) }
    !(edge(EG_1, v1, v2): bool) || !(exists_path(EG_1, v2, v1): bool)
  )
);

// Translation of domain axiom ax_UnsharedGraph
axiom (forall EG_1: (Set EdgeDomainType) ::
  { (unshared_graph(EG_1): bool) }
  (unshared_graph(EG_1): bool) == (forall v1: Ref, v2: Ref, v_2: Ref ::
    { (edge(EG_1, v1, v_2): bool), (edge(EG_1, v2, v_2): bool) }
    (edge(EG_1, v1, v_2): bool) && (edge(EG_1, v2, v_2): bool) ==> v1 == v2
  )
);

// Translation of domain axiom ax_FuncGraph
axiom (forall EG_1: (Set EdgeDomainType) ::
  { (func_graph(EG_1): bool) }
  (func_graph(EG_1): bool) == (forall v1: Ref, v2: Ref, v_2: Ref ::
    { (edge(EG_1, v_2, v1): bool), (edge(EG_1, v_2, v2): bool) }
    (edge(EG_1, v_2, v1): bool) && (edge(EG_1, v_2, v2): bool) ==> v1 == v2
  )
);

// ==================================================
// Translation of all fields
// ==================================================

const unique next: Field NormalField Ref;
axiom !IsPredicateField(next);
axiom !IsWandField(next);

// ==================================================
// Translation of function $$
// ==================================================

// Uninterpreted function definitions
function  $$(Heap: HeapType, refs: (Set Ref)): Set EdgeDomainType;
function  $$'(Heap: HeapType, refs: (Set Ref)): Set EdgeDomainType;
axiom (forall Heap: HeapType, refs: (Set Ref) ::
  { $$(Heap, refs) }
  $$(Heap, refs) == $$'(Heap, refs) && dummyFunction($$#triggerStateless(refs))
);
axiom (forall Heap: HeapType, refs: (Set Ref) ::
  { $$'(Heap, refs) }
  dummyFunction($$#triggerStateless(refs))
);

// Framing axioms
function  $$#frame(frame: FrameType, refs: (Set Ref)): Set EdgeDomainType;
axiom (forall Heap: HeapType, Mask: MaskType, refs: (Set Ref) ::
  { state(Heap, Mask), $$'(Heap, refs) }
  state(Heap, Mask) ==> $$'(Heap, refs) == $$#frame(FrameFragment($$#condqp1(Heap, refs)), refs)
);
// ==================================================
// Function used for framing of quantified permission (forall n: Ref :: { n.next } (n in refs) ==> acc(n.next, 1 / 2)) in function $$
// ==================================================

function  $$#condqp1(Heap: HeapType, refs_1_1: (Set Ref)): int;
function  sk_$$#condqp1(fnAppH1: int, fnAppH2: int): Ref;
axiom (forall Heap2Heap: HeapType, Heap1Heap: HeapType, refs: (Set Ref) ::
  { $$#condqp1(Heap2Heap, refs), $$#condqp1(Heap1Heap, refs), succHeapTrans(Heap2Heap, Heap1Heap) }
  (refs[sk_$$#condqp1($$#condqp1(Heap2Heap, refs), $$#condqp1(Heap1Heap, refs))] && NoPerm < 1 / 2 <==> refs[sk_$$#condqp1($$#condqp1(Heap2Heap, refs), $$#condqp1(Heap1Heap, refs))] && NoPerm < 1 / 2) && (refs[sk_$$#condqp1($$#condqp1(Heap2Heap, refs), $$#condqp1(Heap1Heap, refs))] && NoPerm < 1 / 2 ==> Heap2Heap[sk_$$#condqp1($$#condqp1(Heap2Heap, refs), $$#condqp1(Heap1Heap, refs)), next] == Heap1Heap[sk_$$#condqp1($$#condqp1(Heap2Heap, refs), $$#condqp1(Heap1Heap, refs)), next]) ==> $$#condqp1(Heap2Heap, refs) == $$#condqp1(Heap1Heap, refs)
);

// Postcondition axioms
axiom (forall Heap: HeapType, Mask: MaskType, refs: (Set Ref) ::
  { state(Heap, Mask), $$'(Heap, refs) }
  state(Heap, Mask) && (AssumeFunctionsAbove < 1 || $$#trigger(FrameFragment($$#condqp1(Heap, refs)), refs)) ==> (forall p_1: Ref, s_2: Ref ::
    { (create_edge(p_1, s_2): EdgeDomainType) }
    (refs[p_1] && (refs[s_2] && Heap[p_1, next] == s_2)) == $$'(Heap, refs)[(create_edge(p_1, s_2): EdgeDomainType)]
  )
);
axiom (forall Heap: HeapType, Mask: MaskType, refs: (Set Ref) ::
  { state(Heap, Mask), $$'(Heap, refs) }
  state(Heap, Mask) && (AssumeFunctionsAbove < 1 || $$#trigger(FrameFragment($$#condqp1(Heap, refs)), refs)) ==> (forall p_1_1: Ref, s_1: Ref ::
    { refs[p_1_1], refs[s_1], (exists_path($$'(Heap, refs), p_1_1, s_1): bool) }
    refs[p_1_1] && (exists_path($$'(Heap, refs), p_1_1, s_1): bool) ==> refs[s_1]
  )
);
axiom (forall Heap: HeapType, Mask: MaskType, refs: (Set Ref) ::
  { state(Heap, Mask), $$'(Heap, refs) }
  state(Heap, Mask) && (AssumeFunctionsAbove < 1 || $$#trigger(FrameFragment($$#condqp1(Heap, refs)), refs)) ==> (forall p_2_1: Ref, s_2_1: Ref ::
    { refs[p_2_1], refs[s_2_1], (exists_path($$'(Heap, refs), p_2_1, s_2_1): bool) }
    refs[s_2_1] && (exists_path($$'(Heap, refs), p_2_1, s_2_1): bool) ==> refs[p_2_1]
  )
);

// Trigger function (controlling recursive postconditions)
function  $$#trigger(frame: FrameType, refs: (Set Ref)): bool;

// State-independent trigger function
function  $$#triggerStateless(refs: (Set Ref)): Set EdgeDomainType;

// Check contract well-formedness and postcondition
procedure $$#definedness(refs: (Set Ref)) returns (Result: (Set EdgeDomainType))
  modifies Heap, Mask;
{
  var QPMask: MaskType;
  var p_9: Ref;
  var s_5: Ref;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume AssumeFunctionsAbove == 1;
  
  // -- Inhaling precondition (with checking)
    
    // -- Check definedness of (forall n: Ref :: { n.next } (n in refs) ==> acc(n.next, 1 / 2))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource n.next might not be injective. (list-swap.vpr@184.14--184.68) [79588]"}
      (forall n_3: Ref, n_3_1: Ref ::
      
      (((n_3 != n_3_1 && refs[n_3]) && refs[n_3_1]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_3 != n_3_1
    );
    
    // -- Define Inverse Function
      assume (forall n_3: Ref ::
        { Heap[n_3, next] } { QPMask[n_3, next] } { Heap[n_3, next] }
        refs[n_3] && NoPerm < 1 / 2 ==> qpRange1(n_3) && invRecv1(n_3) == n_3
      );
      assume (forall o_4: Ref ::
        { invRecv1(o_4) }
        (refs[invRecv1(o_4)] && NoPerm < 1 / 2) && qpRange1(o_4) ==> invRecv1(o_4) == o_4
      );
    // Check that permission expression is non-negative for all fields
    assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (list-swap.vpr@184.14--184.68) [79589]"}
      (forall n_3: Ref ::
      { Heap[n_3, next] } { QPMask[n_3, next] } { Heap[n_3, next] }
      refs[n_3] ==> 1 / 2 >= NoPerm
    );
    
    // -- Assume set of fields is nonNull
      assume (forall n_3: Ref ::
        { Heap[n_3, next] } { QPMask[n_3, next] } { Heap[n_3, next] }
        refs[n_3] && 1 / 2 > NoPerm ==> n_3 != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, next] }
        ((refs[invRecv1(o_4)] && NoPerm < 1 / 2) && qpRange1(o_4) ==> (NoPerm < 1 / 2 ==> invRecv1(o_4) == o_4) && QPMask[o_4, next] == Mask[o_4, next] + 1 / 2) && (!((refs[invRecv1(o_4)] && NoPerm < 1 / 2) && qpRange1(o_4)) ==> QPMask[o_4, next] == Mask[o_4, next])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != next ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Checking definedness of postcondition (no body)
    
    // -- Check definedness of (forall p: Ref, s: Ref :: { create_edge(p, s) } ((p in refs) && ((s in refs) && p.next == s)) == (create_edge(p, s) in result))
      if (*) {
        if (refs[p_9]) {
          if (refs[s_5]) {
            assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access p.next (list-swap.vpr@186.13--190.44) [79590]"}
              HasDirectPerm(Mask, p_9, next);
          }
        }
        assume false;
      }
    assume (forall p_4_1: Ref, s_4_1: Ref ::
      { (create_edge(p_4_1, s_4_1): EdgeDomainType) }
      (refs[p_4_1] && (refs[s_4_1] && Heap[p_4_1, next] == s_4_1)) == Result[(create_edge(p_4_1, s_4_1): EdgeDomainType)]
    );
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall p: Ref, s: Ref :: { (p in refs), (s in refs), exists_path(result, p, s) } (p in refs) && exists_path(result, p, s) ==> (s in refs))
      if (*) {
        assume false;
      }
    assume (forall p_6_1: Ref, s_6_1: Ref ::
      { refs[p_6_1], refs[s_6_1], (exists_path(Result, p_6_1, s_6_1): bool) }
      refs[p_6_1] && (exists_path(Result, p_6_1, s_6_1): bool) ==> refs[s_6_1]
    );
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall p: Ref, s: Ref :: { (p in refs), (s in refs), exists_path(result, p, s) } (s in refs) && exists_path(result, p, s) ==> (p in refs))
      if (*) {
        assume false;
      }
    assume (forall p_8: Ref, s_8_1: Ref ::
      { refs[p_8], refs[s_8_1], (exists_path(Result, p_8, s_8_1): bool) }
      refs[s_8_1] && (exists_path(Result, p_8, s_8_1): bool) ==> refs[p_8]
    );
    assume state(Heap, Mask);
}

// ==================================================
// Translation of function apply_TCFraming
// ==================================================

// Uninterpreted function definitions
function  apply_TCFraming(Heap: HeapType, g0: (Set Ref), g1: (Set Ref)): bool;
function  apply_TCFraming'(Heap: HeapType, g0: (Set Ref), g1: (Set Ref)): bool;
axiom (forall Heap: HeapType, g0: (Set Ref), g1: (Set Ref) ::
  { apply_TCFraming(Heap, g0, g1) }
  apply_TCFraming(Heap, g0, g1) == apply_TCFraming'(Heap, g0, g1) && dummyFunction(apply_TCFraming#triggerStateless(g0, g1))
);
axiom (forall Heap: HeapType, g0: (Set Ref), g1: (Set Ref) ::
  { apply_TCFraming'(Heap, g0, g1) }
  dummyFunction(apply_TCFraming#triggerStateless(g0, g1))
);

// Framing axioms
function  apply_TCFraming#frame(frame: FrameType, g0: (Set Ref), g1: (Set Ref)): bool;
axiom (forall Heap: HeapType, Mask: MaskType, g0: (Set Ref), g1: (Set Ref) ::
  { state(Heap, Mask), apply_TCFraming'(Heap, g0, g1) }
  state(Heap, Mask) ==> apply_TCFraming'(Heap, g0, g1) == apply_TCFraming#frame(CombineFrames(FrameFragment(apply_TCFraming#condqp2(Heap, g0, g1)), FrameFragment(apply_TCFraming#condqp3(Heap, g0, g1))), g0, g1)
);
// ==================================================
// Function used for framing of quantified permission (forall n: Ref :: { n.next } (n in g0) ==> acc(n.next, 1 / 2)) in function apply_TCFraming
// ==================================================

function  apply_TCFraming#condqp2(Heap: HeapType, g0_1_1: (Set Ref), g1_1_1: (Set Ref)): int;
function  sk_apply_TCFraming#condqp2(fnAppH1: int, fnAppH2: int): Ref;
axiom (forall Heap2Heap: HeapType, Heap1Heap: HeapType, g0: (Set Ref), g1: (Set Ref) ::
  { apply_TCFraming#condqp2(Heap2Heap, g0, g1), apply_TCFraming#condqp2(Heap1Heap, g0, g1), succHeapTrans(Heap2Heap, Heap1Heap) }
  (g0[sk_apply_TCFraming#condqp2(apply_TCFraming#condqp2(Heap2Heap, g0, g1), apply_TCFraming#condqp2(Heap1Heap, g0, g1))] && NoPerm < 1 / 2 <==> g0[sk_apply_TCFraming#condqp2(apply_TCFraming#condqp2(Heap2Heap, g0, g1), apply_TCFraming#condqp2(Heap1Heap, g0, g1))] && NoPerm < 1 / 2) && (g0[sk_apply_TCFraming#condqp2(apply_TCFraming#condqp2(Heap2Heap, g0, g1), apply_TCFraming#condqp2(Heap1Heap, g0, g1))] && NoPerm < 1 / 2 ==> Heap2Heap[sk_apply_TCFraming#condqp2(apply_TCFraming#condqp2(Heap2Heap, g0, g1), apply_TCFraming#condqp2(Heap1Heap, g0, g1)), next] == Heap1Heap[sk_apply_TCFraming#condqp2(apply_TCFraming#condqp2(Heap2Heap, g0, g1), apply_TCFraming#condqp2(Heap1Heap, g0, g1)), next]) ==> apply_TCFraming#condqp2(Heap2Heap, g0, g1) == apply_TCFraming#condqp2(Heap1Heap, g0, g1)
);
// ==================================================
// Function used for framing of quantified permission (forall n: Ref :: { n.next } (n in g1) ==> acc(n.next, 1 / 2)) in function apply_TCFraming
// ==================================================

function  apply_TCFraming#condqp3(Heap: HeapType, g0_1_1: (Set Ref), g1_1_1: (Set Ref)): int;
function  sk_apply_TCFraming#condqp3(fnAppH1_1: int, fnAppH2_1: int): Ref;
axiom (forall Heap2Heap: HeapType, Heap1Heap: HeapType, g0: (Set Ref), g1: (Set Ref) ::
  { apply_TCFraming#condqp3(Heap2Heap, g0, g1), apply_TCFraming#condqp3(Heap1Heap, g0, g1), succHeapTrans(Heap2Heap, Heap1Heap) }
  (g1[sk_apply_TCFraming#condqp3(apply_TCFraming#condqp3(Heap2Heap, g0, g1), apply_TCFraming#condqp3(Heap1Heap, g0, g1))] && NoPerm < 1 / 2 <==> g1[sk_apply_TCFraming#condqp3(apply_TCFraming#condqp3(Heap2Heap, g0, g1), apply_TCFraming#condqp3(Heap1Heap, g0, g1))] && NoPerm < 1 / 2) && (g1[sk_apply_TCFraming#condqp3(apply_TCFraming#condqp3(Heap2Heap, g0, g1), apply_TCFraming#condqp3(Heap1Heap, g0, g1))] && NoPerm < 1 / 2 ==> Heap2Heap[sk_apply_TCFraming#condqp3(apply_TCFraming#condqp3(Heap2Heap, g0, g1), apply_TCFraming#condqp3(Heap1Heap, g0, g1)), next] == Heap1Heap[sk_apply_TCFraming#condqp3(apply_TCFraming#condqp3(Heap2Heap, g0, g1), apply_TCFraming#condqp3(Heap1Heap, g0, g1)), next]) ==> apply_TCFraming#condqp3(Heap2Heap, g0, g1) == apply_TCFraming#condqp3(Heap1Heap, g0, g1)
);

// Postcondition axioms
axiom (forall Heap: HeapType, Mask: MaskType, g0: (Set Ref), g1: (Set Ref) ::
  { state(Heap, Mask), apply_TCFraming'(Heap, g0, g1) }
  state(Heap, Mask) && (AssumeFunctionsAbove < 0 || apply_TCFraming#trigger(CombineFrames(FrameFragment(apply_TCFraming#condqp2(Heap, g0, g1)), FrameFragment(apply_TCFraming#condqp3(Heap, g0, g1))), g0, g1)) ==> Set#Equal(Set#Intersection(g1, g0), (Set#Empty(): Set Ref)) ==> Set#Equal(Set#Union(g0, g1), Set#Union(g1, g0))
);
axiom (forall Heap: HeapType, Mask: MaskType, g0: (Set Ref), g1: (Set Ref) ::
  { state(Heap, Mask), apply_TCFraming'(Heap, g0, g1) }
  state(Heap, Mask) && (AssumeFunctionsAbove < 0 || apply_TCFraming#trigger(CombineFrames(FrameFragment(apply_TCFraming#condqp2(Heap, g0, g1)), FrameFragment(apply_TCFraming#condqp3(Heap, g0, g1))), g0, g1)) ==> Set#Equal(Set#Intersection(g1, g0), (Set#Empty(): Set Ref)) ==> (forall u_3: Ref, v_2: Ref ::
    { (exists_path($$#frame(FrameFragment($$#condqp1(Heap, g0)), g0), u_3, v_2): bool) } { (exists_path($$#frame(FrameFragment($$#condqp1(Heap, Set#Union(g0, g1))), Set#Union(g0, g1)), u_3, v_2): bool) }
    g0[u_3] && (g0[v_2] && (exists_path($$(Heap, g0), u_3, v_2): bool)) ==> (exists_path($$(Heap, Set#Union(g0, g1)), u_3, v_2): bool)
  )
);
axiom (forall Heap: HeapType, Mask: MaskType, g0: (Set Ref), g1: (Set Ref) ::
  { state(Heap, Mask), apply_TCFraming'(Heap, g0, g1) }
  state(Heap, Mask) && (AssumeFunctionsAbove < 0 || apply_TCFraming#trigger(CombineFrames(FrameFragment(apply_TCFraming#condqp2(Heap, g0, g1)), FrameFragment(apply_TCFraming#condqp3(Heap, g0, g1))), g0, g1)) ==> Set#Equal(Set#Intersection(g1, g0), (Set#Empty(): Set Ref)) ==> (forall u_1: Ref, v_1_1: Ref ::
    { (exists_path($$#frame(FrameFragment($$#condqp1(Heap, g1)), g1), u_1, v_1_1): bool) } { (exists_path($$#frame(FrameFragment($$#condqp1(Heap, Set#Union(g1, g0))), Set#Union(g1, g0)), u_1, v_1_1): bool) }
    g1[u_1] && (g1[v_1_1] && (exists_path($$(Heap, g1), u_1, v_1_1): bool)) ==> (exists_path($$(Heap, Set#Union(g1, g0)), u_1, v_1_1): bool)
  )
);
axiom (forall Heap: HeapType, Mask: MaskType, g0: (Set Ref), g1: (Set Ref) ::
  { state(Heap, Mask), apply_TCFraming'(Heap, g0, g1) }
  state(Heap, Mask) && (AssumeFunctionsAbove < 0 || apply_TCFraming#trigger(CombineFrames(FrameFragment(apply_TCFraming#condqp2(Heap, g0, g1)), FrameFragment(apply_TCFraming#condqp3(Heap, g0, g1))), g0, g1)) ==> Set#Equal(Set#Intersection(g1, g0), (Set#Empty(): Set Ref)) ==> (forall u_2_1: Ref, v_2_1: Ref ::
    { (exists_path($$#frame(FrameFragment($$#condqp1(Heap, g0)), g0), u_2_1, v_2_1): bool) } { (exists_path($$#frame(FrameFragment($$#condqp1(Heap, Set#Union(g0, g1))), Set#Union(g0, g1)), u_2_1, v_2_1): bool) }
    g0[u_2_1] && (g0[v_2_1] && !(exists_path($$(Heap, g0), u_2_1, v_2_1): bool)) ==> !(exists_path($$(Heap, Set#Union(g0, g1)), u_2_1, v_2_1): bool)
  )
);
axiom (forall Heap: HeapType, Mask: MaskType, g0: (Set Ref), g1: (Set Ref) ::
  { state(Heap, Mask), apply_TCFraming'(Heap, g0, g1) }
  state(Heap, Mask) && (AssumeFunctionsAbove < 0 || apply_TCFraming#trigger(CombineFrames(FrameFragment(apply_TCFraming#condqp2(Heap, g0, g1)), FrameFragment(apply_TCFraming#condqp3(Heap, g0, g1))), g0, g1)) ==> Set#Equal(Set#Intersection(g1, g0), (Set#Empty(): Set Ref)) ==> (forall u_3_1: Ref, v_3_1: Ref ::
    { (exists_path($$#frame(FrameFragment($$#condqp1(Heap, g1)), g1), u_3_1, v_3_1): bool) } { (exists_path($$#frame(FrameFragment($$#condqp1(Heap, Set#Union(g0, g1))), Set#Union(g0, g1)), u_3_1, v_3_1): bool) }
    g1[u_3_1] && (g1[v_3_1] && !(exists_path($$(Heap, g1), u_3_1, v_3_1): bool)) ==> !(exists_path($$(Heap, Set#Union(g1, g0)), u_3_1, v_3_1): bool)
  )
);

// Trigger function (controlling recursive postconditions)
function  apply_TCFraming#trigger(frame: FrameType, g0: (Set Ref), g1: (Set Ref)): bool;

// State-independent trigger function
function  apply_TCFraming#triggerStateless(g0: (Set Ref), g1: (Set Ref)): bool;

// Check contract well-formedness and postcondition
procedure apply_TCFraming#definedness(g0: (Set Ref), g1: (Set Ref)) returns (Result: bool)
  modifies Heap, Mask;
{
  var QPMask: MaskType;
  var u_4: Ref;
  var v_5: Ref;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleHeap: HeapType;
  var u_6: Ref;
  var v_6: Ref;
  var u_8: Ref;
  var v_8: Ref;
  var u_10: Ref;
  var v_10: Ref;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume AssumeFunctionsAbove == 0;
  
  // -- Inhaling precondition (with checking)
    
    // -- Check definedness of (forall n: Ref :: { n.next } (n in g0) ==> acc(n.next, 1 / 2))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource n.next might not be injective. (list-swap.vpr@248.14--248.67) [79591]"}
      (forall n_5: Ref, n_5_1: Ref ::
      
      (((n_5 != n_5_1 && g0[n_5]) && g0[n_5_1]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_5 != n_5_1
    );
    
    // -- Define Inverse Function
      assume (forall n_5: Ref ::
        { Heap[n_5, next] } { QPMask[n_5, next] } { Heap[n_5, next] }
        g0[n_5] && NoPerm < 1 / 2 ==> qpRange2(n_5) && invRecv2(n_5) == n_5
      );
      assume (forall o_4: Ref ::
        { invRecv2(o_4) }
        (g0[invRecv2(o_4)] && NoPerm < 1 / 2) && qpRange2(o_4) ==> invRecv2(o_4) == o_4
      );
    // Check that permission expression is non-negative for all fields
    assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (list-swap.vpr@248.14--248.67) [79592]"}
      (forall n_5: Ref ::
      { Heap[n_5, next] } { QPMask[n_5, next] } { Heap[n_5, next] }
      g0[n_5] ==> 1 / 2 >= NoPerm
    );
    
    // -- Assume set of fields is nonNull
      assume (forall n_5: Ref ::
        { Heap[n_5, next] } { QPMask[n_5, next] } { Heap[n_5, next] }
        g0[n_5] && 1 / 2 > NoPerm ==> n_5 != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, next] }
        ((g0[invRecv2(o_4)] && NoPerm < 1 / 2) && qpRange2(o_4) ==> (NoPerm < 1 / 2 ==> invRecv2(o_4) == o_4) && QPMask[o_4, next] == Mask[o_4, next] + 1 / 2) && (!((g0[invRecv2(o_4)] && NoPerm < 1 / 2) && qpRange2(o_4)) ==> QPMask[o_4, next] == Mask[o_4, next])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != next ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall n: Ref :: { n.next } (n in g1) ==> acc(n.next, 1 / 2))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource n.next might not be injective. (list-swap.vpr@249.14--249.67) [79593]"}
      (forall n_7: Ref, n_7_1: Ref ::
      
      (((n_7 != n_7_1 && g1[n_7]) && g1[n_7_1]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_7 != n_7_1
    );
    
    // -- Define Inverse Function
      assume (forall n_7: Ref ::
        { Heap[n_7, next] } { QPMask[n_7, next] } { Heap[n_7, next] }
        g1[n_7] && NoPerm < 1 / 2 ==> qpRange3(n_7) && invRecv3(n_7) == n_7
      );
      assume (forall o_4: Ref ::
        { invRecv3(o_4) }
        (g1[invRecv3(o_4)] && NoPerm < 1 / 2) && qpRange3(o_4) ==> invRecv3(o_4) == o_4
      );
    // Check that permission expression is non-negative for all fields
    assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (list-swap.vpr@249.14--249.67) [79594]"}
      (forall n_7: Ref ::
      { Heap[n_7, next] } { QPMask[n_7, next] } { Heap[n_7, next] }
      g1[n_7] ==> 1 / 2 >= NoPerm
    );
    
    // -- Assume set of fields is nonNull
      assume (forall n_7: Ref ::
        { Heap[n_7, next] } { QPMask[n_7, next] } { Heap[n_7, next] }
        g1[n_7] && 1 / 2 > NoPerm ==> n_7 != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, next] }
        ((g1[invRecv3(o_4)] && NoPerm < 1 / 2) && qpRange3(o_4) ==> (NoPerm < 1 / 2 ==> invRecv3(o_4) == o_4) && QPMask[o_4, next] == Mask[o_4, next] + 1 / 2) && (!((g1[invRecv3(o_4)] && NoPerm < 1 / 2) && qpRange3(o_4)) ==> QPMask[o_4, next] == Mask[o_4, next])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != next ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume Set#Equal(Set#Intersection(g1, g0), (Set#Empty(): Set Ref));
    assume state(Heap, Mask);
  
  // -- Checking definedness of postcondition (no body)
    assume Set#Equal(Set#Union(g0, g1), Set#Union(g1, g0));
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall u: Ref, v: Ref :: { exists_path($$(g0), u, v) } { exists_path($$((g0 union g1)), u, v) } (u in g0) && ((v in g0) && exists_path($$(g0), u, v)) ==> exists_path($$((g0 union g1)), u, v))
      if (*) {
        if (g0[u_4]) {
          if (g0[v_5]) {
            if (*) {
              // Exhale precondition of function application
              ExhaleWellDef0Heap := Heap;
              ExhaleWellDef0Mask := Mask;
              havoc QPMask;
              
              // -- check that the permission amount is positive
                assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (list-swap.vpr@257.134--257.140) [79595]"}
                  (forall n_8: Ref ::
                  { Heap[n_8, next] } { QPMask[n_8, next] } { Heap[n_8, next] }
                  g0[n_8] && dummyFunction(Heap[n_8, next]) ==> 1 / 2 >= NoPerm
                );
              
              // -- check if receiver n is injective
                assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.next might not be injective. (list-swap.vpr@257.134--257.140) [79596]"}
                  (forall n_8: Ref, n_8_1: Ref ::
                  { neverTriggered4(n_8), neverTriggered4(n_8_1) }
                  (((n_8 != n_8_1 && g0[n_8]) && g0[n_8_1]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_8 != n_8_1
                );
              
              // -- check if sufficient permission is held
                assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.next (list-swap.vpr@257.134--257.140) [79597]"}
                  (forall n_8: Ref ::
                  { Heap[n_8, next] } { QPMask[n_8, next] } { Heap[n_8, next] }
                  g0[n_8] ==> 1 / 2 > NoPerm ==> Mask[n_8, next] > NoPerm
                );
              
              // -- assumptions for inverse of receiver n
                assume (forall n_8: Ref ::
                  { Heap[n_8, next] } { QPMask[n_8, next] } { Heap[n_8, next] }
                  g0[n_8] && NoPerm < 1 / 2 ==> qpRange4(n_8) && invRecv4(n_8) == n_8
                );
                assume (forall o_4: Ref ::
                  { invRecv4(o_4) }
                  g0[invRecv4(o_4)] && (NoPerm < 1 / 2 && qpRange4(o_4)) ==> invRecv4(o_4) == o_4
                );
              // Finish exhale
              havoc ExhaleHeap;
              assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
              Heap := ExhaleHeap;
              // Stop execution
              assume false;
            }
          }
        }
        if (g0[u_4] && (g0[v_5] && (exists_path($$(Heap, g0), u_4, v_5): bool))) {
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef0Heap := Heap;
            ExhaleWellDef0Mask := Mask;
            havoc QPMask;
            
            // -- check that the permission amount is positive
              assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (list-swap.vpr@257.162--257.177) [79598]"}
                (forall n_9: Ref ::
                { Heap[n_9, next] } { QPMask[n_9, next] } { Heap[n_9, next] }
                Set#Union(g0, g1)[n_9] && dummyFunction(Heap[n_9, next]) ==> 1 / 2 >= NoPerm
              );
            
            // -- check if receiver n is injective
              assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.next might not be injective. (list-swap.vpr@257.162--257.177) [79599]"}
                (forall n_9: Ref, n_9_1: Ref ::
                { neverTriggered5(n_9), neverTriggered5(n_9_1) }
                (((n_9 != n_9_1 && Set#Union(g0, g1)[n_9]) && Set#Union(g0, g1)[n_9_1]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_9 != n_9_1
              );
            
            // -- check if sufficient permission is held
              assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.next (list-swap.vpr@257.162--257.177) [79600]"}
                (forall n_9: Ref ::
                { Heap[n_9, next] } { QPMask[n_9, next] } { Heap[n_9, next] }
                Set#Union(g0, g1)[n_9] ==> 1 / 2 > NoPerm ==> Mask[n_9, next] > NoPerm
              );
            
            // -- assumptions for inverse of receiver n
              assume (forall n_9: Ref ::
                { Heap[n_9, next] } { QPMask[n_9, next] } { Heap[n_9, next] }
                Set#Union(g0, g1)[n_9] && NoPerm < 1 / 2 ==> qpRange5(n_9) && invRecv5(n_9) == n_9
              );
              assume (forall o_4: Ref ::
                { invRecv5(o_4) }
                Set#Union(g0, g1)[invRecv5(o_4)] && (NoPerm < 1 / 2 && qpRange5(o_4)) ==> invRecv5(o_4) == o_4
              );
            // Finish exhale
            havoc ExhaleHeap;
            assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
            Heap := ExhaleHeap;
            // Stop execution
            assume false;
          }
        }
        assume false;
      }
    assume (forall u_5: Ref, v_5_1: Ref ::
      { (exists_path($$#frame(FrameFragment($$#condqp1(Heap, g0)), g0), u_5, v_5_1): bool) } { (exists_path($$#frame(FrameFragment($$#condqp1(Heap, Set#Union(g0, g1))), Set#Union(g0, g1)), u_5, v_5_1): bool) }
      g0[u_5] && (g0[v_5_1] && (exists_path($$(Heap, g0), u_5, v_5_1): bool)) ==> (exists_path($$(Heap, Set#Union(g0, g1)), u_5, v_5_1): bool)
    );
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall u: Ref, v: Ref :: { exists_path($$(g1), u, v) } { exists_path($$((g1 union g0)), u, v) } (u in g1) && ((v in g1) && exists_path($$(g1), u, v)) ==> exists_path($$((g1 union g0)), u, v))
      if (*) {
        if (g1[u_6]) {
          if (g1[v_6]) {
            if (*) {
              // Exhale precondition of function application
              ExhaleWellDef0Heap := Heap;
              ExhaleWellDef0Mask := Mask;
              havoc QPMask;
              
              // -- check that the permission amount is positive
                assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (list-swap.vpr@258.134--258.140) [79601]"}
                  (forall n_10_1: Ref ::
                  { Heap[n_10_1, next] } { QPMask[n_10_1, next] } { Heap[n_10_1, next] }
                  g1[n_10_1] && dummyFunction(Heap[n_10_1, next]) ==> 1 / 2 >= NoPerm
                );
              
              // -- check if receiver n is injective
                assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.next might not be injective. (list-swap.vpr@258.134--258.140) [79602]"}
                  (forall n_10_1: Ref, n_10_2: Ref ::
                  { neverTriggered6(n_10_1), neverTriggered6(n_10_2) }
                  (((n_10_1 != n_10_2 && g1[n_10_1]) && g1[n_10_2]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_10_1 != n_10_2
                );
              
              // -- check if sufficient permission is held
                assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.next (list-swap.vpr@258.134--258.140) [79603]"}
                  (forall n_10_1: Ref ::
                  { Heap[n_10_1, next] } { QPMask[n_10_1, next] } { Heap[n_10_1, next] }
                  g1[n_10_1] ==> 1 / 2 > NoPerm ==> Mask[n_10_1, next] > NoPerm
                );
              
              // -- assumptions for inverse of receiver n
                assume (forall n_10_1: Ref ::
                  { Heap[n_10_1, next] } { QPMask[n_10_1, next] } { Heap[n_10_1, next] }
                  g1[n_10_1] && NoPerm < 1 / 2 ==> qpRange6(n_10_1) && invRecv6(n_10_1) == n_10_1
                );
                assume (forall o_4: Ref ::
                  { invRecv6(o_4) }
                  g1[invRecv6(o_4)] && (NoPerm < 1 / 2 && qpRange6(o_4)) ==> invRecv6(o_4) == o_4
                );
              // Finish exhale
              havoc ExhaleHeap;
              assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
              Heap := ExhaleHeap;
              // Stop execution
              assume false;
            }
          }
        }
        if (g1[u_6] && (g1[v_6] && (exists_path($$(Heap, g1), u_6, v_6): bool))) {
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef0Heap := Heap;
            ExhaleWellDef0Mask := Mask;
            havoc QPMask;
            
            // -- check that the permission amount is positive
              assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (list-swap.vpr@258.162--258.177) [79604]"}
                (forall n_11_1: Ref ::
                { Heap[n_11_1, next] } { QPMask[n_11_1, next] } { Heap[n_11_1, next] }
                Set#Union(g1, g0)[n_11_1] && dummyFunction(Heap[n_11_1, next]) ==> 1 / 2 >= NoPerm
              );
            
            // -- check if receiver n is injective
              assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.next might not be injective. (list-swap.vpr@258.162--258.177) [79605]"}
                (forall n_11_1: Ref, n_11_2: Ref ::
                { neverTriggered7(n_11_1), neverTriggered7(n_11_2) }
                (((n_11_1 != n_11_2 && Set#Union(g1, g0)[n_11_1]) && Set#Union(g1, g0)[n_11_2]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_11_1 != n_11_2
              );
            
            // -- check if sufficient permission is held
              assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.next (list-swap.vpr@258.162--258.177) [79606]"}
                (forall n_11_1: Ref ::
                { Heap[n_11_1, next] } { QPMask[n_11_1, next] } { Heap[n_11_1, next] }
                Set#Union(g1, g0)[n_11_1] ==> 1 / 2 > NoPerm ==> Mask[n_11_1, next] > NoPerm
              );
            
            // -- assumptions for inverse of receiver n
              assume (forall n_11_1: Ref ::
                { Heap[n_11_1, next] } { QPMask[n_11_1, next] } { Heap[n_11_1, next] }
                Set#Union(g1, g0)[n_11_1] && NoPerm < 1 / 2 ==> qpRange7(n_11_1) && invRecv7(n_11_1) == n_11_1
              );
              assume (forall o_4: Ref ::
                { invRecv7(o_4) }
                Set#Union(g1, g0)[invRecv7(o_4)] && (NoPerm < 1 / 2 && qpRange7(o_4)) ==> invRecv7(o_4) == o_4
              );
            // Finish exhale
            havoc ExhaleHeap;
            assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
            Heap := ExhaleHeap;
            // Stop execution
            assume false;
          }
        }
        assume false;
      }
    assume (forall u_7: Ref, v_7: Ref ::
      { (exists_path($$#frame(FrameFragment($$#condqp1(Heap, g1)), g1), u_7, v_7): bool) } { (exists_path($$#frame(FrameFragment($$#condqp1(Heap, Set#Union(g1, g0))), Set#Union(g1, g0)), u_7, v_7): bool) }
      g1[u_7] && (g1[v_7] && (exists_path($$(Heap, g1), u_7, v_7): bool)) ==> (exists_path($$(Heap, Set#Union(g1, g0)), u_7, v_7): bool)
    );
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall u: Ref, v: Ref :: { exists_path($$(g0), u, v) } { exists_path($$((g0 union g1)), u, v) } (u in g0) && ((v in g0) && !exists_path($$(g0), u, v)) ==> !exists_path($$((g0 union g1)), u, v))
      if (*) {
        if (g0[u_8]) {
          if (g0[v_8]) {
            if (*) {
              // Exhale precondition of function application
              ExhaleWellDef0Heap := Heap;
              ExhaleWellDef0Mask := Mask;
              havoc QPMask;
              
              // -- check that the permission amount is positive
                assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (list-swap.vpr@259.135--259.141) [79607]"}
                  (forall n_12_1: Ref ::
                  { Heap[n_12_1, next] } { QPMask[n_12_1, next] } { Heap[n_12_1, next] }
                  g0[n_12_1] && dummyFunction(Heap[n_12_1, next]) ==> 1 / 2 >= NoPerm
                );
              
              // -- check if receiver n is injective
                assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.next might not be injective. (list-swap.vpr@259.135--259.141) [79608]"}
                  (forall n_12_1: Ref, n_12_2: Ref ::
                  { neverTriggered8(n_12_1), neverTriggered8(n_12_2) }
                  (((n_12_1 != n_12_2 && g0[n_12_1]) && g0[n_12_2]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_12_1 != n_12_2
                );
              
              // -- check if sufficient permission is held
                assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.next (list-swap.vpr@259.135--259.141) [79609]"}
                  (forall n_12_1: Ref ::
                  { Heap[n_12_1, next] } { QPMask[n_12_1, next] } { Heap[n_12_1, next] }
                  g0[n_12_1] ==> 1 / 2 > NoPerm ==> Mask[n_12_1, next] > NoPerm
                );
              
              // -- assumptions for inverse of receiver n
                assume (forall n_12_1: Ref ::
                  { Heap[n_12_1, next] } { QPMask[n_12_1, next] } { Heap[n_12_1, next] }
                  g0[n_12_1] && NoPerm < 1 / 2 ==> qpRange8(n_12_1) && invRecv8(n_12_1) == n_12_1
                );
                assume (forall o_4: Ref ::
                  { invRecv8(o_4) }
                  g0[invRecv8(o_4)] && (NoPerm < 1 / 2 && qpRange8(o_4)) ==> invRecv8(o_4) == o_4
                );
              // Finish exhale
              havoc ExhaleHeap;
              assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
              Heap := ExhaleHeap;
              // Stop execution
              assume false;
            }
          }
        }
        if (g0[u_8] && (g0[v_8] && !(exists_path($$(Heap, g0), u_8, v_8): bool))) {
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef0Heap := Heap;
            ExhaleWellDef0Mask := Mask;
            havoc QPMask;
            
            // -- check that the permission amount is positive
              assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (list-swap.vpr@259.164--259.179) [79610]"}
                (forall n_13: Ref ::
                { Heap[n_13, next] } { QPMask[n_13, next] } { Heap[n_13, next] }
                Set#Union(g0, g1)[n_13] && dummyFunction(Heap[n_13, next]) ==> 1 / 2 >= NoPerm
              );
            
            // -- check if receiver n is injective
              assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.next might not be injective. (list-swap.vpr@259.164--259.179) [79611]"}
                (forall n_13: Ref, n_13_1: Ref ::
                { neverTriggered9(n_13), neverTriggered9(n_13_1) }
                (((n_13 != n_13_1 && Set#Union(g0, g1)[n_13]) && Set#Union(g0, g1)[n_13_1]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_13 != n_13_1
              );
            
            // -- check if sufficient permission is held
              assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.next (list-swap.vpr@259.164--259.179) [79612]"}
                (forall n_13: Ref ::
                { Heap[n_13, next] } { QPMask[n_13, next] } { Heap[n_13, next] }
                Set#Union(g0, g1)[n_13] ==> 1 / 2 > NoPerm ==> Mask[n_13, next] > NoPerm
              );
            
            // -- assumptions for inverse of receiver n
              assume (forall n_13: Ref ::
                { Heap[n_13, next] } { QPMask[n_13, next] } { Heap[n_13, next] }
                Set#Union(g0, g1)[n_13] && NoPerm < 1 / 2 ==> qpRange9(n_13) && invRecv9(n_13) == n_13
              );
              assume (forall o_4: Ref ::
                { invRecv9(o_4) }
                Set#Union(g0, g1)[invRecv9(o_4)] && (NoPerm < 1 / 2 && qpRange9(o_4)) ==> invRecv9(o_4) == o_4
              );
            // Finish exhale
            havoc ExhaleHeap;
            assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
            Heap := ExhaleHeap;
            // Stop execution
            assume false;
          }
        }
        assume false;
      }
    assume (forall u_9: Ref, v_9: Ref ::
      { (exists_path($$#frame(FrameFragment($$#condqp1(Heap, g0)), g0), u_9, v_9): bool) } { (exists_path($$#frame(FrameFragment($$#condqp1(Heap, Set#Union(g0, g1))), Set#Union(g0, g1)), u_9, v_9): bool) }
      g0[u_9] && (g0[v_9] && !(exists_path($$(Heap, g0), u_9, v_9): bool)) ==> !(exists_path($$(Heap, Set#Union(g0, g1)), u_9, v_9): bool)
    );
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall u: Ref, v: Ref :: { exists_path($$(g1), u, v) } { exists_path($$((g0 union g1)), u, v) } (u in g1) && ((v in g1) && !exists_path($$(g1), u, v)) ==> !exists_path($$((g1 union g0)), u, v))
      if (*) {
        if (g1[u_10]) {
          if (g1[v_10]) {
            if (*) {
              // Exhale precondition of function application
              ExhaleWellDef0Heap := Heap;
              ExhaleWellDef0Mask := Mask;
              havoc QPMask;
              
              // -- check that the permission amount is positive
                assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (list-swap.vpr@260.135--260.141) [79613]"}
                  (forall n_14: Ref ::
                  { Heap[n_14, next] } { QPMask[n_14, next] } { Heap[n_14, next] }
                  g1[n_14] && dummyFunction(Heap[n_14, next]) ==> 1 / 2 >= NoPerm
                );
              
              // -- check if receiver n is injective
                assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.next might not be injective. (list-swap.vpr@260.135--260.141) [79614]"}
                  (forall n_14: Ref, n_14_1: Ref ::
                  { neverTriggered10(n_14), neverTriggered10(n_14_1) }
                  (((n_14 != n_14_1 && g1[n_14]) && g1[n_14_1]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_14 != n_14_1
                );
              
              // -- check if sufficient permission is held
                assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.next (list-swap.vpr@260.135--260.141) [79615]"}
                  (forall n_14: Ref ::
                  { Heap[n_14, next] } { QPMask[n_14, next] } { Heap[n_14, next] }
                  g1[n_14] ==> 1 / 2 > NoPerm ==> Mask[n_14, next] > NoPerm
                );
              
              // -- assumptions for inverse of receiver n
                assume (forall n_14: Ref ::
                  { Heap[n_14, next] } { QPMask[n_14, next] } { Heap[n_14, next] }
                  g1[n_14] && NoPerm < 1 / 2 ==> qpRange10(n_14) && invRecv10(n_14) == n_14
                );
                assume (forall o_4: Ref ::
                  { invRecv10(o_4) }
                  g1[invRecv10(o_4)] && (NoPerm < 1 / 2 && qpRange10(o_4)) ==> invRecv10(o_4) == o_4
                );
              // Finish exhale
              havoc ExhaleHeap;
              assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
              Heap := ExhaleHeap;
              // Stop execution
              assume false;
            }
          }
        }
        if (g1[u_10] && (g1[v_10] && !(exists_path($$(Heap, g1), u_10, v_10): bool))) {
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef0Heap := Heap;
            ExhaleWellDef0Mask := Mask;
            havoc QPMask;
            
            // -- check that the permission amount is positive
              assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (list-swap.vpr@260.164--260.179) [79616]"}
                (forall n_15: Ref ::
                { Heap[n_15, next] } { QPMask[n_15, next] } { Heap[n_15, next] }
                Set#Union(g1, g0)[n_15] && dummyFunction(Heap[n_15, next]) ==> 1 / 2 >= NoPerm
              );
            
            // -- check if receiver n is injective
              assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.next might not be injective. (list-swap.vpr@260.164--260.179) [79617]"}
                (forall n_15: Ref, n_15_1: Ref ::
                { neverTriggered11(n_15), neverTriggered11(n_15_1) }
                (((n_15 != n_15_1 && Set#Union(g1, g0)[n_15]) && Set#Union(g1, g0)[n_15_1]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_15 != n_15_1
              );
            
            // -- check if sufficient permission is held
              assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.next (list-swap.vpr@260.164--260.179) [79618]"}
                (forall n_15: Ref ::
                { Heap[n_15, next] } { QPMask[n_15, next] } { Heap[n_15, next] }
                Set#Union(g1, g0)[n_15] ==> 1 / 2 > NoPerm ==> Mask[n_15, next] > NoPerm
              );
            
            // -- assumptions for inverse of receiver n
              assume (forall n_15: Ref ::
                { Heap[n_15, next] } { QPMask[n_15, next] } { Heap[n_15, next] }
                Set#Union(g1, g0)[n_15] && NoPerm < 1 / 2 ==> qpRange11(n_15) && invRecv11(n_15) == n_15
              );
              assume (forall o_4: Ref ::
                { invRecv11(o_4) }
                Set#Union(g1, g0)[invRecv11(o_4)] && (NoPerm < 1 / 2 && qpRange11(o_4)) ==> invRecv11(o_4) == o_4
              );
            // Finish exhale
            havoc ExhaleHeap;
            assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
            Heap := ExhaleHeap;
            // Stop execution
            assume false;
          }
        }
        assume false;
      }
    assume (forall u_11: Ref, v_11: Ref ::
      { (exists_path($$#frame(FrameFragment($$#condqp1(Heap, g1)), g1), u_11, v_11): bool) } { (exists_path($$#frame(FrameFragment($$#condqp1(Heap, Set#Union(g0, g1))), Set#Union(g0, g1)), u_11, v_11): bool) }
      g1[u_11] && (g1[v_11] && !(exists_path($$(Heap, g1), u_11, v_11): bool)) ==> !(exists_path($$(Heap, Set#Union(g1, g0)), u_11, v_11): bool)
    );
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method link
// ==================================================

procedure link(g_1: (Set Ref), x: Ref, y: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var QPMask: MaskType;
  var n$0: Ref;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var n$2_1: Ref;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleHeap: HeapType;
  var v1_2: Ref;
  var v2_2: Ref;
  var n$2_2: Ref;
  var v1_4: Ref;
  var v2_4: Ref;
  var v1_6: Ref;
  var v2_6: Ref;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[x, $allocated];
    assume Heap[y, $allocated];
  
  // -- Checked inhaling of precondition
    assume g_1[x];
    assume state(Heap, Mask);
    if (y != null) {
      assume g_1[y];
    }
    assume state(Heap, Mask);
    assume !g_1[null];
    assume g_1[x];
    perm := FullPerm;
    assume x != null;
    Mask := Mask[x, next:=Mask[x, next] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall n: Ref :: { n.next } (n in g) && n != x ==> acc(n.next, 1 / 2))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource n.next might not be injective. (list-swap.vpr@265.14--265.34) [79619]"}
      (forall n_1: Ref, n_1_1: Ref ::
      
      (((n_1 != n_1_1 && (g_1[n_1] && n_1 != x)) && (g_1[n_1_1] && n_1_1 != x)) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_1 != n_1_1
    );
    
    // -- Define Inverse Function
      assume (forall n_1: Ref ::
        { Heap[n_1, next] } { QPMask[n_1, next] } { Heap[n_1, next] }
        (g_1[n_1] && n_1 != x) && NoPerm < 1 / 2 ==> qpRange12(n_1) && invRecv12(n_1) == n_1
      );
      assume (forall o_4: Ref ::
        { invRecv12(o_4) }
        ((g_1[invRecv12(o_4)] && invRecv12(o_4) != x) && NoPerm < 1 / 2) && qpRange12(o_4) ==> invRecv12(o_4) == o_4
      );
    // Check that permission expression is non-negative for all fields
    assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (list-swap.vpr@265.14--265.34) [79620]"}
      (forall n_1: Ref ::
      { Heap[n_1, next] } { QPMask[n_1, next] } { Heap[n_1, next] }
      g_1[n_1] && n_1 != x ==> 1 / 2 >= NoPerm
    );
    
    // -- Assume set of fields is nonNull
      assume (forall n_1: Ref ::
        { Heap[n_1, next] } { QPMask[n_1, next] } { Heap[n_1, next] }
        (g_1[n_1] && n_1 != x) && 1 / 2 > NoPerm ==> n_1 != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, next] }
        (((g_1[invRecv12(o_4)] && invRecv12(o_4) != x) && NoPerm < 1 / 2) && qpRange12(o_4) ==> (NoPerm < 1 / 2 ==> invRecv12(o_4) == o_4) && QPMask[o_4, next] == Mask[o_4, next] + 1 / 2) && (!(((g_1[invRecv12(o_4)] && invRecv12(o_4) != x) && NoPerm < 1 / 2) && qpRange12(o_4)) ==> QPMask[o_4, next] == Mask[o_4, next])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != next ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall n$0: Ref :: { (n$0.next in g) } { (n$0 in g), n$0.next } (n$0 in g) && n$0.next != null ==> (n$0.next in g))
      if (*) {
        if (g_1[n$0]) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access n$0.next (list-swap.vpr@265.14--265.34) [79621]"}
            HasDirectPerm(Mask, n$0, next);
        }
        if (g_1[n$0] && Heap[n$0, next] != null) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access n$0.next (list-swap.vpr@265.14--265.34) [79622]"}
            HasDirectPerm(Mask, n$0, next);
        }
        assume false;
      }
    assume (forall n$0_1: Ref ::
      { g_1[Heap[n$0_1, next]] } { g_1[n$0_1], Heap[n$0_1, next] }
      g_1[n$0_1] && Heap[n$0_1, next] != null ==> g_1[Heap[n$0_1, next]]
    );
    assume state(Heap, Mask);
    
    // -- Check definedness of x.next == null
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access x.next (list-swap.vpr@266.14--266.28) [79623]"}
        HasDirectPerm(Mask, x, next);
    assume Heap[x, next] == null;
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
    assume !g_1[null];
    assume g_1[x];
    perm := FullPerm;
    assume x != null;
    PostMask := PostMask[x, next:=PostMask[x, next] + perm];
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall n$1: Ref :: { n$1.next } (n$1 in g) && n$1 != x ==> acc(n$1.next, 1 / 2))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource n$1.next might not be injective. (list-swap.vpr@267.13--267.33) [79624]"}
      (forall n$1_1: Ref, n$1_1_1: Ref ::
      
      (((n$1_1 != n$1_1_1 && (g_1[n$1_1] && n$1_1 != x)) && (g_1[n$1_1_1] && n$1_1_1 != x)) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n$1_1 != n$1_1_1
    );
    
    // -- Define Inverse Function
      assume (forall n$1_1: Ref ::
        { PostHeap[n$1_1, next] } { QPMask[n$1_1, next] } { PostHeap[n$1_1, next] }
        (g_1[n$1_1] && n$1_1 != x) && NoPerm < 1 / 2 ==> qpRange13(n$1_1) && invRecv13(n$1_1) == n$1_1
      );
      assume (forall o_4: Ref ::
        { invRecv13(o_4) }
        ((g_1[invRecv13(o_4)] && invRecv13(o_4) != x) && NoPerm < 1 / 2) && qpRange13(o_4) ==> invRecv13(o_4) == o_4
      );
    // Check that permission expression is non-negative for all fields
    assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (list-swap.vpr@267.13--267.33) [79625]"}
      (forall n$1_1: Ref ::
      { PostHeap[n$1_1, next] } { QPMask[n$1_1, next] } { PostHeap[n$1_1, next] }
      g_1[n$1_1] && n$1_1 != x ==> 1 / 2 >= NoPerm
    );
    
    // -- Assume set of fields is nonNull
      assume (forall n$1_1: Ref ::
        { PostHeap[n$1_1, next] } { QPMask[n$1_1, next] } { PostHeap[n$1_1, next] }
        (g_1[n$1_1] && n$1_1 != x) && 1 / 2 > NoPerm ==> n$1_1 != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, next] }
        (((g_1[invRecv13(o_4)] && invRecv13(o_4) != x) && NoPerm < 1 / 2) && qpRange13(o_4) ==> (NoPerm < 1 / 2 ==> invRecv13(o_4) == o_4) && QPMask[o_4, next] == PostMask[o_4, next] + 1 / 2) && (!(((g_1[invRecv13(o_4)] && invRecv13(o_4) != x) && NoPerm < 1 / 2) && qpRange13(o_4)) ==> QPMask[o_4, next] == PostMask[o_4, next])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { PostMask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != next ==> PostMask[o_4, f_5] == QPMask[o_4, f_5]
      );
    PostMask := QPMask;
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall n$2: Ref :: { (n$2.next in g) } { (n$2 in g), n$2.next } (n$2 in g) && n$2.next != null ==> (n$2.next in g))
      if (*) {
        if (g_1[n$2_1]) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access n$2.next (list-swap.vpr@267.13--267.33) [79626]"}
            HasDirectPerm(PostMask, n$2_1, next);
        }
        if (g_1[n$2_1] && PostHeap[n$2_1, next] != null) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access n$2.next (list-swap.vpr@267.13--267.33) [79627]"}
            HasDirectPerm(PostMask, n$2_1, next);
        }
        assume false;
      }
    assume (forall n$2_1_1: Ref ::
      { g_1[PostHeap[n$2_1_1, next]] } { g_1[n$2_1_1], PostHeap[n$2_1_1, next] }
      g_1[n$2_1_1] && PostHeap[n$2_1_1, next] != null ==> g_1[PostHeap[n$2_1_1, next]]
    );
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of x.next == y
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access x.next (list-swap.vpr@268.13--268.24) [79628]"}
        HasDirectPerm(PostMask, x, next);
    assume PostHeap[x, next] == y;
    assume state(PostHeap, PostMask);
    if (y == null) {
      assume state(PostHeap, PostMask);
      
      // -- Check definedness of $$(g) == old($$(g))
        if (*) {
          // Exhale precondition of function application
          ExhaleWellDef0Heap := PostHeap;
          ExhaleWellDef0Mask := PostMask;
          havoc QPMask;
          
          // -- check that the permission amount is positive
            assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (list-swap.vpr@269.27--269.32) [79629]"}
              (forall n_2: Ref ::
              { PostHeap[n_2, next] } { QPMask[n_2, next] } { PostHeap[n_2, next] }
              g_1[n_2] && dummyFunction(PostHeap[n_2, next]) ==> 1 / 2 >= NoPerm
            );
          
          // -- check if receiver n is injective
            assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.next might not be injective. (list-swap.vpr@269.27--269.32) [79630]"}
              (forall n_2: Ref, n_2_1: Ref ::
              { neverTriggered14(n_2), neverTriggered14(n_2_1) }
              (((n_2 != n_2_1 && g_1[n_2]) && g_1[n_2_1]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_2 != n_2_1
            );
          
          // -- check if sufficient permission is held
            assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.next (list-swap.vpr@269.27--269.32) [79631]"}
              (forall n_2: Ref ::
              { PostHeap[n_2, next] } { QPMask[n_2, next] } { PostHeap[n_2, next] }
              g_1[n_2] ==> 1 / 2 > NoPerm ==> PostMask[n_2, next] > NoPerm
            );
          
          // -- assumptions for inverse of receiver n
            assume (forall n_2: Ref ::
              { PostHeap[n_2, next] } { QPMask[n_2, next] } { PostHeap[n_2, next] }
              g_1[n_2] && NoPerm < 1 / 2 ==> qpRange14(n_2) && invRecv14(n_2) == n_2
            );
            assume (forall o_4: Ref ::
              { invRecv14(o_4) }
              g_1[invRecv14(o_4)] && (NoPerm < 1 / 2 && qpRange14(o_4)) ==> invRecv14(o_4) == o_4
            );
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
          havoc QPMask;
          
          // -- check that the permission amount is positive
            assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (list-swap.vpr@269.40--269.45) [79632]"}
              (forall n_3: Ref ::
              { oldHeap[n_3, next] } { QPMask[n_3, next] } { oldHeap[n_3, next] }
              g_1[n_3] && dummyFunction(oldHeap[n_3, next]) ==> 1 / 2 >= NoPerm
            );
          
          // -- check if receiver n is injective
            assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.next might not be injective. (list-swap.vpr@269.40--269.45) [79633]"}
              (forall n_3: Ref, n_3_1: Ref ::
              { neverTriggered15(n_3), neverTriggered15(n_3_1) }
              (((n_3 != n_3_1 && g_1[n_3]) && g_1[n_3_1]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_3 != n_3_1
            );
          
          // -- check if sufficient permission is held
            assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.next (list-swap.vpr@269.40--269.45) [79634]"}
              (forall n_3: Ref ::
              { oldHeap[n_3, next] } { QPMask[n_3, next] } { oldHeap[n_3, next] }
              g_1[n_3] ==> 1 / 2 > NoPerm ==> oldMask[n_3, next] > NoPerm
            );
          
          // -- assumptions for inverse of receiver n
            assume (forall n_3: Ref ::
              { oldHeap[n_3, next] } { QPMask[n_3, next] } { oldHeap[n_3, next] }
              g_1[n_3] && NoPerm < 1 / 2 ==> qpRange15(n_3) && invRecv15(n_3) == n_3
            );
            assume (forall o_4: Ref ::
              { invRecv15(o_4) }
              g_1[invRecv15(o_4)] && (NoPerm < 1 / 2 && qpRange15(o_4)) ==> invRecv15(o_4) == o_4
            );
          // Finish exhale
          // Stop execution
          assume false;
        }
      assume Set#Equal($$(PostHeap, g_1), $$(oldHeap, g_1));
    }
    assume state(PostHeap, PostMask);
    if (y != null) {
      assume state(PostHeap, PostMask);
      
      // -- Check definedness of (forall v1: Ref, v2: Ref :: { edge(old($$(g)), v1, v2) } edge($$(g), v1, v2) == (edge(old($$(g)), v1, v2) || v1 == x && v2 == y))
        if (*) {
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef0Heap := PostHeap;
            ExhaleWellDef0Mask := PostMask;
            havoc QPMask;
            
            // -- check that the permission amount is positive
              assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (list-swap.vpr@272.18--272.23) [79635]"}
                (forall n_4_1: Ref ::
                { PostHeap[n_4_1, next] } { QPMask[n_4_1, next] } { PostHeap[n_4_1, next] }
                g_1[n_4_1] && dummyFunction(PostHeap[n_4_1, next]) ==> 1 / 2 >= NoPerm
              );
            
            // -- check if receiver n is injective
              assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.next might not be injective. (list-swap.vpr@272.18--272.23) [79636]"}
                (forall n_4_1: Ref, n_4_2: Ref ::
                { neverTriggered16(n_4_1), neverTriggered16(n_4_2) }
                (((n_4_1 != n_4_2 && g_1[n_4_1]) && g_1[n_4_2]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_4_1 != n_4_2
              );
            
            // -- check if sufficient permission is held
              assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.next (list-swap.vpr@272.18--272.23) [79637]"}
                (forall n_4_1: Ref ::
                { PostHeap[n_4_1, next] } { QPMask[n_4_1, next] } { PostHeap[n_4_1, next] }
                g_1[n_4_1] ==> 1 / 2 > NoPerm ==> PostMask[n_4_1, next] > NoPerm
              );
            
            // -- assumptions for inverse of receiver n
              assume (forall n_4_1: Ref ::
                { PostHeap[n_4_1, next] } { QPMask[n_4_1, next] } { PostHeap[n_4_1, next] }
                g_1[n_4_1] && NoPerm < 1 / 2 ==> qpRange16(n_4_1) && invRecv16(n_4_1) == n_4_1
              );
              assume (forall o_4: Ref ::
                { invRecv16(o_4) }
                g_1[invRecv16(o_4)] && (NoPerm < 1 / 2 && qpRange16(o_4)) ==> invRecv16(o_4) == o_4
              );
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
            havoc QPMask;
            
            // -- check that the permission amount is positive
              assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (list-swap.vpr@272.45--272.50) [79638]"}
                (forall n_5: Ref ::
                { oldHeap[n_5, next] } { QPMask[n_5, next] } { oldHeap[n_5, next] }
                g_1[n_5] && dummyFunction(oldHeap[n_5, next]) ==> 1 / 2 >= NoPerm
              );
            
            // -- check if receiver n is injective
              assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.next might not be injective. (list-swap.vpr@272.45--272.50) [79639]"}
                (forall n_5: Ref, n_5_1: Ref ::
                { neverTriggered17(n_5), neverTriggered17(n_5_1) }
                (((n_5 != n_5_1 && g_1[n_5]) && g_1[n_5_1]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_5 != n_5_1
              );
            
            // -- check if sufficient permission is held
              assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.next (list-swap.vpr@272.45--272.50) [79640]"}
                (forall n_5: Ref ::
                { oldHeap[n_5, next] } { QPMask[n_5, next] } { oldHeap[n_5, next] }
                g_1[n_5] ==> 1 / 2 > NoPerm ==> oldMask[n_5, next] > NoPerm
              );
            
            // -- assumptions for inverse of receiver n
              assume (forall n_5: Ref ::
                { oldHeap[n_5, next] } { QPMask[n_5, next] } { oldHeap[n_5, next] }
                g_1[n_5] && NoPerm < 1 / 2 ==> qpRange17(n_5) && invRecv17(n_5) == n_5
              );
              assume (forall o_4: Ref ::
                { invRecv17(o_4) }
                g_1[invRecv17(o_4)] && (NoPerm < 1 / 2 && qpRange17(o_4)) ==> invRecv17(o_4) == o_4
              );
            // Finish exhale
            // Stop execution
            assume false;
          }
          assume false;
        }
      assume (forall v1_1: Ref, v2_1: Ref ::
        { (edge($$#frame(FrameFragment($$#condqp1(oldHeap, g_1)), g_1), v1_1, v2_1): bool) }
        (edge($$(PostHeap, g_1), v1_1, v2_1): bool) == ((edge($$(oldHeap, g_1), v1_1, v2_1): bool) || (v1_1 == x && v2_1 == y))
      );
    }
    assume state(PostHeap, PostMask);
    if (y != null) {
      assume state(PostHeap, PostMask);
      
      // -- Check definedness of (forall v1: Ref, v2: Ref :: { exists_path($$(g), v1, v2) } v1 != v2 ==> exists_path($$(g), v1, v2) == (exists_path(old($$(g)), v1, v2) || exists_path(old($$(g)), v1, x) && exists_path(old($$(g)), y, v2)))
        if (*) {
          if (v1_2 != v2_2) {
            if (*) {
              // Exhale precondition of function application
              ExhaleWellDef0Heap := PostHeap;
              ExhaleWellDef0Mask := PostMask;
              havoc QPMask;
              
              // -- check that the permission amount is positive
                assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (list-swap.vpr@276.29--276.34) [79641]"}
                  (forall n_6: Ref ::
                  { PostHeap[n_6, next] } { QPMask[n_6, next] } { PostHeap[n_6, next] }
                  g_1[n_6] && dummyFunction(PostHeap[n_6, next]) ==> 1 / 2 >= NoPerm
                );
              
              // -- check if receiver n is injective
                assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.next might not be injective. (list-swap.vpr@276.29--276.34) [79642]"}
                  (forall n_6: Ref, n_6_1: Ref ::
                  { neverTriggered18(n_6), neverTriggered18(n_6_1) }
                  (((n_6 != n_6_1 && g_1[n_6]) && g_1[n_6_1]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_6 != n_6_1
                );
              
              // -- check if sufficient permission is held
                assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.next (list-swap.vpr@276.29--276.34) [79643]"}
                  (forall n_6: Ref ::
                  { PostHeap[n_6, next] } { QPMask[n_6, next] } { PostHeap[n_6, next] }
                  g_1[n_6] ==> 1 / 2 > NoPerm ==> PostMask[n_6, next] > NoPerm
                );
              
              // -- assumptions for inverse of receiver n
                assume (forall n_6: Ref ::
                  { PostHeap[n_6, next] } { QPMask[n_6, next] } { PostHeap[n_6, next] }
                  g_1[n_6] && NoPerm < 1 / 2 ==> qpRange18(n_6) && invRecv18(n_6) == n_6
                );
                assume (forall o_4: Ref ::
                  { invRecv18(o_4) }
                  g_1[invRecv18(o_4)] && (NoPerm < 1 / 2 && qpRange18(o_4)) ==> invRecv18(o_4) == o_4
                );
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
              havoc QPMask;
              
              // -- check that the permission amount is positive
                assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (list-swap.vpr@277.37--277.42) [79644]"}
                  (forall n_7: Ref ::
                  { oldHeap[n_7, next] } { QPMask[n_7, next] } { oldHeap[n_7, next] }
                  g_1[n_7] && dummyFunction(oldHeap[n_7, next]) ==> 1 / 2 >= NoPerm
                );
              
              // -- check if receiver n is injective
                assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.next might not be injective. (list-swap.vpr@277.37--277.42) [79645]"}
                  (forall n_7: Ref, n_7_1: Ref ::
                  { neverTriggered19(n_7), neverTriggered19(n_7_1) }
                  (((n_7 != n_7_1 && g_1[n_7]) && g_1[n_7_1]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_7 != n_7_1
                );
              
              // -- check if sufficient permission is held
                assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.next (list-swap.vpr@277.37--277.42) [79646]"}
                  (forall n_7: Ref ::
                  { oldHeap[n_7, next] } { QPMask[n_7, next] } { oldHeap[n_7, next] }
                  g_1[n_7] ==> 1 / 2 > NoPerm ==> oldMask[n_7, next] > NoPerm
                );
              
              // -- assumptions for inverse of receiver n
                assume (forall n_7: Ref ::
                  { oldHeap[n_7, next] } { QPMask[n_7, next] } { oldHeap[n_7, next] }
                  g_1[n_7] && NoPerm < 1 / 2 ==> qpRange19(n_7) && invRecv19(n_7) == n_7
                );
                assume (forall o_4: Ref ::
                  { invRecv19(o_4) }
                  g_1[invRecv19(o_4)] && (NoPerm < 1 / 2 && qpRange19(o_4)) ==> invRecv19(o_4) == o_4
                );
              // Finish exhale
              // Stop execution
              assume false;
            }
            if (!(exists_path($$(oldHeap, g_1), v1_2, v2_2): bool)) {
              if (*) {
                // Exhale precondition of function application
                ExhaleWellDef0Heap := oldHeap;
                ExhaleWellDef0Mask := oldMask;
                havoc QPMask;
                
                // -- check that the permission amount is positive
                  assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (list-swap.vpr@277.71--277.76) [79647]"}
                    (forall n_8: Ref ::
                    { oldHeap[n_8, next] } { QPMask[n_8, next] } { oldHeap[n_8, next] }
                    g_1[n_8] && dummyFunction(oldHeap[n_8, next]) ==> 1 / 2 >= NoPerm
                  );
                
                // -- check if receiver n is injective
                  assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.next might not be injective. (list-swap.vpr@277.71--277.76) [79648]"}
                    (forall n_8: Ref, n_8_1: Ref ::
                    { neverTriggered20(n_8), neverTriggered20(n_8_1) }
                    (((n_8 != n_8_1 && g_1[n_8]) && g_1[n_8_1]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_8 != n_8_1
                  );
                
                // -- check if sufficient permission is held
                  assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.next (list-swap.vpr@277.71--277.76) [79649]"}
                    (forall n_8: Ref ::
                    { oldHeap[n_8, next] } { QPMask[n_8, next] } { oldHeap[n_8, next] }
                    g_1[n_8] ==> 1 / 2 > NoPerm ==> oldMask[n_8, next] > NoPerm
                  );
                
                // -- assumptions for inverse of receiver n
                  assume (forall n_8: Ref ::
                    { oldHeap[n_8, next] } { QPMask[n_8, next] } { oldHeap[n_8, next] }
                    g_1[n_8] && NoPerm < 1 / 2 ==> qpRange20(n_8) && invRecv20(n_8) == n_8
                  );
                  assume (forall o_4: Ref ::
                    { invRecv20(o_4) }
                    g_1[invRecv20(o_4)] && (NoPerm < 1 / 2 && qpRange20(o_4)) ==> invRecv20(o_4) == o_4
                  );
                // Finish exhale
                // Stop execution
                assume false;
              }
              if ((exists_path($$(oldHeap, g_1), v1_2, x): bool)) {
                if (*) {
                  // Exhale precondition of function application
                  ExhaleWellDef0Heap := oldHeap;
                  ExhaleWellDef0Mask := oldMask;
                  havoc QPMask;
                  
                  // -- check that the permission amount is positive
                    assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (list-swap.vpr@277.103--277.108) [79650]"}
                      (forall n_9: Ref ::
                      { oldHeap[n_9, next] } { QPMask[n_9, next] } { oldHeap[n_9, next] }
                      g_1[n_9] && dummyFunction(oldHeap[n_9, next]) ==> 1 / 2 >= NoPerm
                    );
                  
                  // -- check if receiver n is injective
                    assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.next might not be injective. (list-swap.vpr@277.103--277.108) [79651]"}
                      (forall n_9: Ref, n_9_1: Ref ::
                      { neverTriggered21(n_9), neverTriggered21(n_9_1) }
                      (((n_9 != n_9_1 && g_1[n_9]) && g_1[n_9_1]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_9 != n_9_1
                    );
                  
                  // -- check if sufficient permission is held
                    assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.next (list-swap.vpr@277.103--277.108) [79652]"}
                      (forall n_9: Ref ::
                      { oldHeap[n_9, next] } { QPMask[n_9, next] } { oldHeap[n_9, next] }
                      g_1[n_9] ==> 1 / 2 > NoPerm ==> oldMask[n_9, next] > NoPerm
                    );
                  
                  // -- assumptions for inverse of receiver n
                    assume (forall n_9: Ref ::
                      { oldHeap[n_9, next] } { QPMask[n_9, next] } { oldHeap[n_9, next] }
                      g_1[n_9] && NoPerm < 1 / 2 ==> qpRange21(n_9) && invRecv21(n_9) == n_9
                    );
                    assume (forall o_4: Ref ::
                      { invRecv21(o_4) }
                      g_1[invRecv21(o_4)] && (NoPerm < 1 / 2 && qpRange21(o_4)) ==> invRecv21(o_4) == o_4
                    );
                  // Finish exhale
                  // Stop execution
                  assume false;
                }
              }
            }
          }
          assume false;
        }
      assume (forall v1_3: Ref, v2_3: Ref ::
        { (exists_path($$#frame(FrameFragment($$#condqp1(PostHeap, g_1)), g_1), v1_3, v2_3): bool) }
        v1_3 != v2_3 ==> (exists_path($$(PostHeap, g_1), v1_3, v2_3): bool) == ((exists_path($$(oldHeap, g_1), v1_3, v2_3): bool) || ((exists_path($$(oldHeap, g_1), v1_3, x): bool) && (exists_path($$(oldHeap, g_1), y, v2_3): bool)))
      );
    }
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: inhale false -- <no position>
    assume false;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Postcondition of link might not hold. Assertion !((null in g)) might not hold. (list-swap.vpr@267.13--267.33) [79653]"}
      !g_1[null];
    assert {:msg "  Postcondition of link might not hold. Assertion (x in g) might not hold. (list-swap.vpr@267.13--267.33) [79654]"}
      g_1[x];
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of link might not hold. There might be insufficient permission to access x.next (list-swap.vpr@267.13--267.33) [79655]"}
        perm <= Mask[x, next];
    }
    Mask := Mask[x, next:=Mask[x, next] - perm];
    havoc QPMask;
    
    // -- check that the permission amount is positive
      assert {:msg "  Postcondition of link might not hold. Fraction 1 / 2 might be negative. (list-swap.vpr@267.13--267.33) [79656]"}
        (forall n$1_2: Ref ::
        { Heap[n$1_2, next] } { QPMask[n$1_2, next] } { Heap[n$1_2, next] }
        (g_1[n$1_2] && n$1_2 != x) && dummyFunction(Heap[n$1_2, next]) ==> 1 / 2 >= NoPerm
      );
    
    // -- check if receiver n$1 is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource n$1.next might not be injective. (list-swap.vpr@267.13--267.33) [79657]"}
        (forall n$1_2: Ref, n$1_2_1: Ref ::
        { neverTriggered22(n$1_2), neverTriggered22(n$1_2_1) }
        (((n$1_2 != n$1_2_1 && (g_1[n$1_2] && n$1_2 != x)) && (g_1[n$1_2_1] && n$1_2_1 != x)) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n$1_2 != n$1_2_1
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Postcondition of link might not hold. There might be insufficient permission to access n$1.next (list-swap.vpr@267.13--267.33) [79658]"}
        (forall n$1_2: Ref ::
        { Heap[n$1_2, next] } { QPMask[n$1_2, next] } { Heap[n$1_2, next] }
        g_1[n$1_2] && n$1_2 != x ==> Mask[n$1_2, next] >= 1 / 2
      );
    
    // -- assumptions for inverse of receiver n$1
      assume (forall n$1_2: Ref ::
        { Heap[n$1_2, next] } { QPMask[n$1_2, next] } { Heap[n$1_2, next] }
        (g_1[n$1_2] && n$1_2 != x) && NoPerm < 1 / 2 ==> qpRange22(n$1_2) && invRecv22(n$1_2) == n$1_2
      );
      assume (forall o_4: Ref ::
        { invRecv22(o_4) }
        (g_1[invRecv22(o_4)] && invRecv22(o_4) != x) && (NoPerm < 1 / 2 && qpRange22(o_4)) ==> invRecv22(o_4) == o_4
      );
    
    // -- assume permission updates for field next
      assume (forall o_4: Ref ::
        { QPMask[o_4, next] }
        ((g_1[invRecv22(o_4)] && invRecv22(o_4) != x) && (NoPerm < 1 / 2 && qpRange22(o_4)) ==> invRecv22(o_4) == o_4 && QPMask[o_4, next] == Mask[o_4, next] - 1 / 2) && (!((g_1[invRecv22(o_4)] && invRecv22(o_4) != x) && (NoPerm < 1 / 2 && qpRange22(o_4))) ==> QPMask[o_4, next] == Mask[o_4, next])
      );
    
    // -- assume permission updates for independent locations
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { QPMask[o_4, f_5] }
        f_5 != next ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    if (*) {
      if (g_1[n$2_2] && Heap[n$2_2, next] != null) {
        assert {:msg "  Postcondition of link might not hold. Assertion (n$2.next in g) might not hold. (list-swap.vpr@267.13--267.33) [79659]"}
          g_1[Heap[n$2_2, next]];
      }
      assume false;
    }
    assume (forall n$2_3_1: Ref ::
      { g_1[Heap[n$2_3_1, next]] } { g_1[n$2_3_1], Heap[n$2_3_1, next] }
      g_1[n$2_3_1] && Heap[n$2_3_1, next] != null ==> g_1[Heap[n$2_3_1, next]]
    );
    assert {:msg "  Postcondition of link might not hold. Assertion x.next == y might not hold. (list-swap.vpr@268.13--268.24) [79660]"}
      Heap[x, next] == y;
    if (y == null) {
      assert {:msg "  Postcondition of link might not hold. Assertion $$(g) == old($$(g)) might not hold. (list-swap.vpr@269.13--269.46) [79661]"}
        Set#Equal($$(Heap, g_1), $$(oldHeap, g_1));
    }
    if (y != null) {
      if (*) {
        assert {:msg "  Postcondition of link might not hold. Assertion edge($$(g), v1, v2) == (edge(old($$(g)), v1, v2) || v1 == x && v2 == y) might not hold. (list-swap.vpr@270.13--272.78) [79662]"}
          (edge($$(Heap, g_1), v1_4, v2_4): bool) == ((edge($$(oldHeap, g_1), v1_4, v2_4): bool) || (v1_4 == x && v2_4 == y));
        assume false;
      }
      assume (forall v1_5_1: Ref, v2_5_1: Ref ::
        { (edge($$#frame(FrameFragment($$#condqp1(oldHeap, g_1)), g_1), v1_5_1, v2_5_1): bool) }
        (edge($$(Heap, g_1), v1_5_1, v2_5_1): bool) == ((edge($$(oldHeap, g_1), v1_5_1, v2_5_1): bool) || (v1_5_1 == x && v2_5_1 == y))
      );
    }
    if (y != null) {
      if (*) {
        if (v1_6 != v2_6) {
          assert {:msg "  Postcondition of link might not hold. Assertion exists_path($$(g), v1, v2) == (exists_path(old($$(g)), v1, v2) || exists_path(old($$(g)), v1, x) && exists_path(old($$(g)), y, v2)) might not hold. (list-swap.vpr@273.13--277.118) [79663]"}
            (exists_path($$(Heap, g_1), v1_6, v2_6): bool) == ((exists_path($$(oldHeap, g_1), v1_6, v2_6): bool) || ((exists_path($$(oldHeap, g_1), v1_6, x): bool) && (exists_path($$(oldHeap, g_1), y, v2_6): bool)));
        }
        assume false;
      }
      assume (forall v1_7_1: Ref, v2_7_1: Ref ::
        { (exists_path($$#frame(FrameFragment($$#condqp1(Heap, g_1)), g_1), v1_7_1, v2_7_1): bool) }
        v1_7_1 != v2_7_1 ==> (exists_path($$(Heap, g_1), v1_7_1, v2_7_1): bool) == ((exists_path($$(oldHeap, g_1), v1_7_1, v2_7_1): bool) || ((exists_path($$(oldHeap, g_1), v1_7_1, x): bool) && (exists_path($$(oldHeap, g_1), y, v2_7_1): bool)))
      );
    }
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method unlink
// ==================================================

procedure unlink(g_1: (Set Ref), x: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var QPMask: MaskType;
  var n$0_2: Ref;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var n$2_4: Ref;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleHeap: HeapType;
  var v1_5: Ref;
  var v2_5: Ref;
  var v1_7: Ref;
  var v2_7: Ref;
  var n$2_2: Ref;
  var v1_4: Ref;
  var v2_4: Ref;
  var v1_6: Ref;
  var v2_6: Ref;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[x, $allocated];
  
  // -- Checked inhaling of precondition
    assume g_1[x];
    assume state(Heap, Mask);
    assume !g_1[null];
    assume g_1[x];
    perm := FullPerm;
    assume x != null;
    Mask := Mask[x, next:=Mask[x, next] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall n: Ref :: { n.next } (n in g) && n != x ==> acc(n.next, 1 / 2))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource n.next might not be injective. (list-swap.vpr@281.14--281.34) [79664]"}
      (forall n_1: Ref, n_1_1: Ref ::
      
      (((n_1 != n_1_1 && (g_1[n_1] && n_1 != x)) && (g_1[n_1_1] && n_1_1 != x)) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_1 != n_1_1
    );
    
    // -- Define Inverse Function
      assume (forall n_1: Ref ::
        { Heap[n_1, next] } { QPMask[n_1, next] } { Heap[n_1, next] }
        (g_1[n_1] && n_1 != x) && NoPerm < 1 / 2 ==> qpRange23(n_1) && invRecv23(n_1) == n_1
      );
      assume (forall o_4: Ref ::
        { invRecv23(o_4) }
        ((g_1[invRecv23(o_4)] && invRecv23(o_4) != x) && NoPerm < 1 / 2) && qpRange23(o_4) ==> invRecv23(o_4) == o_4
      );
    // Check that permission expression is non-negative for all fields
    assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (list-swap.vpr@281.14--281.34) [79665]"}
      (forall n_1: Ref ::
      { Heap[n_1, next] } { QPMask[n_1, next] } { Heap[n_1, next] }
      g_1[n_1] && n_1 != x ==> 1 / 2 >= NoPerm
    );
    
    // -- Assume set of fields is nonNull
      assume (forall n_1: Ref ::
        { Heap[n_1, next] } { QPMask[n_1, next] } { Heap[n_1, next] }
        (g_1[n_1] && n_1 != x) && 1 / 2 > NoPerm ==> n_1 != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, next] }
        (((g_1[invRecv23(o_4)] && invRecv23(o_4) != x) && NoPerm < 1 / 2) && qpRange23(o_4) ==> (NoPerm < 1 / 2 ==> invRecv23(o_4) == o_4) && QPMask[o_4, next] == Mask[o_4, next] + 1 / 2) && (!(((g_1[invRecv23(o_4)] && invRecv23(o_4) != x) && NoPerm < 1 / 2) && qpRange23(o_4)) ==> QPMask[o_4, next] == Mask[o_4, next])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != next ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall n$0: Ref :: { (n$0.next in g) } { (n$0 in g), n$0.next } (n$0 in g) && n$0.next != null ==> (n$0.next in g))
      if (*) {
        if (g_1[n$0_2]) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access n$0.next (list-swap.vpr@281.14--281.34) [79666]"}
            HasDirectPerm(Mask, n$0_2, next);
        }
        if (g_1[n$0_2] && Heap[n$0_2, next] != null) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access n$0.next (list-swap.vpr@281.14--281.34) [79667]"}
            HasDirectPerm(Mask, n$0_2, next);
        }
        assume false;
      }
    assume (forall n$0_1: Ref ::
      { g_1[Heap[n$0_1, next]] } { g_1[n$0_1], Heap[n$0_1, next] }
      g_1[n$0_1] && Heap[n$0_1, next] != null ==> g_1[Heap[n$0_1, next]]
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
    assume !g_1[null];
    assume g_1[x];
    perm := FullPerm;
    assume x != null;
    PostMask := PostMask[x, next:=PostMask[x, next] + perm];
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall n$1: Ref :: { n$1.next } (n$1 in g) && n$1 != x ==> acc(n$1.next, 1 / 2))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource n$1.next might not be injective. (list-swap.vpr@282.13--282.33) [79668]"}
      (forall n$1_1: Ref, n$1_1_1: Ref ::
      
      (((n$1_1 != n$1_1_1 && (g_1[n$1_1] && n$1_1 != x)) && (g_1[n$1_1_1] && n$1_1_1 != x)) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n$1_1 != n$1_1_1
    );
    
    // -- Define Inverse Function
      assume (forall n$1_1: Ref ::
        { PostHeap[n$1_1, next] } { QPMask[n$1_1, next] } { PostHeap[n$1_1, next] }
        (g_1[n$1_1] && n$1_1 != x) && NoPerm < 1 / 2 ==> qpRange24(n$1_1) && invRecv24(n$1_1) == n$1_1
      );
      assume (forall o_4: Ref ::
        { invRecv24(o_4) }
        ((g_1[invRecv24(o_4)] && invRecv24(o_4) != x) && NoPerm < 1 / 2) && qpRange24(o_4) ==> invRecv24(o_4) == o_4
      );
    // Check that permission expression is non-negative for all fields
    assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (list-swap.vpr@282.13--282.33) [79669]"}
      (forall n$1_1: Ref ::
      { PostHeap[n$1_1, next] } { QPMask[n$1_1, next] } { PostHeap[n$1_1, next] }
      g_1[n$1_1] && n$1_1 != x ==> 1 / 2 >= NoPerm
    );
    
    // -- Assume set of fields is nonNull
      assume (forall n$1_1: Ref ::
        { PostHeap[n$1_1, next] } { QPMask[n$1_1, next] } { PostHeap[n$1_1, next] }
        (g_1[n$1_1] && n$1_1 != x) && 1 / 2 > NoPerm ==> n$1_1 != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, next] }
        (((g_1[invRecv24(o_4)] && invRecv24(o_4) != x) && NoPerm < 1 / 2) && qpRange24(o_4) ==> (NoPerm < 1 / 2 ==> invRecv24(o_4) == o_4) && QPMask[o_4, next] == PostMask[o_4, next] + 1 / 2) && (!(((g_1[invRecv24(o_4)] && invRecv24(o_4) != x) && NoPerm < 1 / 2) && qpRange24(o_4)) ==> QPMask[o_4, next] == PostMask[o_4, next])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { PostMask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != next ==> PostMask[o_4, f_5] == QPMask[o_4, f_5]
      );
    PostMask := QPMask;
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of (forall n$2: Ref :: { (n$2.next in g) } { (n$2 in g), n$2.next } (n$2 in g) && n$2.next != null ==> (n$2.next in g))
      if (*) {
        if (g_1[n$2_4]) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access n$2.next (list-swap.vpr@282.13--282.33) [79670]"}
            HasDirectPerm(PostMask, n$2_4, next);
        }
        if (g_1[n$2_4] && PostHeap[n$2_4, next] != null) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access n$2.next (list-swap.vpr@282.13--282.33) [79671]"}
            HasDirectPerm(PostMask, n$2_4, next);
        }
        assume false;
      }
    assume (forall n$2_1_1: Ref ::
      { g_1[PostHeap[n$2_1_1, next]] } { g_1[n$2_1_1], PostHeap[n$2_1_1, next] }
      g_1[n$2_1_1] && PostHeap[n$2_1_1, next] != null ==> g_1[PostHeap[n$2_1_1, next]]
    );
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of x.next == null
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access x.next (list-swap.vpr@283.13--283.27) [79672]"}
        HasDirectPerm(PostMask, x, next);
    assume PostHeap[x, next] == null;
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of old(x.next) == null
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access x.next (list-swap.vpr@284.13--284.56) [79673]"}
        HasDirectPerm(oldMask, x, next);
    if (oldHeap[x, next] == null) {
      assume state(PostHeap, PostMask);
      
      // -- Check definedness of $$(g) == old($$(g))
        if (*) {
          // Exhale precondition of function application
          ExhaleWellDef0Heap := PostHeap;
          ExhaleWellDef0Mask := PostMask;
          havoc QPMask;
          
          // -- check that the permission amount is positive
            assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (list-swap.vpr@284.37--284.42) [79674]"}
              (forall n_2: Ref ::
              { PostHeap[n_2, next] } { QPMask[n_2, next] } { PostHeap[n_2, next] }
              g_1[n_2] && dummyFunction(PostHeap[n_2, next]) ==> 1 / 2 >= NoPerm
            );
          
          // -- check if receiver n is injective
            assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.next might not be injective. (list-swap.vpr@284.37--284.42) [79675]"}
              (forall n_2: Ref, n_2_1: Ref ::
              { neverTriggered25(n_2), neverTriggered25(n_2_1) }
              (((n_2 != n_2_1 && g_1[n_2]) && g_1[n_2_1]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_2 != n_2_1
            );
          
          // -- check if sufficient permission is held
            assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.next (list-swap.vpr@284.37--284.42) [79676]"}
              (forall n_2: Ref ::
              { PostHeap[n_2, next] } { QPMask[n_2, next] } { PostHeap[n_2, next] }
              g_1[n_2] ==> 1 / 2 > NoPerm ==> PostMask[n_2, next] > NoPerm
            );
          
          // -- assumptions for inverse of receiver n
            assume (forall n_2: Ref ::
              { PostHeap[n_2, next] } { QPMask[n_2, next] } { PostHeap[n_2, next] }
              g_1[n_2] && NoPerm < 1 / 2 ==> qpRange25(n_2) && invRecv25(n_2) == n_2
            );
            assume (forall o_4: Ref ::
              { invRecv25(o_4) }
              g_1[invRecv25(o_4)] && (NoPerm < 1 / 2 && qpRange25(o_4)) ==> invRecv25(o_4) == o_4
            );
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
          havoc QPMask;
          
          // -- check that the permission amount is positive
            assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (list-swap.vpr@284.50--284.55) [79677]"}
              (forall n_3: Ref ::
              { oldHeap[n_3, next] } { QPMask[n_3, next] } { oldHeap[n_3, next] }
              g_1[n_3] && dummyFunction(oldHeap[n_3, next]) ==> 1 / 2 >= NoPerm
            );
          
          // -- check if receiver n is injective
            assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.next might not be injective. (list-swap.vpr@284.50--284.55) [79678]"}
              (forall n_3: Ref, n_3_1: Ref ::
              { neverTriggered26(n_3), neverTriggered26(n_3_1) }
              (((n_3 != n_3_1 && g_1[n_3]) && g_1[n_3_1]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_3 != n_3_1
            );
          
          // -- check if sufficient permission is held
            assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.next (list-swap.vpr@284.50--284.55) [79679]"}
              (forall n_3: Ref ::
              { oldHeap[n_3, next] } { QPMask[n_3, next] } { oldHeap[n_3, next] }
              g_1[n_3] ==> 1 / 2 > NoPerm ==> oldMask[n_3, next] > NoPerm
            );
          
          // -- assumptions for inverse of receiver n
            assume (forall n_3: Ref ::
              { oldHeap[n_3, next] } { QPMask[n_3, next] } { oldHeap[n_3, next] }
              g_1[n_3] && NoPerm < 1 / 2 ==> qpRange26(n_3) && invRecv26(n_3) == n_3
            );
            assume (forall o_4: Ref ::
              { invRecv26(o_4) }
              g_1[invRecv26(o_4)] && (NoPerm < 1 / 2 && qpRange26(o_4)) ==> invRecv26(o_4) == o_4
            );
          // Finish exhale
          // Stop execution
          assume false;
        }
      assume Set#Equal($$(PostHeap, g_1), $$(oldHeap, g_1));
    }
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of old(x.next) != null
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access x.next (list-swap.vpr@285.13--287.89) [79680]"}
        HasDirectPerm(oldMask, x, next);
    if (oldHeap[x, next] != null) {
      assume state(PostHeap, PostMask);
      
      // -- Check definedness of (forall v1: Ref, v2: Ref :: { edge($$(g), v1, v2) } edge($$(g), v1, v2) == (edge(old($$(g)), v1, v2) && !(v1 == x && v2 == old(x.next))))
        if (*) {
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef0Heap := PostHeap;
            ExhaleWellDef0Mask := PostMask;
            havoc QPMask;
            
            // -- check that the permission amount is positive
              assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (list-swap.vpr@287.18--287.23) [79681]"}
                (forall n_4_1: Ref ::
                { PostHeap[n_4_1, next] } { QPMask[n_4_1, next] } { PostHeap[n_4_1, next] }
                g_1[n_4_1] && dummyFunction(PostHeap[n_4_1, next]) ==> 1 / 2 >= NoPerm
              );
            
            // -- check if receiver n is injective
              assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.next might not be injective. (list-swap.vpr@287.18--287.23) [79682]"}
                (forall n_4_1: Ref, n_4_2: Ref ::
                { neverTriggered27(n_4_1), neverTriggered27(n_4_2) }
                (((n_4_1 != n_4_2 && g_1[n_4_1]) && g_1[n_4_2]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_4_1 != n_4_2
              );
            
            // -- check if sufficient permission is held
              assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.next (list-swap.vpr@287.18--287.23) [79683]"}
                (forall n_4_1: Ref ::
                { PostHeap[n_4_1, next] } { QPMask[n_4_1, next] } { PostHeap[n_4_1, next] }
                g_1[n_4_1] ==> 1 / 2 > NoPerm ==> PostMask[n_4_1, next] > NoPerm
              );
            
            // -- assumptions for inverse of receiver n
              assume (forall n_4_1: Ref ::
                { PostHeap[n_4_1, next] } { QPMask[n_4_1, next] } { PostHeap[n_4_1, next] }
                g_1[n_4_1] && NoPerm < 1 / 2 ==> qpRange27(n_4_1) && invRecv27(n_4_1) == n_4_1
              );
              assume (forall o_4: Ref ::
                { invRecv27(o_4) }
                g_1[invRecv27(o_4)] && (NoPerm < 1 / 2 && qpRange27(o_4)) ==> invRecv27(o_4) == o_4
              );
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
            havoc QPMask;
            
            // -- check that the permission amount is positive
              assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (list-swap.vpr@287.45--287.50) [79684]"}
                (forall n_5: Ref ::
                { oldHeap[n_5, next] } { QPMask[n_5, next] } { oldHeap[n_5, next] }
                g_1[n_5] && dummyFunction(oldHeap[n_5, next]) ==> 1 / 2 >= NoPerm
              );
            
            // -- check if receiver n is injective
              assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.next might not be injective. (list-swap.vpr@287.45--287.50) [79685]"}
                (forall n_5: Ref, n_5_1: Ref ::
                { neverTriggered28(n_5), neverTriggered28(n_5_1) }
                (((n_5 != n_5_1 && g_1[n_5]) && g_1[n_5_1]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_5 != n_5_1
              );
            
            // -- check if sufficient permission is held
              assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.next (list-swap.vpr@287.45--287.50) [79686]"}
                (forall n_5: Ref ::
                { oldHeap[n_5, next] } { QPMask[n_5, next] } { oldHeap[n_5, next] }
                g_1[n_5] ==> 1 / 2 > NoPerm ==> oldMask[n_5, next] > NoPerm
              );
            
            // -- assumptions for inverse of receiver n
              assume (forall n_5: Ref ::
                { oldHeap[n_5, next] } { QPMask[n_5, next] } { oldHeap[n_5, next] }
                g_1[n_5] && NoPerm < 1 / 2 ==> qpRange28(n_5) && invRecv28(n_5) == n_5
              );
              assume (forall o_4: Ref ::
                { invRecv28(o_4) }
                g_1[invRecv28(o_4)] && (NoPerm < 1 / 2 && qpRange28(o_4)) ==> invRecv28(o_4) == o_4
              );
            // Finish exhale
            // Stop execution
            assume false;
          }
          if ((edge($$(oldHeap, g_1), v1_5, v2_5): bool)) {
            if (v1_5 == x) {
              assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access x.next (list-swap.vpr@285.13--287.89) [79687]"}
                HasDirectPerm(oldMask, x, next);
            }
          }
          assume false;
        }
      assume (forall v1_1: Ref, v2_1: Ref ::
        { (edge($$#frame(FrameFragment($$#condqp1(PostHeap, g_1)), g_1), v1_1, v2_1): bool) }
        (edge($$(PostHeap, g_1), v1_1, v2_1): bool) == ((edge($$(oldHeap, g_1), v1_1, v2_1): bool) && !(v1_1 == x && v2_1 == oldHeap[x, next]))
      );
    }
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of old(x.next) != null
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access x.next (list-swap.vpr@288.13--292.129) [79688]"}
        HasDirectPerm(oldMask, x, next);
    if (oldHeap[x, next] != null) {
      assume state(PostHeap, PostMask);
      
      // -- Check definedness of (forall v1: Ref, v2: Ref :: { exists_path($$(g), v1, v2) } v1 != v2 ==> exists_path($$(g), v1, v2) == (exists_path(old($$(g)), v1, v2) && !(exists_path(old($$(g)), v1, x) && exists_path(old($$(g)), old(x.next), v2))))
        if (*) {
          if (v1_7 != v2_7) {
            if (*) {
              // Exhale precondition of function application
              ExhaleWellDef0Heap := PostHeap;
              ExhaleWellDef0Mask := PostMask;
              havoc QPMask;
              
              // -- check that the permission amount is positive
                assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (list-swap.vpr@291.29--291.34) [79689]"}
                  (forall n_6: Ref ::
                  { PostHeap[n_6, next] } { QPMask[n_6, next] } { PostHeap[n_6, next] }
                  g_1[n_6] && dummyFunction(PostHeap[n_6, next]) ==> 1 / 2 >= NoPerm
                );
              
              // -- check if receiver n is injective
                assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.next might not be injective. (list-swap.vpr@291.29--291.34) [79690]"}
                  (forall n_6: Ref, n_6_1: Ref ::
                  { neverTriggered29(n_6), neverTriggered29(n_6_1) }
                  (((n_6 != n_6_1 && g_1[n_6]) && g_1[n_6_1]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_6 != n_6_1
                );
              
              // -- check if sufficient permission is held
                assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.next (list-swap.vpr@291.29--291.34) [79691]"}
                  (forall n_6: Ref ::
                  { PostHeap[n_6, next] } { QPMask[n_6, next] } { PostHeap[n_6, next] }
                  g_1[n_6] ==> 1 / 2 > NoPerm ==> PostMask[n_6, next] > NoPerm
                );
              
              // -- assumptions for inverse of receiver n
                assume (forall n_6: Ref ::
                  { PostHeap[n_6, next] } { QPMask[n_6, next] } { PostHeap[n_6, next] }
                  g_1[n_6] && NoPerm < 1 / 2 ==> qpRange29(n_6) && invRecv29(n_6) == n_6
                );
                assume (forall o_4: Ref ::
                  { invRecv29(o_4) }
                  g_1[invRecv29(o_4)] && (NoPerm < 1 / 2 && qpRange29(o_4)) ==> invRecv29(o_4) == o_4
                );
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
              havoc QPMask;
              
              // -- check that the permission amount is positive
                assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (list-swap.vpr@292.37--292.42) [79692]"}
                  (forall n_7: Ref ::
                  { oldHeap[n_7, next] } { QPMask[n_7, next] } { oldHeap[n_7, next] }
                  g_1[n_7] && dummyFunction(oldHeap[n_7, next]) ==> 1 / 2 >= NoPerm
                );
              
              // -- check if receiver n is injective
                assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.next might not be injective. (list-swap.vpr@292.37--292.42) [79693]"}
                  (forall n_7: Ref, n_7_1: Ref ::
                  { neverTriggered30(n_7), neverTriggered30(n_7_1) }
                  (((n_7 != n_7_1 && g_1[n_7]) && g_1[n_7_1]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_7 != n_7_1
                );
              
              // -- check if sufficient permission is held
                assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.next (list-swap.vpr@292.37--292.42) [79694]"}
                  (forall n_7: Ref ::
                  { oldHeap[n_7, next] } { QPMask[n_7, next] } { oldHeap[n_7, next] }
                  g_1[n_7] ==> 1 / 2 > NoPerm ==> oldMask[n_7, next] > NoPerm
                );
              
              // -- assumptions for inverse of receiver n
                assume (forall n_7: Ref ::
                  { oldHeap[n_7, next] } { QPMask[n_7, next] } { oldHeap[n_7, next] }
                  g_1[n_7] && NoPerm < 1 / 2 ==> qpRange30(n_7) && invRecv30(n_7) == n_7
                );
                assume (forall o_4: Ref ::
                  { invRecv30(o_4) }
                  g_1[invRecv30(o_4)] && (NoPerm < 1 / 2 && qpRange30(o_4)) ==> invRecv30(o_4) == o_4
                );
              // Finish exhale
              // Stop execution
              assume false;
            }
            if ((exists_path($$(oldHeap, g_1), v1_7, v2_7): bool)) {
              if (*) {
                // Exhale precondition of function application
                ExhaleWellDef0Heap := oldHeap;
                ExhaleWellDef0Mask := oldMask;
                havoc QPMask;
                
                // -- check that the permission amount is positive
                  assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (list-swap.vpr@292.72--292.77) [79695]"}
                    (forall n_8: Ref ::
                    { oldHeap[n_8, next] } { QPMask[n_8, next] } { oldHeap[n_8, next] }
                    g_1[n_8] && dummyFunction(oldHeap[n_8, next]) ==> 1 / 2 >= NoPerm
                  );
                
                // -- check if receiver n is injective
                  assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.next might not be injective. (list-swap.vpr@292.72--292.77) [79696]"}
                    (forall n_8: Ref, n_8_1: Ref ::
                    { neverTriggered31(n_8), neverTriggered31(n_8_1) }
                    (((n_8 != n_8_1 && g_1[n_8]) && g_1[n_8_1]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_8 != n_8_1
                  );
                
                // -- check if sufficient permission is held
                  assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.next (list-swap.vpr@292.72--292.77) [79697]"}
                    (forall n_8: Ref ::
                    { oldHeap[n_8, next] } { QPMask[n_8, next] } { oldHeap[n_8, next] }
                    g_1[n_8] ==> 1 / 2 > NoPerm ==> oldMask[n_8, next] > NoPerm
                  );
                
                // -- assumptions for inverse of receiver n
                  assume (forall n_8: Ref ::
                    { oldHeap[n_8, next] } { QPMask[n_8, next] } { oldHeap[n_8, next] }
                    g_1[n_8] && NoPerm < 1 / 2 ==> qpRange31(n_8) && invRecv31(n_8) == n_8
                  );
                  assume (forall o_4: Ref ::
                    { invRecv31(o_4) }
                    g_1[invRecv31(o_4)] && (NoPerm < 1 / 2 && qpRange31(o_4)) ==> invRecv31(o_4) == o_4
                  );
                // Finish exhale
                // Stop execution
                assume false;
              }
              if ((exists_path($$(oldHeap, g_1), v1_7, x): bool)) {
                if (*) {
                  // Exhale precondition of function application
                  ExhaleWellDef0Heap := oldHeap;
                  ExhaleWellDef0Mask := oldMask;
                  havoc QPMask;
                  
                  // -- check that the permission amount is positive
                    assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (list-swap.vpr@292.104--292.109) [79698]"}
                      (forall n_9: Ref ::
                      { oldHeap[n_9, next] } { QPMask[n_9, next] } { oldHeap[n_9, next] }
                      g_1[n_9] && dummyFunction(oldHeap[n_9, next]) ==> 1 / 2 >= NoPerm
                    );
                  
                  // -- check if receiver n is injective
                    assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.next might not be injective. (list-swap.vpr@292.104--292.109) [79699]"}
                      (forall n_9: Ref, n_9_1: Ref ::
                      { neverTriggered32(n_9), neverTriggered32(n_9_1) }
                      (((n_9 != n_9_1 && g_1[n_9]) && g_1[n_9_1]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_9 != n_9_1
                    );
                  
                  // -- check if sufficient permission is held
                    assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.next (list-swap.vpr@292.104--292.109) [79700]"}
                      (forall n_9: Ref ::
                      { oldHeap[n_9, next] } { QPMask[n_9, next] } { oldHeap[n_9, next] }
                      g_1[n_9] ==> 1 / 2 > NoPerm ==> oldMask[n_9, next] > NoPerm
                    );
                  
                  // -- assumptions for inverse of receiver n
                    assume (forall n_9: Ref ::
                      { oldHeap[n_9, next] } { QPMask[n_9, next] } { oldHeap[n_9, next] }
                      g_1[n_9] && NoPerm < 1 / 2 ==> qpRange32(n_9) && invRecv32(n_9) == n_9
                    );
                    assume (forall o_4: Ref ::
                      { invRecv32(o_4) }
                      g_1[invRecv32(o_4)] && (NoPerm < 1 / 2 && qpRange32(o_4)) ==> invRecv32(o_4) == o_4
                    );
                  // Finish exhale
                  // Stop execution
                  assume false;
                }
                assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access x.next (list-swap.vpr@288.13--292.129) [79701]"}
                  HasDirectPerm(oldMask, x, next);
              }
            }
          }
          assume false;
        }
      assume (forall v1_3: Ref, v2_3: Ref ::
        { (exists_path($$#frame(FrameFragment($$#condqp1(PostHeap, g_1)), g_1), v1_3, v2_3): bool) }
        v1_3 != v2_3 ==> (exists_path($$(PostHeap, g_1), v1_3, v2_3): bool) == ((exists_path($$(oldHeap, g_1), v1_3, v2_3): bool) && !((exists_path($$(oldHeap, g_1), v1_3, x): bool) && (exists_path($$(oldHeap, g_1), oldHeap[x, next], v2_3): bool)))
      );
    }
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: inhale false -- <no position>
    assume false;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Postcondition of unlink might not hold. Assertion !((null in g)) might not hold. (list-swap.vpr@282.13--282.33) [79702]"}
      !g_1[null];
    assert {:msg "  Postcondition of unlink might not hold. Assertion (x in g) might not hold. (list-swap.vpr@282.13--282.33) [79703]"}
      g_1[x];
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of unlink might not hold. There might be insufficient permission to access x.next (list-swap.vpr@282.13--282.33) [79704]"}
        perm <= Mask[x, next];
    }
    Mask := Mask[x, next:=Mask[x, next] - perm];
    havoc QPMask;
    
    // -- check that the permission amount is positive
      assert {:msg "  Postcondition of unlink might not hold. Fraction 1 / 2 might be negative. (list-swap.vpr@282.13--282.33) [79705]"}
        (forall n$1_2: Ref ::
        { Heap[n$1_2, next] } { QPMask[n$1_2, next] } { Heap[n$1_2, next] }
        (g_1[n$1_2] && n$1_2 != x) && dummyFunction(Heap[n$1_2, next]) ==> 1 / 2 >= NoPerm
      );
    
    // -- check if receiver n$1 is injective
      assert {:msg "  Contract might not be well-formed. Quantified resource n$1.next might not be injective. (list-swap.vpr@282.13--282.33) [79706]"}
        (forall n$1_2: Ref, n$1_2_1: Ref ::
        { neverTriggered33(n$1_2), neverTriggered33(n$1_2_1) }
        (((n$1_2 != n$1_2_1 && (g_1[n$1_2] && n$1_2 != x)) && (g_1[n$1_2_1] && n$1_2_1 != x)) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n$1_2 != n$1_2_1
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Postcondition of unlink might not hold. There might be insufficient permission to access n$1.next (list-swap.vpr@282.13--282.33) [79707]"}
        (forall n$1_2: Ref ::
        { Heap[n$1_2, next] } { QPMask[n$1_2, next] } { Heap[n$1_2, next] }
        g_1[n$1_2] && n$1_2 != x ==> Mask[n$1_2, next] >= 1 / 2
      );
    
    // -- assumptions for inverse of receiver n$1
      assume (forall n$1_2: Ref ::
        { Heap[n$1_2, next] } { QPMask[n$1_2, next] } { Heap[n$1_2, next] }
        (g_1[n$1_2] && n$1_2 != x) && NoPerm < 1 / 2 ==> qpRange33(n$1_2) && invRecv33(n$1_2) == n$1_2
      );
      assume (forall o_4: Ref ::
        { invRecv33(o_4) }
        (g_1[invRecv33(o_4)] && invRecv33(o_4) != x) && (NoPerm < 1 / 2 && qpRange33(o_4)) ==> invRecv33(o_4) == o_4
      );
    
    // -- assume permission updates for field next
      assume (forall o_4: Ref ::
        { QPMask[o_4, next] }
        ((g_1[invRecv33(o_4)] && invRecv33(o_4) != x) && (NoPerm < 1 / 2 && qpRange33(o_4)) ==> invRecv33(o_4) == o_4 && QPMask[o_4, next] == Mask[o_4, next] - 1 / 2) && (!((g_1[invRecv33(o_4)] && invRecv33(o_4) != x) && (NoPerm < 1 / 2 && qpRange33(o_4))) ==> QPMask[o_4, next] == Mask[o_4, next])
      );
    
    // -- assume permission updates for independent locations
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { QPMask[o_4, f_5] }
        f_5 != next ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    if (*) {
      if (g_1[n$2_2] && Heap[n$2_2, next] != null) {
        assert {:msg "  Postcondition of unlink might not hold. Assertion (n$2.next in g) might not hold. (list-swap.vpr@282.13--282.33) [79708]"}
          g_1[Heap[n$2_2, next]];
      }
      assume false;
    }
    assume (forall n$2_3_1: Ref ::
      { g_1[Heap[n$2_3_1, next]] } { g_1[n$2_3_1], Heap[n$2_3_1, next] }
      g_1[n$2_3_1] && Heap[n$2_3_1, next] != null ==> g_1[Heap[n$2_3_1, next]]
    );
    assert {:msg "  Postcondition of unlink might not hold. Assertion x.next == null might not hold. (list-swap.vpr@283.13--283.27) [79709]"}
      Heap[x, next] == null;
    if (oldHeap[x, next] == null) {
      assert {:msg "  Postcondition of unlink might not hold. Assertion $$(g) == old($$(g)) might not hold. (list-swap.vpr@284.13--284.56) [79710]"}
        Set#Equal($$(Heap, g_1), $$(oldHeap, g_1));
    }
    if (oldHeap[x, next] != null) {
      if (*) {
        assert {:msg "  Postcondition of unlink might not hold. Assertion edge($$(g), v1, v2) == (edge(old($$(g)), v1, v2) && !(v1 == x && v2 == old(x.next))) might not hold. (list-swap.vpr@285.13--287.89) [79711]"}
          (edge($$(Heap, g_1), v1_4, v2_4): bool) == ((edge($$(oldHeap, g_1), v1_4, v2_4): bool) && !(v1_4 == x && v2_4 == oldHeap[x, next]));
        assume false;
      }
      assume (forall v1_5_1: Ref, v2_5_1: Ref ::
        { (edge($$#frame(FrameFragment($$#condqp1(Heap, g_1)), g_1), v1_5_1, v2_5_1): bool) }
        (edge($$(Heap, g_1), v1_5_1, v2_5_1): bool) == ((edge($$(oldHeap, g_1), v1_5_1, v2_5_1): bool) && !(v1_5_1 == x && v2_5_1 == oldHeap[x, next]))
      );
    }
    if (oldHeap[x, next] != null) {
      if (*) {
        if (v1_6 != v2_6) {
          assert {:msg "  Postcondition of unlink might not hold. Assertion exists_path($$(g), v1, v2) == (exists_path(old($$(g)), v1, v2) && !(exists_path(old($$(g)), v1, x) && exists_path(old($$(g)), old(x.next), v2))) might not hold. (list-swap.vpr@288.13--292.129) [79712]"}
            (exists_path($$(Heap, g_1), v1_6, v2_6): bool) == ((exists_path($$(oldHeap, g_1), v1_6, v2_6): bool) && !((exists_path($$(oldHeap, g_1), v1_6, x): bool) && (exists_path($$(oldHeap, g_1), oldHeap[x, next], v2_6): bool)));
        }
        assume false;
      }
      assume (forall v1_7_1: Ref, v2_7_1: Ref ::
        { (exists_path($$#frame(FrameFragment($$#condqp1(Heap, g_1)), g_1), v1_7_1, v2_7_1): bool) }
        v1_7_1 != v2_7_1 ==> (exists_path($$(Heap, g_1), v1_7_1, v2_7_1): bool) == ((exists_path($$(oldHeap, g_1), v1_7_1, v2_7_1): bool) && !((exists_path($$(oldHeap, g_1), v1_7_1, x): bool) && (exists_path($$(oldHeap, g_1), oldHeap[x, next], v2_7_1): bool)))
      );
    }
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method swap
// ==================================================

procedure swap(g_1: (Set Ref), x: Ref, i: int, j_9: int) returns ()
  modifies Heap, Mask;
{
  var QPMask: MaskType;
  var n$0_3: Ref;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleHeap: HeapType;
  var n$1: Ref;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var prev_node: Ref;
  var node: Ref;
  var prev_i: Ref;
  var node_i: Ref;
  var count_1: int;
  var n$3: Ref;
  var n$4: Ref;
  var n$3_1: Ref;
  var n$4_1: Ref;
  var loopHeap: HeapType;
  var loopMask: MaskType;
  var node_j: Ref;
  var prev_j: Ref;
  var vexit: Ref;
  var PreCallHeap: HeapType;
  var PreCallMask: MaskType;
  var perm: Perm;
  var n$0_2_1: Ref;
  var n$0_4: Ref;
  var n$0_6: Ref;
  var arg_y: Ref;
  var n$0_8: Ref;
  var n$0_10: Ref;
  var n$0_12: Ref;
  var n$0_14: Ref;
  var n$0_16: Ref;
  var n$0_18: Ref;
  var n$0_20: Ref;
  var ExhaleWellDef1Heap: HeapType;
  var ExhaleWellDef1Mask: MaskType;
  var n$3_5: Ref;
  var n$4_5: Ref;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[x, $allocated];
  
  // -- Checked inhaling of precondition
    assume 0 <= i;
    assume i < j_9;
    assume state(Heap, Mask);
    assume g_1[x];
    assume state(Heap, Mask);
    assume !g_1[null];
    
    // -- Check definedness of (forall n: Ref :: { n.next } (n in g) ==> acc(n.next, write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    assert {:msg "  Contract might not be well-formed. Quantified resource n.next might not be injective. (list-swap.vpr@301.14--301.22) [79713]"}
      (forall n_1: Ref, n_1_1: Ref ::
      
      (((n_1 != n_1_1 && g_1[n_1]) && g_1[n_1_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n_1 != n_1_1
    );
    
    // -- Define Inverse Function
      assume (forall n_1: Ref ::
        { Heap[n_1, next] } { QPMask[n_1, next] } { Heap[n_1, next] }
        g_1[n_1] && NoPerm < FullPerm ==> qpRange34(n_1) && invRecv34(n_1) == n_1
      );
      assume (forall o_4: Ref ::
        { invRecv34(o_4) }
        (g_1[invRecv34(o_4)] && NoPerm < FullPerm) && qpRange34(o_4) ==> invRecv34(o_4) == o_4
      );
    
    // -- Assume set of fields is nonNull
      assume (forall n_1: Ref ::
        { Heap[n_1, next] } { QPMask[n_1, next] } { Heap[n_1, next] }
        g_1[n_1] ==> n_1 != null
      );
    
    // -- Define permissions
      assume (forall o_4: Ref ::
        { QPMask[o_4, next] }
        ((g_1[invRecv34(o_4)] && NoPerm < FullPerm) && qpRange34(o_4) ==> (NoPerm < FullPerm ==> invRecv34(o_4) == o_4) && QPMask[o_4, next] == Mask[o_4, next] + FullPerm) && (!((g_1[invRecv34(o_4)] && NoPerm < FullPerm) && qpRange34(o_4)) ==> QPMask[o_4, next] == Mask[o_4, next])
      );
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        f_5 != next ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall n$0: Ref :: { (n$0.next in g) } { (n$0 in g), n$0.next } (n$0 in g) && n$0.next != null ==> (n$0.next in g))
      if (*) {
        if (g_1[n$0_3]) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access n$0.next (list-swap.vpr@301.14--301.22) [79714]"}
            HasDirectPerm(Mask, n$0_3, next);
        }
        if (g_1[n$0_3] && Heap[n$0_3, next] != null) {
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access n$0.next (list-swap.vpr@301.14--301.22) [79715]"}
            HasDirectPerm(Mask, n$0_3, next);
        }
        assume false;
      }
    assume (forall n$0_1: Ref ::
      { g_1[Heap[n$0_1, next]] } { g_1[n$0_1], Heap[n$0_1, next] }
      g_1[n$0_1] && Heap[n$0_1, next] != null ==> g_1[Heap[n$0_1, next]]
    );
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of acyclic_graph($$(g))
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        havoc QPMask;
        
        // -- check that the permission amount is positive
          assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (list-swap.vpr@241.19--241.24) [79716]"}
            (forall n_2: Ref ::
            { Heap[n_2, next] } { QPMask[n_2, next] } { Heap[n_2, next] }
            g_1[n_2] && dummyFunction(Heap[n_2, next]) ==> 1 / 2 >= NoPerm
          );
        
        // -- check if receiver n is injective
          assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.next might not be injective. (list-swap.vpr@241.19--241.24) [79717]"}
            (forall n_2: Ref, n_2_1: Ref ::
            { neverTriggered35(n_2), neverTriggered35(n_2_1) }
            (((n_2 != n_2_1 && g_1[n_2]) && g_1[n_2_1]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_2 != n_2_1
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.next (list-swap.vpr@241.19--241.24) [79718]"}
            (forall n_2: Ref ::
            { Heap[n_2, next] } { QPMask[n_2, next] } { Heap[n_2, next] }
            g_1[n_2] ==> 1 / 2 > NoPerm ==> Mask[n_2, next] > NoPerm
          );
        
        // -- assumptions for inverse of receiver n
          assume (forall n_2: Ref ::
            { Heap[n_2, next] } { QPMask[n_2, next] } { Heap[n_2, next] }
            g_1[n_2] && NoPerm < 1 / 2 ==> qpRange35(n_2) && invRecv35(n_2) == n_2
          );
          assume (forall o_4: Ref ::
            { invRecv35(o_4) }
            g_1[invRecv35(o_4)] && (NoPerm < 1 / 2 && qpRange35(o_4)) ==> invRecv35(o_4) == o_4
          );
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assume (acyclic_graph($$(Heap, g_1)): bool);
    assume state(Heap, Mask);
    
    // -- Check definedness of func_graph($$(g))
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        havoc QPMask;
        
        // -- check that the permission amount is positive
          assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (list-swap.vpr@242.16--242.21) [79719]"}
            (forall n_3: Ref ::
            { Heap[n_3, next] } { QPMask[n_3, next] } { Heap[n_3, next] }
            g_1[n_3] && dummyFunction(Heap[n_3, next]) ==> 1 / 2 >= NoPerm
          );
        
        // -- check if receiver n is injective
          assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.next might not be injective. (list-swap.vpr@242.16--242.21) [79720]"}
            (forall n_3: Ref, n_3_1: Ref ::
            { neverTriggered36(n_3), neverTriggered36(n_3_1) }
            (((n_3 != n_3_1 && g_1[n_3]) && g_1[n_3_1]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_3 != n_3_1
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.next (list-swap.vpr@242.16--242.21) [79721]"}
            (forall n_3: Ref ::
            { Heap[n_3, next] } { QPMask[n_3, next] } { Heap[n_3, next] }
            g_1[n_3] ==> 1 / 2 > NoPerm ==> Mask[n_3, next] > NoPerm
          );
        
        // -- assumptions for inverse of receiver n
          assume (forall n_3: Ref ::
            { Heap[n_3, next] } { QPMask[n_3, next] } { Heap[n_3, next] }
            g_1[n_3] && NoPerm < 1 / 2 ==> qpRange36(n_3) && invRecv36(n_3) == n_3
          );
          assume (forall o_4: Ref ::
            { invRecv36(o_4) }
            g_1[invRecv36(o_4)] && (NoPerm < 1 / 2 && qpRange36(o_4)) ==> invRecv36(o_4) == o_4
          );
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assume (func_graph($$(Heap, g_1)): bool);
    assume state(Heap, Mask);
    
    // -- Check definedness of unshared_graph($$(g))
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        havoc QPMask;
        
        // -- check that the permission amount is positive
          assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (list-swap.vpr@243.20--243.25) [79722]"}
            (forall n_4_1: Ref ::
            { Heap[n_4_1, next] } { QPMask[n_4_1, next] } { Heap[n_4_1, next] }
            g_1[n_4_1] && dummyFunction(Heap[n_4_1, next]) ==> 1 / 2 >= NoPerm
          );
        
        // -- check if receiver n is injective
          assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.next might not be injective. (list-swap.vpr@243.20--243.25) [79723]"}
            (forall n_4_1: Ref, n_4_2: Ref ::
            { neverTriggered37(n_4_1), neverTriggered37(n_4_2) }
            (((n_4_1 != n_4_2 && g_1[n_4_1]) && g_1[n_4_2]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_4_1 != n_4_2
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.next (list-swap.vpr@243.20--243.25) [79724]"}
            (forall n_4_1: Ref ::
            { Heap[n_4_1, next] } { QPMask[n_4_1, next] } { Heap[n_4_1, next] }
            g_1[n_4_1] ==> 1 / 2 > NoPerm ==> Mask[n_4_1, next] > NoPerm
          );
        
        // -- assumptions for inverse of receiver n
          assume (forall n_4_1: Ref ::
            { Heap[n_4_1, next] } { QPMask[n_4_1, next] } { Heap[n_4_1, next] }
            g_1[n_4_1] && NoPerm < 1 / 2 ==> qpRange37(n_4_1) && invRecv37(n_4_1) == n_4_1
          );
          assume (forall o_4: Ref ::
            { invRecv37(o_4) }
            g_1[invRecv37(o_4)] && (NoPerm < 1 / 2 && qpRange37(o_4)) ==> invRecv37(o_4) == o_4
          );
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assume (unshared_graph($$(Heap, g_1)): bool);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of (forall n$1: Ref :: { exists_path($$(g), x, n$1) } (n$1 in g) ==> exists_path($$(g), x, n$1))
      if (*) {
        if (g_1[n$1]) {
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef0Heap := Heap;
            ExhaleWellDef0Mask := Mask;
            havoc QPMask;
            
            // -- check that the permission amount is positive
              assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (list-swap.vpr@232.74--232.79) [79725]"}
                (forall n_5: Ref ::
                { Heap[n_5, next] } { QPMask[n_5, next] } { Heap[n_5, next] }
                g_1[n_5] && dummyFunction(Heap[n_5, next]) ==> 1 / 2 >= NoPerm
              );
            
            // -- check if receiver n is injective
              assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.next might not be injective. (list-swap.vpr@232.74--232.79) [79726]"}
                (forall n_5: Ref, n_5_1: Ref ::
                { neverTriggered38(n_5), neverTriggered38(n_5_1) }
                (((n_5 != n_5_1 && g_1[n_5]) && g_1[n_5_1]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_5 != n_5_1
              );
            
            // -- check if sufficient permission is held
              assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.next (list-swap.vpr@232.74--232.79) [79727]"}
                (forall n_5: Ref ::
                { Heap[n_5, next] } { QPMask[n_5, next] } { Heap[n_5, next] }
                g_1[n_5] ==> 1 / 2 > NoPerm ==> Mask[n_5, next] > NoPerm
              );
            
            // -- assumptions for inverse of receiver n
              assume (forall n_5: Ref ::
                { Heap[n_5, next] } { QPMask[n_5, next] } { Heap[n_5, next] }
                g_1[n_5] && NoPerm < 1 / 2 ==> qpRange38(n_5) && invRecv38(n_5) == n_5
              );
              assume (forall o_4: Ref ::
                { invRecv38(o_4) }
                g_1[invRecv38(o_4)] && (NoPerm < 1 / 2 && qpRange38(o_4)) ==> invRecv38(o_4) == o_4
              );
            // Finish exhale
            havoc ExhaleHeap;
            assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
            Heap := ExhaleHeap;
            // Stop execution
            assume false;
          }
        }
        assume false;
      }
    assume (forall n$1_1: Ref ::
      { (exists_path($$#frame(FrameFragment($$#condqp1(Heap, g_1)), g_1), x, n$1_1): bool) }
      g_1[n$1_1] ==> (exists_path($$(Heap, g_1), x, n$1_1): bool)
    );
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Assumptions about local variables
    assume Heap[prev_node, $allocated];
    assume Heap[node, $allocated];
    assume Heap[prev_i, $allocated];
    assume Heap[node_i, $allocated];
  
  // -- Translating statement: count := 0 -- list-swap.vpr@307.5--307.23
    count_1 := 0;
    assume state(Heap, Mask);
  
  // -- Translating statement: prev_node := x -- list-swap.vpr@309.5--309.27
    prev_node := x;
    assume state(Heap, Mask);
  
  // -- Translating statement: node := x.next -- list-swap.vpr@310.5--310.27
    
    // -- Check definedness of x.next
      assert {:msg "  Assignment might fail. There might be insufficient permission to access x.next (list-swap.vpr@310.5--310.27) [79728]"}
        HasDirectPerm(Mask, x, next);
    node := Heap[x, next];
    assume state(Heap, Mask);
  
  // -- Translating statement: prev_i := null -- list-swap.vpr@312.5--312.27
    prev_i := null;
    assume state(Heap, Mask);
  
  // -- Translating statement: node_i := null -- list-swap.vpr@313.5--313.27
    node_i := null;
    assume state(Heap, Mask);
  
  // -- Translating statement: while (node != null && count <= j) -- list-swap.vpr@315.5--393.6
    
    // -- Before loop head
      
      // -- Exhale loop invariant before loop
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        assert {:msg "  Loop invariant 0 <= i && i < j might not hold on entry. Assertion 0 <= i might not hold. (list-swap.vpr@317.19--317.34) [79729]"}
          0 <= i;
        assert {:msg "  Loop invariant 0 <= i && i < j might not hold on entry. Assertion i < j might not hold. (list-swap.vpr@317.19--317.34) [79730]"}
          i < j_9;
        assert {:msg "  Loop invariant 0 <= count might not hold on entry. Assertion 0 <= count might not hold. (list-swap.vpr@320.19--320.29) [79731]"}
          0 <= count_1;
        assert {:msg "  Loop invariant (x in g) might not hold on entry. Assertion (x in g) might not hold. (list-swap.vpr@323.19--323.25) [79732]"}
          g_1[x];
        assert {:msg "  Loop invariant !((null in g)) && ((forall n$2: Ref :: { n$2.next } (n$2 in g) ==> acc(n$2.next, write)) && (forall n$3: Ref :: { (n$3.next in g) } { (n$3 in g), n$3.next } (n$3 in g) && n$3.next != null ==> (n$3.next in g))) might not hold on entry. Assertion !((null in g)) might not hold. (list-swap.vpr@324.19--324.27) [79733]"}
          !g_1[null];
        havoc QPMask;
        
        // -- check that the permission amount is positive
          
        
        // -- check if receiver n$2 is injective
          assert {:msg "  Loop invariant !((null in g)) && ((forall n$2: Ref :: { n$2.next } (n$2 in g) ==> acc(n$2.next, write)) && (forall n$3: Ref :: { (n$3.next in g) } { (n$3 in g), n$3.next } (n$3 in g) && n$3.next != null ==> (n$3.next in g))) might not hold on entry. Quantified resource n$2.next might not be injective. (list-swap.vpr@324.19--324.27) [79734]"}
            (forall n$2: Ref, n$2_5: Ref ::
            { neverTriggered39(n$2), neverTriggered39(n$2_5) }
            (((n$2 != n$2_5 && g_1[n$2]) && g_1[n$2_5]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n$2 != n$2_5
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Loop invariant !((null in g)) && ((forall n$2: Ref :: { n$2.next } (n$2 in g) ==> acc(n$2.next, write)) && (forall n$3: Ref :: { (n$3.next in g) } { (n$3 in g), n$3.next } (n$3 in g) && n$3.next != null ==> (n$3.next in g))) might not hold on entry. There might be insufficient permission to access n$2.next (list-swap.vpr@324.19--324.27) [79735]"}
            (forall n$2: Ref ::
            { Heap[n$2, next] } { QPMask[n$2, next] } { Heap[n$2, next] }
            g_1[n$2] ==> Mask[n$2, next] >= FullPerm
          );
        
        // -- assumptions for inverse of receiver n$2
          assume (forall n$2: Ref ::
            { Heap[n$2, next] } { QPMask[n$2, next] } { Heap[n$2, next] }
            g_1[n$2] && NoPerm < FullPerm ==> qpRange39(n$2) && invRecv39(n$2) == n$2
          );
          assume (forall o_4: Ref ::
            { invRecv39(o_4) }
            g_1[invRecv39(o_4)] && (NoPerm < FullPerm && qpRange39(o_4)) ==> invRecv39(o_4) == o_4
          );
        
        // -- assume permission updates for field next
          assume (forall o_4: Ref ::
            { QPMask[o_4, next] }
            (g_1[invRecv39(o_4)] && (NoPerm < FullPerm && qpRange39(o_4)) ==> invRecv39(o_4) == o_4 && QPMask[o_4, next] == Mask[o_4, next] - FullPerm) && (!(g_1[invRecv39(o_4)] && (NoPerm < FullPerm && qpRange39(o_4))) ==> QPMask[o_4, next] == Mask[o_4, next])
          );
        
        // -- assume permission updates for independent locations
          assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
            { QPMask[o_4, f_5] }
            f_5 != next ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
          );
        Mask := QPMask;
        if (*) {
          if (g_1[n$3] && Heap[n$3, next] != null) {
            assert {:msg "  Loop invariant !((null in g)) && ((forall n$2: Ref :: { n$2.next } (n$2 in g) ==> acc(n$2.next, write)) && (forall n$3: Ref :: { (n$3.next in g) } { (n$3 in g), n$3.next } (n$3 in g) && n$3.next != null ==> (n$3.next in g))) might not hold on entry. Assertion (n$3.next in g) might not hold. (list-swap.vpr@324.19--324.27) [79736]"}
              g_1[Heap[n$3, next]];
          }
          assume false;
        }
        assume (forall n$3_1_1: Ref ::
          { g_1[Heap[n$3_1_1, next]] } { g_1[n$3_1_1], Heap[n$3_1_1, next] }
          g_1[n$3_1_1] && Heap[n$3_1_1, next] != null ==> g_1[Heap[n$3_1_1, next]]
        );
        if (node != null) {
          assert {:msg "  Loop invariant node != null ==> (node in g) might not hold on entry. Assertion (node in g) might not hold. (list-swap.vpr@327.19--327.45) [79737]"}
            g_1[node];
        }
        if (count_1 <= j_9) {
          assert {:msg "  Loop invariant count <= j ==> (prev_node in g) might not hold on entry. Assertion (prev_node in g) might not hold. (list-swap.vpr@328.19--328.48) [79738]"}
            g_1[prev_node];
        }
        if (i < count_1) {
          assert {:msg "  Loop invariant i < count ==> (node_i in g) && (prev_i in g) might not hold on entry. Assertion (node_i in g) might not hold. (list-swap.vpr@329.19--329.59) [79739]"}
            g_1[node_i];
          assert {:msg "  Loop invariant i < count ==> (node_i in g) && (prev_i in g) might not hold on entry. Assertion (prev_i in g) might not hold. (list-swap.vpr@329.19--329.59) [79740]"}
            g_1[prev_i];
        }
        if (count_1 <= j_9) {
          assert {:msg "  Loop invariant count <= j ==> prev_node.next == node might not hold on entry. Assertion prev_node.next == node might not hold. (list-swap.vpr@330.19--330.56) [79741]"}
            Heap[prev_node, next] == node;
        }
        assert {:msg "  Loop invariant acyclic_graph($$(g)) && (func_graph($$(g)) && unshared_graph($$(g))) might not hold on entry. Assertion acyclic_graph($$(g)) might not hold. (list-swap.vpr@337.19--337.42) [79742]"}
          (acyclic_graph($$(Heap, g_1)): bool);
        assert {:msg "  Loop invariant acyclic_graph($$(g)) && (func_graph($$(g)) && unshared_graph($$(g))) might not hold on entry. Assertion func_graph($$(g)) might not hold. (list-swap.vpr@337.19--337.42) [79743]"}
          (func_graph($$(Heap, g_1)): bool);
        assert {:msg "  Loop invariant acyclic_graph($$(g)) && (func_graph($$(g)) && unshared_graph($$(g))) might not hold on entry. Assertion unshared_graph($$(g)) might not hold. (list-swap.vpr@337.19--337.42) [79744]"}
          (unshared_graph($$(Heap, g_1)): bool);
        if (*) {
          if (g_1[n$4]) {
            assert {:msg "  Loop invariant (forall n$4: Ref :: { exists_path($$(g), x, n$4) } (n$4 in g) ==> exists_path($$(g), x, n$4)) might not hold on entry. Assertion exists_path($$(g), x, n$4) might not hold. (list-swap.vpr@338.19--338.38) [79745]"}
              (exists_path($$(Heap, g_1), x, n$4): bool);
          }
          assume false;
        }
        assume (forall n$4_1_1: Ref ::
          { (exists_path($$#frame(FrameFragment($$#condqp1(Heap, g_1)), g_1), x, n$4_1_1): bool) }
          g_1[n$4_1_1] ==> (exists_path($$(Heap, g_1), x, n$4_1_1): bool)
        );
        if (node_i != null) {
          assert {:msg "  Loop invariant node_i != null ==> exists_path($$(g), prev_i, node_i) might not hold on entry. Assertion exists_path($$(g), prev_i, node_i) might not hold. (list-swap.vpr@340.19--340.70) [79746]"}
            (exists_path($$(Heap, g_1), prev_i, node_i): bool);
        }
        if (node_i != null) {
          assert {:msg "  Loop invariant node_i != null ==> exists_path($$(g), node_i, prev_node) might not hold on entry. Assertion exists_path($$(g), node_i, prev_node) might not hold. (list-swap.vpr@341.19--341.73) [79747]"}
            (exists_path($$(Heap, g_1), node_i, prev_node): bool);
        }
        if (node != null) {
          assert {:msg "  Loop invariant node != null ==> exists_path($$(g), prev_node, node) might not hold on entry. Assertion exists_path($$(g), prev_node, node) might not hold. (list-swap.vpr@342.19--342.69) [79748]"}
            (exists_path($$(Heap, g_1), prev_node, node): bool);
        }
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
    
    // -- Havoc loop written variables (except locals)
      havoc count_1, node, prev_node, prev_i, node_i;
      assume Heap[node, $allocated];
      assume Heap[prev_node, $allocated];
      assume Heap[prev_i, $allocated];
      assume Heap[node_i, $allocated];
    
    // -- Check definedness of invariant
      if (*) {
        assume 0 <= i;
        assume i < j_9;
        assume state(Heap, Mask);
        assume 0 <= count_1;
        assume state(Heap, Mask);
        assume g_1[x];
        assume state(Heap, Mask);
        assume !g_1[null];
        
        // -- Check definedness of (forall n$2: Ref :: { n$2.next } (n$2 in g) ==> acc(n$2.next, write))
          if (*) {
            assume false;
          }
        havoc QPMask;
        assert {:msg "  Contract might not be well-formed. Quantified resource n$2.next might not be injective. (list-swap.vpr@324.19--324.27) [79749]"}
          (forall n$2_2: Ref, n$2_2_1: Ref ::
          
          (((n$2_2 != n$2_2_1 && g_1[n$2_2]) && g_1[n$2_2_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n$2_2 != n$2_2_1
        );
        
        // -- Define Inverse Function
          assume (forall n$2_2: Ref ::
            { Heap[n$2_2, next] } { QPMask[n$2_2, next] } { Heap[n$2_2, next] }
            g_1[n$2_2] && NoPerm < FullPerm ==> qpRange40(n$2_2) && invRecv40(n$2_2) == n$2_2
          );
          assume (forall o_4: Ref ::
            { invRecv40(o_4) }
            (g_1[invRecv40(o_4)] && NoPerm < FullPerm) && qpRange40(o_4) ==> invRecv40(o_4) == o_4
          );
        
        // -- Assume set of fields is nonNull
          assume (forall n$2_2: Ref ::
            { Heap[n$2_2, next] } { QPMask[n$2_2, next] } { Heap[n$2_2, next] }
            g_1[n$2_2] ==> n$2_2 != null
          );
        
        // -- Define permissions
          assume (forall o_4: Ref ::
            { QPMask[o_4, next] }
            ((g_1[invRecv40(o_4)] && NoPerm < FullPerm) && qpRange40(o_4) ==> (NoPerm < FullPerm ==> invRecv40(o_4) == o_4) && QPMask[o_4, next] == Mask[o_4, next] + FullPerm) && (!((g_1[invRecv40(o_4)] && NoPerm < FullPerm) && qpRange40(o_4)) ==> QPMask[o_4, next] == Mask[o_4, next])
          );
          assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
            { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
            f_5 != next ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
          );
        Mask := QPMask;
        assume state(Heap, Mask);
        
        // -- Check definedness of (forall n$3: Ref :: { (n$3.next in g) } { (n$3 in g), n$3.next } (n$3 in g) && n$3.next != null ==> (n$3.next in g))
          if (*) {
            if (g_1[n$3_1]) {
              assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access n$3.next (list-swap.vpr@324.19--324.27) [79750]"}
                HasDirectPerm(Mask, n$3_1, next);
            }
            if (g_1[n$3_1] && Heap[n$3_1, next] != null) {
              assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access n$3.next (list-swap.vpr@324.19--324.27) [79751]"}
                HasDirectPerm(Mask, n$3_1, next);
            }
            assume false;
          }
        assume (forall n$3_3: Ref ::
          { g_1[Heap[n$3_3, next]] } { g_1[n$3_3], Heap[n$3_3, next] }
          g_1[n$3_3] && Heap[n$3_3, next] != null ==> g_1[Heap[n$3_3, next]]
        );
        assume state(Heap, Mask);
        if (node != null) {
          assume g_1[node];
        }
        assume state(Heap, Mask);
        if (count_1 <= j_9) {
          assume g_1[prev_node];
        }
        assume state(Heap, Mask);
        if (i < count_1) {
          assume g_1[node_i];
          assume g_1[prev_i];
        }
        assume state(Heap, Mask);
        if (count_1 <= j_9) {
          
          // -- Check definedness of prev_node.next == node
            assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access prev_node.next (list-swap.vpr@330.19--330.56) [79752]"}
              HasDirectPerm(Mask, prev_node, next);
          assume Heap[prev_node, next] == node;
        }
        assume state(Heap, Mask);
        assume state(Heap, Mask);
        
        // -- Check definedness of acyclic_graph($$(g))
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef0Heap := Heap;
            ExhaleWellDef0Mask := Mask;
            havoc QPMask;
            
            // -- check that the permission amount is positive
              assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (list-swap.vpr@241.19--241.24) [79753]"}
                (forall n_6: Ref ::
                { Heap[n_6, next] } { QPMask[n_6, next] } { Heap[n_6, next] }
                g_1[n_6] && dummyFunction(Heap[n_6, next]) ==> 1 / 2 >= NoPerm
              );
            
            // -- check if receiver n is injective
              assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.next might not be injective. (list-swap.vpr@241.19--241.24) [79754]"}
                (forall n_6: Ref, n_6_1: Ref ::
                { neverTriggered41(n_6), neverTriggered41(n_6_1) }
                (((n_6 != n_6_1 && g_1[n_6]) && g_1[n_6_1]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_6 != n_6_1
              );
            
            // -- check if sufficient permission is held
              assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.next (list-swap.vpr@241.19--241.24) [79755]"}
                (forall n_6: Ref ::
                { Heap[n_6, next] } { QPMask[n_6, next] } { Heap[n_6, next] }
                g_1[n_6] ==> 1 / 2 > NoPerm ==> Mask[n_6, next] > NoPerm
              );
            
            // -- assumptions for inverse of receiver n
              assume (forall n_6: Ref ::
                { Heap[n_6, next] } { QPMask[n_6, next] } { Heap[n_6, next] }
                g_1[n_6] && NoPerm < 1 / 2 ==> qpRange41(n_6) && invRecv41(n_6) == n_6
              );
              assume (forall o_4: Ref ::
                { invRecv41(o_4) }
                g_1[invRecv41(o_4)] && (NoPerm < 1 / 2 && qpRange41(o_4)) ==> invRecv41(o_4) == o_4
              );
            // Finish exhale
            havoc ExhaleHeap;
            assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
            Heap := ExhaleHeap;
            // Stop execution
            assume false;
          }
        assume (acyclic_graph($$(Heap, g_1)): bool);
        assume state(Heap, Mask);
        
        // -- Check definedness of func_graph($$(g))
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef0Heap := Heap;
            ExhaleWellDef0Mask := Mask;
            havoc QPMask;
            
            // -- check that the permission amount is positive
              assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (list-swap.vpr@242.16--242.21) [79756]"}
                (forall n_7: Ref ::
                { Heap[n_7, next] } { QPMask[n_7, next] } { Heap[n_7, next] }
                g_1[n_7] && dummyFunction(Heap[n_7, next]) ==> 1 / 2 >= NoPerm
              );
            
            // -- check if receiver n is injective
              assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.next might not be injective. (list-swap.vpr@242.16--242.21) [79757]"}
                (forall n_7: Ref, n_7_1: Ref ::
                { neverTriggered42(n_7), neverTriggered42(n_7_1) }
                (((n_7 != n_7_1 && g_1[n_7]) && g_1[n_7_1]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_7 != n_7_1
              );
            
            // -- check if sufficient permission is held
              assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.next (list-swap.vpr@242.16--242.21) [79758]"}
                (forall n_7: Ref ::
                { Heap[n_7, next] } { QPMask[n_7, next] } { Heap[n_7, next] }
                g_1[n_7] ==> 1 / 2 > NoPerm ==> Mask[n_7, next] > NoPerm
              );
            
            // -- assumptions for inverse of receiver n
              assume (forall n_7: Ref ::
                { Heap[n_7, next] } { QPMask[n_7, next] } { Heap[n_7, next] }
                g_1[n_7] && NoPerm < 1 / 2 ==> qpRange42(n_7) && invRecv42(n_7) == n_7
              );
              assume (forall o_4: Ref ::
                { invRecv42(o_4) }
                g_1[invRecv42(o_4)] && (NoPerm < 1 / 2 && qpRange42(o_4)) ==> invRecv42(o_4) == o_4
              );
            // Finish exhale
            havoc ExhaleHeap;
            assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
            Heap := ExhaleHeap;
            // Stop execution
            assume false;
          }
        assume (func_graph($$(Heap, g_1)): bool);
        assume state(Heap, Mask);
        
        // -- Check definedness of unshared_graph($$(g))
          if (*) {
            // Exhale precondition of function application
            ExhaleWellDef0Heap := Heap;
            ExhaleWellDef0Mask := Mask;
            havoc QPMask;
            
            // -- check that the permission amount is positive
              assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (list-swap.vpr@243.20--243.25) [79759]"}
                (forall n_8: Ref ::
                { Heap[n_8, next] } { QPMask[n_8, next] } { Heap[n_8, next] }
                g_1[n_8] && dummyFunction(Heap[n_8, next]) ==> 1 / 2 >= NoPerm
              );
            
            // -- check if receiver n is injective
              assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.next might not be injective. (list-swap.vpr@243.20--243.25) [79760]"}
                (forall n_8: Ref, n_8_1: Ref ::
                { neverTriggered43(n_8), neverTriggered43(n_8_1) }
                (((n_8 != n_8_1 && g_1[n_8]) && g_1[n_8_1]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_8 != n_8_1
              );
            
            // -- check if sufficient permission is held
              assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.next (list-swap.vpr@243.20--243.25) [79761]"}
                (forall n_8: Ref ::
                { Heap[n_8, next] } { QPMask[n_8, next] } { Heap[n_8, next] }
                g_1[n_8] ==> 1 / 2 > NoPerm ==> Mask[n_8, next] > NoPerm
              );
            
            // -- assumptions for inverse of receiver n
              assume (forall n_8: Ref ::
                { Heap[n_8, next] } { QPMask[n_8, next] } { Heap[n_8, next] }
                g_1[n_8] && NoPerm < 1 / 2 ==> qpRange43(n_8) && invRecv43(n_8) == n_8
              );
              assume (forall o_4: Ref ::
                { invRecv43(o_4) }
                g_1[invRecv43(o_4)] && (NoPerm < 1 / 2 && qpRange43(o_4)) ==> invRecv43(o_4) == o_4
              );
            // Finish exhale
            havoc ExhaleHeap;
            assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
            Heap := ExhaleHeap;
            // Stop execution
            assume false;
          }
        assume (unshared_graph($$(Heap, g_1)): bool);
        assume state(Heap, Mask);
        assume state(Heap, Mask);
        
        // -- Check definedness of (forall n$4: Ref :: { exists_path($$(g), x, n$4) } (n$4 in g) ==> exists_path($$(g), x, n$4))
          if (*) {
            if (g_1[n$4_1]) {
              if (*) {
                // Exhale precondition of function application
                ExhaleWellDef0Heap := Heap;
                ExhaleWellDef0Mask := Mask;
                havoc QPMask;
                
                // -- check that the permission amount is positive
                  assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (list-swap.vpr@232.74--232.79) [79762]"}
                    (forall n_9: Ref ::
                    { Heap[n_9, next] } { QPMask[n_9, next] } { Heap[n_9, next] }
                    g_1[n_9] && dummyFunction(Heap[n_9, next]) ==> 1 / 2 >= NoPerm
                  );
                
                // -- check if receiver n is injective
                  assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.next might not be injective. (list-swap.vpr@232.74--232.79) [79763]"}
                    (forall n_9: Ref, n_9_1: Ref ::
                    { neverTriggered44(n_9), neverTriggered44(n_9_1) }
                    (((n_9 != n_9_1 && g_1[n_9]) && g_1[n_9_1]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_9 != n_9_1
                  );
                
                // -- check if sufficient permission is held
                  assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.next (list-swap.vpr@232.74--232.79) [79764]"}
                    (forall n_9: Ref ::
                    { Heap[n_9, next] } { QPMask[n_9, next] } { Heap[n_9, next] }
                    g_1[n_9] ==> 1 / 2 > NoPerm ==> Mask[n_9, next] > NoPerm
                  );
                
                // -- assumptions for inverse of receiver n
                  assume (forall n_9: Ref ::
                    { Heap[n_9, next] } { QPMask[n_9, next] } { Heap[n_9, next] }
                    g_1[n_9] && NoPerm < 1 / 2 ==> qpRange44(n_9) && invRecv44(n_9) == n_9
                  );
                  assume (forall o_4: Ref ::
                    { invRecv44(o_4) }
                    g_1[invRecv44(o_4)] && (NoPerm < 1 / 2 && qpRange44(o_4)) ==> invRecv44(o_4) == o_4
                  );
                // Finish exhale
                havoc ExhaleHeap;
                assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
                Heap := ExhaleHeap;
                // Stop execution
                assume false;
              }
            }
            assume false;
          }
        assume (forall n$4_3: Ref ::
          { (exists_path($$#frame(FrameFragment($$#condqp1(Heap, g_1)), g_1), x, n$4_3): bool) }
          g_1[n$4_3] ==> (exists_path($$(Heap, g_1), x, n$4_3): bool)
        );
        assume state(Heap, Mask);
        if (node_i != null) {
          assume state(Heap, Mask);
          
          // -- Check definedness of exists_path($$(g), prev_i, node_i)
            if (*) {
              // Exhale precondition of function application
              ExhaleWellDef0Heap := Heap;
              ExhaleWellDef0Mask := Mask;
              havoc QPMask;
              
              // -- check that the permission amount is positive
                assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (list-swap.vpr@340.50--340.55) [79765]"}
                  (forall n_10_1: Ref ::
                  { Heap[n_10_1, next] } { QPMask[n_10_1, next] } { Heap[n_10_1, next] }
                  g_1[n_10_1] && dummyFunction(Heap[n_10_1, next]) ==> 1 / 2 >= NoPerm
                );
              
              // -- check if receiver n is injective
                assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.next might not be injective. (list-swap.vpr@340.50--340.55) [79766]"}
                  (forall n_10_1: Ref, n_10_2: Ref ::
                  { neverTriggered45(n_10_1), neverTriggered45(n_10_2) }
                  (((n_10_1 != n_10_2 && g_1[n_10_1]) && g_1[n_10_2]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_10_1 != n_10_2
                );
              
              // -- check if sufficient permission is held
                assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.next (list-swap.vpr@340.50--340.55) [79767]"}
                  (forall n_10_1: Ref ::
                  { Heap[n_10_1, next] } { QPMask[n_10_1, next] } { Heap[n_10_1, next] }
                  g_1[n_10_1] ==> 1 / 2 > NoPerm ==> Mask[n_10_1, next] > NoPerm
                );
              
              // -- assumptions for inverse of receiver n
                assume (forall n_10_1: Ref ::
                  { Heap[n_10_1, next] } { QPMask[n_10_1, next] } { Heap[n_10_1, next] }
                  g_1[n_10_1] && NoPerm < 1 / 2 ==> qpRange45(n_10_1) && invRecv45(n_10_1) == n_10_1
                );
                assume (forall o_4: Ref ::
                  { invRecv45(o_4) }
                  g_1[invRecv45(o_4)] && (NoPerm < 1 / 2 && qpRange45(o_4)) ==> invRecv45(o_4) == o_4
                );
              // Finish exhale
              havoc ExhaleHeap;
              assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
              Heap := ExhaleHeap;
              // Stop execution
              assume false;
            }
          assume (exists_path($$(Heap, g_1), prev_i, node_i): bool);
        }
        assume state(Heap, Mask);
        if (node_i != null) {
          assume state(Heap, Mask);
          
          // -- Check definedness of exists_path($$(g), node_i, prev_node)
            if (*) {
              // Exhale precondition of function application
              ExhaleWellDef0Heap := Heap;
              ExhaleWellDef0Mask := Mask;
              havoc QPMask;
              
              // -- check that the permission amount is positive
                assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (list-swap.vpr@341.50--341.55) [79768]"}
                  (forall n_11_1: Ref ::
                  { Heap[n_11_1, next] } { QPMask[n_11_1, next] } { Heap[n_11_1, next] }
                  g_1[n_11_1] && dummyFunction(Heap[n_11_1, next]) ==> 1 / 2 >= NoPerm
                );
              
              // -- check if receiver n is injective
                assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.next might not be injective. (list-swap.vpr@341.50--341.55) [79769]"}
                  (forall n_11_1: Ref, n_11_2: Ref ::
                  { neverTriggered46(n_11_1), neverTriggered46(n_11_2) }
                  (((n_11_1 != n_11_2 && g_1[n_11_1]) && g_1[n_11_2]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_11_1 != n_11_2
                );
              
              // -- check if sufficient permission is held
                assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.next (list-swap.vpr@341.50--341.55) [79770]"}
                  (forall n_11_1: Ref ::
                  { Heap[n_11_1, next] } { QPMask[n_11_1, next] } { Heap[n_11_1, next] }
                  g_1[n_11_1] ==> 1 / 2 > NoPerm ==> Mask[n_11_1, next] > NoPerm
                );
              
              // -- assumptions for inverse of receiver n
                assume (forall n_11_1: Ref ::
                  { Heap[n_11_1, next] } { QPMask[n_11_1, next] } { Heap[n_11_1, next] }
                  g_1[n_11_1] && NoPerm < 1 / 2 ==> qpRange46(n_11_1) && invRecv46(n_11_1) == n_11_1
                );
                assume (forall o_4: Ref ::
                  { invRecv46(o_4) }
                  g_1[invRecv46(o_4)] && (NoPerm < 1 / 2 && qpRange46(o_4)) ==> invRecv46(o_4) == o_4
                );
              // Finish exhale
              havoc ExhaleHeap;
              assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
              Heap := ExhaleHeap;
              // Stop execution
              assume false;
            }
          assume (exists_path($$(Heap, g_1), node_i, prev_node): bool);
        }
        assume state(Heap, Mask);
        if (node != null) {
          assume state(Heap, Mask);
          
          // -- Check definedness of exists_path($$(g), prev_node, node)
            if (*) {
              // Exhale precondition of function application
              ExhaleWellDef0Heap := Heap;
              ExhaleWellDef0Mask := Mask;
              havoc QPMask;
              
              // -- check that the permission amount is positive
                assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (list-swap.vpr@342.48--342.53) [79771]"}
                  (forall n_12_1: Ref ::
                  { Heap[n_12_1, next] } { QPMask[n_12_1, next] } { Heap[n_12_1, next] }
                  g_1[n_12_1] && dummyFunction(Heap[n_12_1, next]) ==> 1 / 2 >= NoPerm
                );
              
              // -- check if receiver n is injective
                assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.next might not be injective. (list-swap.vpr@342.48--342.53) [79772]"}
                  (forall n_12_1: Ref, n_12_2: Ref ::
                  { neverTriggered47(n_12_1), neverTriggered47(n_12_2) }
                  (((n_12_1 != n_12_2 && g_1[n_12_1]) && g_1[n_12_2]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_12_1 != n_12_2
                );
              
              // -- check if sufficient permission is held
                assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.next (list-swap.vpr@342.48--342.53) [79773]"}
                  (forall n_12_1: Ref ::
                  { Heap[n_12_1, next] } { QPMask[n_12_1, next] } { Heap[n_12_1, next] }
                  g_1[n_12_1] ==> 1 / 2 > NoPerm ==> Mask[n_12_1, next] > NoPerm
                );
              
              // -- assumptions for inverse of receiver n
                assume (forall n_12_1: Ref ::
                  { Heap[n_12_1, next] } { QPMask[n_12_1, next] } { Heap[n_12_1, next] }
                  g_1[n_12_1] && NoPerm < 1 / 2 ==> qpRange47(n_12_1) && invRecv47(n_12_1) == n_12_1
                );
                assume (forall o_4: Ref ::
                  { invRecv47(o_4) }
                  g_1[invRecv47(o_4)] && (NoPerm < 1 / 2 && qpRange47(o_4)) ==> invRecv47(o_4) == o_4
                );
              // Finish exhale
              havoc ExhaleHeap;
              assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
              Heap := ExhaleHeap;
              // Stop execution
              assume false;
            }
          assume (exists_path($$(Heap, g_1), prev_node, node): bool);
        }
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
        assume 0 <= i;
        assume i < j_9;
        assume 0 <= count_1;
        assume g_1[x];
        assume !g_1[null];
        havoc QPMask;
        assert {:msg "  While statement might fail. Quantified resource n$2.next might not be injective. (list-swap.vpr@324.19--324.27) [79774]"}
          (forall n$2_3: Ref, n$2_3_2: Ref ::
          
          (((n$2_3 != n$2_3_2 && g_1[n$2_3]) && g_1[n$2_3_2]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n$2_3 != n$2_3_2
        );
        
        // -- Define Inverse Function
          assume (forall n$2_3: Ref ::
            { Heap[n$2_3, next] } { QPMask[n$2_3, next] } { Heap[n$2_3, next] }
            g_1[n$2_3] && NoPerm < FullPerm ==> qpRange48(n$2_3) && invRecv48(n$2_3) == n$2_3
          );
          assume (forall o_4: Ref ::
            { invRecv48(o_4) }
            (g_1[invRecv48(o_4)] && NoPerm < FullPerm) && qpRange48(o_4) ==> invRecv48(o_4) == o_4
          );
        
        // -- Assume set of fields is nonNull
          assume (forall n$2_3: Ref ::
            { Heap[n$2_3, next] } { QPMask[n$2_3, next] } { Heap[n$2_3, next] }
            g_1[n$2_3] ==> n$2_3 != null
          );
        
        // -- Define permissions
          assume (forall o_4: Ref ::
            { QPMask[o_4, next] }
            ((g_1[invRecv48(o_4)] && NoPerm < FullPerm) && qpRange48(o_4) ==> (NoPerm < FullPerm ==> invRecv48(o_4) == o_4) && QPMask[o_4, next] == Mask[o_4, next] + FullPerm) && (!((g_1[invRecv48(o_4)] && NoPerm < FullPerm) && qpRange48(o_4)) ==> QPMask[o_4, next] == Mask[o_4, next])
          );
          assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
            { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
            f_5 != next ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
          );
        Mask := QPMask;
        assume state(Heap, Mask);
        assume (forall n$3_4: Ref ::
          { g_1[Heap[n$3_4, next]] } { g_1[n$3_4], Heap[n$3_4, next] }
          g_1[n$3_4] && Heap[n$3_4, next] != null ==> g_1[Heap[n$3_4, next]]
        );
        if (node != null) {
          assume g_1[node];
        }
        if (count_1 <= j_9) {
          assume g_1[prev_node];
        }
        if (i < count_1) {
          assume g_1[node_i];
          assume g_1[prev_i];
        }
        if (count_1 <= j_9) {
          assume Heap[prev_node, next] == node;
        }
        assume state(Heap, Mask);
        assume (acyclic_graph($$(Heap, g_1)): bool);
        assume state(Heap, Mask);
        assume (func_graph($$(Heap, g_1)): bool);
        assume state(Heap, Mask);
        assume (unshared_graph($$(Heap, g_1)): bool);
        assume state(Heap, Mask);
        assume (forall n$4_4: Ref ::
          { (exists_path($$#frame(FrameFragment($$#condqp1(Heap, g_1)), g_1), x, n$4_4): bool) }
          g_1[n$4_4] ==> (exists_path($$(Heap, g_1), x, n$4_4): bool)
        );
        if (node_i != null) {
          assume state(Heap, Mask);
          assume (exists_path($$(Heap, g_1), prev_i, node_i): bool);
        }
        if (node_i != null) {
          assume state(Heap, Mask);
          assume (exists_path($$(Heap, g_1), node_i, prev_node): bool);
        }
        if (node != null) {
          assume state(Heap, Mask);
          assume (exists_path($$(Heap, g_1), prev_node, node): bool);
        }
        assume state(Heap, Mask);
        // Check and assume guard
        assume node != null && count_1 <= j_9;
        assume state(Heap, Mask);
        
        // -- Translate loop body
          
          // -- Translating statement: if (count == i) -- list-swap.vpr@349.9--354.10
            if (count_1 == i) {
              
              // -- Translating statement: node_i := node -- list-swap.vpr@352.13--352.27
                node_i := node;
                assume state(Heap, Mask);
              
              // -- Translating statement: prev_i := prev_node -- list-swap.vpr@353.13--353.32
                prev_i := prev_node;
                assume state(Heap, Mask);
            }
            assume state(Heap, Mask);
          
          // -- Translating statement: if (count == j) -- list-swap.vpr@356.9--384.10
            if (count_1 == j_9) {
              
              // -- Assumptions about local variables
                assume Heap[node_j, $allocated];
                assume Heap[prev_j, $allocated];
                assume Heap[vexit, $allocated];
              
              // -- Translating statement: node_j := node -- list-swap.vpr@359.13--359.35
                node_j := node;
                assume state(Heap, Mask);
              
              // -- Translating statement: prev_j := prev_node -- list-swap.vpr@360.13--360.40
                prev_j := prev_node;
                assume state(Heap, Mask);
              
              // -- Translating statement: exit := node_j.next -- list-swap.vpr@361.13--361.40
                
                // -- Check definedness of node_j.next
                  assert {:msg "  Assignment might fail. There might be insufficient permission to access node_j.next (list-swap.vpr@361.13--361.40) [79775]"}
                    HasDirectPerm(Mask, node_j, next);
                vexit := Heap[node_j, next];
                assume state(Heap, Mask);
              
              // -- Translating statement: unlink(g, prev_i) -- list-swap.vpr@366.13--366.29
                PreCallHeap := Heap;
                PreCallMask := Mask;
                
                // -- Exhaling precondition
                  ExhaleWellDef0Heap := Heap;
                  ExhaleWellDef0Mask := Mask;
                  assert {:msg "  The precondition of method unlink might not hold. Assertion (prev_i in g) might not hold. (list-swap.vpr@366.13--366.29) [79776]"}
                    g_1[prev_i];
                  assert {:msg "  The precondition of method unlink might not hold. Assertion !((null in g)) might not hold. (list-swap.vpr@366.13--366.29) [79777]"}
                    !g_1[null];
                  assert {:msg "  The precondition of method unlink might not hold. Assertion (prev_i in g) might not hold. (list-swap.vpr@366.13--366.29) [79778]"}
                    g_1[prev_i];
                  perm := FullPerm;
                  if (perm != NoPerm) {
                    assert {:msg "  The precondition of method unlink might not hold. There might be insufficient permission to access prev_i.next (list-swap.vpr@366.13--366.29) [79779]"}
                      perm <= Mask[prev_i, next];
                  }
                  Mask := Mask[prev_i, next:=Mask[prev_i, next] - perm];
                  havoc QPMask;
                  
                  // -- check that the permission amount is positive
                    assert {:msg "  The precondition of method unlink might not hold. Fraction 1 / 2 might be negative. (list-swap.vpr@366.13--366.29) [79780]"}
                      (forall n_13: Ref ::
                      { Heap[n_13, next] } { QPMask[n_13, next] } { Heap[n_13, next] }
                      (g_1[n_13] && n_13 != prev_i) && dummyFunction(Heap[n_13, next]) ==> 1 / 2 >= NoPerm
                    );
                  
                  // -- check if receiver n is injective
                    assert {:msg "  The precondition of method unlink might not hold. Quantified resource n.next might not be injective. (list-swap.vpr@366.13--366.29) [79781]"}
                      (forall n_13: Ref, n_13_1: Ref ::
                      { neverTriggered49(n_13), neverTriggered49(n_13_1) }
                      (((n_13 != n_13_1 && (g_1[n_13] && n_13 != prev_i)) && (g_1[n_13_1] && n_13_1 != prev_i)) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_13 != n_13_1
                    );
                  
                  // -- check if sufficient permission is held
                    assert {:msg "  The precondition of method unlink might not hold. There might be insufficient permission to access n.next (list-swap.vpr@366.13--366.29) [79782]"}
                      (forall n_13: Ref ::
                      { Heap[n_13, next] } { QPMask[n_13, next] } { Heap[n_13, next] }
                      g_1[n_13] && n_13 != prev_i ==> Mask[n_13, next] >= 1 / 2
                    );
                  
                  // -- assumptions for inverse of receiver n
                    assume (forall n_13: Ref ::
                      { Heap[n_13, next] } { QPMask[n_13, next] } { Heap[n_13, next] }
                      (g_1[n_13] && n_13 != prev_i) && NoPerm < 1 / 2 ==> qpRange49(n_13) && invRecv49(n_13) == n_13
                    );
                    assume (forall o_4: Ref ::
                      { invRecv49(o_4) }
                      (g_1[invRecv49(o_4)] && invRecv49(o_4) != prev_i) && (NoPerm < 1 / 2 && qpRange49(o_4)) ==> invRecv49(o_4) == o_4
                    );
                  
                  // -- assume permission updates for field next
                    assume (forall o_4: Ref ::
                      { QPMask[o_4, next] }
                      ((g_1[invRecv49(o_4)] && invRecv49(o_4) != prev_i) && (NoPerm < 1 / 2 && qpRange49(o_4)) ==> invRecv49(o_4) == o_4 && QPMask[o_4, next] == Mask[o_4, next] - 1 / 2) && (!((g_1[invRecv49(o_4)] && invRecv49(o_4) != prev_i) && (NoPerm < 1 / 2 && qpRange49(o_4))) ==> QPMask[o_4, next] == Mask[o_4, next])
                    );
                  
                  // -- assume permission updates for independent locations
                    assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
                      { QPMask[o_4, f_5] }
                      f_5 != next ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
                    );
                  Mask := QPMask;
                  if (*) {
                    if (g_1[n$0_2_1] && Heap[n$0_2_1, next] != null) {
                      assert {:msg "  The precondition of method unlink might not hold. Assertion (n$0.next in g) might not hold. (list-swap.vpr@366.13--366.29) [79783]"}
                        g_1[Heap[n$0_2_1, next]];
                    }
                    assume false;
                  }
                  assume (forall n$0_3_1: Ref ::
                    { g_1[Heap[n$0_3_1, next]] } { g_1[n$0_3_1], Heap[n$0_3_1, next] }
                    g_1[n$0_3_1] && Heap[n$0_3_1, next] != null ==> g_1[Heap[n$0_3_1, next]]
                  );
                  // Finish exhale
                  havoc ExhaleHeap;
                  assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
                  Heap := ExhaleHeap;
                
                // -- Inhaling postcondition
                  assume !g_1[null];
                  assume g_1[prev_i];
                  perm := FullPerm;
                  assume prev_i != null;
                  Mask := Mask[prev_i, next:=Mask[prev_i, next] + perm];
                  assume state(Heap, Mask);
                  havoc QPMask;
                  assert {:msg "  Method call might fail. Quantified resource n$1.next might not be injective. (list-swap.vpr@366.13--366.29) [79784]"}
                    (forall n$1_2: Ref, n$1_2_1: Ref ::
                    
                    (((n$1_2 != n$1_2_1 && (g_1[n$1_2] && n$1_2 != prev_i)) && (g_1[n$1_2_1] && n$1_2_1 != prev_i)) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n$1_2 != n$1_2_1
                  );
                  
                  // -- Define Inverse Function
                    assume (forall n$1_2: Ref ::
                      { Heap[n$1_2, next] } { QPMask[n$1_2, next] } { Heap[n$1_2, next] }
                      (g_1[n$1_2] && n$1_2 != prev_i) && NoPerm < 1 / 2 ==> qpRange50(n$1_2) && invRecv50(n$1_2) == n$1_2
                    );
                    assume (forall o_4: Ref ::
                      { invRecv50(o_4) }
                      ((g_1[invRecv50(o_4)] && invRecv50(o_4) != prev_i) && NoPerm < 1 / 2) && qpRange50(o_4) ==> invRecv50(o_4) == o_4
                    );
                  // Check that permission expression is non-negative for all fields
                  assert {:msg "  Method call might fail. Fraction 1 / 2 might be negative. (list-swap.vpr@366.13--366.29) [79785]"}
                    (forall n$1_2: Ref ::
                    { Heap[n$1_2, next] } { QPMask[n$1_2, next] } { Heap[n$1_2, next] }
                    g_1[n$1_2] && n$1_2 != prev_i ==> 1 / 2 >= NoPerm
                  );
                  
                  // -- Assume set of fields is nonNull
                    assume (forall n$1_2: Ref ::
                      { Heap[n$1_2, next] } { QPMask[n$1_2, next] } { Heap[n$1_2, next] }
                      (g_1[n$1_2] && n$1_2 != prev_i) && 1 / 2 > NoPerm ==> n$1_2 != null
                    );
                  
                  // -- Define permissions
                    assume (forall o_4: Ref ::
                      { QPMask[o_4, next] }
                      (((g_1[invRecv50(o_4)] && invRecv50(o_4) != prev_i) && NoPerm < 1 / 2) && qpRange50(o_4) ==> (NoPerm < 1 / 2 ==> invRecv50(o_4) == o_4) && QPMask[o_4, next] == Mask[o_4, next] + 1 / 2) && (!(((g_1[invRecv50(o_4)] && invRecv50(o_4) != prev_i) && NoPerm < 1 / 2) && qpRange50(o_4)) ==> QPMask[o_4, next] == Mask[o_4, next])
                    );
                    assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
                      { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
                      f_5 != next ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
                    );
                  Mask := QPMask;
                  assume state(Heap, Mask);
                  assume (forall n$2_4_1: Ref ::
                    { g_1[Heap[n$2_4_1, next]] } { g_1[n$2_4_1], Heap[n$2_4_1, next] }
                    g_1[n$2_4_1] && Heap[n$2_4_1, next] != null ==> g_1[Heap[n$2_4_1, next]]
                  );
                  assume Heap[prev_i, next] == null;
                  if (PreCallHeap[prev_i, next] == null) {
                    assume state(Heap, Mask);
                    assume Set#Equal($$(Heap, g_1), $$(PreCallHeap, g_1));
                  }
                  if (PreCallHeap[prev_i, next] != null) {
                    assume state(Heap, Mask);
                    assume (forall v1: Ref, v2: Ref ::
                      { (edge($$#frame(FrameFragment($$#condqp1(Heap, g_1)), g_1), v1, v2): bool) }
                      (edge($$(Heap, g_1), v1, v2): bool) == ((edge($$(PreCallHeap, g_1), v1, v2): bool) && !(v1 == prev_i && v2 == PreCallHeap[prev_i, next]))
                    );
                  }
                  if (PreCallHeap[prev_i, next] != null) {
                    assume state(Heap, Mask);
                    assume (forall v1_1: Ref, v2_1: Ref ::
                      { (exists_path($$#frame(FrameFragment($$#condqp1(Heap, g_1)), g_1), v1_1, v2_1): bool) }
                      v1_1 != v2_1 ==> (exists_path($$(Heap, g_1), v1_1, v2_1): bool) == ((exists_path($$(PreCallHeap, g_1), v1_1, v2_1): bool) && !((exists_path($$(PreCallHeap, g_1), v1_1, prev_i): bool) && (exists_path($$(PreCallHeap, g_1), PreCallHeap[prev_i, next], v2_1): bool)))
                    );
                  }
                  assume state(Heap, Mask);
                assume state(Heap, Mask);
              
              // -- Translating statement: link(g, prev_i, node_j) -- list-swap.vpr@367.13--367.34
                PreCallHeap := Heap;
                PreCallMask := Mask;
                
                // -- Exhaling precondition
                  ExhaleWellDef0Heap := Heap;
                  ExhaleWellDef0Mask := Mask;
                  assert {:msg "  The precondition of method link might not hold. Assertion (prev_i in g) might not hold. (list-swap.vpr@367.13--367.34) [79786]"}
                    g_1[prev_i];
                  if (node_j != null) {
                    assert {:msg "  The precondition of method link might not hold. Assertion (node_j in g) might not hold. (list-swap.vpr@367.13--367.34) [79787]"}
                      g_1[node_j];
                  }
                  assert {:msg "  The precondition of method link might not hold. Assertion !((null in g)) might not hold. (list-swap.vpr@367.13--367.34) [79788]"}
                    !g_1[null];
                  assert {:msg "  The precondition of method link might not hold. Assertion (prev_i in g) might not hold. (list-swap.vpr@367.13--367.34) [79789]"}
                    g_1[prev_i];
                  perm := FullPerm;
                  if (perm != NoPerm) {
                    assert {:msg "  The precondition of method link might not hold. There might be insufficient permission to access prev_i.next (list-swap.vpr@367.13--367.34) [79790]"}
                      perm <= Mask[prev_i, next];
                  }
                  Mask := Mask[prev_i, next:=Mask[prev_i, next] - perm];
                  havoc QPMask;
                  
                  // -- check that the permission amount is positive
                    assert {:msg "  The precondition of method link might not hold. Fraction 1 / 2 might be negative. (list-swap.vpr@367.13--367.34) [79791]"}
                      (forall n_14: Ref ::
                      { Heap[n_14, next] } { QPMask[n_14, next] } { Heap[n_14, next] }
                      (g_1[n_14] && n_14 != prev_i) && dummyFunction(Heap[n_14, next]) ==> 1 / 2 >= NoPerm
                    );
                  
                  // -- check if receiver n is injective
                    assert {:msg "  The precondition of method link might not hold. Quantified resource n.next might not be injective. (list-swap.vpr@367.13--367.34) [79792]"}
                      (forall n_14: Ref, n_14_1: Ref ::
                      { neverTriggered51(n_14), neverTriggered51(n_14_1) }
                      (((n_14 != n_14_1 && (g_1[n_14] && n_14 != prev_i)) && (g_1[n_14_1] && n_14_1 != prev_i)) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_14 != n_14_1
                    );
                  
                  // -- check if sufficient permission is held
                    assert {:msg "  The precondition of method link might not hold. There might be insufficient permission to access n.next (list-swap.vpr@367.13--367.34) [79793]"}
                      (forall n_14: Ref ::
                      { Heap[n_14, next] } { QPMask[n_14, next] } { Heap[n_14, next] }
                      g_1[n_14] && n_14 != prev_i ==> Mask[n_14, next] >= 1 / 2
                    );
                  
                  // -- assumptions for inverse of receiver n
                    assume (forall n_14: Ref ::
                      { Heap[n_14, next] } { QPMask[n_14, next] } { Heap[n_14, next] }
                      (g_1[n_14] && n_14 != prev_i) && NoPerm < 1 / 2 ==> qpRange51(n_14) && invRecv51(n_14) == n_14
                    );
                    assume (forall o_4: Ref ::
                      { invRecv51(o_4) }
                      (g_1[invRecv51(o_4)] && invRecv51(o_4) != prev_i) && (NoPerm < 1 / 2 && qpRange51(o_4)) ==> invRecv51(o_4) == o_4
                    );
                  
                  // -- assume permission updates for field next
                    assume (forall o_4: Ref ::
                      { QPMask[o_4, next] }
                      ((g_1[invRecv51(o_4)] && invRecv51(o_4) != prev_i) && (NoPerm < 1 / 2 && qpRange51(o_4)) ==> invRecv51(o_4) == o_4 && QPMask[o_4, next] == Mask[o_4, next] - 1 / 2) && (!((g_1[invRecv51(o_4)] && invRecv51(o_4) != prev_i) && (NoPerm < 1 / 2 && qpRange51(o_4))) ==> QPMask[o_4, next] == Mask[o_4, next])
                    );
                  
                  // -- assume permission updates for independent locations
                    assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
                      { QPMask[o_4, f_5] }
                      f_5 != next ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
                    );
                  Mask := QPMask;
                  if (*) {
                    if (g_1[n$0_4] && Heap[n$0_4, next] != null) {
                      assert {:msg "  The precondition of method link might not hold. Assertion (n$0.next in g) might not hold. (list-swap.vpr@367.13--367.34) [79794]"}
                        g_1[Heap[n$0_4, next]];
                    }
                    assume false;
                  }
                  assume (forall n$0_5_1: Ref ::
                    { g_1[Heap[n$0_5_1, next]] } { g_1[n$0_5_1], Heap[n$0_5_1, next] }
                    g_1[n$0_5_1] && Heap[n$0_5_1, next] != null ==> g_1[Heap[n$0_5_1, next]]
                  );
                  assert {:msg "  The precondition of method link might not hold. Assertion prev_i.next == null might not hold. (list-swap.vpr@367.13--367.34) [79795]"}
                    Heap[prev_i, next] == null;
                  // Finish exhale
                  havoc ExhaleHeap;
                  assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
                  Heap := ExhaleHeap;
                
                // -- Inhaling postcondition
                  assume !g_1[null];
                  assume g_1[prev_i];
                  perm := FullPerm;
                  assume prev_i != null;
                  Mask := Mask[prev_i, next:=Mask[prev_i, next] + perm];
                  assume state(Heap, Mask);
                  havoc QPMask;
                  assert {:msg "  Method call might fail. Quantified resource n$1.next might not be injective. (list-swap.vpr@367.13--367.34) [79796]"}
                    (forall n$1_3: Ref, n$1_3_1: Ref ::
                    
                    (((n$1_3 != n$1_3_1 && (g_1[n$1_3] && n$1_3 != prev_i)) && (g_1[n$1_3_1] && n$1_3_1 != prev_i)) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n$1_3 != n$1_3_1
                  );
                  
                  // -- Define Inverse Function
                    assume (forall n$1_3: Ref ::
                      { Heap[n$1_3, next] } { QPMask[n$1_3, next] } { Heap[n$1_3, next] }
                      (g_1[n$1_3] && n$1_3 != prev_i) && NoPerm < 1 / 2 ==> qpRange52(n$1_3) && invRecv52(n$1_3) == n$1_3
                    );
                    assume (forall o_4: Ref ::
                      { invRecv52(o_4) }
                      ((g_1[invRecv52(o_4)] && invRecv52(o_4) != prev_i) && NoPerm < 1 / 2) && qpRange52(o_4) ==> invRecv52(o_4) == o_4
                    );
                  // Check that permission expression is non-negative for all fields
                  assert {:msg "  Method call might fail. Fraction 1 / 2 might be negative. (list-swap.vpr@367.13--367.34) [79797]"}
                    (forall n$1_3: Ref ::
                    { Heap[n$1_3, next] } { QPMask[n$1_3, next] } { Heap[n$1_3, next] }
                    g_1[n$1_3] && n$1_3 != prev_i ==> 1 / 2 >= NoPerm
                  );
                  
                  // -- Assume set of fields is nonNull
                    assume (forall n$1_3: Ref ::
                      { Heap[n$1_3, next] } { QPMask[n$1_3, next] } { Heap[n$1_3, next] }
                      (g_1[n$1_3] && n$1_3 != prev_i) && 1 / 2 > NoPerm ==> n$1_3 != null
                    );
                  
                  // -- Define permissions
                    assume (forall o_4: Ref ::
                      { QPMask[o_4, next] }
                      (((g_1[invRecv52(o_4)] && invRecv52(o_4) != prev_i) && NoPerm < 1 / 2) && qpRange52(o_4) ==> (NoPerm < 1 / 2 ==> invRecv52(o_4) == o_4) && QPMask[o_4, next] == Mask[o_4, next] + 1 / 2) && (!(((g_1[invRecv52(o_4)] && invRecv52(o_4) != prev_i) && NoPerm < 1 / 2) && qpRange52(o_4)) ==> QPMask[o_4, next] == Mask[o_4, next])
                    );
                    assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
                      { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
                      f_5 != next ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
                    );
                  Mask := QPMask;
                  assume state(Heap, Mask);
                  assume (forall n$2_5_1: Ref ::
                    { g_1[Heap[n$2_5_1, next]] } { g_1[n$2_5_1], Heap[n$2_5_1, next] }
                    g_1[n$2_5_1] && Heap[n$2_5_1, next] != null ==> g_1[Heap[n$2_5_1, next]]
                  );
                  assume Heap[prev_i, next] == node_j;
                  if (node_j == null) {
                    assume state(Heap, Mask);
                    assume Set#Equal($$(Heap, g_1), $$(PreCallHeap, g_1));
                  }
                  if (node_j != null) {
                    assume state(Heap, Mask);
                    assume (forall v1_2_1: Ref, v2_2_1: Ref ::
                      { (edge($$#frame(FrameFragment($$#condqp1(PreCallHeap, g_1)), g_1), v1_2_1, v2_2_1): bool) }
                      (edge($$(Heap, g_1), v1_2_1, v2_2_1): bool) == ((edge($$(PreCallHeap, g_1), v1_2_1, v2_2_1): bool) || (v1_2_1 == prev_i && v2_2_1 == node_j))
                    );
                  }
                  if (node_j != null) {
                    assume state(Heap, Mask);
                    assume (forall v1_3: Ref, v2_3: Ref ::
                      { (exists_path($$#frame(FrameFragment($$#condqp1(Heap, g_1)), g_1), v1_3, v2_3): bool) }
                      v1_3 != v2_3 ==> (exists_path($$(Heap, g_1), v1_3, v2_3): bool) == ((exists_path($$(PreCallHeap, g_1), v1_3, v2_3): bool) || ((exists_path($$(PreCallHeap, g_1), v1_3, prev_i): bool) && (exists_path($$(PreCallHeap, g_1), node_j, v2_3): bool)))
                    );
                  }
                  assume state(Heap, Mask);
                assume state(Heap, Mask);
              
              // -- Translating statement: if (node_i.next != node_j) -- list-swap.vpr@368.13--380.14
                
                // -- Check definedness of node_i.next != node_j
                  assert {:msg "  Conditional statement might fail. There might be insufficient permission to access node_i.next (list-swap.vpr@368.18--368.39) [79798]"}
                    HasDirectPerm(Mask, node_i, next);
                if (Heap[node_i, next] != node_j) {
                  
                  // -- Translating statement: unlink(g, node_j) -- list-swap.vpr@370.17--370.33
                    PreCallHeap := Heap;
                    PreCallMask := Mask;
                    
                    // -- Exhaling precondition
                      ExhaleWellDef0Heap := Heap;
                      ExhaleWellDef0Mask := Mask;
                      assert {:msg "  The precondition of method unlink might not hold. Assertion (node_j in g) might not hold. (list-swap.vpr@370.17--370.33) [79799]"}
                        g_1[node_j];
                      assert {:msg "  The precondition of method unlink might not hold. Assertion !((null in g)) might not hold. (list-swap.vpr@370.17--370.33) [79800]"}
                        !g_1[null];
                      assert {:msg "  The precondition of method unlink might not hold. Assertion (node_j in g) might not hold. (list-swap.vpr@370.17--370.33) [79801]"}
                        g_1[node_j];
                      perm := FullPerm;
                      if (perm != NoPerm) {
                        assert {:msg "  The precondition of method unlink might not hold. There might be insufficient permission to access node_j.next (list-swap.vpr@370.17--370.33) [79802]"}
                          perm <= Mask[node_j, next];
                      }
                      Mask := Mask[node_j, next:=Mask[node_j, next] - perm];
                      havoc QPMask;
                      
                      // -- check that the permission amount is positive
                        assert {:msg "  The precondition of method unlink might not hold. Fraction 1 / 2 might be negative. (list-swap.vpr@370.17--370.33) [79803]"}
                          (forall n_15: Ref ::
                          { Heap[n_15, next] } { QPMask[n_15, next] } { Heap[n_15, next] }
                          (g_1[n_15] && n_15 != node_j) && dummyFunction(Heap[n_15, next]) ==> 1 / 2 >= NoPerm
                        );
                      
                      // -- check if receiver n is injective
                        assert {:msg "  The precondition of method unlink might not hold. Quantified resource n.next might not be injective. (list-swap.vpr@370.17--370.33) [79804]"}
                          (forall n_15: Ref, n_15_1: Ref ::
                          { neverTriggered53(n_15), neverTriggered53(n_15_1) }
                          (((n_15 != n_15_1 && (g_1[n_15] && n_15 != node_j)) && (g_1[n_15_1] && n_15_1 != node_j)) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_15 != n_15_1
                        );
                      
                      // -- check if sufficient permission is held
                        assert {:msg "  The precondition of method unlink might not hold. There might be insufficient permission to access n.next (list-swap.vpr@370.17--370.33) [79805]"}
                          (forall n_15: Ref ::
                          { Heap[n_15, next] } { QPMask[n_15, next] } { Heap[n_15, next] }
                          g_1[n_15] && n_15 != node_j ==> Mask[n_15, next] >= 1 / 2
                        );
                      
                      // -- assumptions for inverse of receiver n
                        assume (forall n_15: Ref ::
                          { Heap[n_15, next] } { QPMask[n_15, next] } { Heap[n_15, next] }
                          (g_1[n_15] && n_15 != node_j) && NoPerm < 1 / 2 ==> qpRange53(n_15) && invRecv53(n_15) == n_15
                        );
                        assume (forall o_4: Ref ::
                          { invRecv53(o_4) }
                          (g_1[invRecv53(o_4)] && invRecv53(o_4) != node_j) && (NoPerm < 1 / 2 && qpRange53(o_4)) ==> invRecv53(o_4) == o_4
                        );
                      
                      // -- assume permission updates for field next
                        assume (forall o_4: Ref ::
                          { QPMask[o_4, next] }
                          ((g_1[invRecv53(o_4)] && invRecv53(o_4) != node_j) && (NoPerm < 1 / 2 && qpRange53(o_4)) ==> invRecv53(o_4) == o_4 && QPMask[o_4, next] == Mask[o_4, next] - 1 / 2) && (!((g_1[invRecv53(o_4)] && invRecv53(o_4) != node_j) && (NoPerm < 1 / 2 && qpRange53(o_4))) ==> QPMask[o_4, next] == Mask[o_4, next])
                        );
                      
                      // -- assume permission updates for independent locations
                        assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
                          { QPMask[o_4, f_5] }
                          f_5 != next ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
                        );
                      Mask := QPMask;
                      if (*) {
                        if (g_1[n$0_6] && Heap[n$0_6, next] != null) {
                          assert {:msg "  The precondition of method unlink might not hold. Assertion (n$0.next in g) might not hold. (list-swap.vpr@370.17--370.33) [79806]"}
                            g_1[Heap[n$0_6, next]];
                        }
                        assume false;
                      }
                      assume (forall n$0_7_1: Ref ::
                        { g_1[Heap[n$0_7_1, next]] } { g_1[n$0_7_1], Heap[n$0_7_1, next] }
                        g_1[n$0_7_1] && Heap[n$0_7_1, next] != null ==> g_1[Heap[n$0_7_1, next]]
                      );
                      // Finish exhale
                      havoc ExhaleHeap;
                      assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
                      Heap := ExhaleHeap;
                    
                    // -- Inhaling postcondition
                      assume !g_1[null];
                      assume g_1[node_j];
                      perm := FullPerm;
                      assume node_j != null;
                      Mask := Mask[node_j, next:=Mask[node_j, next] + perm];
                      assume state(Heap, Mask);
                      havoc QPMask;
                      assert {:msg "  Method call might fail. Quantified resource n$1.next might not be injective. (list-swap.vpr@370.17--370.33) [79807]"}
                        (forall n$1_4: Ref, n$1_4_1: Ref ::
                        
                        (((n$1_4 != n$1_4_1 && (g_1[n$1_4] && n$1_4 != node_j)) && (g_1[n$1_4_1] && n$1_4_1 != node_j)) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n$1_4 != n$1_4_1
                      );
                      
                      // -- Define Inverse Function
                        assume (forall n$1_4: Ref ::
                          { Heap[n$1_4, next] } { QPMask[n$1_4, next] } { Heap[n$1_4, next] }
                          (g_1[n$1_4] && n$1_4 != node_j) && NoPerm < 1 / 2 ==> qpRange54(n$1_4) && invRecv54(n$1_4) == n$1_4
                        );
                        assume (forall o_4: Ref ::
                          { invRecv54(o_4) }
                          ((g_1[invRecv54(o_4)] && invRecv54(o_4) != node_j) && NoPerm < 1 / 2) && qpRange54(o_4) ==> invRecv54(o_4) == o_4
                        );
                      // Check that permission expression is non-negative for all fields
                      assert {:msg "  Method call might fail. Fraction 1 / 2 might be negative. (list-swap.vpr@370.17--370.33) [79808]"}
                        (forall n$1_4: Ref ::
                        { Heap[n$1_4, next] } { QPMask[n$1_4, next] } { Heap[n$1_4, next] }
                        g_1[n$1_4] && n$1_4 != node_j ==> 1 / 2 >= NoPerm
                      );
                      
                      // -- Assume set of fields is nonNull
                        assume (forall n$1_4: Ref ::
                          { Heap[n$1_4, next] } { QPMask[n$1_4, next] } { Heap[n$1_4, next] }
                          (g_1[n$1_4] && n$1_4 != node_j) && 1 / 2 > NoPerm ==> n$1_4 != null
                        );
                      
                      // -- Define permissions
                        assume (forall o_4: Ref ::
                          { QPMask[o_4, next] }
                          (((g_1[invRecv54(o_4)] && invRecv54(o_4) != node_j) && NoPerm < 1 / 2) && qpRange54(o_4) ==> (NoPerm < 1 / 2 ==> invRecv54(o_4) == o_4) && QPMask[o_4, next] == Mask[o_4, next] + 1 / 2) && (!(((g_1[invRecv54(o_4)] && invRecv54(o_4) != node_j) && NoPerm < 1 / 2) && qpRange54(o_4)) ==> QPMask[o_4, next] == Mask[o_4, next])
                        );
                        assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
                          { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
                          f_5 != next ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
                        );
                      Mask := QPMask;
                      assume state(Heap, Mask);
                      assume (forall n$2_6: Ref ::
                        { g_1[Heap[n$2_6, next]] } { g_1[n$2_6], Heap[n$2_6, next] }
                        g_1[n$2_6] && Heap[n$2_6, next] != null ==> g_1[Heap[n$2_6, next]]
                      );
                      assume Heap[node_j, next] == null;
                      if (PreCallHeap[node_j, next] == null) {
                        assume state(Heap, Mask);
                        assume Set#Equal($$(Heap, g_1), $$(PreCallHeap, g_1));
                      }
                      if (PreCallHeap[node_j, next] != null) {
                        assume state(Heap, Mask);
                        assume (forall v1_4: Ref, v2_4: Ref ::
                          { (edge($$#frame(FrameFragment($$#condqp1(Heap, g_1)), g_1), v1_4, v2_4): bool) }
                          (edge($$(Heap, g_1), v1_4, v2_4): bool) == ((edge($$(PreCallHeap, g_1), v1_4, v2_4): bool) && !(v1_4 == node_j && v2_4 == PreCallHeap[node_j, next]))
                        );
                      }
                      if (PreCallHeap[node_j, next] != null) {
                        assume state(Heap, Mask);
                        assume (forall v1_5_2: Ref, v2_5_2: Ref ::
                          { (exists_path($$#frame(FrameFragment($$#condqp1(Heap, g_1)), g_1), v1_5_2, v2_5_2): bool) }
                          v1_5_2 != v2_5_2 ==> (exists_path($$(Heap, g_1), v1_5_2, v2_5_2): bool) == ((exists_path($$(PreCallHeap, g_1), v1_5_2, v2_5_2): bool) && !((exists_path($$(PreCallHeap, g_1), v1_5_2, node_j): bool) && (exists_path($$(PreCallHeap, g_1), PreCallHeap[node_j, next], v2_5_2): bool)))
                        );
                      }
                      assume state(Heap, Mask);
                    assume state(Heap, Mask);
                  
                  // -- Translating statement: link(g, node_j, node_i.next) -- list-swap.vpr@371.17--371.43
                    PreCallHeap := Heap;
                    PreCallMask := Mask;
                    
                    // -- Check definedness of node_i.next
                      assert {:msg "  Method call might fail. There might be insufficient permission to access node_i.next (list-swap.vpr@371.17--371.43) [79809]"}
                        HasDirectPerm(Mask, node_i, next);
                    arg_y := Heap[node_i, next];
                    
                    // -- Exhaling precondition
                      ExhaleWellDef0Heap := Heap;
                      ExhaleWellDef0Mask := Mask;
                      assert {:msg "  The precondition of method link might not hold. Assertion (node_j in g) might not hold. (list-swap.vpr@371.17--371.43) [79810]"}
                        g_1[node_j];
                      if (arg_y != null) {
                        assert {:msg "  The precondition of method link might not hold. Assertion (node_i.next in g) might not hold. (list-swap.vpr@371.17--371.43) [79811]"}
                          g_1[arg_y];
                      }
                      assert {:msg "  The precondition of method link might not hold. Assertion !((null in g)) might not hold. (list-swap.vpr@371.17--371.43) [79812]"}
                        !g_1[null];
                      assert {:msg "  The precondition of method link might not hold. Assertion (node_j in g) might not hold. (list-swap.vpr@371.17--371.43) [79813]"}
                        g_1[node_j];
                      perm := FullPerm;
                      if (perm != NoPerm) {
                        assert {:msg "  The precondition of method link might not hold. There might be insufficient permission to access node_j.next (list-swap.vpr@371.17--371.43) [79814]"}
                          perm <= Mask[node_j, next];
                      }
                      Mask := Mask[node_j, next:=Mask[node_j, next] - perm];
                      havoc QPMask;
                      
                      // -- check that the permission amount is positive
                        assert {:msg "  The precondition of method link might not hold. Fraction 1 / 2 might be negative. (list-swap.vpr@371.17--371.43) [79815]"}
                          (forall n_16: Ref ::
                          { Heap[n_16, next] } { QPMask[n_16, next] } { Heap[n_16, next] }
                          (g_1[n_16] && n_16 != node_j) && dummyFunction(Heap[n_16, next]) ==> 1 / 2 >= NoPerm
                        );
                      
                      // -- check if receiver n is injective
                        assert {:msg "  The precondition of method link might not hold. Quantified resource n.next might not be injective. (list-swap.vpr@371.17--371.43) [79816]"}
                          (forall n_16: Ref, n_16_1: Ref ::
                          { neverTriggered55(n_16), neverTriggered55(n_16_1) }
                          (((n_16 != n_16_1 && (g_1[n_16] && n_16 != node_j)) && (g_1[n_16_1] && n_16_1 != node_j)) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_16 != n_16_1
                        );
                      
                      // -- check if sufficient permission is held
                        assert {:msg "  The precondition of method link might not hold. There might be insufficient permission to access n.next (list-swap.vpr@371.17--371.43) [79817]"}
                          (forall n_16: Ref ::
                          { Heap[n_16, next] } { QPMask[n_16, next] } { Heap[n_16, next] }
                          g_1[n_16] && n_16 != node_j ==> Mask[n_16, next] >= 1 / 2
                        );
                      
                      // -- assumptions for inverse of receiver n
                        assume (forall n_16: Ref ::
                          { Heap[n_16, next] } { QPMask[n_16, next] } { Heap[n_16, next] }
                          (g_1[n_16] && n_16 != node_j) && NoPerm < 1 / 2 ==> qpRange55(n_16) && invRecv55(n_16) == n_16
                        );
                        assume (forall o_4: Ref ::
                          { invRecv55(o_4) }
                          (g_1[invRecv55(o_4)] && invRecv55(o_4) != node_j) && (NoPerm < 1 / 2 && qpRange55(o_4)) ==> invRecv55(o_4) == o_4
                        );
                      
                      // -- assume permission updates for field next
                        assume (forall o_4: Ref ::
                          { QPMask[o_4, next] }
                          ((g_1[invRecv55(o_4)] && invRecv55(o_4) != node_j) && (NoPerm < 1 / 2 && qpRange55(o_4)) ==> invRecv55(o_4) == o_4 && QPMask[o_4, next] == Mask[o_4, next] - 1 / 2) && (!((g_1[invRecv55(o_4)] && invRecv55(o_4) != node_j) && (NoPerm < 1 / 2 && qpRange55(o_4))) ==> QPMask[o_4, next] == Mask[o_4, next])
                        );
                      
                      // -- assume permission updates for independent locations
                        assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
                          { QPMask[o_4, f_5] }
                          f_5 != next ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
                        );
                      Mask := QPMask;
                      if (*) {
                        if (g_1[n$0_8] && Heap[n$0_8, next] != null) {
                          assert {:msg "  The precondition of method link might not hold. Assertion (n$0.next in g) might not hold. (list-swap.vpr@371.17--371.43) [79818]"}
                            g_1[Heap[n$0_8, next]];
                        }
                        assume false;
                      }
                      assume (forall n$0_9_1: Ref ::
                        { g_1[Heap[n$0_9_1, next]] } { g_1[n$0_9_1], Heap[n$0_9_1, next] }
                        g_1[n$0_9_1] && Heap[n$0_9_1, next] != null ==> g_1[Heap[n$0_9_1, next]]
                      );
                      assert {:msg "  The precondition of method link might not hold. Assertion node_j.next == null might not hold. (list-swap.vpr@371.17--371.43) [79819]"}
                        Heap[node_j, next] == null;
                      // Finish exhale
                      havoc ExhaleHeap;
                      assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
                      Heap := ExhaleHeap;
                    
                    // -- Inhaling postcondition
                      assume !g_1[null];
                      assume g_1[node_j];
                      perm := FullPerm;
                      assume node_j != null;
                      Mask := Mask[node_j, next:=Mask[node_j, next] + perm];
                      assume state(Heap, Mask);
                      havoc QPMask;
                      assert {:msg "  Method call might fail. Quantified resource n$1.next might not be injective. (list-swap.vpr@371.17--371.43) [79820]"}
                        (forall n$1_5: Ref, n$1_5_1: Ref ::
                        
                        (((n$1_5 != n$1_5_1 && (g_1[n$1_5] && n$1_5 != node_j)) && (g_1[n$1_5_1] && n$1_5_1 != node_j)) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n$1_5 != n$1_5_1
                      );
                      
                      // -- Define Inverse Function
                        assume (forall n$1_5: Ref ::
                          { Heap[n$1_5, next] } { QPMask[n$1_5, next] } { Heap[n$1_5, next] }
                          (g_1[n$1_5] && n$1_5 != node_j) && NoPerm < 1 / 2 ==> qpRange56(n$1_5) && invRecv56(n$1_5) == n$1_5
                        );
                        assume (forall o_4: Ref ::
                          { invRecv56(o_4) }
                          ((g_1[invRecv56(o_4)] && invRecv56(o_4) != node_j) && NoPerm < 1 / 2) && qpRange56(o_4) ==> invRecv56(o_4) == o_4
                        );
                      // Check that permission expression is non-negative for all fields
                      assert {:msg "  Method call might fail. Fraction 1 / 2 might be negative. (list-swap.vpr@371.17--371.43) [79821]"}
                        (forall n$1_5: Ref ::
                        { Heap[n$1_5, next] } { QPMask[n$1_5, next] } { Heap[n$1_5, next] }
                        g_1[n$1_5] && n$1_5 != node_j ==> 1 / 2 >= NoPerm
                      );
                      
                      // -- Assume set of fields is nonNull
                        assume (forall n$1_5: Ref ::
                          { Heap[n$1_5, next] } { QPMask[n$1_5, next] } { Heap[n$1_5, next] }
                          (g_1[n$1_5] && n$1_5 != node_j) && 1 / 2 > NoPerm ==> n$1_5 != null
                        );
                      
                      // -- Define permissions
                        assume (forall o_4: Ref ::
                          { QPMask[o_4, next] }
                          (((g_1[invRecv56(o_4)] && invRecv56(o_4) != node_j) && NoPerm < 1 / 2) && qpRange56(o_4) ==> (NoPerm < 1 / 2 ==> invRecv56(o_4) == o_4) && QPMask[o_4, next] == Mask[o_4, next] + 1 / 2) && (!(((g_1[invRecv56(o_4)] && invRecv56(o_4) != node_j) && NoPerm < 1 / 2) && qpRange56(o_4)) ==> QPMask[o_4, next] == Mask[o_4, next])
                        );
                        assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
                          { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
                          f_5 != next ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
                        );
                      Mask := QPMask;
                      assume state(Heap, Mask);
                      assume (forall n$2_7: Ref ::
                        { g_1[Heap[n$2_7, next]] } { g_1[n$2_7], Heap[n$2_7, next] }
                        g_1[n$2_7] && Heap[n$2_7, next] != null ==> g_1[Heap[n$2_7, next]]
                      );
                      assume Heap[node_j, next] == arg_y;
                      if (arg_y == null) {
                        assume state(Heap, Mask);
                        assume Set#Equal($$(Heap, g_1), $$(PreCallHeap, g_1));
                      }
                      if (arg_y != null) {
                        assume state(Heap, Mask);
                        assume (forall v1_6: Ref, v2_6: Ref ::
                          { (edge($$#frame(FrameFragment($$#condqp1(PreCallHeap, g_1)), g_1), v1_6, v2_6): bool) }
                          (edge($$(Heap, g_1), v1_6, v2_6): bool) == ((edge($$(PreCallHeap, g_1), v1_6, v2_6): bool) || (v1_6 == node_j && v2_6 == arg_y))
                        );
                      }
                      if (arg_y != null) {
                        assume state(Heap, Mask);
                        assume (forall v1_7_2: Ref, v2_7_2: Ref ::
                          { (exists_path($$#frame(FrameFragment($$#condqp1(Heap, g_1)), g_1), v1_7_2, v2_7_2): bool) }
                          v1_7_2 != v2_7_2 ==> (exists_path($$(Heap, g_1), v1_7_2, v2_7_2): bool) == ((exists_path($$(PreCallHeap, g_1), v1_7_2, v2_7_2): bool) || ((exists_path($$(PreCallHeap, g_1), v1_7_2, node_j): bool) && (exists_path($$(PreCallHeap, g_1), arg_y, v2_7_2): bool)))
                        );
                      }
                      assume state(Heap, Mask);
                    assume state(Heap, Mask);
                  
                  // -- Translating statement: unlink(g, prev_j) -- list-swap.vpr@373.17--373.33
                    PreCallHeap := Heap;
                    PreCallMask := Mask;
                    
                    // -- Exhaling precondition
                      ExhaleWellDef0Heap := Heap;
                      ExhaleWellDef0Mask := Mask;
                      assert {:msg "  The precondition of method unlink might not hold. Assertion (prev_j in g) might not hold. (list-swap.vpr@373.17--373.33) [79822]"}
                        g_1[prev_j];
                      assert {:msg "  The precondition of method unlink might not hold. Assertion !((null in g)) might not hold. (list-swap.vpr@373.17--373.33) [79823]"}
                        !g_1[null];
                      assert {:msg "  The precondition of method unlink might not hold. Assertion (prev_j in g) might not hold. (list-swap.vpr@373.17--373.33) [79824]"}
                        g_1[prev_j];
                      perm := FullPerm;
                      if (perm != NoPerm) {
                        assert {:msg "  The precondition of method unlink might not hold. There might be insufficient permission to access prev_j.next (list-swap.vpr@373.17--373.33) [79825]"}
                          perm <= Mask[prev_j, next];
                      }
                      Mask := Mask[prev_j, next:=Mask[prev_j, next] - perm];
                      havoc QPMask;
                      
                      // -- check that the permission amount is positive
                        assert {:msg "  The precondition of method unlink might not hold. Fraction 1 / 2 might be negative. (list-swap.vpr@373.17--373.33) [79826]"}
                          (forall n_17: Ref ::
                          { Heap[n_17, next] } { QPMask[n_17, next] } { Heap[n_17, next] }
                          (g_1[n_17] && n_17 != prev_j) && dummyFunction(Heap[n_17, next]) ==> 1 / 2 >= NoPerm
                        );
                      
                      // -- check if receiver n is injective
                        assert {:msg "  The precondition of method unlink might not hold. Quantified resource n.next might not be injective. (list-swap.vpr@373.17--373.33) [79827]"}
                          (forall n_17: Ref, n_17_1: Ref ::
                          { neverTriggered57(n_17), neverTriggered57(n_17_1) }
                          (((n_17 != n_17_1 && (g_1[n_17] && n_17 != prev_j)) && (g_1[n_17_1] && n_17_1 != prev_j)) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_17 != n_17_1
                        );
                      
                      // -- check if sufficient permission is held
                        assert {:msg "  The precondition of method unlink might not hold. There might be insufficient permission to access n.next (list-swap.vpr@373.17--373.33) [79828]"}
                          (forall n_17: Ref ::
                          { Heap[n_17, next] } { QPMask[n_17, next] } { Heap[n_17, next] }
                          g_1[n_17] && n_17 != prev_j ==> Mask[n_17, next] >= 1 / 2
                        );
                      
                      // -- assumptions for inverse of receiver n
                        assume (forall n_17: Ref ::
                          { Heap[n_17, next] } { QPMask[n_17, next] } { Heap[n_17, next] }
                          (g_1[n_17] && n_17 != prev_j) && NoPerm < 1 / 2 ==> qpRange57(n_17) && invRecv57(n_17) == n_17
                        );
                        assume (forall o_4: Ref ::
                          { invRecv57(o_4) }
                          (g_1[invRecv57(o_4)] && invRecv57(o_4) != prev_j) && (NoPerm < 1 / 2 && qpRange57(o_4)) ==> invRecv57(o_4) == o_4
                        );
                      
                      // -- assume permission updates for field next
                        assume (forall o_4: Ref ::
                          { QPMask[o_4, next] }
                          ((g_1[invRecv57(o_4)] && invRecv57(o_4) != prev_j) && (NoPerm < 1 / 2 && qpRange57(o_4)) ==> invRecv57(o_4) == o_4 && QPMask[o_4, next] == Mask[o_4, next] - 1 / 2) && (!((g_1[invRecv57(o_4)] && invRecv57(o_4) != prev_j) && (NoPerm < 1 / 2 && qpRange57(o_4))) ==> QPMask[o_4, next] == Mask[o_4, next])
                        );
                      
                      // -- assume permission updates for independent locations
                        assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
                          { QPMask[o_4, f_5] }
                          f_5 != next ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
                        );
                      Mask := QPMask;
                      if (*) {
                        if (g_1[n$0_10] && Heap[n$0_10, next] != null) {
                          assert {:msg "  The precondition of method unlink might not hold. Assertion (n$0.next in g) might not hold. (list-swap.vpr@373.17--373.33) [79829]"}
                            g_1[Heap[n$0_10, next]];
                        }
                        assume false;
                      }
                      assume (forall n$0_11_1: Ref ::
                        { g_1[Heap[n$0_11_1, next]] } { g_1[n$0_11_1], Heap[n$0_11_1, next] }
                        g_1[n$0_11_1] && Heap[n$0_11_1, next] != null ==> g_1[Heap[n$0_11_1, next]]
                      );
                      // Finish exhale
                      havoc ExhaleHeap;
                      assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
                      Heap := ExhaleHeap;
                    
                    // -- Inhaling postcondition
                      assume !g_1[null];
                      assume g_1[prev_j];
                      perm := FullPerm;
                      assume prev_j != null;
                      Mask := Mask[prev_j, next:=Mask[prev_j, next] + perm];
                      assume state(Heap, Mask);
                      havoc QPMask;
                      assert {:msg "  Method call might fail. Quantified resource n$1.next might not be injective. (list-swap.vpr@373.17--373.33) [79830]"}
                        (forall n$1_6: Ref, n$1_6_1: Ref ::
                        
                        (((n$1_6 != n$1_6_1 && (g_1[n$1_6] && n$1_6 != prev_j)) && (g_1[n$1_6_1] && n$1_6_1 != prev_j)) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n$1_6 != n$1_6_1
                      );
                      
                      // -- Define Inverse Function
                        assume (forall n$1_6: Ref ::
                          { Heap[n$1_6, next] } { QPMask[n$1_6, next] } { Heap[n$1_6, next] }
                          (g_1[n$1_6] && n$1_6 != prev_j) && NoPerm < 1 / 2 ==> qpRange58(n$1_6) && invRecv58(n$1_6) == n$1_6
                        );
                        assume (forall o_4: Ref ::
                          { invRecv58(o_4) }
                          ((g_1[invRecv58(o_4)] && invRecv58(o_4) != prev_j) && NoPerm < 1 / 2) && qpRange58(o_4) ==> invRecv58(o_4) == o_4
                        );
                      // Check that permission expression is non-negative for all fields
                      assert {:msg "  Method call might fail. Fraction 1 / 2 might be negative. (list-swap.vpr@373.17--373.33) [79831]"}
                        (forall n$1_6: Ref ::
                        { Heap[n$1_6, next] } { QPMask[n$1_6, next] } { Heap[n$1_6, next] }
                        g_1[n$1_6] && n$1_6 != prev_j ==> 1 / 2 >= NoPerm
                      );
                      
                      // -- Assume set of fields is nonNull
                        assume (forall n$1_6: Ref ::
                          { Heap[n$1_6, next] } { QPMask[n$1_6, next] } { Heap[n$1_6, next] }
                          (g_1[n$1_6] && n$1_6 != prev_j) && 1 / 2 > NoPerm ==> n$1_6 != null
                        );
                      
                      // -- Define permissions
                        assume (forall o_4: Ref ::
                          { QPMask[o_4, next] }
                          (((g_1[invRecv58(o_4)] && invRecv58(o_4) != prev_j) && NoPerm < 1 / 2) && qpRange58(o_4) ==> (NoPerm < 1 / 2 ==> invRecv58(o_4) == o_4) && QPMask[o_4, next] == Mask[o_4, next] + 1 / 2) && (!(((g_1[invRecv58(o_4)] && invRecv58(o_4) != prev_j) && NoPerm < 1 / 2) && qpRange58(o_4)) ==> QPMask[o_4, next] == Mask[o_4, next])
                        );
                        assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
                          { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
                          f_5 != next ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
                        );
                      Mask := QPMask;
                      assume state(Heap, Mask);
                      assume (forall n$2_8: Ref ::
                        { g_1[Heap[n$2_8, next]] } { g_1[n$2_8], Heap[n$2_8, next] }
                        g_1[n$2_8] && Heap[n$2_8, next] != null ==> g_1[Heap[n$2_8, next]]
                      );
                      assume Heap[prev_j, next] == null;
                      if (PreCallHeap[prev_j, next] == null) {
                        assume state(Heap, Mask);
                        assume Set#Equal($$(Heap, g_1), $$(PreCallHeap, g_1));
                      }
                      if (PreCallHeap[prev_j, next] != null) {
                        assume state(Heap, Mask);
                        assume (forall v1_8: Ref, v2_8: Ref ::
                          { (edge($$#frame(FrameFragment($$#condqp1(Heap, g_1)), g_1), v1_8, v2_8): bool) }
                          (edge($$(Heap, g_1), v1_8, v2_8): bool) == ((edge($$(PreCallHeap, g_1), v1_8, v2_8): bool) && !(v1_8 == prev_j && v2_8 == PreCallHeap[prev_j, next]))
                        );
                      }
                      if (PreCallHeap[prev_j, next] != null) {
                        assume state(Heap, Mask);
                        assume (forall v1_9: Ref, v2_9: Ref ::
                          { (exists_path($$#frame(FrameFragment($$#condqp1(Heap, g_1)), g_1), v1_9, v2_9): bool) }
                          v1_9 != v2_9 ==> (exists_path($$(Heap, g_1), v1_9, v2_9): bool) == ((exists_path($$(PreCallHeap, g_1), v1_9, v2_9): bool) && !((exists_path($$(PreCallHeap, g_1), v1_9, prev_j): bool) && (exists_path($$(PreCallHeap, g_1), PreCallHeap[prev_j, next], v2_9): bool)))
                        );
                      }
                      assume state(Heap, Mask);
                    assume state(Heap, Mask);
                  
                  // -- Translating statement: link(g, prev_j, node_i) -- list-swap.vpr@374.17--374.38
                    PreCallHeap := Heap;
                    PreCallMask := Mask;
                    
                    // -- Exhaling precondition
                      ExhaleWellDef0Heap := Heap;
                      ExhaleWellDef0Mask := Mask;
                      assert {:msg "  The precondition of method link might not hold. Assertion (prev_j in g) might not hold. (list-swap.vpr@374.17--374.38) [79832]"}
                        g_1[prev_j];
                      if (node_i != null) {
                        assert {:msg "  The precondition of method link might not hold. Assertion (node_i in g) might not hold. (list-swap.vpr@374.17--374.38) [79833]"}
                          g_1[node_i];
                      }
                      assert {:msg "  The precondition of method link might not hold. Assertion !((null in g)) might not hold. (list-swap.vpr@374.17--374.38) [79834]"}
                        !g_1[null];
                      assert {:msg "  The precondition of method link might not hold. Assertion (prev_j in g) might not hold. (list-swap.vpr@374.17--374.38) [79835]"}
                        g_1[prev_j];
                      perm := FullPerm;
                      if (perm != NoPerm) {
                        assert {:msg "  The precondition of method link might not hold. There might be insufficient permission to access prev_j.next (list-swap.vpr@374.17--374.38) [79836]"}
                          perm <= Mask[prev_j, next];
                      }
                      Mask := Mask[prev_j, next:=Mask[prev_j, next] - perm];
                      havoc QPMask;
                      
                      // -- check that the permission amount is positive
                        assert {:msg "  The precondition of method link might not hold. Fraction 1 / 2 might be negative. (list-swap.vpr@374.17--374.38) [79837]"}
                          (forall n_18: Ref ::
                          { Heap[n_18, next] } { QPMask[n_18, next] } { Heap[n_18, next] }
                          (g_1[n_18] && n_18 != prev_j) && dummyFunction(Heap[n_18, next]) ==> 1 / 2 >= NoPerm
                        );
                      
                      // -- check if receiver n is injective
                        assert {:msg "  The precondition of method link might not hold. Quantified resource n.next might not be injective. (list-swap.vpr@374.17--374.38) [79838]"}
                          (forall n_18: Ref, n_18_1: Ref ::
                          { neverTriggered59(n_18), neverTriggered59(n_18_1) }
                          (((n_18 != n_18_1 && (g_1[n_18] && n_18 != prev_j)) && (g_1[n_18_1] && n_18_1 != prev_j)) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_18 != n_18_1
                        );
                      
                      // -- check if sufficient permission is held
                        assert {:msg "  The precondition of method link might not hold. There might be insufficient permission to access n.next (list-swap.vpr@374.17--374.38) [79839]"}
                          (forall n_18: Ref ::
                          { Heap[n_18, next] } { QPMask[n_18, next] } { Heap[n_18, next] }
                          g_1[n_18] && n_18 != prev_j ==> Mask[n_18, next] >= 1 / 2
                        );
                      
                      // -- assumptions for inverse of receiver n
                        assume (forall n_18: Ref ::
                          { Heap[n_18, next] } { QPMask[n_18, next] } { Heap[n_18, next] }
                          (g_1[n_18] && n_18 != prev_j) && NoPerm < 1 / 2 ==> qpRange59(n_18) && invRecv59(n_18) == n_18
                        );
                        assume (forall o_4: Ref ::
                          { invRecv59(o_4) }
                          (g_1[invRecv59(o_4)] && invRecv59(o_4) != prev_j) && (NoPerm < 1 / 2 && qpRange59(o_4)) ==> invRecv59(o_4) == o_4
                        );
                      
                      // -- assume permission updates for field next
                        assume (forall o_4: Ref ::
                          { QPMask[o_4, next] }
                          ((g_1[invRecv59(o_4)] && invRecv59(o_4) != prev_j) && (NoPerm < 1 / 2 && qpRange59(o_4)) ==> invRecv59(o_4) == o_4 && QPMask[o_4, next] == Mask[o_4, next] - 1 / 2) && (!((g_1[invRecv59(o_4)] && invRecv59(o_4) != prev_j) && (NoPerm < 1 / 2 && qpRange59(o_4))) ==> QPMask[o_4, next] == Mask[o_4, next])
                        );
                      
                      // -- assume permission updates for independent locations
                        assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
                          { QPMask[o_4, f_5] }
                          f_5 != next ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
                        );
                      Mask := QPMask;
                      if (*) {
                        if (g_1[n$0_12] && Heap[n$0_12, next] != null) {
                          assert {:msg "  The precondition of method link might not hold. Assertion (n$0.next in g) might not hold. (list-swap.vpr@374.17--374.38) [79840]"}
                            g_1[Heap[n$0_12, next]];
                        }
                        assume false;
                      }
                      assume (forall n$0_13_1: Ref ::
                        { g_1[Heap[n$0_13_1, next]] } { g_1[n$0_13_1], Heap[n$0_13_1, next] }
                        g_1[n$0_13_1] && Heap[n$0_13_1, next] != null ==> g_1[Heap[n$0_13_1, next]]
                      );
                      assert {:msg "  The precondition of method link might not hold. Assertion prev_j.next == null might not hold. (list-swap.vpr@374.17--374.38) [79841]"}
                        Heap[prev_j, next] == null;
                      // Finish exhale
                      havoc ExhaleHeap;
                      assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
                      Heap := ExhaleHeap;
                    
                    // -- Inhaling postcondition
                      assume !g_1[null];
                      assume g_1[prev_j];
                      perm := FullPerm;
                      assume prev_j != null;
                      Mask := Mask[prev_j, next:=Mask[prev_j, next] + perm];
                      assume state(Heap, Mask);
                      havoc QPMask;
                      assert {:msg "  Method call might fail. Quantified resource n$1.next might not be injective. (list-swap.vpr@374.17--374.38) [79842]"}
                        (forall n$1_7: Ref, n$1_7_1: Ref ::
                        
                        (((n$1_7 != n$1_7_1 && (g_1[n$1_7] && n$1_7 != prev_j)) && (g_1[n$1_7_1] && n$1_7_1 != prev_j)) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n$1_7 != n$1_7_1
                      );
                      
                      // -- Define Inverse Function
                        assume (forall n$1_7: Ref ::
                          { Heap[n$1_7, next] } { QPMask[n$1_7, next] } { Heap[n$1_7, next] }
                          (g_1[n$1_7] && n$1_7 != prev_j) && NoPerm < 1 / 2 ==> qpRange60(n$1_7) && invRecv60(n$1_7) == n$1_7
                        );
                        assume (forall o_4: Ref ::
                          { invRecv60(o_4) }
                          ((g_1[invRecv60(o_4)] && invRecv60(o_4) != prev_j) && NoPerm < 1 / 2) && qpRange60(o_4) ==> invRecv60(o_4) == o_4
                        );
                      // Check that permission expression is non-negative for all fields
                      assert {:msg "  Method call might fail. Fraction 1 / 2 might be negative. (list-swap.vpr@374.17--374.38) [79843]"}
                        (forall n$1_7: Ref ::
                        { Heap[n$1_7, next] } { QPMask[n$1_7, next] } { Heap[n$1_7, next] }
                        g_1[n$1_7] && n$1_7 != prev_j ==> 1 / 2 >= NoPerm
                      );
                      
                      // -- Assume set of fields is nonNull
                        assume (forall n$1_7: Ref ::
                          { Heap[n$1_7, next] } { QPMask[n$1_7, next] } { Heap[n$1_7, next] }
                          (g_1[n$1_7] && n$1_7 != prev_j) && 1 / 2 > NoPerm ==> n$1_7 != null
                        );
                      
                      // -- Define permissions
                        assume (forall o_4: Ref ::
                          { QPMask[o_4, next] }
                          (((g_1[invRecv60(o_4)] && invRecv60(o_4) != prev_j) && NoPerm < 1 / 2) && qpRange60(o_4) ==> (NoPerm < 1 / 2 ==> invRecv60(o_4) == o_4) && QPMask[o_4, next] == Mask[o_4, next] + 1 / 2) && (!(((g_1[invRecv60(o_4)] && invRecv60(o_4) != prev_j) && NoPerm < 1 / 2) && qpRange60(o_4)) ==> QPMask[o_4, next] == Mask[o_4, next])
                        );
                        assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
                          { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
                          f_5 != next ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
                        );
                      Mask := QPMask;
                      assume state(Heap, Mask);
                      assume (forall n$2_9: Ref ::
                        { g_1[Heap[n$2_9, next]] } { g_1[n$2_9], Heap[n$2_9, next] }
                        g_1[n$2_9] && Heap[n$2_9, next] != null ==> g_1[Heap[n$2_9, next]]
                      );
                      assume Heap[prev_j, next] == node_i;
                      if (node_i == null) {
                        assume state(Heap, Mask);
                        assume Set#Equal($$(Heap, g_1), $$(PreCallHeap, g_1));
                      }
                      if (node_i != null) {
                        assume state(Heap, Mask);
                        assume (forall v1_10: Ref, v2_10: Ref ::
                          { (edge($$#frame(FrameFragment($$#condqp1(PreCallHeap, g_1)), g_1), v1_10, v2_10): bool) }
                          (edge($$(Heap, g_1), v1_10, v2_10): bool) == ((edge($$(PreCallHeap, g_1), v1_10, v2_10): bool) || (v1_10 == prev_j && v2_10 == node_i))
                        );
                      }
                      if (node_i != null) {
                        assume state(Heap, Mask);
                        assume (forall v1_11: Ref, v2_11: Ref ::
                          { (exists_path($$#frame(FrameFragment($$#condqp1(Heap, g_1)), g_1), v1_11, v2_11): bool) }
                          v1_11 != v2_11 ==> (exists_path($$(Heap, g_1), v1_11, v2_11): bool) == ((exists_path($$(PreCallHeap, g_1), v1_11, v2_11): bool) || ((exists_path($$(PreCallHeap, g_1), v1_11, prev_j): bool) && (exists_path($$(PreCallHeap, g_1), node_i, v2_11): bool)))
                        );
                      }
                      assume state(Heap, Mask);
                    assume state(Heap, Mask);
                } else {
                  
                  // -- Translating statement: unlink(g, node_j) -- list-swap.vpr@378.17--378.33
                    PreCallHeap := Heap;
                    PreCallMask := Mask;
                    
                    // -- Exhaling precondition
                      ExhaleWellDef0Heap := Heap;
                      ExhaleWellDef0Mask := Mask;
                      assert {:msg "  The precondition of method unlink might not hold. Assertion (node_j in g) might not hold. (list-swap.vpr@378.17--378.33) [79844]"}
                        g_1[node_j];
                      assert {:msg "  The precondition of method unlink might not hold. Assertion !((null in g)) might not hold. (list-swap.vpr@378.17--378.33) [79845]"}
                        !g_1[null];
                      assert {:msg "  The precondition of method unlink might not hold. Assertion (node_j in g) might not hold. (list-swap.vpr@378.17--378.33) [79846]"}
                        g_1[node_j];
                      perm := FullPerm;
                      if (perm != NoPerm) {
                        assert {:msg "  The precondition of method unlink might not hold. There might be insufficient permission to access node_j.next (list-swap.vpr@378.17--378.33) [79847]"}
                          perm <= Mask[node_j, next];
                      }
                      Mask := Mask[node_j, next:=Mask[node_j, next] - perm];
                      havoc QPMask;
                      
                      // -- check that the permission amount is positive
                        assert {:msg "  The precondition of method unlink might not hold. Fraction 1 / 2 might be negative. (list-swap.vpr@378.17--378.33) [79848]"}
                          (forall n_19: Ref ::
                          { Heap[n_19, next] } { QPMask[n_19, next] } { Heap[n_19, next] }
                          (g_1[n_19] && n_19 != node_j) && dummyFunction(Heap[n_19, next]) ==> 1 / 2 >= NoPerm
                        );
                      
                      // -- check if receiver n is injective
                        assert {:msg "  The precondition of method unlink might not hold. Quantified resource n.next might not be injective. (list-swap.vpr@378.17--378.33) [79849]"}
                          (forall n_19: Ref, n_19_1: Ref ::
                          { neverTriggered61(n_19), neverTriggered61(n_19_1) }
                          (((n_19 != n_19_1 && (g_1[n_19] && n_19 != node_j)) && (g_1[n_19_1] && n_19_1 != node_j)) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_19 != n_19_1
                        );
                      
                      // -- check if sufficient permission is held
                        assert {:msg "  The precondition of method unlink might not hold. There might be insufficient permission to access n.next (list-swap.vpr@378.17--378.33) [79850]"}
                          (forall n_19: Ref ::
                          { Heap[n_19, next] } { QPMask[n_19, next] } { Heap[n_19, next] }
                          g_1[n_19] && n_19 != node_j ==> Mask[n_19, next] >= 1 / 2
                        );
                      
                      // -- assumptions for inverse of receiver n
                        assume (forall n_19: Ref ::
                          { Heap[n_19, next] } { QPMask[n_19, next] } { Heap[n_19, next] }
                          (g_1[n_19] && n_19 != node_j) && NoPerm < 1 / 2 ==> qpRange61(n_19) && invRecv61(n_19) == n_19
                        );
                        assume (forall o_4: Ref ::
                          { invRecv61(o_4) }
                          (g_1[invRecv61(o_4)] && invRecv61(o_4) != node_j) && (NoPerm < 1 / 2 && qpRange61(o_4)) ==> invRecv61(o_4) == o_4
                        );
                      
                      // -- assume permission updates for field next
                        assume (forall o_4: Ref ::
                          { QPMask[o_4, next] }
                          ((g_1[invRecv61(o_4)] && invRecv61(o_4) != node_j) && (NoPerm < 1 / 2 && qpRange61(o_4)) ==> invRecv61(o_4) == o_4 && QPMask[o_4, next] == Mask[o_4, next] - 1 / 2) && (!((g_1[invRecv61(o_4)] && invRecv61(o_4) != node_j) && (NoPerm < 1 / 2 && qpRange61(o_4))) ==> QPMask[o_4, next] == Mask[o_4, next])
                        );
                      
                      // -- assume permission updates for independent locations
                        assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
                          { QPMask[o_4, f_5] }
                          f_5 != next ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
                        );
                      Mask := QPMask;
                      if (*) {
                        if (g_1[n$0_14] && Heap[n$0_14, next] != null) {
                          assert {:msg "  The precondition of method unlink might not hold. Assertion (n$0.next in g) might not hold. (list-swap.vpr@378.17--378.33) [79851]"}
                            g_1[Heap[n$0_14, next]];
                        }
                        assume false;
                      }
                      assume (forall n$0_15_1: Ref ::
                        { g_1[Heap[n$0_15_1, next]] } { g_1[n$0_15_1], Heap[n$0_15_1, next] }
                        g_1[n$0_15_1] && Heap[n$0_15_1, next] != null ==> g_1[Heap[n$0_15_1, next]]
                      );
                      // Finish exhale
                      havoc ExhaleHeap;
                      assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
                      Heap := ExhaleHeap;
                    
                    // -- Inhaling postcondition
                      assume !g_1[null];
                      assume g_1[node_j];
                      perm := FullPerm;
                      assume node_j != null;
                      Mask := Mask[node_j, next:=Mask[node_j, next] + perm];
                      assume state(Heap, Mask);
                      havoc QPMask;
                      assert {:msg "  Method call might fail. Quantified resource n$1.next might not be injective. (list-swap.vpr@378.17--378.33) [79852]"}
                        (forall n$1_8: Ref, n$1_8_1: Ref ::
                        
                        (((n$1_8 != n$1_8_1 && (g_1[n$1_8] && n$1_8 != node_j)) && (g_1[n$1_8_1] && n$1_8_1 != node_j)) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n$1_8 != n$1_8_1
                      );
                      
                      // -- Define Inverse Function
                        assume (forall n$1_8: Ref ::
                          { Heap[n$1_8, next] } { QPMask[n$1_8, next] } { Heap[n$1_8, next] }
                          (g_1[n$1_8] && n$1_8 != node_j) && NoPerm < 1 / 2 ==> qpRange62(n$1_8) && invRecv62(n$1_8) == n$1_8
                        );
                        assume (forall o_4: Ref ::
                          { invRecv62(o_4) }
                          ((g_1[invRecv62(o_4)] && invRecv62(o_4) != node_j) && NoPerm < 1 / 2) && qpRange62(o_4) ==> invRecv62(o_4) == o_4
                        );
                      // Check that permission expression is non-negative for all fields
                      assert {:msg "  Method call might fail. Fraction 1 / 2 might be negative. (list-swap.vpr@378.17--378.33) [79853]"}
                        (forall n$1_8: Ref ::
                        { Heap[n$1_8, next] } { QPMask[n$1_8, next] } { Heap[n$1_8, next] }
                        g_1[n$1_8] && n$1_8 != node_j ==> 1 / 2 >= NoPerm
                      );
                      
                      // -- Assume set of fields is nonNull
                        assume (forall n$1_8: Ref ::
                          { Heap[n$1_8, next] } { QPMask[n$1_8, next] } { Heap[n$1_8, next] }
                          (g_1[n$1_8] && n$1_8 != node_j) && 1 / 2 > NoPerm ==> n$1_8 != null
                        );
                      
                      // -- Define permissions
                        assume (forall o_4: Ref ::
                          { QPMask[o_4, next] }
                          (((g_1[invRecv62(o_4)] && invRecv62(o_4) != node_j) && NoPerm < 1 / 2) && qpRange62(o_4) ==> (NoPerm < 1 / 2 ==> invRecv62(o_4) == o_4) && QPMask[o_4, next] == Mask[o_4, next] + 1 / 2) && (!(((g_1[invRecv62(o_4)] && invRecv62(o_4) != node_j) && NoPerm < 1 / 2) && qpRange62(o_4)) ==> QPMask[o_4, next] == Mask[o_4, next])
                        );
                        assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
                          { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
                          f_5 != next ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
                        );
                      Mask := QPMask;
                      assume state(Heap, Mask);
                      assume (forall n$2_10: Ref ::
                        { g_1[Heap[n$2_10, next]] } { g_1[n$2_10], Heap[n$2_10, next] }
                        g_1[n$2_10] && Heap[n$2_10, next] != null ==> g_1[Heap[n$2_10, next]]
                      );
                      assume Heap[node_j, next] == null;
                      if (PreCallHeap[node_j, next] == null) {
                        assume state(Heap, Mask);
                        assume Set#Equal($$(Heap, g_1), $$(PreCallHeap, g_1));
                      }
                      if (PreCallHeap[node_j, next] != null) {
                        assume state(Heap, Mask);
                        assume (forall v1_12: Ref, v2_12: Ref ::
                          { (edge($$#frame(FrameFragment($$#condqp1(Heap, g_1)), g_1), v1_12, v2_12): bool) }
                          (edge($$(Heap, g_1), v1_12, v2_12): bool) == ((edge($$(PreCallHeap, g_1), v1_12, v2_12): bool) && !(v1_12 == node_j && v2_12 == PreCallHeap[node_j, next]))
                        );
                      }
                      if (PreCallHeap[node_j, next] != null) {
                        assume state(Heap, Mask);
                        assume (forall v1_13: Ref, v2_13: Ref ::
                          { (exists_path($$#frame(FrameFragment($$#condqp1(Heap, g_1)), g_1), v1_13, v2_13): bool) }
                          v1_13 != v2_13 ==> (exists_path($$(Heap, g_1), v1_13, v2_13): bool) == ((exists_path($$(PreCallHeap, g_1), v1_13, v2_13): bool) && !((exists_path($$(PreCallHeap, g_1), v1_13, node_j): bool) && (exists_path($$(PreCallHeap, g_1), PreCallHeap[node_j, next], v2_13): bool)))
                        );
                      }
                      assume state(Heap, Mask);
                    assume state(Heap, Mask);
                  
                  // -- Translating statement: link(g, node_j, node_i) -- list-swap.vpr@379.19--379.40
                    PreCallHeap := Heap;
                    PreCallMask := Mask;
                    
                    // -- Exhaling precondition
                      ExhaleWellDef0Heap := Heap;
                      ExhaleWellDef0Mask := Mask;
                      assert {:msg "  The precondition of method link might not hold. Assertion (node_j in g) might not hold. (list-swap.vpr@379.19--379.40) [79854]"}
                        g_1[node_j];
                      if (node_i != null) {
                        assert {:msg "  The precondition of method link might not hold. Assertion (node_i in g) might not hold. (list-swap.vpr@379.19--379.40) [79855]"}
                          g_1[node_i];
                      }
                      assert {:msg "  The precondition of method link might not hold. Assertion !((null in g)) might not hold. (list-swap.vpr@379.19--379.40) [79856]"}
                        !g_1[null];
                      assert {:msg "  The precondition of method link might not hold. Assertion (node_j in g) might not hold. (list-swap.vpr@379.19--379.40) [79857]"}
                        g_1[node_j];
                      perm := FullPerm;
                      if (perm != NoPerm) {
                        assert {:msg "  The precondition of method link might not hold. There might be insufficient permission to access node_j.next (list-swap.vpr@379.19--379.40) [79858]"}
                          perm <= Mask[node_j, next];
                      }
                      Mask := Mask[node_j, next:=Mask[node_j, next] - perm];
                      havoc QPMask;
                      
                      // -- check that the permission amount is positive
                        assert {:msg "  The precondition of method link might not hold. Fraction 1 / 2 might be negative. (list-swap.vpr@379.19--379.40) [79859]"}
                          (forall n_20: Ref ::
                          { Heap[n_20, next] } { QPMask[n_20, next] } { Heap[n_20, next] }
                          (g_1[n_20] && n_20 != node_j) && dummyFunction(Heap[n_20, next]) ==> 1 / 2 >= NoPerm
                        );
                      
                      // -- check if receiver n is injective
                        assert {:msg "  The precondition of method link might not hold. Quantified resource n.next might not be injective. (list-swap.vpr@379.19--379.40) [79860]"}
                          (forall n_20: Ref, n_20_1: Ref ::
                          { neverTriggered63(n_20), neverTriggered63(n_20_1) }
                          (((n_20 != n_20_1 && (g_1[n_20] && n_20 != node_j)) && (g_1[n_20_1] && n_20_1 != node_j)) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_20 != n_20_1
                        );
                      
                      // -- check if sufficient permission is held
                        assert {:msg "  The precondition of method link might not hold. There might be insufficient permission to access n.next (list-swap.vpr@379.19--379.40) [79861]"}
                          (forall n_20: Ref ::
                          { Heap[n_20, next] } { QPMask[n_20, next] } { Heap[n_20, next] }
                          g_1[n_20] && n_20 != node_j ==> Mask[n_20, next] >= 1 / 2
                        );
                      
                      // -- assumptions for inverse of receiver n
                        assume (forall n_20: Ref ::
                          { Heap[n_20, next] } { QPMask[n_20, next] } { Heap[n_20, next] }
                          (g_1[n_20] && n_20 != node_j) && NoPerm < 1 / 2 ==> qpRange63(n_20) && invRecv63(n_20) == n_20
                        );
                        assume (forall o_4: Ref ::
                          { invRecv63(o_4) }
                          (g_1[invRecv63(o_4)] && invRecv63(o_4) != node_j) && (NoPerm < 1 / 2 && qpRange63(o_4)) ==> invRecv63(o_4) == o_4
                        );
                      
                      // -- assume permission updates for field next
                        assume (forall o_4: Ref ::
                          { QPMask[o_4, next] }
                          ((g_1[invRecv63(o_4)] && invRecv63(o_4) != node_j) && (NoPerm < 1 / 2 && qpRange63(o_4)) ==> invRecv63(o_4) == o_4 && QPMask[o_4, next] == Mask[o_4, next] - 1 / 2) && (!((g_1[invRecv63(o_4)] && invRecv63(o_4) != node_j) && (NoPerm < 1 / 2 && qpRange63(o_4))) ==> QPMask[o_4, next] == Mask[o_4, next])
                        );
                      
                      // -- assume permission updates for independent locations
                        assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
                          { QPMask[o_4, f_5] }
                          f_5 != next ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
                        );
                      Mask := QPMask;
                      if (*) {
                        if (g_1[n$0_16] && Heap[n$0_16, next] != null) {
                          assert {:msg "  The precondition of method link might not hold. Assertion (n$0.next in g) might not hold. (list-swap.vpr@379.19--379.40) [79862]"}
                            g_1[Heap[n$0_16, next]];
                        }
                        assume false;
                      }
                      assume (forall n$0_17_1: Ref ::
                        { g_1[Heap[n$0_17_1, next]] } { g_1[n$0_17_1], Heap[n$0_17_1, next] }
                        g_1[n$0_17_1] && Heap[n$0_17_1, next] != null ==> g_1[Heap[n$0_17_1, next]]
                      );
                      assert {:msg "  The precondition of method link might not hold. Assertion node_j.next == null might not hold. (list-swap.vpr@379.19--379.40) [79863]"}
                        Heap[node_j, next] == null;
                      // Finish exhale
                      havoc ExhaleHeap;
                      assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
                      Heap := ExhaleHeap;
                    
                    // -- Inhaling postcondition
                      assume !g_1[null];
                      assume g_1[node_j];
                      perm := FullPerm;
                      assume node_j != null;
                      Mask := Mask[node_j, next:=Mask[node_j, next] + perm];
                      assume state(Heap, Mask);
                      havoc QPMask;
                      assert {:msg "  Method call might fail. Quantified resource n$1.next might not be injective. (list-swap.vpr@379.19--379.40) [79864]"}
                        (forall n$1_9: Ref, n$1_9_1: Ref ::
                        
                        (((n$1_9 != n$1_9_1 && (g_1[n$1_9] && n$1_9 != node_j)) && (g_1[n$1_9_1] && n$1_9_1 != node_j)) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n$1_9 != n$1_9_1
                      );
                      
                      // -- Define Inverse Function
                        assume (forall n$1_9: Ref ::
                          { Heap[n$1_9, next] } { QPMask[n$1_9, next] } { Heap[n$1_9, next] }
                          (g_1[n$1_9] && n$1_9 != node_j) && NoPerm < 1 / 2 ==> qpRange64(n$1_9) && invRecv64(n$1_9) == n$1_9
                        );
                        assume (forall o_4: Ref ::
                          { invRecv64(o_4) }
                          ((g_1[invRecv64(o_4)] && invRecv64(o_4) != node_j) && NoPerm < 1 / 2) && qpRange64(o_4) ==> invRecv64(o_4) == o_4
                        );
                      // Check that permission expression is non-negative for all fields
                      assert {:msg "  Method call might fail. Fraction 1 / 2 might be negative. (list-swap.vpr@379.19--379.40) [79865]"}
                        (forall n$1_9: Ref ::
                        { Heap[n$1_9, next] } { QPMask[n$1_9, next] } { Heap[n$1_9, next] }
                        g_1[n$1_9] && n$1_9 != node_j ==> 1 / 2 >= NoPerm
                      );
                      
                      // -- Assume set of fields is nonNull
                        assume (forall n$1_9: Ref ::
                          { Heap[n$1_9, next] } { QPMask[n$1_9, next] } { Heap[n$1_9, next] }
                          (g_1[n$1_9] && n$1_9 != node_j) && 1 / 2 > NoPerm ==> n$1_9 != null
                        );
                      
                      // -- Define permissions
                        assume (forall o_4: Ref ::
                          { QPMask[o_4, next] }
                          (((g_1[invRecv64(o_4)] && invRecv64(o_4) != node_j) && NoPerm < 1 / 2) && qpRange64(o_4) ==> (NoPerm < 1 / 2 ==> invRecv64(o_4) == o_4) && QPMask[o_4, next] == Mask[o_4, next] + 1 / 2) && (!(((g_1[invRecv64(o_4)] && invRecv64(o_4) != node_j) && NoPerm < 1 / 2) && qpRange64(o_4)) ==> QPMask[o_4, next] == Mask[o_4, next])
                        );
                        assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
                          { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
                          f_5 != next ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
                        );
                      Mask := QPMask;
                      assume state(Heap, Mask);
                      assume (forall n$2_11: Ref ::
                        { g_1[Heap[n$2_11, next]] } { g_1[n$2_11], Heap[n$2_11, next] }
                        g_1[n$2_11] && Heap[n$2_11, next] != null ==> g_1[Heap[n$2_11, next]]
                      );
                      assume Heap[node_j, next] == node_i;
                      if (node_i == null) {
                        assume state(Heap, Mask);
                        assume Set#Equal($$(Heap, g_1), $$(PreCallHeap, g_1));
                      }
                      if (node_i != null) {
                        assume state(Heap, Mask);
                        assume (forall v1_14: Ref, v2_14: Ref ::
                          { (edge($$#frame(FrameFragment($$#condqp1(PreCallHeap, g_1)), g_1), v1_14, v2_14): bool) }
                          (edge($$(Heap, g_1), v1_14, v2_14): bool) == ((edge($$(PreCallHeap, g_1), v1_14, v2_14): bool) || (v1_14 == node_j && v2_14 == node_i))
                        );
                      }
                      if (node_i != null) {
                        assume state(Heap, Mask);
                        assume (forall v1_15: Ref, v2_15: Ref ::
                          { (exists_path($$#frame(FrameFragment($$#condqp1(Heap, g_1)), g_1), v1_15, v2_15): bool) }
                          v1_15 != v2_15 ==> (exists_path($$(Heap, g_1), v1_15, v2_15): bool) == ((exists_path($$(PreCallHeap, g_1), v1_15, v2_15): bool) || ((exists_path($$(PreCallHeap, g_1), v1_15, node_j): bool) && (exists_path($$(PreCallHeap, g_1), node_i, v2_15): bool)))
                        );
                      }
                      assume state(Heap, Mask);
                    assume state(Heap, Mask);
                }
                assume state(Heap, Mask);
              
              // -- Translating statement: unlink(g, node_i) -- list-swap.vpr@382.13--382.29
                PreCallHeap := Heap;
                PreCallMask := Mask;
                
                // -- Exhaling precondition
                  ExhaleWellDef0Heap := Heap;
                  ExhaleWellDef0Mask := Mask;
                  assert {:msg "  The precondition of method unlink might not hold. Assertion (node_i in g) might not hold. (list-swap.vpr@382.13--382.29) [79866]"}
                    g_1[node_i];
                  assert {:msg "  The precondition of method unlink might not hold. Assertion !((null in g)) might not hold. (list-swap.vpr@382.13--382.29) [79867]"}
                    !g_1[null];
                  assert {:msg "  The precondition of method unlink might not hold. Assertion (node_i in g) might not hold. (list-swap.vpr@382.13--382.29) [79868]"}
                    g_1[node_i];
                  perm := FullPerm;
                  if (perm != NoPerm) {
                    assert {:msg "  The precondition of method unlink might not hold. There might be insufficient permission to access node_i.next (list-swap.vpr@382.13--382.29) [79869]"}
                      perm <= Mask[node_i, next];
                  }
                  Mask := Mask[node_i, next:=Mask[node_i, next] - perm];
                  havoc QPMask;
                  
                  // -- check that the permission amount is positive
                    assert {:msg "  The precondition of method unlink might not hold. Fraction 1 / 2 might be negative. (list-swap.vpr@382.13--382.29) [79870]"}
                      (forall n_21: Ref ::
                      { Heap[n_21, next] } { QPMask[n_21, next] } { Heap[n_21, next] }
                      (g_1[n_21] && n_21 != node_i) && dummyFunction(Heap[n_21, next]) ==> 1 / 2 >= NoPerm
                    );
                  
                  // -- check if receiver n is injective
                    assert {:msg "  The precondition of method unlink might not hold. Quantified resource n.next might not be injective. (list-swap.vpr@382.13--382.29) [79871]"}
                      (forall n_21: Ref, n_21_1: Ref ::
                      { neverTriggered65(n_21), neverTriggered65(n_21_1) }
                      (((n_21 != n_21_1 && (g_1[n_21] && n_21 != node_i)) && (g_1[n_21_1] && n_21_1 != node_i)) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_21 != n_21_1
                    );
                  
                  // -- check if sufficient permission is held
                    assert {:msg "  The precondition of method unlink might not hold. There might be insufficient permission to access n.next (list-swap.vpr@382.13--382.29) [79872]"}
                      (forall n_21: Ref ::
                      { Heap[n_21, next] } { QPMask[n_21, next] } { Heap[n_21, next] }
                      g_1[n_21] && n_21 != node_i ==> Mask[n_21, next] >= 1 / 2
                    );
                  
                  // -- assumptions for inverse of receiver n
                    assume (forall n_21: Ref ::
                      { Heap[n_21, next] } { QPMask[n_21, next] } { Heap[n_21, next] }
                      (g_1[n_21] && n_21 != node_i) && NoPerm < 1 / 2 ==> qpRange65(n_21) && invRecv65(n_21) == n_21
                    );
                    assume (forall o_4: Ref ::
                      { invRecv65(o_4) }
                      (g_1[invRecv65(o_4)] && invRecv65(o_4) != node_i) && (NoPerm < 1 / 2 && qpRange65(o_4)) ==> invRecv65(o_4) == o_4
                    );
                  
                  // -- assume permission updates for field next
                    assume (forall o_4: Ref ::
                      { QPMask[o_4, next] }
                      ((g_1[invRecv65(o_4)] && invRecv65(o_4) != node_i) && (NoPerm < 1 / 2 && qpRange65(o_4)) ==> invRecv65(o_4) == o_4 && QPMask[o_4, next] == Mask[o_4, next] - 1 / 2) && (!((g_1[invRecv65(o_4)] && invRecv65(o_4) != node_i) && (NoPerm < 1 / 2 && qpRange65(o_4))) ==> QPMask[o_4, next] == Mask[o_4, next])
                    );
                  
                  // -- assume permission updates for independent locations
                    assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
                      { QPMask[o_4, f_5] }
                      f_5 != next ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
                    );
                  Mask := QPMask;
                  if (*) {
                    if (g_1[n$0_18] && Heap[n$0_18, next] != null) {
                      assert {:msg "  The precondition of method unlink might not hold. Assertion (n$0.next in g) might not hold. (list-swap.vpr@382.13--382.29) [79873]"}
                        g_1[Heap[n$0_18, next]];
                    }
                    assume false;
                  }
                  assume (forall n$0_19_1: Ref ::
                    { g_1[Heap[n$0_19_1, next]] } { g_1[n$0_19_1], Heap[n$0_19_1, next] }
                    g_1[n$0_19_1] && Heap[n$0_19_1, next] != null ==> g_1[Heap[n$0_19_1, next]]
                  );
                  // Finish exhale
                  havoc ExhaleHeap;
                  assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
                  Heap := ExhaleHeap;
                
                // -- Inhaling postcondition
                  assume !g_1[null];
                  assume g_1[node_i];
                  perm := FullPerm;
                  assume node_i != null;
                  Mask := Mask[node_i, next:=Mask[node_i, next] + perm];
                  assume state(Heap, Mask);
                  havoc QPMask;
                  assert {:msg "  Method call might fail. Quantified resource n$1.next might not be injective. (list-swap.vpr@382.13--382.29) [79874]"}
                    (forall n$1_10: Ref, n$1_10_1: Ref ::
                    
                    (((n$1_10 != n$1_10_1 && (g_1[n$1_10] && n$1_10 != node_i)) && (g_1[n$1_10_1] && n$1_10_1 != node_i)) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n$1_10 != n$1_10_1
                  );
                  
                  // -- Define Inverse Function
                    assume (forall n$1_10: Ref ::
                      { Heap[n$1_10, next] } { QPMask[n$1_10, next] } { Heap[n$1_10, next] }
                      (g_1[n$1_10] && n$1_10 != node_i) && NoPerm < 1 / 2 ==> qpRange66(n$1_10) && invRecv66(n$1_10) == n$1_10
                    );
                    assume (forall o_4: Ref ::
                      { invRecv66(o_4) }
                      ((g_1[invRecv66(o_4)] && invRecv66(o_4) != node_i) && NoPerm < 1 / 2) && qpRange66(o_4) ==> invRecv66(o_4) == o_4
                    );
                  // Check that permission expression is non-negative for all fields
                  assert {:msg "  Method call might fail. Fraction 1 / 2 might be negative. (list-swap.vpr@382.13--382.29) [79875]"}
                    (forall n$1_10: Ref ::
                    { Heap[n$1_10, next] } { QPMask[n$1_10, next] } { Heap[n$1_10, next] }
                    g_1[n$1_10] && n$1_10 != node_i ==> 1 / 2 >= NoPerm
                  );
                  
                  // -- Assume set of fields is nonNull
                    assume (forall n$1_10: Ref ::
                      { Heap[n$1_10, next] } { QPMask[n$1_10, next] } { Heap[n$1_10, next] }
                      (g_1[n$1_10] && n$1_10 != node_i) && 1 / 2 > NoPerm ==> n$1_10 != null
                    );
                  
                  // -- Define permissions
                    assume (forall o_4: Ref ::
                      { QPMask[o_4, next] }
                      (((g_1[invRecv66(o_4)] && invRecv66(o_4) != node_i) && NoPerm < 1 / 2) && qpRange66(o_4) ==> (NoPerm < 1 / 2 ==> invRecv66(o_4) == o_4) && QPMask[o_4, next] == Mask[o_4, next] + 1 / 2) && (!(((g_1[invRecv66(o_4)] && invRecv66(o_4) != node_i) && NoPerm < 1 / 2) && qpRange66(o_4)) ==> QPMask[o_4, next] == Mask[o_4, next])
                    );
                    assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
                      { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
                      f_5 != next ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
                    );
                  Mask := QPMask;
                  assume state(Heap, Mask);
                  assume (forall n$2_12: Ref ::
                    { g_1[Heap[n$2_12, next]] } { g_1[n$2_12], Heap[n$2_12, next] }
                    g_1[n$2_12] && Heap[n$2_12, next] != null ==> g_1[Heap[n$2_12, next]]
                  );
                  assume Heap[node_i, next] == null;
                  if (PreCallHeap[node_i, next] == null) {
                    assume state(Heap, Mask);
                    assume Set#Equal($$(Heap, g_1), $$(PreCallHeap, g_1));
                  }
                  if (PreCallHeap[node_i, next] != null) {
                    assume state(Heap, Mask);
                    assume (forall v1_16: Ref, v2_16: Ref ::
                      { (edge($$#frame(FrameFragment($$#condqp1(Heap, g_1)), g_1), v1_16, v2_16): bool) }
                      (edge($$(Heap, g_1), v1_16, v2_16): bool) == ((edge($$(PreCallHeap, g_1), v1_16, v2_16): bool) && !(v1_16 == node_i && v2_16 == PreCallHeap[node_i, next]))
                    );
                  }
                  if (PreCallHeap[node_i, next] != null) {
                    assume state(Heap, Mask);
                    assume (forall v1_17: Ref, v2_17: Ref ::
                      { (exists_path($$#frame(FrameFragment($$#condqp1(Heap, g_1)), g_1), v1_17, v2_17): bool) }
                      v1_17 != v2_17 ==> (exists_path($$(Heap, g_1), v1_17, v2_17): bool) == ((exists_path($$(PreCallHeap, g_1), v1_17, v2_17): bool) && !((exists_path($$(PreCallHeap, g_1), v1_17, node_i): bool) && (exists_path($$(PreCallHeap, g_1), PreCallHeap[node_i, next], v2_17): bool)))
                    );
                  }
                  assume state(Heap, Mask);
                assume state(Heap, Mask);
              
              // -- Translating statement: link(g, node_i, exit) -- list-swap.vpr@383.15--383.34
                PreCallHeap := Heap;
                PreCallMask := Mask;
                
                // -- Exhaling precondition
                  ExhaleWellDef0Heap := Heap;
                  ExhaleWellDef0Mask := Mask;
                  assert {:msg "  The precondition of method link might not hold. Assertion (node_i in g) might not hold. (list-swap.vpr@383.15--383.34) [79876]"}
                    g_1[node_i];
                  if (vexit != null) {
                    assert {:msg "  The precondition of method link might not hold. Assertion (exit in g) might not hold. (list-swap.vpr@383.15--383.34) [79877]"}
                      g_1[vexit];
                  }
                  assert {:msg "  The precondition of method link might not hold. Assertion !((null in g)) might not hold. (list-swap.vpr@383.15--383.34) [79878]"}
                    !g_1[null];
                  assert {:msg "  The precondition of method link might not hold. Assertion (node_i in g) might not hold. (list-swap.vpr@383.15--383.34) [79879]"}
                    g_1[node_i];
                  perm := FullPerm;
                  if (perm != NoPerm) {
                    assert {:msg "  The precondition of method link might not hold. There might be insufficient permission to access node_i.next (list-swap.vpr@383.15--383.34) [79880]"}
                      perm <= Mask[node_i, next];
                  }
                  Mask := Mask[node_i, next:=Mask[node_i, next] - perm];
                  havoc QPMask;
                  
                  // -- check that the permission amount is positive
                    assert {:msg "  The precondition of method link might not hold. Fraction 1 / 2 might be negative. (list-swap.vpr@383.15--383.34) [79881]"}
                      (forall n_22: Ref ::
                      { Heap[n_22, next] } { QPMask[n_22, next] } { Heap[n_22, next] }
                      (g_1[n_22] && n_22 != node_i) && dummyFunction(Heap[n_22, next]) ==> 1 / 2 >= NoPerm
                    );
                  
                  // -- check if receiver n is injective
                    assert {:msg "  The precondition of method link might not hold. Quantified resource n.next might not be injective. (list-swap.vpr@383.15--383.34) [79882]"}
                      (forall n_22: Ref, n_22_1: Ref ::
                      { neverTriggered67(n_22), neverTriggered67(n_22_1) }
                      (((n_22 != n_22_1 && (g_1[n_22] && n_22 != node_i)) && (g_1[n_22_1] && n_22_1 != node_i)) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_22 != n_22_1
                    );
                  
                  // -- check if sufficient permission is held
                    assert {:msg "  The precondition of method link might not hold. There might be insufficient permission to access n.next (list-swap.vpr@383.15--383.34) [79883]"}
                      (forall n_22: Ref ::
                      { Heap[n_22, next] } { QPMask[n_22, next] } { Heap[n_22, next] }
                      g_1[n_22] && n_22 != node_i ==> Mask[n_22, next] >= 1 / 2
                    );
                  
                  // -- assumptions for inverse of receiver n
                    assume (forall n_22: Ref ::
                      { Heap[n_22, next] } { QPMask[n_22, next] } { Heap[n_22, next] }
                      (g_1[n_22] && n_22 != node_i) && NoPerm < 1 / 2 ==> qpRange67(n_22) && invRecv67(n_22) == n_22
                    );
                    assume (forall o_4: Ref ::
                      { invRecv67(o_4) }
                      (g_1[invRecv67(o_4)] && invRecv67(o_4) != node_i) && (NoPerm < 1 / 2 && qpRange67(o_4)) ==> invRecv67(o_4) == o_4
                    );
                  
                  // -- assume permission updates for field next
                    assume (forall o_4: Ref ::
                      { QPMask[o_4, next] }
                      ((g_1[invRecv67(o_4)] && invRecv67(o_4) != node_i) && (NoPerm < 1 / 2 && qpRange67(o_4)) ==> invRecv67(o_4) == o_4 && QPMask[o_4, next] == Mask[o_4, next] - 1 / 2) && (!((g_1[invRecv67(o_4)] && invRecv67(o_4) != node_i) && (NoPerm < 1 / 2 && qpRange67(o_4))) ==> QPMask[o_4, next] == Mask[o_4, next])
                    );
                  
                  // -- assume permission updates for independent locations
                    assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
                      { QPMask[o_4, f_5] }
                      f_5 != next ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
                    );
                  Mask := QPMask;
                  if (*) {
                    if (g_1[n$0_20] && Heap[n$0_20, next] != null) {
                      assert {:msg "  The precondition of method link might not hold. Assertion (n$0.next in g) might not hold. (list-swap.vpr@383.15--383.34) [79884]"}
                        g_1[Heap[n$0_20, next]];
                    }
                    assume false;
                  }
                  assume (forall n$0_21_1: Ref ::
                    { g_1[Heap[n$0_21_1, next]] } { g_1[n$0_21_1], Heap[n$0_21_1, next] }
                    g_1[n$0_21_1] && Heap[n$0_21_1, next] != null ==> g_1[Heap[n$0_21_1, next]]
                  );
                  assert {:msg "  The precondition of method link might not hold. Assertion node_i.next == null might not hold. (list-swap.vpr@383.15--383.34) [79885]"}
                    Heap[node_i, next] == null;
                  // Finish exhale
                  havoc ExhaleHeap;
                  assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
                  Heap := ExhaleHeap;
                
                // -- Inhaling postcondition
                  assume !g_1[null];
                  assume g_1[node_i];
                  perm := FullPerm;
                  assume node_i != null;
                  Mask := Mask[node_i, next:=Mask[node_i, next] + perm];
                  assume state(Heap, Mask);
                  havoc QPMask;
                  assert {:msg "  Method call might fail. Quantified resource n$1.next might not be injective. (list-swap.vpr@383.15--383.34) [79886]"}
                    (forall n$1_11: Ref, n$1_11_1: Ref ::
                    
                    (((n$1_11 != n$1_11_1 && (g_1[n$1_11] && n$1_11 != node_i)) && (g_1[n$1_11_1] && n$1_11_1 != node_i)) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n$1_11 != n$1_11_1
                  );
                  
                  // -- Define Inverse Function
                    assume (forall n$1_11: Ref ::
                      { Heap[n$1_11, next] } { QPMask[n$1_11, next] } { Heap[n$1_11, next] }
                      (g_1[n$1_11] && n$1_11 != node_i) && NoPerm < 1 / 2 ==> qpRange68(n$1_11) && invRecv68(n$1_11) == n$1_11
                    );
                    assume (forall o_4: Ref ::
                      { invRecv68(o_4) }
                      ((g_1[invRecv68(o_4)] && invRecv68(o_4) != node_i) && NoPerm < 1 / 2) && qpRange68(o_4) ==> invRecv68(o_4) == o_4
                    );
                  // Check that permission expression is non-negative for all fields
                  assert {:msg "  Method call might fail. Fraction 1 / 2 might be negative. (list-swap.vpr@383.15--383.34) [79887]"}
                    (forall n$1_11: Ref ::
                    { Heap[n$1_11, next] } { QPMask[n$1_11, next] } { Heap[n$1_11, next] }
                    g_1[n$1_11] && n$1_11 != node_i ==> 1 / 2 >= NoPerm
                  );
                  
                  // -- Assume set of fields is nonNull
                    assume (forall n$1_11: Ref ::
                      { Heap[n$1_11, next] } { QPMask[n$1_11, next] } { Heap[n$1_11, next] }
                      (g_1[n$1_11] && n$1_11 != node_i) && 1 / 2 > NoPerm ==> n$1_11 != null
                    );
                  
                  // -- Define permissions
                    assume (forall o_4: Ref ::
                      { QPMask[o_4, next] }
                      (((g_1[invRecv68(o_4)] && invRecv68(o_4) != node_i) && NoPerm < 1 / 2) && qpRange68(o_4) ==> (NoPerm < 1 / 2 ==> invRecv68(o_4) == o_4) && QPMask[o_4, next] == Mask[o_4, next] + 1 / 2) && (!(((g_1[invRecv68(o_4)] && invRecv68(o_4) != node_i) && NoPerm < 1 / 2) && qpRange68(o_4)) ==> QPMask[o_4, next] == Mask[o_4, next])
                    );
                    assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
                      { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
                      f_5 != next ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
                    );
                  Mask := QPMask;
                  assume state(Heap, Mask);
                  assume (forall n$2_13: Ref ::
                    { g_1[Heap[n$2_13, next]] } { g_1[n$2_13], Heap[n$2_13, next] }
                    g_1[n$2_13] && Heap[n$2_13, next] != null ==> g_1[Heap[n$2_13, next]]
                  );
                  assume Heap[node_i, next] == vexit;
                  if (vexit == null) {
                    assume state(Heap, Mask);
                    assume Set#Equal($$(Heap, g_1), $$(PreCallHeap, g_1));
                  }
                  if (vexit != null) {
                    assume state(Heap, Mask);
                    assume (forall v1_18: Ref, v2_18: Ref ::
                      { (edge($$#frame(FrameFragment($$#condqp1(PreCallHeap, g_1)), g_1), v1_18, v2_18): bool) }
                      (edge($$(Heap, g_1), v1_18, v2_18): bool) == ((edge($$(PreCallHeap, g_1), v1_18, v2_18): bool) || (v1_18 == node_i && v2_18 == vexit))
                    );
                  }
                  if (vexit != null) {
                    assume state(Heap, Mask);
                    assume (forall v1_19: Ref, v2_19: Ref ::
                      { (exists_path($$#frame(FrameFragment($$#condqp1(Heap, g_1)), g_1), v1_19, v2_19): bool) }
                      v1_19 != v2_19 ==> (exists_path($$(Heap, g_1), v1_19, v2_19): bool) == ((exists_path($$(PreCallHeap, g_1), v1_19, v2_19): bool) || ((exists_path($$(PreCallHeap, g_1), v1_19, node_i): bool) && (exists_path($$(PreCallHeap, g_1), vexit, v2_19): bool)))
                    );
                  }
                  assume state(Heap, Mask);
                assume state(Heap, Mask);
            }
            assume state(Heap, Mask);
          
          // -- Translating statement: prev_node := node -- list-swap.vpr@386.9--386.26
            prev_node := node;
            assume state(Heap, Mask);
          
          // -- Translating statement: node := node.next -- list-swap.vpr@387.9--387.26
            
            // -- Check definedness of node.next
              assert {:msg "  Assignment might fail. There might be insufficient permission to access node.next (list-swap.vpr@387.9--387.26) [79888]"}
                HasDirectPerm(Mask, node, next);
            node := Heap[node, next];
            assume state(Heap, Mask);
          
          // -- Translating statement: count := count + 1 -- list-swap.vpr@388.9--388.27
            count_1 := count_1 + 1;
            assume state(Heap, Mask);
          
          // -- Translating statement: assert node != null ==>
  //   exists_path($$(g), node, node) && exists_path($$(g), prev_node, node) -- list-swap.vpr@392.9--392.98
            ExhaleWellDef0Heap := Heap;
            ExhaleWellDef0Mask := Mask;
            if (node != null) {
              
              // -- Check definedness of exists_path($$(g), node, node)
                if (*) {
                  // Exhale precondition of function application
                  ExhaleWellDef1Heap := ExhaleWellDef0Heap;
                  ExhaleWellDef1Mask := ExhaleWellDef0Mask;
                  havoc QPMask;
                  
                  // -- check that the permission amount is positive
                    assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (list-swap.vpr@392.45--392.50) [79889]"}
                      (forall n_23: Ref ::
                      { ExhaleWellDef0Heap[n_23, next] } { QPMask[n_23, next] } { ExhaleWellDef0Heap[n_23, next] }
                      g_1[n_23] && dummyFunction(ExhaleWellDef0Heap[n_23, next]) ==> 1 / 2 >= NoPerm
                    );
                  
                  // -- check if receiver n is injective
                    assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.next might not be injective. (list-swap.vpr@392.45--392.50) [79890]"}
                      (forall n_23: Ref, n_23_1: Ref ::
                      { neverTriggered69(n_23), neverTriggered69(n_23_1) }
                      (((n_23 != n_23_1 && g_1[n_23]) && g_1[n_23_1]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_23 != n_23_1
                    );
                  
                  // -- check if sufficient permission is held
                    assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.next (list-swap.vpr@392.45--392.50) [79891]"}
                      (forall n_23: Ref ::
                      { ExhaleWellDef0Heap[n_23, next] } { QPMask[n_23, next] } { ExhaleWellDef0Heap[n_23, next] }
                      g_1[n_23] ==> 1 / 2 > NoPerm ==> ExhaleWellDef0Mask[n_23, next] > NoPerm
                    );
                  
                  // -- assumptions for inverse of receiver n
                    assume (forall n_23: Ref ::
                      { ExhaleWellDef0Heap[n_23, next] } { QPMask[n_23, next] } { ExhaleWellDef0Heap[n_23, next] }
                      g_1[n_23] && NoPerm < 1 / 2 ==> qpRange69(n_23) && invRecv69(n_23) == n_23
                    );
                    assume (forall o_4: Ref ::
                      { invRecv69(o_4) }
                      g_1[invRecv69(o_4)] && (NoPerm < 1 / 2 && qpRange69(o_4)) ==> invRecv69(o_4) == o_4
                    );
                  // Finish exhale
                  havoc ExhaleHeap;
                  assume IdenticalOnKnownLocations(ExhaleWellDef0Heap, ExhaleHeap, ExhaleWellDef0Mask);
                  ExhaleWellDef0Heap := ExhaleHeap;
                  // Stop execution
                  assume false;
                }
              assert {:msg "  Assert might fail. Assertion exists_path($$(g), node, node) might not hold. (list-swap.vpr@392.16--392.98) [79892]"}
                (exists_path($$(Heap, g_1), node, node): bool);
              
              // -- Check definedness of exists_path($$(g), prev_node, node)
                if (*) {
                  // Exhale precondition of function application
                  ExhaleWellDef1Heap := ExhaleWellDef0Heap;
                  ExhaleWellDef1Mask := ExhaleWellDef0Mask;
                  havoc QPMask;
                  
                  // -- check that the permission amount is positive
                    assert {:msg "  Precondition of function $$ might not hold. Fraction 1 / 2 might be negative. (list-swap.vpr@392.77--392.82) [79893]"}
                      (forall n_24: Ref ::
                      { ExhaleWellDef0Heap[n_24, next] } { QPMask[n_24, next] } { ExhaleWellDef0Heap[n_24, next] }
                      g_1[n_24] && dummyFunction(ExhaleWellDef0Heap[n_24, next]) ==> 1 / 2 >= NoPerm
                    );
                  
                  // -- check if receiver n is injective
                    assert {:msg "  Precondition of function $$ might not hold. Quantified resource n.next might not be injective. (list-swap.vpr@392.77--392.82) [79894]"}
                      (forall n_24: Ref, n_24_1: Ref ::
                      { neverTriggered70(n_24), neverTriggered70(n_24_1) }
                      (((n_24 != n_24_1 && g_1[n_24]) && g_1[n_24_1]) && NoPerm < 1 / 2) && NoPerm < 1 / 2 ==> n_24 != n_24_1
                    );
                  
                  // -- check if sufficient permission is held
                    assert {:msg "  Precondition of function $$ might not hold. There might be insufficient permission to access n.next (list-swap.vpr@392.77--392.82) [79895]"}
                      (forall n_24: Ref ::
                      { ExhaleWellDef0Heap[n_24, next] } { QPMask[n_24, next] } { ExhaleWellDef0Heap[n_24, next] }
                      g_1[n_24] ==> 1 / 2 > NoPerm ==> ExhaleWellDef0Mask[n_24, next] > NoPerm
                    );
                  
                  // -- assumptions for inverse of receiver n
                    assume (forall n_24: Ref ::
                      { ExhaleWellDef0Heap[n_24, next] } { QPMask[n_24, next] } { ExhaleWellDef0Heap[n_24, next] }
                      g_1[n_24] && NoPerm < 1 / 2 ==> qpRange70(n_24) && invRecv70(n_24) == n_24
                    );
                    assume (forall o_4: Ref ::
                      { invRecv70(o_4) }
                      g_1[invRecv70(o_4)] && (NoPerm < 1 / 2 && qpRange70(o_4)) ==> invRecv70(o_4) == o_4
                    );
                  // Finish exhale
                  havoc ExhaleHeap;
                  assume IdenticalOnKnownLocations(ExhaleWellDef0Heap, ExhaleHeap, ExhaleWellDef0Mask);
                  ExhaleWellDef0Heap := ExhaleHeap;
                  // Stop execution
                  assume false;
                }
              assert {:msg "  Assert might fail. Assertion exists_path($$(g), prev_node, node) might not hold. (list-swap.vpr@392.16--392.98) [79896]"}
                (exists_path($$(Heap, g_1), prev_node, node): bool);
            }
            assume state(Heap, Mask);
        // Exhale invariant
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        assert {:msg "  Loop invariant 0 <= i && i < j might not be preserved. Assertion 0 <= i might not hold. (list-swap.vpr@317.19--317.34) [79897]"}
          0 <= i;
        assert {:msg "  Loop invariant 0 <= i && i < j might not be preserved. Assertion i < j might not hold. (list-swap.vpr@317.19--317.34) [79898]"}
          i < j_9;
        assert {:msg "  Loop invariant 0 <= count might not be preserved. Assertion 0 <= count might not hold. (list-swap.vpr@320.19--320.29) [79899]"}
          0 <= count_1;
        assert {:msg "  Loop invariant (x in g) might not be preserved. Assertion (x in g) might not hold. (list-swap.vpr@323.19--323.25) [79900]"}
          g_1[x];
        assert {:msg "  Loop invariant !((null in g)) && ((forall n$2: Ref :: { n$2.next } (n$2 in g) ==> acc(n$2.next, write)) && (forall n$3: Ref :: { (n$3.next in g) } { (n$3 in g), n$3.next } (n$3 in g) && n$3.next != null ==> (n$3.next in g))) might not be preserved. Assertion !((null in g)) might not hold. (list-swap.vpr@324.19--324.27) [79901]"}
          !g_1[null];
        havoc QPMask;
        
        // -- check that the permission amount is positive
          
        
        // -- check if receiver n$2 is injective
          assert {:msg "  Loop invariant !((null in g)) && ((forall n$2: Ref :: { n$2.next } (n$2 in g) ==> acc(n$2.next, write)) && (forall n$3: Ref :: { (n$3.next in g) } { (n$3 in g), n$3.next } (n$3 in g) && n$3.next != null ==> (n$3.next in g))) might not be preserved. Quantified resource n$2.next might not be injective. (list-swap.vpr@324.19--324.27) [79902]"}
            (forall n$2_14: Ref, n$2_14_1: Ref ::
            { neverTriggered71(n$2_14), neverTriggered71(n$2_14_1) }
            (((n$2_14 != n$2_14_1 && g_1[n$2_14]) && g_1[n$2_14_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n$2_14 != n$2_14_1
          );
        
        // -- check if sufficient permission is held
          assert {:msg "  Loop invariant !((null in g)) && ((forall n$2: Ref :: { n$2.next } (n$2 in g) ==> acc(n$2.next, write)) && (forall n$3: Ref :: { (n$3.next in g) } { (n$3 in g), n$3.next } (n$3 in g) && n$3.next != null ==> (n$3.next in g))) might not be preserved. There might be insufficient permission to access n$2.next (list-swap.vpr@324.19--324.27) [79903]"}
            (forall n$2_14: Ref ::
            { Heap[n$2_14, next] } { QPMask[n$2_14, next] } { Heap[n$2_14, next] }
            g_1[n$2_14] ==> Mask[n$2_14, next] >= FullPerm
          );
        
        // -- assumptions for inverse of receiver n$2
          assume (forall n$2_14: Ref ::
            { Heap[n$2_14, next] } { QPMask[n$2_14, next] } { Heap[n$2_14, next] }
            g_1[n$2_14] && NoPerm < FullPerm ==> qpRange71(n$2_14) && invRecv71(n$2_14) == n$2_14
          );
          assume (forall o_4: Ref ::
            { invRecv71(o_4) }
            g_1[invRecv71(o_4)] && (NoPerm < FullPerm && qpRange71(o_4)) ==> invRecv71(o_4) == o_4
          );
        
        // -- assume permission updates for field next
          assume (forall o_4: Ref ::
            { QPMask[o_4, next] }
            (g_1[invRecv71(o_4)] && (NoPerm < FullPerm && qpRange71(o_4)) ==> invRecv71(o_4) == o_4 && QPMask[o_4, next] == Mask[o_4, next] - FullPerm) && (!(g_1[invRecv71(o_4)] && (NoPerm < FullPerm && qpRange71(o_4))) ==> QPMask[o_4, next] == Mask[o_4, next])
          );
        
        // -- assume permission updates for independent locations
          assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
            { QPMask[o_4, f_5] }
            f_5 != next ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
          );
        Mask := QPMask;
        if (*) {
          if (g_1[n$3_5] && Heap[n$3_5, next] != null) {
            assert {:msg "  Loop invariant !((null in g)) && ((forall n$2: Ref :: { n$2.next } (n$2 in g) ==> acc(n$2.next, write)) && (forall n$3: Ref :: { (n$3.next in g) } { (n$3 in g), n$3.next } (n$3 in g) && n$3.next != null ==> (n$3.next in g))) might not be preserved. Assertion (n$3.next in g) might not hold. (list-swap.vpr@324.19--324.27) [79904]"}
              g_1[Heap[n$3_5, next]];
          }
          assume false;
        }
        assume (forall n$3_6_1: Ref ::
          { g_1[Heap[n$3_6_1, next]] } { g_1[n$3_6_1], Heap[n$3_6_1, next] }
          g_1[n$3_6_1] && Heap[n$3_6_1, next] != null ==> g_1[Heap[n$3_6_1, next]]
        );
        if (node != null) {
          assert {:msg "  Loop invariant node != null ==> (node in g) might not be preserved. Assertion (node in g) might not hold. (list-swap.vpr@327.19--327.45) [79905]"}
            g_1[node];
        }
        if (count_1 <= j_9) {
          assert {:msg "  Loop invariant count <= j ==> (prev_node in g) might not be preserved. Assertion (prev_node in g) might not hold. (list-swap.vpr@328.19--328.48) [79906]"}
            g_1[prev_node];
        }
        if (i < count_1) {
          assert {:msg "  Loop invariant i < count ==> (node_i in g) && (prev_i in g) might not be preserved. Assertion (node_i in g) might not hold. (list-swap.vpr@329.19--329.59) [79907]"}
            g_1[node_i];
          assert {:msg "  Loop invariant i < count ==> (node_i in g) && (prev_i in g) might not be preserved. Assertion (prev_i in g) might not hold. (list-swap.vpr@329.19--329.59) [79908]"}
            g_1[prev_i];
        }
        if (count_1 <= j_9) {
          assert {:msg "  Loop invariant count <= j ==> prev_node.next == node might not be preserved. Assertion prev_node.next == node might not hold. (list-swap.vpr@330.19--330.56) [79909]"}
            Heap[prev_node, next] == node;
        }
        assert {:msg "  Loop invariant acyclic_graph($$(g)) && (func_graph($$(g)) && unshared_graph($$(g))) might not be preserved. Assertion acyclic_graph($$(g)) might not hold. (list-swap.vpr@337.19--337.42) [79910]"}
          (acyclic_graph($$(Heap, g_1)): bool);
        assert {:msg "  Loop invariant acyclic_graph($$(g)) && (func_graph($$(g)) && unshared_graph($$(g))) might not be preserved. Assertion func_graph($$(g)) might not hold. (list-swap.vpr@337.19--337.42) [79911]"}
          (func_graph($$(Heap, g_1)): bool);
        assert {:msg "  Loop invariant acyclic_graph($$(g)) && (func_graph($$(g)) && unshared_graph($$(g))) might not be preserved. Assertion unshared_graph($$(g)) might not hold. (list-swap.vpr@337.19--337.42) [79912]"}
          (unshared_graph($$(Heap, g_1)): bool);
        if (*) {
          if (g_1[n$4_5]) {
            assert {:msg "  Loop invariant (forall n$4: Ref :: { exists_path($$(g), x, n$4) } (n$4 in g) ==> exists_path($$(g), x, n$4)) might not be preserved. Assertion exists_path($$(g), x, n$4) might not hold. (list-swap.vpr@338.19--338.38) [79913]"}
              (exists_path($$(Heap, g_1), x, n$4_5): bool);
          }
          assume false;
        }
        assume (forall n$4_6_1: Ref ::
          { (exists_path($$#frame(FrameFragment($$#condqp1(Heap, g_1)), g_1), x, n$4_6_1): bool) }
          g_1[n$4_6_1] ==> (exists_path($$(Heap, g_1), x, n$4_6_1): bool)
        );
        if (node_i != null) {
          assert {:msg "  Loop invariant node_i != null ==> exists_path($$(g), prev_i, node_i) might not be preserved. Assertion exists_path($$(g), prev_i, node_i) might not hold. (list-swap.vpr@340.19--340.70) [79914]"}
            (exists_path($$(Heap, g_1), prev_i, node_i): bool);
        }
        if (node_i != null) {
          assert {:msg "  Loop invariant node_i != null ==> exists_path($$(g), node_i, prev_node) might not be preserved. Assertion exists_path($$(g), node_i, prev_node) might not hold. (list-swap.vpr@341.19--341.73) [79915]"}
            (exists_path($$(Heap, g_1), node_i, prev_node): bool);
        }
        if (node != null) {
          assert {:msg "  Loop invariant node != null ==> exists_path($$(g), prev_node, node) might not be preserved. Assertion exists_path($$(g), prev_node, node) might not hold. (list-swap.vpr@342.19--342.69) [79916]"}
            (exists_path($$(Heap, g_1), prev_node, node): bool);
        }
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Terminate execution
        assume false;
      }
    
    // -- Inhale loop invariant after loop, and assume guard
      assume !(node != null && count_1 <= j_9);
      assume state(Heap, Mask);
      assume 0 <= i;
      assume i < j_9;
      assume 0 <= count_1;
      assume g_1[x];
      assume !g_1[null];
      havoc QPMask;
      assert {:msg "  While statement might fail. Quantified resource n$2.next might not be injective. (list-swap.vpr@324.19--324.27) [79917]"}
        (forall n$2_15: Ref, n$2_15_1: Ref ::
        
        (((n$2_15 != n$2_15_1 && g_1[n$2_15]) && g_1[n$2_15_1]) && NoPerm < FullPerm) && NoPerm < FullPerm ==> n$2_15 != n$2_15_1
      );
      
      // -- Define Inverse Function
        assume (forall n$2_15: Ref ::
          { Heap[n$2_15, next] } { QPMask[n$2_15, next] } { Heap[n$2_15, next] }
          g_1[n$2_15] && NoPerm < FullPerm ==> qpRange72(n$2_15) && invRecv72(n$2_15) == n$2_15
        );
        assume (forall o_4: Ref ::
          { invRecv72(o_4) }
          (g_1[invRecv72(o_4)] && NoPerm < FullPerm) && qpRange72(o_4) ==> invRecv72(o_4) == o_4
        );
      
      // -- Assume set of fields is nonNull
        assume (forall n$2_15: Ref ::
          { Heap[n$2_15, next] } { QPMask[n$2_15, next] } { Heap[n$2_15, next] }
          g_1[n$2_15] ==> n$2_15 != null
        );
      
      // -- Define permissions
        assume (forall o_4: Ref ::
          { QPMask[o_4, next] }
          ((g_1[invRecv72(o_4)] && NoPerm < FullPerm) && qpRange72(o_4) ==> (NoPerm < FullPerm ==> invRecv72(o_4) == o_4) && QPMask[o_4, next] == Mask[o_4, next] + FullPerm) && (!((g_1[invRecv72(o_4)] && NoPerm < FullPerm) && qpRange72(o_4)) ==> QPMask[o_4, next] == Mask[o_4, next])
        );
        assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
          { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
          f_5 != next ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
        );
      Mask := QPMask;
      assume state(Heap, Mask);
      assume (forall n$3_7: Ref ::
        { g_1[Heap[n$3_7, next]] } { g_1[n$3_7], Heap[n$3_7, next] }
        g_1[n$3_7] && Heap[n$3_7, next] != null ==> g_1[Heap[n$3_7, next]]
      );
      if (node != null) {
        assume g_1[node];
      }
      if (count_1 <= j_9) {
        assume g_1[prev_node];
      }
      if (i < count_1) {
        assume g_1[node_i];
        assume g_1[prev_i];
      }
      if (count_1 <= j_9) {
        assume Heap[prev_node, next] == node;
      }
      assume state(Heap, Mask);
      assume (acyclic_graph($$(Heap, g_1)): bool);
      assume state(Heap, Mask);
      assume (func_graph($$(Heap, g_1)): bool);
      assume state(Heap, Mask);
      assume (unshared_graph($$(Heap, g_1)): bool);
      assume state(Heap, Mask);
      assume (forall n$4_7: Ref ::
        { (exists_path($$#frame(FrameFragment($$#condqp1(Heap, g_1)), g_1), x, n$4_7): bool) }
        g_1[n$4_7] ==> (exists_path($$(Heap, g_1), x, n$4_7): bool)
      );
      if (node_i != null) {
        assume state(Heap, Mask);
        assume (exists_path($$(Heap, g_1), prev_i, node_i): bool);
      }
      if (node_i != null) {
        assume state(Heap, Mask);
        assume (exists_path($$(Heap, g_1), node_i, prev_node): bool);
      }
      if (node != null) {
        assume state(Heap, Mask);
        assume (exists_path($$(Heap, g_1), prev_node, node): bool);
      }
      assume state(Heap, Mask);
    assume state(Heap, Mask);
}