// 
// Translation of Viper program.
// 
// Date:         2024-12-26 20:04:10
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/wands/regression/nesting.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/wands/regression/nesting-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
function  wand(arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm, arg5: Ref, arg6: Perm): Field WandType_wand int;
function  wand#sm(arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm, arg5: Ref, arg6: Perm): Field WandType_wand PMaskType;
function  wand#ft(arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm, arg5: Ref, arg6: Perm): Field WandType_wand FrameType;
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm, arg5: Ref, arg6: Perm ::
  { wand(arg1, arg2, arg3, arg4, arg5, arg6) }
  IsWandField(wand(arg1, arg2, arg3, arg4, arg5, arg6))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm, arg5: Ref, arg6: Perm ::
  { wand#ft(arg1, arg2, arg3, arg4, arg5, arg6) }
  IsWandField(wand#ft(arg1, arg2, arg3, arg4, arg5, arg6))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm, arg5: Ref, arg6: Perm ::
  { wand(arg1, arg2, arg3, arg4, arg5, arg6) }
  !IsPredicateField(wand(arg1, arg2, arg3, arg4, arg5, arg6))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm, arg5: Ref, arg6: Perm ::
  { wand#ft(arg1, arg2, arg3, arg4, arg5, arg6) }
  !IsPredicateField(wand#ft(arg1, arg2, arg3, arg4, arg5, arg6))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm, arg5: Ref, arg6: Perm ::
  { WandMaskField(wand#ft(arg1, arg2, arg3, arg4, arg5, arg6)) }
  wand#sm(arg1, arg2, arg3, arg4, arg5, arg6) == WandMaskField(wand#ft(arg1, arg2, arg3, arg4, arg5, arg6))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm, arg5: Ref, arg6: Perm ::
  { wand(arg1, arg2, arg3, arg4, arg5, arg6) }
  getPredWandId(wand(arg1, arg2, arg3, arg4, arg5, arg6)) == 0
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm, arg5: Ref, arg6: Perm, arg1_2: Ref, arg2_2: Perm, arg3_2: Ref, arg4_2: Perm, arg5_2: Ref, arg6_2: Perm ::
  { wand(arg1, arg2, arg3, arg4, arg5, arg6), wand(arg1_2, arg2_2, arg3_2, arg4_2, arg5_2, arg6_2) }
  wand(arg1, arg2, arg3, arg4, arg5, arg6) == wand(arg1_2, arg2_2, arg3_2, arg4_2, arg5_2, arg6_2) ==> arg1 == arg1_2 && (arg2 == arg2_2 && (arg3 == arg3_2 && (arg4 == arg4_2 && (arg5 == arg5_2 && arg6 == arg6_2))))
);
type WandType_wand_1;
function  wand_1(arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm, arg5: Ref, arg6: Perm, arg7: Ref, arg8: Perm, arg9: Ref, arg10: Perm): Field WandType_wand_1 int;
function  wand_1#sm(arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm, arg5: Ref, arg6: Perm, arg7: Ref, arg8: Perm, arg9: Ref, arg10: Perm): Field WandType_wand_1 PMaskType;
function  wand_1#ft(arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm, arg5: Ref, arg6: Perm, arg7: Ref, arg8: Perm, arg9: Ref, arg10: Perm): Field WandType_wand_1 FrameType;
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm, arg5: Ref, arg6: Perm, arg7: Ref, arg8: Perm, arg9: Ref, arg10: Perm ::
  { wand_1(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10) }
  IsWandField(wand_1(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm, arg5: Ref, arg6: Perm, arg7: Ref, arg8: Perm, arg9: Ref, arg10: Perm ::
  { wand_1#ft(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10) }
  IsWandField(wand_1#ft(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm, arg5: Ref, arg6: Perm, arg7: Ref, arg8: Perm, arg9: Ref, arg10: Perm ::
  { wand_1(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10) }
  !IsPredicateField(wand_1(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm, arg5: Ref, arg6: Perm, arg7: Ref, arg8: Perm, arg9: Ref, arg10: Perm ::
  { wand_1#ft(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10) }
  !IsPredicateField(wand_1#ft(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm, arg5: Ref, arg6: Perm, arg7: Ref, arg8: Perm, arg9: Ref, arg10: Perm ::
  { WandMaskField(wand_1#ft(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10)) }
  wand_1#sm(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10) == WandMaskField(wand_1#ft(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm, arg5: Ref, arg6: Perm, arg7: Ref, arg8: Perm, arg9: Ref, arg10: Perm ::
  { wand_1(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10) }
  getPredWandId(wand_1(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10)) == 1
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm, arg5: Ref, arg6: Perm, arg7: Ref, arg8: Perm, arg9: Ref, arg10: Perm, arg1_2: Ref, arg2_2: Perm, arg3_2: Ref, arg4_2: Perm, arg5_2: Ref, arg6_2: Perm, arg7_2: Ref, arg8_2: Perm, arg9_2: Ref, arg10_2: Perm ::
  { wand_1(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10), wand_1(arg1_2, arg2_2, arg3_2, arg4_2, arg5_2, arg6_2, arg7_2, arg8_2, arg9_2, arg10_2) }
  wand_1(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10) == wand_1(arg1_2, arg2_2, arg3_2, arg4_2, arg5_2, arg6_2, arg7_2, arg8_2, arg9_2, arg10_2) ==> arg1 == arg1_2 && (arg2 == arg2_2 && (arg3 == arg3_2 && (arg4 == arg4_2 && (arg5 == arg5_2 && (arg6 == arg6_2 && (arg7 == arg7_2 && (arg8 == arg8_2 && (arg9 == arg9_2 && arg10 == arg10_2))))))))
);

// ==================================================
// Translation of all fields
// ==================================================

const unique f_7: Field NormalField int;
axiom !IsPredicateField(f_7);
axiom !IsWandField(f_7);
const unique g: Field NormalField int;
axiom !IsPredicateField(g);
axiom !IsWandField(g);
const unique h: Field NormalField int;
axiom !IsPredicateField(h);
axiom !IsWandField(h);

// ==================================================
// Translation of method test01
// ==================================================

procedure test01(x: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var Ops_1Heap: HeapType;
  var Ops_1Mask: MaskType;
  var b_1_1: bool;
  var UsedHeap: HeapType;
  var UsedMask: MaskType;
  var b_2: bool;
  var Labellhs1Mask: MaskType;
  var Labellhs1Heap: HeapType;
  var boolCur: bool;
  var Used_1Heap: HeapType;
  var Used_1Mask: MaskType;
  var b_2_1: bool;
  var rcvLocal: Ref;
  var neededTransfer: Perm;
  var initNeededTransfer: Perm;
  var accVar2: bool;
  var maskTransfer: Perm;
  var takeTransfer: Perm;
  var b_3: bool;
  var ResultHeap: HeapType;
  var ResultMask: MaskType;
  var b_4: bool;
  var Result_1Heap: HeapType;
  var Result_1Mask: MaskType;
  var Ops_3Heap: HeapType;
  var Ops_3Mask: MaskType;
  var b_6: bool;
  var Used_2Heap: HeapType;
  var Used_2Mask: MaskType;
  var b_5: bool;
  var Labellhs4Mask: MaskType;
  var Labellhs4Heap: HeapType;
  var boolCur_1: bool;
  var Used_3Heap: HeapType;
  var Used_3Mask: MaskType;
  var b_7: bool;
  var b_8: bool;
  var Result_2Heap: HeapType;
  var Result_2Mask: MaskType;
  var WandDefLHSHeap: HeapType;
  var WandDefLHSMask: MaskType;
  var Labellhs6Mask: MaskType;
  var Labellhs6Heap: HeapType;
  var WandDefRHSHeap: HeapType;
  var WandDefRHSMask: MaskType;
  var b_9: bool;
  var Result_3Heap: HeapType;
  var Result_3Mask: MaskType;
  var PreCallHeap: HeapType;
  var PreCallMask: MaskType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[x, $allocated];
  
  // -- Checked inhaling of precondition
    perm := FullPerm;
    assume x != null;
    Mask := Mask[x, f_7:=Mask[x, f_7] + perm];
    assume state(Heap, Mask);
    perm := FullPerm;
    assume x != null;
    Mask := Mask[x, g:=Mask[x, g] + perm];
    assume state(Heap, Mask);
    perm := FullPerm;
    assume x != null;
    Mask := Mask[x, h:=Mask[x, h] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: package acc(x.f, write) --* acc(x.f, write) && acc(x.g, write) {
  // } -- nesting.vpr@15.3--15.25
    havoc Ops_1Heap;
    Ops_1Mask := ZeroMask;
    b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
    havoc UsedHeap;
    UsedMask := ZeroMask;
    b_2 := b_2 && state(UsedHeap, UsedMask);
    // Inhaling left hand side of current wand into hypothetical state
    if (b_1_1) {
      perm := FullPerm;
      b_1_1 := b_1_1 && x != null;
      Ops_1Mask := Ops_1Mask[x, f_7:=Ops_1Mask[x, f_7] + perm];
      b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
    }
    b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
    
    // -- Translating statement: label lhs1 -- nesting.vpr@15.11--15.25
      lhs1:
      Labellhs1Mask := Ops_1Mask;
      Labellhs1Heap := Ops_1Heap;
      b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
    boolCur := true;
    // Translating exec of non-ghost operationacc(x.f, write) && acc(x.g, write)
    havoc Used_1Heap;
    Used_1Mask := ZeroMask;
    b_2_1 := b_2_1 && state(Used_1Heap, Used_1Mask);
    
    // -- Transfer of acc(x.f, write)
      rcvLocal := x;
      neededTransfer := FullPerm;
      initNeededTransfer := Used_1Mask[rcvLocal, f_7] + neededTransfer;
      assert {:msg "  Packaging wand might fail. Fraction acc(x.f, write) might be negative. (nesting.vpr@15.3--15.25) [132845]"}
        neededTransfer >= 0.000000000;
      
      // -- transfer code for top state of stack
        // accumulate constraints which need to be satisfied for transfer to occur
        accVar2 := true;
        // actual code for the transfer from current state on stack
        if ((((b_1_1 && b_1_1) && b_2_1) && accVar2) && neededTransfer > 0.000000000) {
          maskTransfer := Ops_1Mask[rcvLocal, f_7];
          if (neededTransfer <= maskTransfer) {
            takeTransfer := neededTransfer;
          } else {
            takeTransfer := maskTransfer;
          }
          if (takeTransfer > 0.000000000) {
            neededTransfer := neededTransfer - takeTransfer;
            Used_1Mask := Used_1Mask[rcvLocal, f_7:=Used_1Mask[rcvLocal, f_7] + takeTransfer];
            b_2_1 := b_2_1 && state(Used_1Heap, Used_1Mask);
            b_2_1 := b_2_1 && Ops_1Heap[rcvLocal, f_7] == Used_1Heap[rcvLocal, f_7];
            Ops_1Mask := Ops_1Mask[rcvLocal, f_7:=Ops_1Mask[rcvLocal, f_7] - takeTransfer];
          }
        }
      
      // -- transfer code for top state of stack
        // accumulate constraints which need to be satisfied for transfer to occur
        accVar2 := true;
        // actual code for the transfer from current state on stack
        if ((((b_1_1 && b_1_1) && b_2_1) && accVar2) && neededTransfer > 0.000000000) {
          maskTransfer := Mask[rcvLocal, f_7];
          if (neededTransfer <= maskTransfer) {
            takeTransfer := neededTransfer;
          } else {
            takeTransfer := maskTransfer;
          }
          if (takeTransfer > 0.000000000) {
            neededTransfer := neededTransfer - takeTransfer;
            Used_1Mask := Used_1Mask[rcvLocal, f_7:=Used_1Mask[rcvLocal, f_7] + takeTransfer];
            b_2_1 := b_2_1 && state(Used_1Heap, Used_1Mask);
            b_2_1 := b_2_1 && Heap[rcvLocal, f_7] == Used_1Heap[rcvLocal, f_7];
            Mask := Mask[rcvLocal, f_7:=Mask[rcvLocal, f_7] - takeTransfer];
            Heap := Heap[null, wand#sm(x, FullPerm, x, FullPerm, x, FullPerm):=Heap[null, wand#sm(x, FullPerm, x, FullPerm, x, FullPerm)][x, f_7:=true]];
          }
        }
      assert {:msg "  Packaging wand might fail. There might be insufficient permission to access x.f (nesting.vpr@15.3--15.25) [132846]"}
        (b_1_1 && b_1_1) && b_2_1 ==> neededTransfer == 0.000000000 && Used_1Mask[rcvLocal, f_7] == initNeededTransfer;
      
      // -- Creating state which is the sum of the two previously built up states
        b_3 := b_1_1 && b_2_1;
        b_3 := b_3 && state(ResultHeap, ResultMask);
        b_3 := b_3 && sumMask(ResultMask, Ops_1Mask, Used_1Mask);
        b_3 := (b_3 && IdenticalOnKnownLocations(Ops_1Heap, ResultHeap, Ops_1Mask)) && IdenticalOnKnownLocations(Used_1Heap, ResultHeap, Used_1Mask);
        b_3 := b_3 && state(ResultHeap, ResultMask);
      b_1_1 := b_1_1 && b_3;
    
    // -- Transfer of acc(x.g, write)
      rcvLocal := x;
      neededTransfer := FullPerm;
      initNeededTransfer := Used_1Mask[rcvLocal, g] + neededTransfer;
      assert {:msg "  Packaging wand might fail. Fraction acc(x.g, write) might be negative. (nesting.vpr@15.3--15.25) [132847]"}
        neededTransfer >= 0.000000000;
      
      // -- transfer code for top state of stack
        // accumulate constraints which need to be satisfied for transfer to occur
        accVar2 := true;
        // actual code for the transfer from current state on stack
        if ((((b_1_1 && b_1_1) && b_2_1) && accVar2) && neededTransfer > 0.000000000) {
          maskTransfer := Ops_1Mask[rcvLocal, g];
          if (neededTransfer <= maskTransfer) {
            takeTransfer := neededTransfer;
          } else {
            takeTransfer := maskTransfer;
          }
          if (takeTransfer > 0.000000000) {
            neededTransfer := neededTransfer - takeTransfer;
            Used_1Mask := Used_1Mask[rcvLocal, g:=Used_1Mask[rcvLocal, g] + takeTransfer];
            b_2_1 := b_2_1 && state(Used_1Heap, Used_1Mask);
            b_2_1 := b_2_1 && Ops_1Heap[rcvLocal, g] == Used_1Heap[rcvLocal, g];
            Ops_1Mask := Ops_1Mask[rcvLocal, g:=Ops_1Mask[rcvLocal, g] - takeTransfer];
          }
        }
      
      // -- transfer code for top state of stack
        // accumulate constraints which need to be satisfied for transfer to occur
        accVar2 := true;
        // actual code for the transfer from current state on stack
        if ((((b_1_1 && b_1_1) && b_2_1) && accVar2) && neededTransfer > 0.000000000) {
          maskTransfer := Mask[rcvLocal, g];
          if (neededTransfer <= maskTransfer) {
            takeTransfer := neededTransfer;
          } else {
            takeTransfer := maskTransfer;
          }
          if (takeTransfer > 0.000000000) {
            neededTransfer := neededTransfer - takeTransfer;
            Used_1Mask := Used_1Mask[rcvLocal, g:=Used_1Mask[rcvLocal, g] + takeTransfer];
            b_2_1 := b_2_1 && state(Used_1Heap, Used_1Mask);
            b_2_1 := b_2_1 && Heap[rcvLocal, g] == Used_1Heap[rcvLocal, g];
            Mask := Mask[rcvLocal, g:=Mask[rcvLocal, g] - takeTransfer];
            Heap := Heap[null, wand#sm(x, FullPerm, x, FullPerm, x, FullPerm):=Heap[null, wand#sm(x, FullPerm, x, FullPerm, x, FullPerm)][x, g:=true]];
          }
        }
      assert {:msg "  Packaging wand might fail. There might be insufficient permission to access x.g (nesting.vpr@15.3--15.25) [132848]"}
        (b_1_1 && b_1_1) && b_2_1 ==> neededTransfer == 0.000000000 && Used_1Mask[rcvLocal, g] == initNeededTransfer;
      
      // -- Creating state which is the sum of the two previously built up states
        b_4 := b_1_1 && b_2_1;
        b_4 := b_4 && state(Result_1Heap, Result_1Mask);
        b_4 := b_4 && sumMask(Result_1Mask, Ops_1Mask, Used_1Mask);
        b_4 := (b_4 && IdenticalOnKnownLocations(Ops_1Heap, Result_1Heap, Ops_1Mask)) && IdenticalOnKnownLocations(Used_1Heap, Result_1Heap, Used_1Mask);
        b_4 := b_4 && state(Result_1Heap, Result_1Mask);
      b_1_1 := b_1_1 && b_4;
    Mask := Mask[null, wand(x, FullPerm, x, FullPerm, x, FullPerm):=Mask[null, wand(x, FullPerm, x, FullPerm, x, FullPerm)] + FullPerm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: package acc(x.h, write) --*
  // acc(x.h, write) && (acc(x.f, write) --* acc(x.f, write) && acc(x.g, write)) {
  // } -- nesting.vpr@16.3--16.40
    havoc Ops_3Heap;
    Ops_3Mask := ZeroMask;
    b_6 := b_6 && state(Ops_3Heap, Ops_3Mask);
    havoc Used_2Heap;
    Used_2Mask := ZeroMask;
    b_5 := b_5 && state(Used_2Heap, Used_2Mask);
    // Inhaling left hand side of current wand into hypothetical state
    if (b_6) {
      perm := FullPerm;
      b_6 := b_6 && x != null;
      Ops_3Mask := Ops_3Mask[x, h:=Ops_3Mask[x, h] + perm];
      b_6 := b_6 && state(Ops_3Heap, Ops_3Mask);
    }
    b_6 := b_6 && state(Ops_3Heap, Ops_3Mask);
    
    // -- Translating statement: label lhs4 -- nesting.vpr@16.11--16.40
      lhs4:
      Labellhs4Mask := Ops_3Mask;
      Labellhs4Heap := Ops_3Heap;
      b_6 := b_6 && state(Ops_3Heap, Ops_3Mask);
    boolCur_1 := true;
    // Translating exec of non-ghost operationacc(x.h, write) && (acc(x.f, write) --* acc(x.f, write) && acc(x.g, write))
    havoc Used_3Heap;
    Used_3Mask := ZeroMask;
    b_7 := b_7 && state(Used_3Heap, Used_3Mask);
    
    // -- Transfer of acc(x.h, write)
      rcvLocal := x;
      neededTransfer := FullPerm;
      initNeededTransfer := Used_3Mask[rcvLocal, h] + neededTransfer;
      assert {:msg "  Packaging wand might fail. Fraction acc(x.h, write) might be negative. (nesting.vpr@16.3--16.40) [132849]"}
        neededTransfer >= 0.000000000;
      
      // -- transfer code for top state of stack
        // accumulate constraints which need to be satisfied for transfer to occur
        accVar2 := true;
        // actual code for the transfer from current state on stack
        if ((((b_6 && b_6) && b_7) && accVar2) && neededTransfer > 0.000000000) {
          maskTransfer := Ops_3Mask[rcvLocal, h];
          if (neededTransfer <= maskTransfer) {
            takeTransfer := neededTransfer;
          } else {
            takeTransfer := maskTransfer;
          }
          if (takeTransfer > 0.000000000) {
            neededTransfer := neededTransfer - takeTransfer;
            Used_3Mask := Used_3Mask[rcvLocal, h:=Used_3Mask[rcvLocal, h] + takeTransfer];
            b_7 := b_7 && state(Used_3Heap, Used_3Mask);
            b_7 := b_7 && Ops_3Heap[rcvLocal, h] == Used_3Heap[rcvLocal, h];
            Ops_3Mask := Ops_3Mask[rcvLocal, h:=Ops_3Mask[rcvLocal, h] - takeTransfer];
          }
        }
      
      // -- transfer code for top state of stack
        // accumulate constraints which need to be satisfied for transfer to occur
        accVar2 := true;
        // actual code for the transfer from current state on stack
        if ((((b_6 && b_6) && b_7) && accVar2) && neededTransfer > 0.000000000) {
          maskTransfer := Mask[rcvLocal, h];
          if (neededTransfer <= maskTransfer) {
            takeTransfer := neededTransfer;
          } else {
            takeTransfer := maskTransfer;
          }
          if (takeTransfer > 0.000000000) {
            neededTransfer := neededTransfer - takeTransfer;
            Used_3Mask := Used_3Mask[rcvLocal, h:=Used_3Mask[rcvLocal, h] + takeTransfer];
            b_7 := b_7 && state(Used_3Heap, Used_3Mask);
            b_7 := b_7 && Heap[rcvLocal, h] == Used_3Heap[rcvLocal, h];
            Mask := Mask[rcvLocal, h:=Mask[rcvLocal, h] - takeTransfer];
            Heap := Heap[null, wand_1#sm(x, FullPerm, x, FullPerm, x, FullPerm, x, FullPerm, x, FullPerm):=Heap[null, wand_1#sm(x, FullPerm, x, FullPerm, x, FullPerm, x, FullPerm, x, FullPerm)][x, h:=true]];
          }
        }
      assert {:msg "  Packaging wand might fail. There might be insufficient permission to access x.h (nesting.vpr@16.3--16.40) [132850]"}
        (b_6 && b_6) && b_7 ==> neededTransfer == 0.000000000 && Used_3Mask[rcvLocal, h] == initNeededTransfer;
      
      // -- Creating state which is the sum of the two previously built up states
        b_8 := b_6 && b_7;
        b_8 := b_8 && state(Result_2Heap, Result_2Mask);
        b_8 := b_8 && sumMask(Result_2Mask, Ops_3Mask, Used_3Mask);
        b_8 := (b_8 && IdenticalOnKnownLocations(Ops_3Heap, Result_2Heap, Ops_3Mask)) && IdenticalOnKnownLocations(Used_3Heap, Result_2Heap, Used_3Mask);
        b_8 := b_8 && state(Result_2Heap, Result_2Mask);
      b_6 := b_6 && b_8;
    
    // -- Transfer of acc(x.f, write) --* acc(x.f, write) && acc(x.g, write)
      
      // -- checking if access predicate defined in used state
        if ((b_6 && b_6) && b_7) {
          if (b_6) {
            
            // -- Check definedness of acc(x.f, write) --* acc(x.f, write) && acc(x.g, write)
              if (*) {
                havoc WandDefLHSHeap;
                WandDefLHSMask := ZeroMask;
                perm := FullPerm;
                assume x != null;
                WandDefLHSMask := WandDefLHSMask[x, f_7:=WandDefLHSMask[x, f_7] + perm];
                assume state(WandDefLHSHeap, WandDefLHSMask);
                assume state(WandDefLHSHeap, WandDefLHSMask);
                
                // -- Translating statement: label lhs6 -- nesting.vpr@16.24--16.38
                  lhs6:
                  Labellhs6Mask := WandDefLHSMask;
                  Labellhs6Heap := WandDefLHSHeap;
                  assume state(WandDefLHSHeap, WandDefLHSMask);
                havoc WandDefRHSHeap;
                WandDefRHSMask := ZeroMask;
                perm := FullPerm;
                assume x != null;
                WandDefRHSMask := WandDefRHSMask[x, f_7:=WandDefRHSMask[x, f_7] + perm];
                assume state(WandDefRHSHeap, WandDefRHSMask);
                perm := FullPerm;
                assume x != null;
                WandDefRHSMask := WandDefRHSMask[x, g:=WandDefRHSMask[x, g] + perm];
                assume state(WandDefRHSHeap, WandDefRHSMask);
                assume state(WandDefRHSHeap, WandDefRHSMask);
                assume false;
              }
          }
        }
      neededTransfer := 1.000000000;
      initNeededTransfer := Used_3Mask[null, wand(x, FullPerm, x, FullPerm, x, FullPerm)] + neededTransfer;
      assert {:msg "  Packaging wand might fail. Fraction acc(x.f, write) --* acc(x.f, write) && acc(x.g, write) might be negative. (nesting.vpr@16.3--16.40) [132851]"}
        neededTransfer >= 0.000000000;
      
      // -- transfer code for top state of stack
        // accumulate constraints which need to be satisfied for transfer to occur
        accVar2 := true;
        // actual code for the transfer from current state on stack
        if ((((b_6 && b_6) && b_7) && accVar2) && neededTransfer > 0.000000000) {
          maskTransfer := Ops_3Mask[null, wand(x, FullPerm, x, FullPerm, x, FullPerm)];
          if (neededTransfer <= maskTransfer) {
            takeTransfer := neededTransfer;
          } else {
            takeTransfer := maskTransfer;
          }
          if (takeTransfer > 0.000000000) {
            neededTransfer := neededTransfer - takeTransfer;
            Used_3Mask := Used_3Mask[null, wand(x, FullPerm, x, FullPerm, x, FullPerm):=Used_3Mask[null, wand(x, FullPerm, x, FullPerm, x, FullPerm)] + takeTransfer];
            b_7 := b_7 && state(Used_3Heap, Used_3Mask);
            Ops_3Mask := Ops_3Mask[null, wand(x, FullPerm, x, FullPerm, x, FullPerm):=Ops_3Mask[null, wand(x, FullPerm, x, FullPerm, x, FullPerm)] - takeTransfer];
          }
        }
      
      // -- transfer code for top state of stack
        // accumulate constraints which need to be satisfied for transfer to occur
        accVar2 := true;
        // actual code for the transfer from current state on stack
        if ((((b_6 && b_6) && b_7) && accVar2) && neededTransfer > 0.000000000) {
          maskTransfer := Mask[null, wand(x, FullPerm, x, FullPerm, x, FullPerm)];
          if (neededTransfer <= maskTransfer) {
            takeTransfer := neededTransfer;
          } else {
            takeTransfer := maskTransfer;
          }
          if (takeTransfer > 0.000000000) {
            neededTransfer := neededTransfer - takeTransfer;
            Used_3Mask := Used_3Mask[null, wand(x, FullPerm, x, FullPerm, x, FullPerm):=Used_3Mask[null, wand(x, FullPerm, x, FullPerm, x, FullPerm)] + takeTransfer];
            b_7 := b_7 && state(Used_3Heap, Used_3Mask);
            Mask := Mask[null, wand(x, FullPerm, x, FullPerm, x, FullPerm):=Mask[null, wand(x, FullPerm, x, FullPerm, x, FullPerm)] - takeTransfer];
          }
        }
      assert {:msg "  Packaging wand might fail. Magic wand instance not found. (nesting.vpr@16.3--16.40) [132852]"}
        (b_6 && b_6) && b_7 ==> neededTransfer == 0.000000000 && Used_3Mask[null, wand(x, FullPerm, x, FullPerm, x, FullPerm)] == initNeededTransfer;
      
      // -- Creating state which is the sum of the two previously built up states
        b_9 := b_6 && b_7;
        b_9 := b_9 && state(Result_3Heap, Result_3Mask);
        b_9 := b_9 && sumMask(Result_3Mask, Ops_3Mask, Used_3Mask);
        b_9 := (b_9 && IdenticalOnKnownLocations(Ops_3Heap, Result_3Heap, Ops_3Mask)) && IdenticalOnKnownLocations(Used_3Heap, Result_3Heap, Used_3Mask);
        b_9 := b_9 && state(Result_3Heap, Result_3Mask);
      b_6 := b_6 && b_9;
    Mask := Mask[null, wand_1(x, FullPerm, x, FullPerm, x, FullPerm, x, FullPerm, x, FullPerm):=Mask[null, wand_1(x, FullPerm, x, FullPerm, x, FullPerm, x, FullPerm, x, FullPerm)] + FullPerm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: test02(x) -- nesting.vpr@18.3--18.12
    PreCallHeap := Heap;
    PreCallMask := Mask;
    
    // -- Exhaling precondition
      ExhaleWellDef0Mask := Mask;
      ExhaleWellDef0Heap := Heap;
      // permLe
      assert {:msg "  The precondition of method test02 might not hold. Magic wand instance not found. (nesting.vpr@18.3--18.12) [132853]"}
        FullPerm <= Mask[null, wand_1(x, FullPerm, x, FullPerm, x, FullPerm, x, FullPerm, x, FullPerm)];
      Mask := Mask[null, wand_1(x, FullPerm, x, FullPerm, x, FullPerm, x, FullPerm, x, FullPerm):=Mask[null, wand_1(x, FullPerm, x, FullPerm, x, FullPerm, x, FullPerm, x, FullPerm)] - FullPerm];
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  The precondition of method test02 might not hold. There might be insufficient permission to access x.h (nesting.vpr@18.3--18.12) [132854]"}
          perm <= Mask[x, h];
      }
      Mask := Mask[x, h:=Mask[x, h] - perm];
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  The precondition of method test02 might not hold. There might be insufficient permission to access x.f (nesting.vpr@18.3--18.12) [132855]"}
          perm <= Mask[x, f_7];
      }
      Mask := Mask[x, f_7:=Mask[x, f_7] - perm];
      // Finish exhale
      havoc ExhaleHeap;
      assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
      Heap := ExhaleHeap;
    
    // -- Inhaling postcondition
      assume state(Heap, Mask);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test02
// ==================================================

procedure test02(x: Ref) returns ()
  modifies Heap, Mask;
{
  var WandDefLHSHeap: HeapType;
  var WandDefLHSMask: MaskType;
  var perm: Perm;
  var Labellhs7Mask: MaskType;
  var Labellhs7Heap: HeapType;
  var WandDefRHSHeap: HeapType;
  var WandDefRHSMask: MaskType;
  var Labellhs8Mask: MaskType;
  var Labellhs8Heap: HeapType;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleHeap: HeapType;
  var AssertHeap: HeapType;
  var AssertMask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[x, $allocated];
  
  // -- Checked inhaling of precondition
    
    // -- Check definedness of acc(x.h, write) --* acc(x.h, write) && (acc(x.f, write) --* acc(x.f, write) && acc(x.g, write))
      if (*) {
        havoc WandDefLHSHeap;
        WandDefLHSMask := ZeroMask;
        perm := FullPerm;
        assume x != null;
        WandDefLHSMask := WandDefLHSMask[x, h:=WandDefLHSMask[x, h] + perm];
        assume state(WandDefLHSHeap, WandDefLHSMask);
        assume state(WandDefLHSHeap, WandDefLHSMask);
        
        // -- Translating statement: label lhs7 -- nesting.vpr@22.12--22.111
          lhs7:
          Labellhs7Mask := WandDefLHSMask;
          Labellhs7Heap := WandDefLHSHeap;
          assume state(WandDefLHSHeap, WandDefLHSMask);
        havoc WandDefRHSHeap;
        WandDefRHSMask := ZeroMask;
        perm := FullPerm;
        assume x != null;
        WandDefRHSMask := WandDefRHSMask[x, h:=WandDefRHSMask[x, h] + perm];
        assume state(WandDefRHSHeap, WandDefRHSMask);
        
        // -- Check definedness of acc(x.f, write) --* acc(x.f, write) && acc(x.g, write)
          if (*) {
            havoc WandDefLHSHeap;
            WandDefLHSMask := ZeroMask;
            perm := FullPerm;
            assume x != null;
            WandDefLHSMask := WandDefLHSMask[x, f_7:=WandDefLHSMask[x, f_7] + perm];
            assume state(WandDefLHSHeap, WandDefLHSMask);
            assume state(WandDefLHSHeap, WandDefLHSMask);
            
            // -- Translating statement: label lhs8 -- nesting.vpr@22.53--22.109
              lhs8:
              Labellhs8Mask := WandDefLHSMask;
              Labellhs8Heap := WandDefLHSHeap;
              assume state(WandDefLHSHeap, WandDefLHSMask);
            havoc WandDefRHSHeap;
            WandDefRHSMask := ZeroMask;
            perm := FullPerm;
            assume x != null;
            WandDefRHSMask := WandDefRHSMask[x, f_7:=WandDefRHSMask[x, f_7] + perm];
            assume state(WandDefRHSHeap, WandDefRHSMask);
            perm := FullPerm;
            assume x != null;
            WandDefRHSMask := WandDefRHSMask[x, g:=WandDefRHSMask[x, g] + perm];
            assume state(WandDefRHSHeap, WandDefRHSMask);
            assume state(WandDefRHSHeap, WandDefRHSMask);
            assume false;
          }
        WandDefRHSMask := WandDefRHSMask[null, wand(x, FullPerm, x, FullPerm, x, FullPerm):=WandDefRHSMask[null, wand(x, FullPerm, x, FullPerm, x, FullPerm)] + FullPerm];
        assume state(WandDefRHSHeap, WandDefRHSMask);
        assume state(WandDefRHSHeap, WandDefRHSMask);
        assume false;
      }
    Mask := Mask[null, wand_1(x, FullPerm, x, FullPerm, x, FullPerm, x, FullPerm, x, FullPerm):=Mask[null, wand_1(x, FullPerm, x, FullPerm, x, FullPerm, x, FullPerm, x, FullPerm)] + FullPerm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    perm := FullPerm;
    assume x != null;
    Mask := Mask[x, h:=Mask[x, h] + perm];
    assume state(Heap, Mask);
    perm := FullPerm;
    assume x != null;
    Mask := Mask[x, f_7:=Mask[x, f_7] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: apply acc(x.h, write) --*
  //   acc(x.h, write) &&
  //   (acc(x.f, write) --* acc(x.f, write) && acc(x.g, write)) -- nesting.vpr@25.3--25.108
    
    // -- check if wand is held and remove an instance
      ExhaleWellDef0Mask := Mask;
      ExhaleWellDef0Heap := Heap;
      // permLe
      assert {:msg "  Applying wand might fail. Magic wand instance not found. (nesting.vpr@25.3--25.108) [132856]"}
        FullPerm <= Mask[null, wand_1(x, FullPerm, x, FullPerm, x, FullPerm, x, FullPerm, x, FullPerm)];
      Mask := Mask[null, wand_1(x, FullPerm, x, FullPerm, x, FullPerm, x, FullPerm, x, FullPerm):=Mask[null, wand_1(x, FullPerm, x, FullPerm, x, FullPerm, x, FullPerm, x, FullPerm)] - FullPerm];
    assume state(Heap, Mask);
    
    // -- check if LHS holds and remove permissions 
      ExhaleWellDef0Mask := Mask;
      ExhaleWellDef0Heap := Heap;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Applying wand might fail. There might be insufficient permission to access x.h (nesting.vpr@25.3--25.108) [132858]"}
          perm <= Mask[x, h];
      }
      Mask := Mask[x, h:=Mask[x, h] - perm];
    assume state(Heap, Mask);
    
    // -- inhale the RHS of the wand
      perm := FullPerm;
      assume x != null;
      Mask := Mask[x, h:=Mask[x, h] + perm];
      assume state(Heap, Mask);
      Mask := Mask[null, wand(x, FullPerm, x, FullPerm, x, FullPerm):=Mask[null, wand(x, FullPerm, x, FullPerm, x, FullPerm)] + FullPerm];
      assume state(Heap, Mask);
      assume state(Heap, Mask);
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: apply acc(x.f, write) --* acc(x.f, write) && acc(x.g, write) -- nesting.vpr@26.3--26.65
    
    // -- check if wand is held and remove an instance
      ExhaleWellDef0Mask := Mask;
      ExhaleWellDef0Heap := Heap;
      // permLe
      assert {:msg "  Applying wand might fail. Magic wand instance not found. (nesting.vpr@26.3--26.65) [132860]"}
        FullPerm <= Mask[null, wand(x, FullPerm, x, FullPerm, x, FullPerm)];
      Mask := Mask[null, wand(x, FullPerm, x, FullPerm, x, FullPerm):=Mask[null, wand(x, FullPerm, x, FullPerm, x, FullPerm)] - FullPerm];
    assume state(Heap, Mask);
    
    // -- check if LHS holds and remove permissions 
      ExhaleWellDef0Mask := Mask;
      ExhaleWellDef0Heap := Heap;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Applying wand might fail. There might be insufficient permission to access x.f (nesting.vpr@26.3--26.65) [132862]"}
          perm <= Mask[x, f_7];
      }
      Mask := Mask[x, f_7:=Mask[x, f_7] - perm];
    assume state(Heap, Mask);
    
    // -- inhale the RHS of the wand
      perm := FullPerm;
      assume x != null;
      Mask := Mask[x, f_7:=Mask[x, f_7] + perm];
      assume state(Heap, Mask);
      perm := FullPerm;
      assume x != null;
      Mask := Mask[x, g:=Mask[x, g] + perm];
      assume state(Heap, Mask);
      assume state(Heap, Mask);
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert acc(x.g, write) -- nesting.vpr@28.3--28.25
    AssertHeap := Heap;
    AssertMask := Mask;
    ExhaleWellDef0Mask := AssertMask;
    ExhaleWellDef0Heap := AssertHeap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Assert might fail. There might be insufficient permission to access x.g (nesting.vpr@28.10--28.25) [132866]"}
        perm <= AssertMask[x, g];
    }
    AssertMask := AssertMask[x, g:=AssertMask[x, g] - perm];
    assume state(Heap, Mask);
}