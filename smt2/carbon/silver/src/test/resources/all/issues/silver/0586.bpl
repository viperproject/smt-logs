// 
// Translation of Viper program.
// 
// Date:         2025-01-08 22:10:15
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/issues/silver/0586.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/issues/silver/0586-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
// Preamble of Wand Module.
// ==================================================

type WandType_wand;
function  wand(arg1: int, arg2: Ref, arg3: Perm, arg4: bool): Field WandType_wand int;
function  wand#sm(arg1: int, arg2: Ref, arg3: Perm, arg4: bool): Field WandType_wand PMaskType;
function  wand#ft(arg1: int, arg2: Ref, arg3: Perm, arg4: bool): Field WandType_wand FrameType;
axiom (forall arg1: int, arg2: Ref, arg3: Perm, arg4: bool ::
  { wand(arg1, arg2, arg3, arg4) }
  IsWandField(wand(arg1, arg2, arg3, arg4))
);
axiom (forall arg1: int, arg2: Ref, arg3: Perm, arg4: bool ::
  { wand#ft(arg1, arg2, arg3, arg4) }
  IsWandField(wand#ft(arg1, arg2, arg3, arg4))
);
axiom (forall arg1: int, arg2: Ref, arg3: Perm, arg4: bool ::
  { wand(arg1, arg2, arg3, arg4) }
  !IsPredicateField(wand(arg1, arg2, arg3, arg4))
);
axiom (forall arg1: int, arg2: Ref, arg3: Perm, arg4: bool ::
  { wand#ft(arg1, arg2, arg3, arg4) }
  !IsPredicateField(wand#ft(arg1, arg2, arg3, arg4))
);
axiom (forall arg1: int, arg2: Ref, arg3: Perm, arg4: bool ::
  { WandMaskField(wand#ft(arg1, arg2, arg3, arg4)) }
  wand#sm(arg1, arg2, arg3, arg4) == WandMaskField(wand#ft(arg1, arg2, arg3, arg4))
);
axiom (forall arg1: int, arg2: Ref, arg3: Perm, arg4: bool ::
  { wand(arg1, arg2, arg3, arg4) }
  getPredWandId(wand(arg1, arg2, arg3, arg4)) == 0
);
axiom (forall arg1: int, arg2: Ref, arg3: Perm, arg4: bool, arg1_2: int, arg2_2: Ref, arg3_2: Perm, arg4_2: bool ::
  { wand(arg1, arg2, arg3, arg4), wand(arg1_2, arg2_2, arg3_2, arg4_2) }
  wand(arg1, arg2, arg3, arg4) == wand(arg1_2, arg2_2, arg3_2, arg4_2) ==> arg1 == arg1_2 && (arg2 == arg2_2 && (arg3 == arg3_2 && arg4 == arg4_2))
);
type WandType_wand_1;
function  wand_1(arg1: Ref, arg2: Perm, arg3: bool): Field WandType_wand_1 int;
function  wand_1#sm(arg1: Ref, arg2: Perm, arg3: bool): Field WandType_wand_1 PMaskType;
function  wand_1#ft(arg1: Ref, arg2: Perm, arg3: bool): Field WandType_wand_1 FrameType;
axiom (forall arg1: Ref, arg2: Perm, arg3: bool ::
  { wand_1(arg1, arg2, arg3) }
  IsWandField(wand_1(arg1, arg2, arg3))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: bool ::
  { wand_1#ft(arg1, arg2, arg3) }
  IsWandField(wand_1#ft(arg1, arg2, arg3))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: bool ::
  { wand_1(arg1, arg2, arg3) }
  !IsPredicateField(wand_1(arg1, arg2, arg3))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: bool ::
  { wand_1#ft(arg1, arg2, arg3) }
  !IsPredicateField(wand_1#ft(arg1, arg2, arg3))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: bool ::
  { WandMaskField(wand_1#ft(arg1, arg2, arg3)) }
  wand_1#sm(arg1, arg2, arg3) == WandMaskField(wand_1#ft(arg1, arg2, arg3))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: bool ::
  { wand_1(arg1, arg2, arg3) }
  getPredWandId(wand_1(arg1, arg2, arg3)) == 1
);
axiom (forall arg1: Ref, arg2: Perm, arg3: bool, arg1_2: Ref, arg2_2: Perm, arg3_2: bool ::
  { wand_1(arg1, arg2, arg3), wand_1(arg1_2, arg2_2, arg3_2) }
  wand_1(arg1, arg2, arg3) == wand_1(arg1_2, arg2_2, arg3_2) ==> arg1 == arg1_2 && (arg2 == arg2_2 && arg3 == arg3_2)
);
type WandType_wand_2;
function  wand_2(arg1: Ref, arg2: int, arg3: Perm, arg4: bool): Field WandType_wand_2 int;
function  wand_2#sm(arg1: Ref, arg2: int, arg3: Perm, arg4: bool): Field WandType_wand_2 PMaskType;
function  wand_2#ft(arg1: Ref, arg2: int, arg3: Perm, arg4: bool): Field WandType_wand_2 FrameType;
axiom (forall arg1: Ref, arg2: int, arg3: Perm, arg4: bool ::
  { wand_2(arg1, arg2, arg3, arg4) }
  IsWandField(wand_2(arg1, arg2, arg3, arg4))
);
axiom (forall arg1: Ref, arg2: int, arg3: Perm, arg4: bool ::
  { wand_2#ft(arg1, arg2, arg3, arg4) }
  IsWandField(wand_2#ft(arg1, arg2, arg3, arg4))
);
axiom (forall arg1: Ref, arg2: int, arg3: Perm, arg4: bool ::
  { wand_2(arg1, arg2, arg3, arg4) }
  !IsPredicateField(wand_2(arg1, arg2, arg3, arg4))
);
axiom (forall arg1: Ref, arg2: int, arg3: Perm, arg4: bool ::
  { wand_2#ft(arg1, arg2, arg3, arg4) }
  !IsPredicateField(wand_2#ft(arg1, arg2, arg3, arg4))
);
axiom (forall arg1: Ref, arg2: int, arg3: Perm, arg4: bool ::
  { WandMaskField(wand_2#ft(arg1, arg2, arg3, arg4)) }
  wand_2#sm(arg1, arg2, arg3, arg4) == WandMaskField(wand_2#ft(arg1, arg2, arg3, arg4))
);
axiom (forall arg1: Ref, arg2: int, arg3: Perm, arg4: bool ::
  { wand_2(arg1, arg2, arg3, arg4) }
  getPredWandId(wand_2(arg1, arg2, arg3, arg4)) == 2
);
axiom (forall arg1: Ref, arg2: int, arg3: Perm, arg4: bool, arg1_2: Ref, arg2_2: int, arg3_2: Perm, arg4_2: bool ::
  { wand_2(arg1, arg2, arg3, arg4), wand_2(arg1_2, arg2_2, arg3_2, arg4_2) }
  wand_2(arg1, arg2, arg3, arg4) == wand_2(arg1_2, arg2_2, arg3_2, arg4_2) ==> arg1 == arg1_2 && (arg2 == arg2_2 && (arg3 == arg3_2 && arg4 == arg4_2))
);
type WandType_wand_3;
function  wand_3(arg1: int, arg2: Ref, arg3: Perm, arg4: bool): Field WandType_wand_3 int;
function  wand_3#sm(arg1: int, arg2: Ref, arg3: Perm, arg4: bool): Field WandType_wand_3 PMaskType;
function  wand_3#ft(arg1: int, arg2: Ref, arg3: Perm, arg4: bool): Field WandType_wand_3 FrameType;
axiom (forall arg1: int, arg2: Ref, arg3: Perm, arg4: bool ::
  { wand_3(arg1, arg2, arg3, arg4) }
  IsWandField(wand_3(arg1, arg2, arg3, arg4))
);
axiom (forall arg1: int, arg2: Ref, arg3: Perm, arg4: bool ::
  { wand_3#ft(arg1, arg2, arg3, arg4) }
  IsWandField(wand_3#ft(arg1, arg2, arg3, arg4))
);
axiom (forall arg1: int, arg2: Ref, arg3: Perm, arg4: bool ::
  { wand_3(arg1, arg2, arg3, arg4) }
  !IsPredicateField(wand_3(arg1, arg2, arg3, arg4))
);
axiom (forall arg1: int, arg2: Ref, arg3: Perm, arg4: bool ::
  { wand_3#ft(arg1, arg2, arg3, arg4) }
  !IsPredicateField(wand_3#ft(arg1, arg2, arg3, arg4))
);
axiom (forall arg1: int, arg2: Ref, arg3: Perm, arg4: bool ::
  { WandMaskField(wand_3#ft(arg1, arg2, arg3, arg4)) }
  wand_3#sm(arg1, arg2, arg3, arg4) == WandMaskField(wand_3#ft(arg1, arg2, arg3, arg4))
);
axiom (forall arg1: int, arg2: Ref, arg3: Perm, arg4: bool ::
  { wand_3(arg1, arg2, arg3, arg4) }
  getPredWandId(wand_3(arg1, arg2, arg3, arg4)) == 3
);
axiom (forall arg1: int, arg2: Ref, arg3: Perm, arg4: bool, arg1_2: int, arg2_2: Ref, arg3_2: Perm, arg4_2: bool ::
  { wand_3(arg1, arg2, arg3, arg4), wand_3(arg1_2, arg2_2, arg3_2, arg4_2) }
  wand_3(arg1, arg2, arg3, arg4) == wand_3(arg1_2, arg2_2, arg3_2, arg4_2) ==> arg1 == arg1_2 && (arg2 == arg2_2 && (arg3 == arg3_2 && arg4 == arg4_2))
);

// ==================================================
// Translation of all fields
// ==================================================

const unique val: Field NormalField int;
axiom !IsPredicateField(val);
axiom !IsWandField(val);

// ==================================================
// Translation of method test1
// ==================================================

procedure test1(head_1: Ref) returns ()
  modifies Heap, Mask;
{
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var Ops_1Heap: HeapType;
  var Ops_1Mask: MaskType;
  var b_1_1: bool;
  var UsedHeap: HeapType;
  var UsedMask: MaskType;
  var b_2: bool;
  var x_1: int;
  var perm: Perm;
  var Labellhs1Mask: MaskType;
  var Labellhs1Heap: HeapType;
  var boolCur: bool;
  var Used_1Heap: HeapType;
  var Used_1Mask: MaskType;
  var b_2_1: bool;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var WandDefLHSHeap: HeapType;
  var WandDefLHSMask: MaskType;
  var x$0: int;
  var Labellhs3Mask: MaskType;
  var Labellhs3Heap: HeapType;
  var WandDefRHSHeap: HeapType;
  var WandDefRHSMask: MaskType;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[head_1, $allocated];
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: package (let x == (0) in acc(head.val, write)) --* true {
  // } -- 0586.vpr@12.2--12.34
    havoc Ops_1Heap;
    Ops_1Mask := ZeroMask;
    b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
    havoc UsedHeap;
    UsedMask := ZeroMask;
    b_2 := b_2 && state(UsedHeap, UsedMask);
    // Inhaling left hand side of current wand into hypothetical state
    if (b_1_1) {
      x_1 := 0;
      if (b_1_1) {
        perm := FullPerm;
        b_1_1 := b_1_1 && head_1 != null;
        Ops_1Mask := Ops_1Mask[head_1, val:=Ops_1Mask[head_1, val] + perm];
        b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
      }
    }
    b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
    
    // -- Translating statement: label lhs1 -- 0586.vpr@12.10--12.34
      lhs1:
      Labellhs1Mask := Ops_1Mask;
      Labellhs1Heap := Ops_1Heap;
      b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
    boolCur := true;
    // Translating exec of non-ghost operationtrue
    havoc Used_1Heap;
    Used_1Mask := ZeroMask;
    b_2_1 := b_2_1 && state(Used_1Heap, Used_1Mask);
    Mask := Mask[null, wand(0, head_1, FullPerm, true):=Mask[null, wand(0, head_1, FullPerm, true)] + FullPerm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: exhale (let x$0 == (0) in acc(head.val, write)) --* true -- 0586.vpr@13.2--13.33
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of (let x$0 == (0) in acc(head.val, write)) --* true
      if (*) {
        havoc WandDefLHSHeap;
        WandDefLHSMask := ZeroMask;
        x$0 := 0;
        perm := FullPerm;
        assume head_1 != null;
        WandDefLHSMask := WandDefLHSMask[head_1, val:=WandDefLHSMask[head_1, val] + perm];
        assume state(WandDefLHSHeap, WandDefLHSMask);
        assume state(WandDefLHSHeap, WandDefLHSMask);
        
        // -- Translating statement: label lhs3 -- 0586.vpr@13.9--13.33
          lhs3:
          Labellhs3Mask := WandDefLHSMask;
          Labellhs3Heap := WandDefLHSHeap;
          assume state(WandDefLHSHeap, WandDefLHSMask);
        havoc WandDefRHSHeap;
        WandDefRHSMask := ZeroMask;
        assume state(WandDefRHSHeap, WandDefRHSMask);
        assume false;
      }
    // permLe
    assert {:msg "  Exhale might fail. Magic wand instance not found. (0586.vpr@13.9--13.33) [220542]"}
      FullPerm <= Mask[null, wand(0, head_1, FullPerm, true)];
    Mask := Mask[null, wand(0, head_1, FullPerm, true):=Mask[null, wand(0, head_1, FullPerm, true)] - FullPerm];
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test2
// ==================================================

procedure test2(head_1: Ref) returns ()
  modifies Heap, Mask;
{
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var Ops_3Heap: HeapType;
  var Ops_3Mask: MaskType;
  var b_4: bool;
  var Used_2Heap: HeapType;
  var Used_2Mask: MaskType;
  var b_3: bool;
  var x_1: Ref;
  var perm: Perm;
  var Labellhs4Mask: MaskType;
  var Labellhs4Heap: HeapType;
  var boolCur_1: bool;
  var Used_3Heap: HeapType;
  var Used_3Mask: MaskType;
  var b_5: bool;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var WandDefLHSHeap: HeapType;
  var WandDefLHSMask: MaskType;
  var y: Ref;
  var Labellhs6Mask: MaskType;
  var Labellhs6Heap: HeapType;
  var WandDefRHSHeap: HeapType;
  var WandDefRHSMask: MaskType;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[head_1, $allocated];
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: package (let x == (head) in acc(x.val, write)) --* true {
  // } -- 0586.vpr@18.2--18.50
    havoc Ops_3Heap;
    Ops_3Mask := ZeroMask;
    b_4 := b_4 && state(Ops_3Heap, Ops_3Mask);
    havoc Used_2Heap;
    Used_2Mask := ZeroMask;
    b_3 := b_3 && state(Used_2Heap, Used_2Mask);
    // Inhaling left hand side of current wand into hypothetical state
    if (b_4) {
      x_1 := head_1;
      if (b_4) {
        perm := FullPerm;
        b_4 := b_4 && x_1 != null;
        Ops_3Mask := Ops_3Mask[x_1, val:=Ops_3Mask[x_1, val] + perm];
        b_4 := b_4 && state(Ops_3Heap, Ops_3Mask);
      }
    }
    b_4 := b_4 && state(Ops_3Heap, Ops_3Mask);
    
    // -- Translating statement: label lhs4 -- 0586.vpr@18.10--18.50
      lhs4:
      Labellhs4Mask := Ops_3Mask;
      Labellhs4Heap := Ops_3Heap;
      b_4 := b_4 && state(Ops_3Heap, Ops_3Mask);
    boolCur_1 := true;
    // Translating exec of non-ghost operationtrue
    havoc Used_3Heap;
    Used_3Mask := ZeroMask;
    b_5 := b_5 && state(Used_3Heap, Used_3Mask);
    Mask := Mask[null, wand_1(head_1, FullPerm, true):=Mask[null, wand_1(head_1, FullPerm, true)] + FullPerm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: exhale (let y == (head) in acc(y.val, write)) --* true -- 0586.vpr@19.2--19.50
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of (let y == (head) in acc(y.val, write)) --* true
      if (*) {
        havoc WandDefLHSHeap;
        WandDefLHSMask := ZeroMask;
        y := head_1;
        perm := FullPerm;
        assume y != null;
        WandDefLHSMask := WandDefLHSMask[y, val:=WandDefLHSMask[y, val] + perm];
        assume state(WandDefLHSHeap, WandDefLHSMask);
        assume state(WandDefLHSHeap, WandDefLHSMask);
        
        // -- Translating statement: label lhs6 -- 0586.vpr@19.10--19.50
          lhs6:
          Labellhs6Mask := WandDefLHSMask;
          Labellhs6Heap := WandDefLHSHeap;
          assume state(WandDefLHSHeap, WandDefLHSMask);
        havoc WandDefRHSHeap;
        WandDefRHSMask := ZeroMask;
        assume state(WandDefRHSHeap, WandDefRHSMask);
        assume false;
      }
    // permLe
    assert {:msg "  Exhale might fail. Magic wand instance not found. (0586.vpr@19.10--19.50) [220544]"}
      FullPerm <= Mask[null, wand_1(head_1, FullPerm, true)];
    Mask := Mask[null, wand_1(head_1, FullPerm, true):=Mask[null, wand_1(head_1, FullPerm, true)] - FullPerm];
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test3
// ==================================================

procedure test3(head_1: Ref) returns ()
  modifies Heap, Mask;
{
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var Ops_5Heap: HeapType;
  var Ops_5Mask: MaskType;
  var b_7: bool;
  var Used_4Heap: HeapType;
  var Used_4Mask: MaskType;
  var b_6: bool;
  var x_1: Ref;
  var y_1: int;
  var perm: Perm;
  var Labellhs7Mask: MaskType;
  var Labellhs7Heap: HeapType;
  var boolCur_2: bool;
  var Used_5Heap: HeapType;
  var Used_5Mask: MaskType;
  var b_8: bool;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var WandDefLHSHeap: HeapType;
  var WandDefLHSMask: MaskType;
  var y_2: int;
  var x_2_2: Ref;
  var Labellhs9Mask: MaskType;
  var Labellhs9Heap: HeapType;
  var WandDefRHSHeap: HeapType;
  var WandDefRHSMask: MaskType;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[head_1, $allocated];
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: package (let x == (head) in (let y == (0) in acc(x.val, write))) --* true {
  // } -- 0586.vpr@23.3--23.67
    havoc Ops_5Heap;
    Ops_5Mask := ZeroMask;
    b_7 := b_7 && state(Ops_5Heap, Ops_5Mask);
    havoc Used_4Heap;
    Used_4Mask := ZeroMask;
    b_6 := b_6 && state(Used_4Heap, Used_4Mask);
    // Inhaling left hand side of current wand into hypothetical state
    if (b_7) {
      x_1 := head_1;
      if (b_7) {
        y_1 := 0;
        if (b_7) {
          perm := FullPerm;
          b_7 := b_7 && x_1 != null;
          Ops_5Mask := Ops_5Mask[x_1, val:=Ops_5Mask[x_1, val] + perm];
          b_7 := b_7 && state(Ops_5Heap, Ops_5Mask);
        }
      }
    }
    b_7 := b_7 && state(Ops_5Heap, Ops_5Mask);
    
    // -- Translating statement: label lhs7 -- 0586.vpr@23.11--23.67
      lhs7:
      Labellhs7Mask := Ops_5Mask;
      Labellhs7Heap := Ops_5Heap;
      b_7 := b_7 && state(Ops_5Heap, Ops_5Mask);
    boolCur_2 := true;
    // Translating exec of non-ghost operationtrue
    havoc Used_5Heap;
    Used_5Mask := ZeroMask;
    b_8 := b_8 && state(Used_5Heap, Used_5Mask);
    Mask := Mask[null, wand_2(head_1, 0, FullPerm, true):=Mask[null, wand_2(head_1, 0, FullPerm, true)] + FullPerm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: exhale (let y == (0) in (let x == (head) in acc(x.val, write))) --* true -- 0586.vpr@25.3--25.67
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of (let y == (0) in (let x == (head) in acc(x.val, write))) --* true
      if (*) {
        havoc WandDefLHSHeap;
        WandDefLHSMask := ZeroMask;
        y_2 := 0;
        x_2_2 := head_1;
        perm := FullPerm;
        assume x_2_2 != null;
        WandDefLHSMask := WandDefLHSMask[x_2_2, val:=WandDefLHSMask[x_2_2, val] + perm];
        assume state(WandDefLHSHeap, WandDefLHSMask);
        assume state(WandDefLHSHeap, WandDefLHSMask);
        
        // -- Translating statement: label lhs9 -- 0586.vpr@25.11--25.67
          lhs9:
          Labellhs9Mask := WandDefLHSMask;
          Labellhs9Heap := WandDefLHSHeap;
          assume state(WandDefLHSHeap, WandDefLHSMask);
        havoc WandDefRHSHeap;
        WandDefRHSMask := ZeroMask;
        assume state(WandDefRHSHeap, WandDefRHSMask);
        assume false;
      }
    // permLe
    assert {:msg "  Exhale might fail. Magic wand instance not found. (0586.vpr@25.11--25.67) [220546]"}
      FullPerm <= Mask[null, wand_3(0, head_1, FullPerm, true)];
    Mask := Mask[null, wand_3(0, head_1, FullPerm, true):=Mask[null, wand_3(0, head_1, FullPerm, true)] - FullPerm];
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
    assume state(Heap, Mask);
}