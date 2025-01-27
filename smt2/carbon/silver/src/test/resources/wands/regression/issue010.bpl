// 
// Translation of Viper program.
// 
// Date:         2025-01-26 23:17:02
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/wands/regression/issue010.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/wands/regression/issue010-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
function  wand(arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm, arg5: bool): Field WandType_wand int;
function  wand#sm(arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm, arg5: bool): Field WandType_wand PMaskType;
function  wand#ft(arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm, arg5: bool): Field WandType_wand FrameType;
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm, arg5: bool ::
  { wand(arg1, arg2, arg3, arg4, arg5) }
  IsWandField(wand(arg1, arg2, arg3, arg4, arg5))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm, arg5: bool ::
  { wand#ft(arg1, arg2, arg3, arg4, arg5) }
  IsWandField(wand#ft(arg1, arg2, arg3, arg4, arg5))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm, arg5: bool ::
  { wand(arg1, arg2, arg3, arg4, arg5) }
  !IsPredicateField(wand(arg1, arg2, arg3, arg4, arg5))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm, arg5: bool ::
  { wand#ft(arg1, arg2, arg3, arg4, arg5) }
  !IsPredicateField(wand#ft(arg1, arg2, arg3, arg4, arg5))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm, arg5: bool ::
  { WandMaskField(wand#ft(arg1, arg2, arg3, arg4, arg5)) }
  wand#sm(arg1, arg2, arg3, arg4, arg5) == WandMaskField(wand#ft(arg1, arg2, arg3, arg4, arg5))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm, arg5: bool ::
  { wand(arg1, arg2, arg3, arg4, arg5) }
  getPredWandId(wand(arg1, arg2, arg3, arg4, arg5)) == 0
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm, arg5: bool, arg1_2: Ref, arg2_2: Perm, arg3_2: Ref, arg4_2: Perm, arg5_2: bool ::
  { wand(arg1, arg2, arg3, arg4, arg5), wand(arg1_2, arg2_2, arg3_2, arg4_2, arg5_2) }
  wand(arg1, arg2, arg3, arg4, arg5) == wand(arg1_2, arg2_2, arg3_2, arg4_2, arg5_2) ==> arg1 == arg1_2 && (arg2 == arg2_2 && (arg3 == arg3_2 && (arg4 == arg4_2 && arg5 == arg5_2)))
);
type WandType_wand_1;
function  wand_1(arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm, arg5: Ref, arg6: Perm, arg7: Ref, arg8: Perm, arg9: bool): Field WandType_wand_1 int;
function  wand_1#sm(arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm, arg5: Ref, arg6: Perm, arg7: Ref, arg8: Perm, arg9: bool): Field WandType_wand_1 PMaskType;
function  wand_1#ft(arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm, arg5: Ref, arg6: Perm, arg7: Ref, arg8: Perm, arg9: bool): Field WandType_wand_1 FrameType;
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm, arg5: Ref, arg6: Perm, arg7: Ref, arg8: Perm, arg9: bool ::
  { wand_1(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9) }
  IsWandField(wand_1(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm, arg5: Ref, arg6: Perm, arg7: Ref, arg8: Perm, arg9: bool ::
  { wand_1#ft(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9) }
  IsWandField(wand_1#ft(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm, arg5: Ref, arg6: Perm, arg7: Ref, arg8: Perm, arg9: bool ::
  { wand_1(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9) }
  !IsPredicateField(wand_1(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm, arg5: Ref, arg6: Perm, arg7: Ref, arg8: Perm, arg9: bool ::
  { wand_1#ft(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9) }
  !IsPredicateField(wand_1#ft(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm, arg5: Ref, arg6: Perm, arg7: Ref, arg8: Perm, arg9: bool ::
  { WandMaskField(wand_1#ft(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9)) }
  wand_1#sm(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9) == WandMaskField(wand_1#ft(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm, arg5: Ref, arg6: Perm, arg7: Ref, arg8: Perm, arg9: bool ::
  { wand_1(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9) }
  getPredWandId(wand_1(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9)) == 1
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm, arg5: Ref, arg6: Perm, arg7: Ref, arg8: Perm, arg9: bool, arg1_2: Ref, arg2_2: Perm, arg3_2: Ref, arg4_2: Perm, arg5_2: Ref, arg6_2: Perm, arg7_2: Ref, arg8_2: Perm, arg9_2: bool ::
  { wand_1(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9), wand_1(arg1_2, arg2_2, arg3_2, arg4_2, arg5_2, arg6_2, arg7_2, arg8_2, arg9_2) }
  wand_1(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9) == wand_1(arg1_2, arg2_2, arg3_2, arg4_2, arg5_2, arg6_2, arg7_2, arg8_2, arg9_2) ==> arg1 == arg1_2 && (arg2 == arg2_2 && (arg3 == arg3_2 && (arg4 == arg4_2 && (arg5 == arg5_2 && (arg6 == arg6_2 && (arg7 == arg7_2 && (arg8 == arg8_2 && arg9 == arg9_2)))))))
);

// ==================================================
// Translation of all fields
// ==================================================

const unique v_35: Field NormalField bool;
axiom !IsPredicateField(v_35);
axiom !IsWandField(v_35);

// ==================================================
// Translation of method test1
// ==================================================

procedure test1_1(x: Ref) returns ()
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
  var perm: Perm;
  var Labellhs1Mask: MaskType;
  var Labellhs1Heap: HeapType;
  var boolCur: bool;
  var Used_1Heap: HeapType;
  var Used_1Mask: MaskType;
  var b_2_1: bool;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[x, $allocated];
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: package acc(x.v, write) && acc(x.v, write) --* false {
  // } -- issue010.vpr@7.3--7.41
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
        b_1_1 := b_1_1 && x != null;
        Ops_1Mask := Ops_1Mask[x, v_35:=Ops_1Mask[x, v_35] + perm];
        b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
      }
      if (b_1_1) {
        perm := FullPerm;
        b_1_1 := b_1_1 && x != null;
        Ops_1Mask := Ops_1Mask[x, v_35:=Ops_1Mask[x, v_35] + perm];
        b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
      }
    }
    b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
    
    // -- Translating statement: label lhs1 -- issue010.vpr@7.11--7.41
      lhs1:
      Labellhs1Mask := Ops_1Mask;
      Labellhs1Heap := Ops_1Heap;
      b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
    boolCur := true;
    // Translating exec of non-ghost operationfalse
    havoc Used_1Heap;
    Used_1Mask := ZeroMask;
    b_2_1 := b_2_1 && state(Used_1Heap, Used_1Mask);
    assert {:msg "  Packaging wand might fail. Assertion false might not hold. (issue010.vpr@7.3--7.41) [208691]"}
      (b_1_1 && b_1_1) && b_2_1 ==> false;
    Mask := Mask[null, wand(x, FullPerm, x, FullPerm, false):=Mask[null, wand(x, FullPerm, x, FullPerm, false)] + FullPerm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test1fix
// ==================================================

procedure test1fix(x: Ref) returns ()
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
  var perm: Perm;
  var Labellhs3Mask: MaskType;
  var Labellhs3Heap: HeapType;
  var boolCur_1: bool;
  var Used_3Heap: HeapType;
  var Used_3Mask: MaskType;
  var b_5: bool;
  var rcvLocal: Ref;
  var neededTransfer: Perm;
  var initNeededTransfer: Perm;
  var accVar2: bool;
  var maskTransfer: Perm;
  var takeTransfer: Perm;
  var b_6: bool;
  var ResultHeap: HeapType;
  var ResultMask: MaskType;
  var b_7: bool;
  var Result_1Heap: HeapType;
  var Result_1Mask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[x, $allocated];
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: package acc(x.v, write) && acc(x.v, write) --*
  // acc(x.v, write) && (acc(x.v, write) && false) {
  // } -- issue010.vpr@11.3--11.65
    havoc Ops_3Heap;
    Ops_3Mask := ZeroMask;
    b_4 := b_4 && state(Ops_3Heap, Ops_3Mask);
    havoc Used_2Heap;
    Used_2Mask := ZeroMask;
    b_3 := b_3 && state(Used_2Heap, Used_2Mask);
    // Inhaling left hand side of current wand into hypothetical state
    if (b_4) {
      if (b_4) {
        perm := FullPerm;
        b_4 := b_4 && x != null;
        Ops_3Mask := Ops_3Mask[x, v_35:=Ops_3Mask[x, v_35] + perm];
        b_4 := b_4 && state(Ops_3Heap, Ops_3Mask);
      }
      if (b_4) {
        perm := FullPerm;
        b_4 := b_4 && x != null;
        Ops_3Mask := Ops_3Mask[x, v_35:=Ops_3Mask[x, v_35] + perm];
        b_4 := b_4 && state(Ops_3Heap, Ops_3Mask);
      }
    }
    b_4 := b_4 && state(Ops_3Heap, Ops_3Mask);
    
    // -- Translating statement: label lhs3 -- issue010.vpr@11.11--11.65
      lhs3:
      Labellhs3Mask := Ops_3Mask;
      Labellhs3Heap := Ops_3Heap;
      b_4 := b_4 && state(Ops_3Heap, Ops_3Mask);
    boolCur_1 := true;
    // Translating exec of non-ghost operationacc(x.v, write) && (acc(x.v, write) && false)
    havoc Used_3Heap;
    Used_3Mask := ZeroMask;
    b_5 := b_5 && state(Used_3Heap, Used_3Mask);
    
    // -- Transfer of acc(x.v, write)
      rcvLocal := x;
      neededTransfer := FullPerm;
      initNeededTransfer := Used_3Mask[rcvLocal, v_35] + neededTransfer;
      assert {:msg "  Packaging wand might fail. Fraction acc(x.v, write) might be negative. (issue010.vpr@11.3--11.65) [208692]"}
        neededTransfer >= 0.000000000;
      
      // -- transfer code for top state of stack
        // accumulate constraints which need to be satisfied for transfer to occur
        accVar2 := true;
        // actual code for the transfer from current state on stack
        if ((((b_4 && b_4) && b_5) && accVar2) && neededTransfer > 0.000000000) {
          maskTransfer := Ops_3Mask[rcvLocal, v_35];
          if (neededTransfer <= maskTransfer) {
            takeTransfer := neededTransfer;
          } else {
            takeTransfer := maskTransfer;
          }
          if (takeTransfer > 0.000000000) {
            neededTransfer := neededTransfer - takeTransfer;
            Used_3Mask := Used_3Mask[rcvLocal, v_35:=Used_3Mask[rcvLocal, v_35] + takeTransfer];
            b_5 := b_5 && state(Used_3Heap, Used_3Mask);
            b_5 := b_5 && Ops_3Heap[rcvLocal, v_35] == Used_3Heap[rcvLocal, v_35];
            Ops_3Mask := Ops_3Mask[rcvLocal, v_35:=Ops_3Mask[rcvLocal, v_35] - takeTransfer];
          }
        }
      
      // -- transfer code for top state of stack
        // accumulate constraints which need to be satisfied for transfer to occur
        accVar2 := true;
        // actual code for the transfer from current state on stack
        if ((((b_4 && b_4) && b_5) && accVar2) && neededTransfer > 0.000000000) {
          maskTransfer := Mask[rcvLocal, v_35];
          if (neededTransfer <= maskTransfer) {
            takeTransfer := neededTransfer;
          } else {
            takeTransfer := maskTransfer;
          }
          if (takeTransfer > 0.000000000) {
            neededTransfer := neededTransfer - takeTransfer;
            Used_3Mask := Used_3Mask[rcvLocal, v_35:=Used_3Mask[rcvLocal, v_35] + takeTransfer];
            b_5 := b_5 && state(Used_3Heap, Used_3Mask);
            b_5 := b_5 && Heap[rcvLocal, v_35] == Used_3Heap[rcvLocal, v_35];
            Mask := Mask[rcvLocal, v_35:=Mask[rcvLocal, v_35] - takeTransfer];
            Heap := Heap[null, wand_1#sm(x, FullPerm, x, FullPerm, x, FullPerm, x, FullPerm, false):=Heap[null, wand_1#sm(x, FullPerm, x, FullPerm, x, FullPerm, x, FullPerm, false)][x, v_35:=true]];
          }
        }
      assert {:msg "  Packaging wand might fail. There might be insufficient permission to access x.v (issue010.vpr@11.3--11.65) [208693]"}
        (b_4 && b_4) && b_5 ==> neededTransfer == 0.000000000 && Used_3Mask[rcvLocal, v_35] == initNeededTransfer;
      
      // -- Creating state which is the sum of the two previously built up states
        b_6 := b_4 && b_5;
        b_6 := b_6 && state(ResultHeap, ResultMask);
        b_6 := b_6 && sumMask(ResultMask, Ops_3Mask, Used_3Mask);
        b_6 := (b_6 && IdenticalOnKnownLocations(Ops_3Heap, ResultHeap, Ops_3Mask)) && IdenticalOnKnownLocations(Used_3Heap, ResultHeap, Used_3Mask);
        b_6 := b_6 && state(ResultHeap, ResultMask);
      b_4 := b_4 && b_6;
    
    // -- Transfer of acc(x.v, write)
      rcvLocal := x;
      neededTransfer := FullPerm;
      initNeededTransfer := Used_3Mask[rcvLocal, v_35] + neededTransfer;
      assert {:msg "  Packaging wand might fail. Fraction acc(x.v, write) might be negative. (issue010.vpr@11.3--11.65) [208694]"}
        neededTransfer >= 0.000000000;
      
      // -- transfer code for top state of stack
        // accumulate constraints which need to be satisfied for transfer to occur
        accVar2 := true;
        // actual code for the transfer from current state on stack
        if ((((b_4 && b_4) && b_5) && accVar2) && neededTransfer > 0.000000000) {
          maskTransfer := Ops_3Mask[rcvLocal, v_35];
          if (neededTransfer <= maskTransfer) {
            takeTransfer := neededTransfer;
          } else {
            takeTransfer := maskTransfer;
          }
          if (takeTransfer > 0.000000000) {
            neededTransfer := neededTransfer - takeTransfer;
            Used_3Mask := Used_3Mask[rcvLocal, v_35:=Used_3Mask[rcvLocal, v_35] + takeTransfer];
            b_5 := b_5 && state(Used_3Heap, Used_3Mask);
            b_5 := b_5 && Ops_3Heap[rcvLocal, v_35] == Used_3Heap[rcvLocal, v_35];
            Ops_3Mask := Ops_3Mask[rcvLocal, v_35:=Ops_3Mask[rcvLocal, v_35] - takeTransfer];
          }
        }
      
      // -- transfer code for top state of stack
        // accumulate constraints which need to be satisfied for transfer to occur
        accVar2 := true;
        // actual code for the transfer from current state on stack
        if ((((b_4 && b_4) && b_5) && accVar2) && neededTransfer > 0.000000000) {
          maskTransfer := Mask[rcvLocal, v_35];
          if (neededTransfer <= maskTransfer) {
            takeTransfer := neededTransfer;
          } else {
            takeTransfer := maskTransfer;
          }
          if (takeTransfer > 0.000000000) {
            neededTransfer := neededTransfer - takeTransfer;
            Used_3Mask := Used_3Mask[rcvLocal, v_35:=Used_3Mask[rcvLocal, v_35] + takeTransfer];
            b_5 := b_5 && state(Used_3Heap, Used_3Mask);
            b_5 := b_5 && Heap[rcvLocal, v_35] == Used_3Heap[rcvLocal, v_35];
            Mask := Mask[rcvLocal, v_35:=Mask[rcvLocal, v_35] - takeTransfer];
            Heap := Heap[null, wand_1#sm(x, FullPerm, x, FullPerm, x, FullPerm, x, FullPerm, false):=Heap[null, wand_1#sm(x, FullPerm, x, FullPerm, x, FullPerm, x, FullPerm, false)][x, v_35:=true]];
          }
        }
      assert {:msg "  Packaging wand might fail. There might be insufficient permission to access x.v (issue010.vpr@11.3--11.65) [208695]"}
        (b_4 && b_4) && b_5 ==> neededTransfer == 0.000000000 && Used_3Mask[rcvLocal, v_35] == initNeededTransfer;
      
      // -- Creating state which is the sum of the two previously built up states
        b_7 := b_4 && b_5;
        b_7 := b_7 && state(Result_1Heap, Result_1Mask);
        b_7 := b_7 && sumMask(Result_1Mask, Ops_3Mask, Used_3Mask);
        b_7 := (b_7 && IdenticalOnKnownLocations(Ops_3Heap, Result_1Heap, Ops_3Mask)) && IdenticalOnKnownLocations(Used_3Heap, Result_1Heap, Used_3Mask);
        b_7 := b_7 && state(Result_1Heap, Result_1Mask);
      b_4 := b_4 && b_7;
    assert {:msg "  Packaging wand might fail. Assertion false might not hold. (issue010.vpr@11.3--11.65) [208696]"}
      (b_4 && b_4) && b_5 ==> false;
    Mask := Mask[null, wand_1(x, FullPerm, x, FullPerm, x, FullPerm, x, FullPerm, false):=Mask[null, wand_1(x, FullPerm, x, FullPerm, x, FullPerm, x, FullPerm, false)] + FullPerm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test2
// ==================================================

procedure test2_1(x: Ref, y: Ref) returns ()
  modifies Heap, Mask;
{
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var Ops_5Heap: HeapType;
  var Ops_5Mask: MaskType;
  var b_9: bool;
  var Used_4Heap: HeapType;
  var Used_4Mask: MaskType;
  var b_8: bool;
  var perm: Perm;
  var Labellhs5Mask: MaskType;
  var Labellhs5Heap: HeapType;
  var boolCur_2: bool;
  var Used_5Heap: HeapType;
  var Used_5Mask: MaskType;
  var b_10: bool;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[x, $allocated];
    assume Heap[y, $allocated];
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: package acc(x.v, write) && acc(y.v, write) --* x != y {
  // } -- issue010.vpr@15.3--15.42
    havoc Ops_5Heap;
    Ops_5Mask := ZeroMask;
    b_9 := b_9 && state(Ops_5Heap, Ops_5Mask);
    havoc Used_4Heap;
    Used_4Mask := ZeroMask;
    b_8 := b_8 && state(Used_4Heap, Used_4Mask);
    // Inhaling left hand side of current wand into hypothetical state
    if (b_9) {
      if (b_9) {
        perm := FullPerm;
        b_9 := b_9 && x != null;
        Ops_5Mask := Ops_5Mask[x, v_35:=Ops_5Mask[x, v_35] + perm];
        b_9 := b_9 && state(Ops_5Heap, Ops_5Mask);
      }
      if (b_9) {
        perm := FullPerm;
        b_9 := b_9 && y != null;
        Ops_5Mask := Ops_5Mask[y, v_35:=Ops_5Mask[y, v_35] + perm];
        b_9 := b_9 && state(Ops_5Heap, Ops_5Mask);
      }
    }
    b_9 := b_9 && state(Ops_5Heap, Ops_5Mask);
    
    // -- Translating statement: label lhs5 -- issue010.vpr@15.11--15.42
      lhs5:
      Labellhs5Mask := Ops_5Mask;
      Labellhs5Heap := Ops_5Heap;
      b_9 := b_9 && state(Ops_5Heap, Ops_5Mask);
    boolCur_2 := true;
    // Translating exec of non-ghost operationx != y
    havoc Used_5Heap;
    Used_5Mask := ZeroMask;
    b_10 := b_10 && state(Used_5Heap, Used_5Mask);
    assert {:msg "  Packaging wand might fail. Assertion x != y might not hold. (issue010.vpr@15.3--15.42) [208697]"}
      (b_9 && b_9) && b_10 ==> x != y;
    Mask := Mask[null, wand(x, FullPerm, y, FullPerm, x != y):=Mask[null, wand(x, FullPerm, y, FullPerm, x != y)] + FullPerm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test2fix
// ==================================================

procedure test2fix(x: Ref, y: Ref) returns ()
  modifies Heap, Mask;
{
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var Ops_7Heap: HeapType;
  var Ops_7Mask: MaskType;
  var b_12: bool;
  var Used_6Heap: HeapType;
  var Used_6Mask: MaskType;
  var b_11: bool;
  var perm: Perm;
  var Labellhs7Mask: MaskType;
  var Labellhs7Heap: HeapType;
  var boolCur_3: bool;
  var Used_7Heap: HeapType;
  var Used_7Mask: MaskType;
  var b_13: bool;
  var rcvLocal: Ref;
  var neededTransfer: Perm;
  var initNeededTransfer: Perm;
  var accVar2: bool;
  var maskTransfer: Perm;
  var takeTransfer: Perm;
  var b_14: bool;
  var Result_2Heap: HeapType;
  var Result_2Mask: MaskType;
  var b_15: bool;
  var Result_3Heap: HeapType;
  var Result_3Mask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[x, $allocated];
    assume Heap[y, $allocated];
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: package acc(x.v, write) && acc(y.v, write) --*
  // acc(x.v, write) && (acc(y.v, write) && x != y) {
  // } -- issue010.vpr@19.3--19.66
    havoc Ops_7Heap;
    Ops_7Mask := ZeroMask;
    b_12 := b_12 && state(Ops_7Heap, Ops_7Mask);
    havoc Used_6Heap;
    Used_6Mask := ZeroMask;
    b_11 := b_11 && state(Used_6Heap, Used_6Mask);
    // Inhaling left hand side of current wand into hypothetical state
    if (b_12) {
      if (b_12) {
        perm := FullPerm;
        b_12 := b_12 && x != null;
        Ops_7Mask := Ops_7Mask[x, v_35:=Ops_7Mask[x, v_35] + perm];
        b_12 := b_12 && state(Ops_7Heap, Ops_7Mask);
      }
      if (b_12) {
        perm := FullPerm;
        b_12 := b_12 && y != null;
        Ops_7Mask := Ops_7Mask[y, v_35:=Ops_7Mask[y, v_35] + perm];
        b_12 := b_12 && state(Ops_7Heap, Ops_7Mask);
      }
    }
    b_12 := b_12 && state(Ops_7Heap, Ops_7Mask);
    
    // -- Translating statement: label lhs7 -- issue010.vpr@19.11--19.66
      lhs7:
      Labellhs7Mask := Ops_7Mask;
      Labellhs7Heap := Ops_7Heap;
      b_12 := b_12 && state(Ops_7Heap, Ops_7Mask);
    boolCur_3 := true;
    // Translating exec of non-ghost operationacc(x.v, write) && (acc(y.v, write) && x != y)
    havoc Used_7Heap;
    Used_7Mask := ZeroMask;
    b_13 := b_13 && state(Used_7Heap, Used_7Mask);
    
    // -- Transfer of acc(x.v, write)
      rcvLocal := x;
      neededTransfer := FullPerm;
      initNeededTransfer := Used_7Mask[rcvLocal, v_35] + neededTransfer;
      assert {:msg "  Packaging wand might fail. Fraction acc(x.v, write) might be negative. (issue010.vpr@19.3--19.66) [208698]"}
        neededTransfer >= 0.000000000;
      
      // -- transfer code for top state of stack
        // accumulate constraints which need to be satisfied for transfer to occur
        accVar2 := true;
        // actual code for the transfer from current state on stack
        if ((((b_12 && b_12) && b_13) && accVar2) && neededTransfer > 0.000000000) {
          maskTransfer := Ops_7Mask[rcvLocal, v_35];
          if (neededTransfer <= maskTransfer) {
            takeTransfer := neededTransfer;
          } else {
            takeTransfer := maskTransfer;
          }
          if (takeTransfer > 0.000000000) {
            neededTransfer := neededTransfer - takeTransfer;
            Used_7Mask := Used_7Mask[rcvLocal, v_35:=Used_7Mask[rcvLocal, v_35] + takeTransfer];
            b_13 := b_13 && state(Used_7Heap, Used_7Mask);
            b_13 := b_13 && Ops_7Heap[rcvLocal, v_35] == Used_7Heap[rcvLocal, v_35];
            Ops_7Mask := Ops_7Mask[rcvLocal, v_35:=Ops_7Mask[rcvLocal, v_35] - takeTransfer];
          }
        }
      
      // -- transfer code for top state of stack
        // accumulate constraints which need to be satisfied for transfer to occur
        accVar2 := true;
        // actual code for the transfer from current state on stack
        if ((((b_12 && b_12) && b_13) && accVar2) && neededTransfer > 0.000000000) {
          maskTransfer := Mask[rcvLocal, v_35];
          if (neededTransfer <= maskTransfer) {
            takeTransfer := neededTransfer;
          } else {
            takeTransfer := maskTransfer;
          }
          if (takeTransfer > 0.000000000) {
            neededTransfer := neededTransfer - takeTransfer;
            Used_7Mask := Used_7Mask[rcvLocal, v_35:=Used_7Mask[rcvLocal, v_35] + takeTransfer];
            b_13 := b_13 && state(Used_7Heap, Used_7Mask);
            b_13 := b_13 && Heap[rcvLocal, v_35] == Used_7Heap[rcvLocal, v_35];
            Mask := Mask[rcvLocal, v_35:=Mask[rcvLocal, v_35] - takeTransfer];
            Heap := Heap[null, wand_1#sm(x, FullPerm, y, FullPerm, x, FullPerm, y, FullPerm, x != y):=Heap[null, wand_1#sm(x, FullPerm, y, FullPerm, x, FullPerm, y, FullPerm, x != y)][x, v_35:=true]];
          }
        }
      assert {:msg "  Packaging wand might fail. There might be insufficient permission to access x.v (issue010.vpr@19.3--19.66) [208699]"}
        (b_12 && b_12) && b_13 ==> neededTransfer == 0.000000000 && Used_7Mask[rcvLocal, v_35] == initNeededTransfer;
      
      // -- Creating state which is the sum of the two previously built up states
        b_14 := b_12 && b_13;
        b_14 := b_14 && state(Result_2Heap, Result_2Mask);
        b_14 := b_14 && sumMask(Result_2Mask, Ops_7Mask, Used_7Mask);
        b_14 := (b_14 && IdenticalOnKnownLocations(Ops_7Heap, Result_2Heap, Ops_7Mask)) && IdenticalOnKnownLocations(Used_7Heap, Result_2Heap, Used_7Mask);
        b_14 := b_14 && state(Result_2Heap, Result_2Mask);
      b_12 := b_12 && b_14;
    
    // -- Transfer of acc(y.v, write)
      rcvLocal := y;
      neededTransfer := FullPerm;
      initNeededTransfer := Used_7Mask[rcvLocal, v_35] + neededTransfer;
      assert {:msg "  Packaging wand might fail. Fraction acc(y.v, write) might be negative. (issue010.vpr@19.3--19.66) [208700]"}
        neededTransfer >= 0.000000000;
      
      // -- transfer code for top state of stack
        // accumulate constraints which need to be satisfied for transfer to occur
        accVar2 := true;
        // actual code for the transfer from current state on stack
        if ((((b_12 && b_12) && b_13) && accVar2) && neededTransfer > 0.000000000) {
          maskTransfer := Ops_7Mask[rcvLocal, v_35];
          if (neededTransfer <= maskTransfer) {
            takeTransfer := neededTransfer;
          } else {
            takeTransfer := maskTransfer;
          }
          if (takeTransfer > 0.000000000) {
            neededTransfer := neededTransfer - takeTransfer;
            Used_7Mask := Used_7Mask[rcvLocal, v_35:=Used_7Mask[rcvLocal, v_35] + takeTransfer];
            b_13 := b_13 && state(Used_7Heap, Used_7Mask);
            b_13 := b_13 && Ops_7Heap[rcvLocal, v_35] == Used_7Heap[rcvLocal, v_35];
            Ops_7Mask := Ops_7Mask[rcvLocal, v_35:=Ops_7Mask[rcvLocal, v_35] - takeTransfer];
          }
        }
      
      // -- transfer code for top state of stack
        // accumulate constraints which need to be satisfied for transfer to occur
        accVar2 := true;
        // actual code for the transfer from current state on stack
        if ((((b_12 && b_12) && b_13) && accVar2) && neededTransfer > 0.000000000) {
          maskTransfer := Mask[rcvLocal, v_35];
          if (neededTransfer <= maskTransfer) {
            takeTransfer := neededTransfer;
          } else {
            takeTransfer := maskTransfer;
          }
          if (takeTransfer > 0.000000000) {
            neededTransfer := neededTransfer - takeTransfer;
            Used_7Mask := Used_7Mask[rcvLocal, v_35:=Used_7Mask[rcvLocal, v_35] + takeTransfer];
            b_13 := b_13 && state(Used_7Heap, Used_7Mask);
            b_13 := b_13 && Heap[rcvLocal, v_35] == Used_7Heap[rcvLocal, v_35];
            Mask := Mask[rcvLocal, v_35:=Mask[rcvLocal, v_35] - takeTransfer];
            Heap := Heap[null, wand_1#sm(x, FullPerm, y, FullPerm, x, FullPerm, y, FullPerm, x != y):=Heap[null, wand_1#sm(x, FullPerm, y, FullPerm, x, FullPerm, y, FullPerm, x != y)][y, v_35:=true]];
          }
        }
      assert {:msg "  Packaging wand might fail. There might be insufficient permission to access y.v (issue010.vpr@19.3--19.66) [208701]"}
        (b_12 && b_12) && b_13 ==> neededTransfer == 0.000000000 && Used_7Mask[rcvLocal, v_35] == initNeededTransfer;
      
      // -- Creating state which is the sum of the two previously built up states
        b_15 := b_12 && b_13;
        b_15 := b_15 && state(Result_3Heap, Result_3Mask);
        b_15 := b_15 && sumMask(Result_3Mask, Ops_7Mask, Used_7Mask);
        b_15 := (b_15 && IdenticalOnKnownLocations(Ops_7Heap, Result_3Heap, Ops_7Mask)) && IdenticalOnKnownLocations(Used_7Heap, Result_3Heap, Used_7Mask);
        b_15 := b_15 && state(Result_3Heap, Result_3Mask);
      b_12 := b_12 && b_15;
    assert {:msg "  Packaging wand might fail. Assertion x != y might not hold. (issue010.vpr@19.3--19.66) [208702]"}
      (b_12 && b_12) && b_13 ==> x != y;
    Mask := Mask[null, wand_1(x, FullPerm, y, FullPerm, x, FullPerm, y, FullPerm, x != y):=Mask[null, wand_1(x, FullPerm, y, FullPerm, x, FullPerm, y, FullPerm, x != y)] + FullPerm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
}