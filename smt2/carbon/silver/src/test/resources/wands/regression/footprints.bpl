// 
// Translation of Viper program.
// 
// Date:         2025-01-26 21:44:55
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/wands/regression/footprints.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/wands/regression/footprints-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
function  wand_1(arg1: Ref, arg2: Perm, arg3: Ref, arg4: Ref, arg5: Ref, arg6: Perm, arg7: Ref, arg8: Perm): Field WandType_wand_1 int;
function  wand_1#sm(arg1: Ref, arg2: Perm, arg3: Ref, arg4: Ref, arg5: Ref, arg6: Perm, arg7: Ref, arg8: Perm): Field WandType_wand_1 PMaskType;
function  wand_1#ft(arg1: Ref, arg2: Perm, arg3: Ref, arg4: Ref, arg5: Ref, arg6: Perm, arg7: Ref, arg8: Perm): Field WandType_wand_1 FrameType;
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Ref, arg5: Ref, arg6: Perm, arg7: Ref, arg8: Perm ::
  { wand_1(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8) }
  IsWandField(wand_1(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Ref, arg5: Ref, arg6: Perm, arg7: Ref, arg8: Perm ::
  { wand_1#ft(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8) }
  IsWandField(wand_1#ft(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Ref, arg5: Ref, arg6: Perm, arg7: Ref, arg8: Perm ::
  { wand_1(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8) }
  !IsPredicateField(wand_1(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Ref, arg5: Ref, arg6: Perm, arg7: Ref, arg8: Perm ::
  { wand_1#ft(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8) }
  !IsPredicateField(wand_1#ft(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Ref, arg5: Ref, arg6: Perm, arg7: Ref, arg8: Perm ::
  { WandMaskField(wand_1#ft(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8)) }
  wand_1#sm(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8) == WandMaskField(wand_1#ft(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Ref, arg5: Ref, arg6: Perm, arg7: Ref, arg8: Perm ::
  { wand_1(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8) }
  getPredWandId(wand_1(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8)) == 1
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Ref, arg5: Ref, arg6: Perm, arg7: Ref, arg8: Perm, arg1_2: Ref, arg2_2: Perm, arg3_2: Ref, arg4_2: Ref, arg5_2: Ref, arg6_2: Perm, arg7_2: Ref, arg8_2: Perm ::
  { wand_1(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8), wand_1(arg1_2, arg2_2, arg3_2, arg4_2, arg5_2, arg6_2, arg7_2, arg8_2) }
  wand_1(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8) == wand_1(arg1_2, arg2_2, arg3_2, arg4_2, arg5_2, arg6_2, arg7_2, arg8_2) ==> arg1 == arg1_2 && (arg2 == arg2_2 && (arg3 == arg3_2 && (arg4 == arg4_2 && (arg5 == arg5_2 && (arg6 == arg6_2 && (arg7 == arg7_2 && arg8 == arg8_2))))))
);
type WandType_wand_2;
function  wand_2(arg1: bool, arg2: Ref): Field WandType_wand_2 int;
function  wand_2#sm(arg1: bool, arg2: Ref): Field WandType_wand_2 PMaskType;
function  wand_2#ft(arg1: bool, arg2: Ref): Field WandType_wand_2 FrameType;
axiom (forall arg1: bool, arg2: Ref ::
  { wand_2(arg1, arg2) }
  IsWandField(wand_2(arg1, arg2))
);
axiom (forall arg1: bool, arg2: Ref ::
  { wand_2#ft(arg1, arg2) }
  IsWandField(wand_2#ft(arg1, arg2))
);
axiom (forall arg1: bool, arg2: Ref ::
  { wand_2(arg1, arg2) }
  !IsPredicateField(wand_2(arg1, arg2))
);
axiom (forall arg1: bool, arg2: Ref ::
  { wand_2#ft(arg1, arg2) }
  !IsPredicateField(wand_2#ft(arg1, arg2))
);
axiom (forall arg1: bool, arg2: Ref ::
  { WandMaskField(wand_2#ft(arg1, arg2)) }
  wand_2#sm(arg1, arg2) == WandMaskField(wand_2#ft(arg1, arg2))
);
axiom (forall arg1: bool, arg2: Ref ::
  { wand_2(arg1, arg2) }
  getPredWandId(wand_2(arg1, arg2)) == 2
);
axiom (forall arg1: bool, arg2: Ref, arg1_2: bool, arg2_2: Ref ::
  { wand_2(arg1, arg2), wand_2(arg1_2, arg2_2) }
  wand_2(arg1, arg2) == wand_2(arg1_2, arg2_2) ==> arg1 == arg1_2 && arg2 == arg2_2
);

// ==================================================
// Translation of all fields
// ==================================================

const unique v_35: Field NormalField bool;
axiom !IsPredicateField(v_35);
axiom !IsWandField(v_35);
const unique l: Field NormalField Ref;
axiom !IsPredicateField(l);
axiom !IsWandField(l);

// ==================================================
// Translation of method test1
// ==================================================

procedure test1_1(x: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
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
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[x, $allocated];
  
  // -- Checked inhaling of precondition
    perm := FullPerm;
    assume x != null;
    Mask := Mask[x, l:=Mask[x, l] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of acc(x.l.v, write)
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access x.l (footprints.vpr@8.12--8.34) [210537]"}
        HasDirectPerm(Mask, x, l);
    perm := FullPerm;
    assume Heap[x, l] != null;
    Mask := Mask[Heap[x, l], v_35:=Mask[Heap[x, l], v_35] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: assert x.l != null -- footprints.vpr@10.3--10.21
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of x.l != null
      assert {:msg "  Assert might fail. There might be insufficient permission to access x.l (footprints.vpr@10.10--10.21) [210538]"}
        HasDirectPerm(ExhaleWellDef0Mask, x, l);
    assert {:msg "  Assert might fail. Assertion x.l != null might not hold. (footprints.vpr@10.10--10.21) [210539]"}
      Heap[x, l] != null;
    assume state(Heap, Mask);
  
  // -- Translating statement: package acc(x.l, write) --* acc(x.l, write) && acc(x.l.v, write) {
  // } -- footprints.vpr@13.3--13.46
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
      Ops_1Mask := Ops_1Mask[x, l:=Ops_1Mask[x, l] + perm];
      b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
    }
    b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
    
    // -- Translating statement: label lhs1 -- footprints.vpr@13.11--13.46
      lhs1:
      Labellhs1Heap := Ops_1Heap;
      Labellhs1Mask := Ops_1Mask;
      b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
    boolCur := true;
    // Translating exec of non-ghost operationacc(x.l, write) && acc(x.l.v, write)
    havoc Used_1Heap;
    Used_1Mask := ZeroMask;
    b_2_1 := b_2_1 && state(Used_1Heap, Used_1Mask);
    
    // -- Transfer of acc(x.l, write)
      rcvLocal := x;
      neededTransfer := FullPerm;
      initNeededTransfer := Used_1Mask[rcvLocal, l] + neededTransfer;
      assert {:msg "  Packaging wand might fail. Fraction acc(x.l, write) might be negative. (footprints.vpr@13.3--13.46) [210540]"}
        neededTransfer >= 0.000000000;
      
      // -- transfer code for top state of stack
        // accumulate constraints which need to be satisfied for transfer to occur
        accVar2 := true;
        // actual code for the transfer from current state on stack
        if ((((b_1_1 && b_1_1) && b_2_1) && accVar2) && neededTransfer > 0.000000000) {
          maskTransfer := Ops_1Mask[rcvLocal, l];
          if (neededTransfer <= maskTransfer) {
            takeTransfer := neededTransfer;
          } else {
            takeTransfer := maskTransfer;
          }
          if (takeTransfer > 0.000000000) {
            neededTransfer := neededTransfer - takeTransfer;
            Used_1Mask := Used_1Mask[rcvLocal, l:=Used_1Mask[rcvLocal, l] + takeTransfer];
            b_2_1 := b_2_1 && state(Used_1Heap, Used_1Mask);
            b_2_1 := b_2_1 && Ops_1Heap[rcvLocal, l] == Used_1Heap[rcvLocal, l];
            Ops_1Mask := Ops_1Mask[rcvLocal, l:=Ops_1Mask[rcvLocal, l] - takeTransfer];
          }
        }
      
      // -- transfer code for top state of stack
        // accumulate constraints which need to be satisfied for transfer to occur
        accVar2 := true;
        // actual code for the transfer from current state on stack
        if ((((b_1_1 && b_1_1) && b_2_1) && accVar2) && neededTransfer > 0.000000000) {
          maskTransfer := Mask[rcvLocal, l];
          if (neededTransfer <= maskTransfer) {
            takeTransfer := neededTransfer;
          } else {
            takeTransfer := maskTransfer;
          }
          if (takeTransfer > 0.000000000) {
            neededTransfer := neededTransfer - takeTransfer;
            Used_1Mask := Used_1Mask[rcvLocal, l:=Used_1Mask[rcvLocal, l] + takeTransfer];
            b_2_1 := b_2_1 && state(Used_1Heap, Used_1Mask);
            b_2_1 := b_2_1 && Heap[rcvLocal, l] == Used_1Heap[rcvLocal, l];
            Mask := Mask[rcvLocal, l:=Mask[rcvLocal, l] - takeTransfer];
            Heap := Heap[null, wand#sm(x, FullPerm, x, FullPerm, x, FullPerm):=Heap[null, wand#sm(x, FullPerm, x, FullPerm, x, FullPerm)][x, l:=true]];
          }
        }
      assert {:msg "  Packaging wand might fail. There might be insufficient permission to access x.l (footprints.vpr@13.3--13.46) [210541]"}
        (b_1_1 && b_1_1) && b_2_1 ==> neededTransfer == 0.000000000 && Used_1Mask[rcvLocal, l] == initNeededTransfer;
      
      // -- Creating state which is the sum of the two previously built up states
        b_3 := b_1_1 && b_2_1;
        b_3 := b_3 && state(ResultHeap, ResultMask);
        b_3 := b_3 && sumMask(ResultMask, Ops_1Mask, Used_1Mask);
        b_3 := (b_3 && IdenticalOnKnownLocations(Ops_1Heap, ResultHeap, Ops_1Mask)) && IdenticalOnKnownLocations(Used_1Heap, ResultHeap, Used_1Mask);
        b_3 := b_3 && state(ResultHeap, ResultMask);
      b_1_1 := b_1_1 && b_3;
    
    // -- Transfer of acc(x.l.v, write)
      
      // -- checking if access predicate defined in used state
        if ((b_1_1 && b_1_1) && b_2_1) {
          if (b_1_1) {
            
            // -- Check definedness of acc(x.l.v, write)
              assert {:msg "  Packaging wand might fail. There might be insufficient permission to access x.l (footprints.vpr@13.3--13.46) [210542]"}
                HasDirectPerm(ResultMask, x, l);
          }
        }
      rcvLocal := ResultHeap[x, l];
      neededTransfer := FullPerm;
      initNeededTransfer := Used_1Mask[rcvLocal, v_35] + neededTransfer;
      assert {:msg "  Packaging wand might fail. Fraction acc(x.l.v, write) might be negative. (footprints.vpr@13.3--13.46) [210543]"}
        neededTransfer >= 0.000000000;
      
      // -- transfer code for top state of stack
        // accumulate constraints which need to be satisfied for transfer to occur
        accVar2 := true;
        // actual code for the transfer from current state on stack
        if ((((b_1_1 && b_1_1) && b_2_1) && accVar2) && neededTransfer > 0.000000000) {
          maskTransfer := Ops_1Mask[rcvLocal, v_35];
          if (neededTransfer <= maskTransfer) {
            takeTransfer := neededTransfer;
          } else {
            takeTransfer := maskTransfer;
          }
          if (takeTransfer > 0.000000000) {
            neededTransfer := neededTransfer - takeTransfer;
            Used_1Mask := Used_1Mask[rcvLocal, v_35:=Used_1Mask[rcvLocal, v_35] + takeTransfer];
            b_2_1 := b_2_1 && state(Used_1Heap, Used_1Mask);
            b_2_1 := b_2_1 && Ops_1Heap[rcvLocal, v_35] == Used_1Heap[rcvLocal, v_35];
            Ops_1Mask := Ops_1Mask[rcvLocal, v_35:=Ops_1Mask[rcvLocal, v_35] - takeTransfer];
          }
        }
      
      // -- transfer code for top state of stack
        // accumulate constraints which need to be satisfied for transfer to occur
        accVar2 := true;
        // actual code for the transfer from current state on stack
        if ((((b_1_1 && b_1_1) && b_2_1) && accVar2) && neededTransfer > 0.000000000) {
          maskTransfer := Mask[rcvLocal, v_35];
          if (neededTransfer <= maskTransfer) {
            takeTransfer := neededTransfer;
          } else {
            takeTransfer := maskTransfer;
          }
          if (takeTransfer > 0.000000000) {
            neededTransfer := neededTransfer - takeTransfer;
            Used_1Mask := Used_1Mask[rcvLocal, v_35:=Used_1Mask[rcvLocal, v_35] + takeTransfer];
            b_2_1 := b_2_1 && state(Used_1Heap, Used_1Mask);
            b_2_1 := b_2_1 && Heap[rcvLocal, v_35] == Used_1Heap[rcvLocal, v_35];
            Mask := Mask[rcvLocal, v_35:=Mask[rcvLocal, v_35] - takeTransfer];
            Heap := Heap[null, wand#sm(x, FullPerm, x, FullPerm, x, FullPerm):=Heap[null, wand#sm(x, FullPerm, x, FullPerm, x, FullPerm)][Heap[x, l], v_35:=true]];
          }
        }
      assert {:msg "  Packaging wand might fail. There might be insufficient permission to access x.l.v (footprints.vpr@13.3--13.46) [210544]"}
        (b_1_1 && b_1_1) && b_2_1 ==> neededTransfer == 0.000000000 && Used_1Mask[rcvLocal, v_35] == initNeededTransfer;
      
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
}

// ==================================================
// Translation of method test2
// ==================================================

procedure test2_1(x: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var Ops_3Heap: HeapType;
  var Ops_3Mask: MaskType;
  var b_6: bool;
  var Used_2Heap: HeapType;
  var Used_2Mask: MaskType;
  var b_5: bool;
  var Labellhs3Heap: HeapType;
  var Labellhs3Mask: MaskType;
  var boolCur_1: bool;
  var Used_3Heap: HeapType;
  var Used_3Mask: MaskType;
  var b_7: bool;
  var rcvLocal: Ref;
  var neededTransfer: Perm;
  var initNeededTransfer: Perm;
  var accVar2: bool;
  var maskTransfer: Perm;
  var takeTransfer: Perm;
  var b_8: bool;
  var Result_2Heap: HeapType;
  var Result_2Mask: MaskType;
  var b_9: bool;
  var Result_3Heap: HeapType;
  var Result_3Mask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[x, $allocated];
  
  // -- Checked inhaling of precondition
    perm := FullPerm;
    assume x != null;
    Mask := Mask[x, l:=Mask[x, l] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of acc(x.l.v, write)
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access x.l (footprints.vpr@18.12--18.43) [210545]"}
        HasDirectPerm(Mask, x, l);
    perm := FullPerm;
    assume Heap[x, l] != null;
    Mask := Mask[Heap[x, l], v_35:=Mask[Heap[x, l], v_35] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of x.l.v
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access x.l (footprints.vpr@18.12--18.43) [210546]"}
        HasDirectPerm(Mask, x, l);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access x.l.v (footprints.vpr@18.12--18.43) [210547]"}
        HasDirectPerm(Mask, Heap[x, l], v_35);
    assume Heap[Heap[x, l], v_35];
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: assert x.l != null -- footprints.vpr@20.3--20.21
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of x.l != null
      assert {:msg "  Assert might fail. There might be insufficient permission to access x.l (footprints.vpr@20.10--20.21) [210548]"}
        HasDirectPerm(ExhaleWellDef0Mask, x, l);
    assert {:msg "  Assert might fail. Assertion x.l != null might not hold. (footprints.vpr@20.10--20.21) [210549]"}
      Heap[x, l] != null;
    assume state(Heap, Mask);
  
  // -- Translating statement: package acc(x.l, write) && x.l != null --*
  // acc(x.l, write) && acc(x.l.v, write) {
  // } -- footprints.vpr@23.3--23.61
    havoc Ops_3Heap;
    Ops_3Mask := ZeroMask;
    b_6 := b_6 && state(Ops_3Heap, Ops_3Mask);
    havoc Used_2Heap;
    Used_2Mask := ZeroMask;
    b_5 := b_5 && state(Used_2Heap, Used_2Mask);
    // Inhaling left hand side of current wand into hypothetical state
    if (b_6) {
      if (b_6) {
        perm := FullPerm;
        b_6 := b_6 && x != null;
        Ops_3Mask := Ops_3Mask[x, l:=Ops_3Mask[x, l] + perm];
        b_6 := b_6 && state(Ops_3Heap, Ops_3Mask);
      }
      if (b_6) {
        if (b_6) {
          
          // -- Check definedness of x.l != null
            assert {:msg "  Packaging wand might fail. There might be insufficient permission to access x.l (footprints.vpr@23.3--23.61) [210550]"}
              HasDirectPerm(Ops_3Mask, x, l);
        }
        b_6 := b_6 && Ops_3Heap[x, l] != null;
      }
    }
    b_6 := b_6 && state(Ops_3Heap, Ops_3Mask);
    
    // -- Translating statement: label lhs3 -- footprints.vpr@23.11--23.61
      lhs3:
      Labellhs3Heap := Ops_3Heap;
      Labellhs3Mask := Ops_3Mask;
      b_6 := b_6 && state(Ops_3Heap, Ops_3Mask);
    boolCur_1 := true;
    // Translating exec of non-ghost operationacc(x.l, write) && acc(x.l.v, write)
    havoc Used_3Heap;
    Used_3Mask := ZeroMask;
    b_7 := b_7 && state(Used_3Heap, Used_3Mask);
    
    // -- Transfer of acc(x.l, write)
      rcvLocal := x;
      neededTransfer := FullPerm;
      initNeededTransfer := Used_3Mask[rcvLocal, l] + neededTransfer;
      assert {:msg "  Packaging wand might fail. Fraction acc(x.l, write) might be negative. (footprints.vpr@23.3--23.61) [210551]"}
        neededTransfer >= 0.000000000;
      
      // -- transfer code for top state of stack
        // accumulate constraints which need to be satisfied for transfer to occur
        accVar2 := true;
        // actual code for the transfer from current state on stack
        if ((((b_6 && b_6) && b_7) && accVar2) && neededTransfer > 0.000000000) {
          maskTransfer := Ops_3Mask[rcvLocal, l];
          if (neededTransfer <= maskTransfer) {
            takeTransfer := neededTransfer;
          } else {
            takeTransfer := maskTransfer;
          }
          if (takeTransfer > 0.000000000) {
            neededTransfer := neededTransfer - takeTransfer;
            Used_3Mask := Used_3Mask[rcvLocal, l:=Used_3Mask[rcvLocal, l] + takeTransfer];
            b_7 := b_7 && state(Used_3Heap, Used_3Mask);
            b_7 := b_7 && Ops_3Heap[rcvLocal, l] == Used_3Heap[rcvLocal, l];
            Ops_3Mask := Ops_3Mask[rcvLocal, l:=Ops_3Mask[rcvLocal, l] - takeTransfer];
          }
        }
      
      // -- transfer code for top state of stack
        // accumulate constraints which need to be satisfied for transfer to occur
        accVar2 := true;
        // actual code for the transfer from current state on stack
        if ((((b_6 && b_6) && b_7) && accVar2) && neededTransfer > 0.000000000) {
          maskTransfer := Mask[rcvLocal, l];
          if (neededTransfer <= maskTransfer) {
            takeTransfer := neededTransfer;
          } else {
            takeTransfer := maskTransfer;
          }
          if (takeTransfer > 0.000000000) {
            neededTransfer := neededTransfer - takeTransfer;
            Used_3Mask := Used_3Mask[rcvLocal, l:=Used_3Mask[rcvLocal, l] + takeTransfer];
            b_7 := b_7 && state(Used_3Heap, Used_3Mask);
            b_7 := b_7 && Heap[rcvLocal, l] == Used_3Heap[rcvLocal, l];
            Mask := Mask[rcvLocal, l:=Mask[rcvLocal, l] - takeTransfer];
            Heap := Heap[null, wand_1#sm(x, FullPerm, x, null, x, FullPerm, x, FullPerm):=Heap[null, wand_1#sm(x, FullPerm, x, null, x, FullPerm, x, FullPerm)][x, l:=true]];
          }
        }
      assert {:msg "  Packaging wand might fail. There might be insufficient permission to access x.l (footprints.vpr@23.3--23.61) [210552]"}
        (b_6 && b_6) && b_7 ==> neededTransfer == 0.000000000 && Used_3Mask[rcvLocal, l] == initNeededTransfer;
      
      // -- Creating state which is the sum of the two previously built up states
        b_8 := b_6 && b_7;
        b_8 := b_8 && state(Result_2Heap, Result_2Mask);
        b_8 := b_8 && sumMask(Result_2Mask, Ops_3Mask, Used_3Mask);
        b_8 := (b_8 && IdenticalOnKnownLocations(Ops_3Heap, Result_2Heap, Ops_3Mask)) && IdenticalOnKnownLocations(Used_3Heap, Result_2Heap, Used_3Mask);
        b_8 := b_8 && state(Result_2Heap, Result_2Mask);
      b_6 := b_6 && b_8;
    
    // -- Transfer of acc(x.l.v, write)
      
      // -- checking if access predicate defined in used state
        if ((b_6 && b_6) && b_7) {
          if (b_6) {
            
            // -- Check definedness of acc(x.l.v, write)
              assert {:msg "  Packaging wand might fail. There might be insufficient permission to access x.l (footprints.vpr@23.3--23.61) [210553]"}
                HasDirectPerm(Result_2Mask, x, l);
          }
        }
      rcvLocal := Result_2Heap[x, l];
      neededTransfer := FullPerm;
      initNeededTransfer := Used_3Mask[rcvLocal, v_35] + neededTransfer;
      assert {:msg "  Packaging wand might fail. Fraction acc(x.l.v, write) might be negative. (footprints.vpr@23.3--23.61) [210554]"}
        neededTransfer >= 0.000000000;
      
      // -- transfer code for top state of stack
        // accumulate constraints which need to be satisfied for transfer to occur
        accVar2 := true;
        // actual code for the transfer from current state on stack
        if ((((b_6 && b_6) && b_7) && accVar2) && neededTransfer > 0.000000000) {
          maskTransfer := Ops_3Mask[rcvLocal, v_35];
          if (neededTransfer <= maskTransfer) {
            takeTransfer := neededTransfer;
          } else {
            takeTransfer := maskTransfer;
          }
          if (takeTransfer > 0.000000000) {
            neededTransfer := neededTransfer - takeTransfer;
            Used_3Mask := Used_3Mask[rcvLocal, v_35:=Used_3Mask[rcvLocal, v_35] + takeTransfer];
            b_7 := b_7 && state(Used_3Heap, Used_3Mask);
            b_7 := b_7 && Ops_3Heap[rcvLocal, v_35] == Used_3Heap[rcvLocal, v_35];
            Ops_3Mask := Ops_3Mask[rcvLocal, v_35:=Ops_3Mask[rcvLocal, v_35] - takeTransfer];
          }
        }
      
      // -- transfer code for top state of stack
        // accumulate constraints which need to be satisfied for transfer to occur
        accVar2 := true;
        // actual code for the transfer from current state on stack
        if ((((b_6 && b_6) && b_7) && accVar2) && neededTransfer > 0.000000000) {
          maskTransfer := Mask[rcvLocal, v_35];
          if (neededTransfer <= maskTransfer) {
            takeTransfer := neededTransfer;
          } else {
            takeTransfer := maskTransfer;
          }
          if (takeTransfer > 0.000000000) {
            neededTransfer := neededTransfer - takeTransfer;
            Used_3Mask := Used_3Mask[rcvLocal, v_35:=Used_3Mask[rcvLocal, v_35] + takeTransfer];
            b_7 := b_7 && state(Used_3Heap, Used_3Mask);
            b_7 := b_7 && Heap[rcvLocal, v_35] == Used_3Heap[rcvLocal, v_35];
            Mask := Mask[rcvLocal, v_35:=Mask[rcvLocal, v_35] - takeTransfer];
            Heap := Heap[null, wand_1#sm(x, FullPerm, x, null, x, FullPerm, x, FullPerm):=Heap[null, wand_1#sm(x, FullPerm, x, null, x, FullPerm, x, FullPerm)][Heap[x, l], v_35:=true]];
          }
        }
      assert {:msg "  Packaging wand might fail. There might be insufficient permission to access x.l.v (footprints.vpr@23.3--23.61) [210555]"}
        (b_6 && b_6) && b_7 ==> neededTransfer == 0.000000000 && Used_3Mask[rcvLocal, v_35] == initNeededTransfer;
      
      // -- Creating state which is the sum of the two previously built up states
        b_9 := b_6 && b_7;
        b_9 := b_9 && state(Result_3Heap, Result_3Mask);
        b_9 := b_9 && sumMask(Result_3Mask, Ops_3Mask, Used_3Mask);
        b_9 := (b_9 && IdenticalOnKnownLocations(Ops_3Heap, Result_3Heap, Ops_3Mask)) && IdenticalOnKnownLocations(Used_3Heap, Result_3Heap, Used_3Mask);
        b_9 := b_9 && state(Result_3Heap, Result_3Mask);
      b_6 := b_6 && b_9;
    Mask := Mask[null, wand_1(x, FullPerm, x, null, x, FullPerm, x, FullPerm):=Mask[null, wand_1(x, FullPerm, x, null, x, FullPerm, x, FullPerm)] + FullPerm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test3
// ==================================================

procedure test3_1(x: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var Ops_5Heap: HeapType;
  var Ops_5Mask: MaskType;
  var b_11: bool;
  var Used_4Heap: HeapType;
  var Used_4Mask: MaskType;
  var b_10: bool;
  var Labellhs5Heap: HeapType;
  var Labellhs5Mask: MaskType;
  var boolCur_2: bool;
  var Used_5Heap: HeapType;
  var Used_5Mask: MaskType;
  var b_12: bool;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
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
    Mask := Mask[x, v_35:=Mask[x, v_35] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: x.v := true -- footprints.vpr@33.3--33.14
    assert {:msg "  Assignment might fail. There might be insufficient permission to access x.v (footprints.vpr@33.3--33.14) [210556]"}
      FullPerm == Mask[x, v_35];
    Heap := Heap[x, v_35:=true];
    assume state(Heap, Mask);
  
  // -- Translating statement: package true --* x.v {
  // } -- footprints.vpr@39.3--39.23
    havoc Ops_5Heap;
    Ops_5Mask := ZeroMask;
    b_11 := b_11 && state(Ops_5Heap, Ops_5Mask);
    havoc Used_4Heap;
    Used_4Mask := ZeroMask;
    b_10 := b_10 && state(Used_4Heap, Used_4Mask);
    // Inhaling left hand side of current wand into hypothetical state
    if (b_11) {
      b_11 := b_11;
    }
    b_11 := b_11 && state(Ops_5Heap, Ops_5Mask);
    
    // -- Translating statement: label lhs5 -- footprints.vpr@39.11--39.23
      lhs5:
      Labellhs5Heap := Ops_5Heap;
      Labellhs5Mask := Ops_5Mask;
      b_11 := b_11 && state(Ops_5Heap, Ops_5Mask);
    boolCur_2 := true;
    // Translating exec of non-ghost operationx.v
    havoc Used_5Heap;
    Used_5Mask := ZeroMask;
    b_12 := b_12 && state(Used_5Heap, Used_5Mask);
    if ((b_11 && b_11) && b_12) {
      if (b_11) {
        
        // -- Check definedness of x.v
          assert {:msg "  Packaging wand might fail. There might be insufficient permission to access x.v (footprints.vpr@39.3--39.23) [210557]"}
            HasDirectPerm(Ops_5Mask, x, v_35);
      }
    }
    assert {:msg "  Packaging wand might fail. Assertion x.v might not hold. (footprints.vpr@39.3--39.23) [210558]"}
      (b_11 && b_11) && b_12 ==> Ops_5Heap[x, v_35];
    Mask := Mask[null, wand_2(true, x):=Mask[null, wand_2(true, x)] + FullPerm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: x.v := false -- footprints.vpr@42.3--42.15
    assert {:msg "  Assignment might fail. There might be insufficient permission to access x.v (footprints.vpr@42.3--42.15) [210559]"}
      FullPerm == Mask[x, v_35];
    Heap := Heap[x, v_35:=false];
    assume state(Heap, Mask);
  
  // -- Translating statement: apply true --* x.v -- footprints.vpr@43.3--43.21
    
    // -- check if wand is held and remove an instance
      ExhaleWellDef0Heap := Heap;
      ExhaleWellDef0Mask := Mask;
      // permLe
      assert {:msg "  Applying wand might fail. Magic wand instance not found. (footprints.vpr@43.3--43.21) [210560]"}
        FullPerm <= Mask[null, wand_2(true, x)];
      Mask := Mask[null, wand_2(true, x):=Mask[null, wand_2(true, x)] - FullPerm];
    assume state(Heap, Mask);
    
    // -- check if LHS holds and remove permissions 
      ExhaleWellDef0Heap := Heap;
      ExhaleWellDef0Mask := Mask;
    assume state(Heap, Mask);
    
    // -- inhale the RHS of the wand
      assume Heap[x, v_35];
      assume state(Heap, Mask);
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert false -- footprints.vpr@44.3--44.15
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Assert might fail. Assertion false might not hold. (footprints.vpr@44.10--44.15) [210562]"}
      false;
    assume state(Heap, Mask);
}