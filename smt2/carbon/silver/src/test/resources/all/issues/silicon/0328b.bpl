// 
// Translation of Viper program.
// 
// Date:         2025-01-08 22:07:27
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/issues/silicon/0328b.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/issues/silicon/0328b-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
axiom (forall o: Ref, f: (Field NormalField Ref), Heap: HeapType ::
  { Heap[o, f] }
  Heap[o, $allocated] ==> Heap[Heap[o, f], $allocated]
);
function  succHeap(Heap0: HeapType, Heap1: HeapType): bool;
function  succHeapTrans(Heap0: HeapType, Heap1: HeapType): bool;
function  IdenticalOnKnownLocations(Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType): bool;
function  IsPredicateField<A, B>(f_1: (Field A B)): bool;
function  IsWandField<A, B>(f_1: (Field A B)): bool;
function  getPredWandId<A, B>(f_1: (Field A B)): int;
// Frame all locations with direct permissions
axiom (forall <A, B> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_1: Ref, f_2: (Field A B) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_1, f_2] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, o_1, f_2) ==> Heap[o_1, f_2] == ExhaleHeap[o_1, f_2]
);
// Frame all predicate mask locations of predicates with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f), ExhaleHeap[null, PredicateMaskField(pm_f)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f) && IsPredicateField(pm_f) ==> Heap[null, PredicateMaskField(pm_f)] == ExhaleHeap[null, PredicateMaskField(pm_f)]
);
// Frame all locations with known folded permissions
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f) && IsPredicateField(pm_f) ==> (forall <A, B> o2: Ref, f_2: (Field A B) ::
    { ExhaleHeap[o2, f_2] }
    Heap[null, PredicateMaskField(pm_f)][o2, f_2] ==> Heap[o2, f_2] == ExhaleHeap[o2, f_2]
  )
);
// Frame all wand mask locations of wands with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f), ExhaleHeap[null, WandMaskField(pm_f)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f) && IsWandField(pm_f) ==> Heap[null, WandMaskField(pm_f)] == ExhaleHeap[null, WandMaskField(pm_f)]
);
// Frame all locations in the footprint of magic wands
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f) && IsWandField(pm_f) ==> (forall <A, B> o2: Ref, f_2: (Field A B) ::
    { ExhaleHeap[o2, f_2] }
    Heap[null, WandMaskField(pm_f)][o2, f_2] ==> Heap[o2, f_2] == ExhaleHeap[o2, f_2]
  )
);
// All previously-allocated references are still allocated
axiom (forall Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_1: Ref ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_1, $allocated] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> Heap[o_1, $allocated] ==> ExhaleHeap[o_1, $allocated]
);
// Updated Heaps are Successor Heaps
axiom (forall <A, B> Heap: HeapType, o: Ref, f_3: (Field A B), v: B ::
  { Heap[o, f_3:=v] }
  succHeap(Heap, Heap[o, f_3:=v])
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
// Translation of domain Vector9D
// ==================================================

// The type for domain Vector9D
type Vector9DDomainType;

// Translation of domain function Vector9D_ctor
function  Vector9D_ctor(f1_2: int, f2_2: int, f3_1: int, f4: int, f5: int, f6: int, f7_1: int, f8_1: int, f9: int): Vector9DDomainType;

// Translation of domain function Vector9D_ctor_syn
function  Vector9D_ctor_syn(f1_2: int, f2_2: int, f3_1: int, f4: int, f5: int, f6: int, f7_1: int, f8_1: int, f9: int): Vector9DDomainType;

// Translation of domain function Vector9D_f1
function  Vector9D_f1(v_4: Vector9DDomainType): int;

// Translation of domain function Vector9D_f2
function  Vector9D_f2(v_4: Vector9DDomainType): int;

// Translation of domain function Vector9D_f3
function  Vector9D_f3(v_4: Vector9DDomainType): int;

// Translation of domain function Vector9D_f4
function  Vector9D_f4(v_4: Vector9DDomainType): int;

// Translation of domain function Vector9D_f5
function  Vector9D_f5(v_4: Vector9DDomainType): int;

// Translation of domain function Vector9D_f6
function  Vector9D_f6(v_4: Vector9DDomainType): int;

// Translation of domain function Vector9D_f7
function  Vector9D_f7(v_4: Vector9DDomainType): int;

// Translation of domain function Vector9D_f8
function  Vector9D_f8(v_4: Vector9DDomainType): int;

// Translation of domain function Vector9D_f9
function  Vector9D_f9(v_4: Vector9DDomainType): int;

// Translation of domain axiom ax_synonim
axiom (forall f1: int, f2: int, f3_3: int, f4_2: int, f5_2: int, f6_2: int, f7_2: int, f8_2: int, f9_1: int ::
  { (Vector9D_ctor(f1, f2, f3_3, f4_2, f5_2, f6_2, f7_2, f8_2, f9_1): Vector9DDomainType) }
  (Vector9D_ctor(f1, f2, f3_3, f4_2, f5_2, f6_2, f7_2, f8_2, f9_1): Vector9DDomainType) == (Vector9D_ctor_syn(f1, f2, f3_3, f4_2, f5_2, f6_2, f7_2, f8_2, f9_1): Vector9DDomainType)
);

// Translation of domain axiom ax_values_of_fields
axiom (forall f1: int, f2: int, f3_3: int, f4_2: int, f5_2: int, f6_2: int, f7_2: int, f8_2: int, f9_1: int ::
  { (Vector9D_ctor(f1, f2, f3_3, f4_2, f5_2, f6_2, f7_2, f8_2, f9_1): Vector9DDomainType) }
  (Vector9D_f1((Vector9D_ctor_syn(f1, f2, f3_3, f4_2, f5_2, f6_2, f7_2, f8_2, f9_1): Vector9DDomainType)): int) == f1 && ((Vector9D_f2((Vector9D_ctor_syn(f1, f2, f3_3, f4_2, f5_2, f6_2, f7_2, f8_2, f9_1): Vector9DDomainType)): int) == f2 && ((Vector9D_f3((Vector9D_ctor_syn(f1, f2, f3_3, f4_2, f5_2, f6_2, f7_2, f8_2, f9_1): Vector9DDomainType)): int) == f3_3 && ((Vector9D_f4((Vector9D_ctor_syn(f1, f2, f3_3, f4_2, f5_2, f6_2, f7_2, f8_2, f9_1): Vector9DDomainType)): int) == f4_2 && ((Vector9D_f5((Vector9D_ctor_syn(f1, f2, f3_3, f4_2, f5_2, f6_2, f7_2, f8_2, f9_1): Vector9DDomainType)): int) == f5_2 && ((Vector9D_f6((Vector9D_ctor_syn(f1, f2, f3_3, f4_2, f5_2, f6_2, f7_2, f8_2, f9_1): Vector9DDomainType)): int) == f6_2 && ((Vector9D_f7((Vector9D_ctor_syn(f1, f2, f3_3, f4_2, f5_2, f6_2, f7_2, f8_2, f9_1): Vector9DDomainType)): int) == f7_2 && ((Vector9D_f8((Vector9D_ctor_syn(f1, f2, f3_3, f4_2, f5_2, f6_2, f7_2, f8_2, f9_1): Vector9DDomainType)): int) == f8_2 && (Vector9D_f9((Vector9D_ctor_syn(f1, f2, f3_3, f4_2, f5_2, f6_2, f7_2, f8_2, f9_1): Vector9DDomainType)): int) == f9_1)))))))
);

// ==================================================
// Translation of method main
// ==================================================

procedure main() returns ()
  modifies Heap, Mask;
{
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var v1: Vector9DDomainType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: v1 := Vector9D_ctor(1, 2, 3, 4, 5, 6, 7, 8, 9) -- 0328b.vpr@51.3--51.49
    v1 := (Vector9D_ctor(1, 2, 3, 4, 5, 6, 7, 8, 9): Vector9DDomainType);
    assume state(Heap, Mask);
  
  // -- Translating statement: v1 := Vector9D_ctor(Vector9D_f1(v1), Vector9D_f2(v1), Vector9D_f3(v1), Vector9D_f4(v1),
  //   Vector9D_f5(v1), Vector9D_f6(v1), Vector9D_f7(v1), Vector9D_f8(v1), Vector9D_f9(v1)) -- 0328b.vpr@53.3--53.175
    v1 := (Vector9D_ctor((Vector9D_f1(v1): int), (Vector9D_f2(v1): int), (Vector9D_f3(v1): int), (Vector9D_f4(v1): int), (Vector9D_f5(v1): int), (Vector9D_f6(v1): int), (Vector9D_f7(v1): int), (Vector9D_f8(v1): int), (Vector9D_f9(v1): int)): Vector9DDomainType);
    assume state(Heap, Mask);
  
  // -- Translating statement: v1 := Vector9D_ctor(Vector9D_f1(v1), Vector9D_f2(v1), Vector9D_f3(v1), Vector9D_f4(v1),
  //   Vector9D_f5(v1), Vector9D_f6(v1), Vector9D_f7(v1), Vector9D_f8(v1), Vector9D_f9(v1)) -- 0328b.vpr@54.3--54.175
    v1 := (Vector9D_ctor((Vector9D_f1(v1): int), (Vector9D_f2(v1): int), (Vector9D_f3(v1): int), (Vector9D_f4(v1): int), (Vector9D_f5(v1): int), (Vector9D_f6(v1): int), (Vector9D_f7(v1): int), (Vector9D_f8(v1): int), (Vector9D_f9(v1): int)): Vector9DDomainType);
    assume state(Heap, Mask);
  
  // -- Translating statement: v1 := Vector9D_ctor(Vector9D_f1(v1), Vector9D_f2(v1), Vector9D_f3(v1), Vector9D_f4(v1),
  //   Vector9D_f5(v1), Vector9D_f6(v1), Vector9D_f7(v1), Vector9D_f8(v1), Vector9D_f9(v1)) -- 0328b.vpr@55.3--55.175
    v1 := (Vector9D_ctor((Vector9D_f1(v1): int), (Vector9D_f2(v1): int), (Vector9D_f3(v1): int), (Vector9D_f4(v1): int), (Vector9D_f5(v1): int), (Vector9D_f6(v1): int), (Vector9D_f7(v1): int), (Vector9D_f8(v1): int), (Vector9D_f9(v1): int)): Vector9DDomainType);
    assume state(Heap, Mask);
  
  // -- Translating statement: v1 := Vector9D_ctor(Vector9D_f1(v1), Vector9D_f2(v1), Vector9D_f3(v1), Vector9D_f4(v1),
  //   Vector9D_f5(v1), Vector9D_f6(v1), Vector9D_f7(v1), Vector9D_f8(v1), Vector9D_f9(v1)) -- 0328b.vpr@56.3--56.175
    v1 := (Vector9D_ctor((Vector9D_f1(v1): int), (Vector9D_f2(v1): int), (Vector9D_f3(v1): int), (Vector9D_f4(v1): int), (Vector9D_f5(v1): int), (Vector9D_f6(v1): int), (Vector9D_f7(v1): int), (Vector9D_f8(v1): int), (Vector9D_f9(v1): int)): Vector9DDomainType);
    assume state(Heap, Mask);
  
  // -- Translating statement: v1 := Vector9D_ctor(Vector9D_f1(v1), Vector9D_f2(v1), Vector9D_f3(v1), Vector9D_f4(v1),
  //   Vector9D_f5(v1), Vector9D_f6(v1), Vector9D_f7(v1), Vector9D_f8(v1), Vector9D_f9(v1)) -- 0328b.vpr@57.3--57.175
    v1 := (Vector9D_ctor((Vector9D_f1(v1): int), (Vector9D_f2(v1): int), (Vector9D_f3(v1): int), (Vector9D_f4(v1): int), (Vector9D_f5(v1): int), (Vector9D_f6(v1): int), (Vector9D_f7(v1): int), (Vector9D_f8(v1): int), (Vector9D_f9(v1): int)): Vector9DDomainType);
    assume state(Heap, Mask);
  
  // -- Translating statement: v1 := Vector9D_ctor(Vector9D_f1(v1), Vector9D_f2(v1), Vector9D_f3(v1), Vector9D_f4(v1),
  //   Vector9D_f5(v1), Vector9D_f6(v1), Vector9D_f7(v1), Vector9D_f8(v1), Vector9D_f9(v1)) -- 0328b.vpr@58.3--58.175
    v1 := (Vector9D_ctor((Vector9D_f1(v1): int), (Vector9D_f2(v1): int), (Vector9D_f3(v1): int), (Vector9D_f4(v1): int), (Vector9D_f5(v1): int), (Vector9D_f6(v1): int), (Vector9D_f7(v1): int), (Vector9D_f8(v1): int), (Vector9D_f9(v1): int)): Vector9DDomainType);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert Vector9D_f1(v1) == 1 -- 0328b.vpr@60.3--60.30
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    assert {:msg "  Assert might fail. Assertion Vector9D_f1(v1) == 1 might not hold. (0328b.vpr@60.10--60.30) [214308]"}
      (Vector9D_f1(v1): int) == 1;
    assume state(Heap, Mask);
  
  // -- Translating statement: assert Vector9D_f2(v1) == 2 -- 0328b.vpr@61.3--61.30
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    assert {:msg "  Assert might fail. Assertion Vector9D_f2(v1) == 2 might not hold. (0328b.vpr@61.10--61.30) [214309]"}
      (Vector9D_f2(v1): int) == 2;
    assume state(Heap, Mask);
  
  // -- Translating statement: assert Vector9D_f3(v1) == 3 -- 0328b.vpr@62.3--62.30
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    assert {:msg "  Assert might fail. Assertion Vector9D_f3(v1) == 3 might not hold. (0328b.vpr@62.10--62.30) [214310]"}
      (Vector9D_f3(v1): int) == 3;
    assume state(Heap, Mask);
  
  // -- Translating statement: assert Vector9D_f4(v1) == 4 -- 0328b.vpr@63.3--63.30
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    assert {:msg "  Assert might fail. Assertion Vector9D_f4(v1) == 4 might not hold. (0328b.vpr@63.10--63.30) [214311]"}
      (Vector9D_f4(v1): int) == 4;
    assume state(Heap, Mask);
  
  // -- Translating statement: assert Vector9D_f5(v1) == 5 -- 0328b.vpr@64.3--64.30
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    assert {:msg "  Assert might fail. Assertion Vector9D_f5(v1) == 5 might not hold. (0328b.vpr@64.10--64.30) [214312]"}
      (Vector9D_f5(v1): int) == 5;
    assume state(Heap, Mask);
  
  // -- Translating statement: assert Vector9D_f6(v1) == 6 -- 0328b.vpr@65.3--65.30
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    assert {:msg "  Assert might fail. Assertion Vector9D_f6(v1) == 6 might not hold. (0328b.vpr@65.10--65.30) [214313]"}
      (Vector9D_f6(v1): int) == 6;
    assume state(Heap, Mask);
  
  // -- Translating statement: assert Vector9D_f7(v1) == 7 -- 0328b.vpr@66.3--66.30
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    assert {:msg "  Assert might fail. Assertion Vector9D_f7(v1) == 7 might not hold. (0328b.vpr@66.10--66.30) [214314]"}
      (Vector9D_f7(v1): int) == 7;
    assume state(Heap, Mask);
  
  // -- Translating statement: assert Vector9D_f8(v1) == 8 -- 0328b.vpr@67.3--67.30
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    assert {:msg "  Assert might fail. Assertion Vector9D_f8(v1) == 8 might not hold. (0328b.vpr@67.10--67.30) [214315]"}
      (Vector9D_f8(v1): int) == 8;
    assume state(Heap, Mask);
  
  // -- Translating statement: assert Vector9D_f9(v1) == 9 -- 0328b.vpr@68.3--68.30
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    assert {:msg "  Assert might fail. Assertion Vector9D_f9(v1) == 9 might not hold. (0328b.vpr@68.10--68.30) [214316]"}
      (Vector9D_f9(v1): int) == 9;
    assume state(Heap, Mask);
}