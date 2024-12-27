// 
// Translation of Viper program.
// 
// Date:         2024-12-27 02:26:31
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/wands/new_syntax/Perm.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/wands/new_syntax/Perm-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
function  wand(arg1: Ref, arg2: Perm, arg3: bool): Field WandType_wand int;
function  wand#sm(arg1: Ref, arg2: Perm, arg3: bool): Field WandType_wand PMaskType;
function  wand#ft(arg1: Ref, arg2: Perm, arg3: bool): Field WandType_wand FrameType;
axiom (forall arg1: Ref, arg2: Perm, arg3: bool ::
  { wand(arg1, arg2, arg3) }
  IsWandField(wand(arg1, arg2, arg3))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: bool ::
  { wand#ft(arg1, arg2, arg3) }
  IsWandField(wand#ft(arg1, arg2, arg3))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: bool ::
  { wand(arg1, arg2, arg3) }
  !IsPredicateField(wand(arg1, arg2, arg3))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: bool ::
  { wand#ft(arg1, arg2, arg3) }
  !IsPredicateField(wand#ft(arg1, arg2, arg3))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: bool ::
  { WandMaskField(wand#ft(arg1, arg2, arg3)) }
  wand#sm(arg1, arg2, arg3) == WandMaskField(wand#ft(arg1, arg2, arg3))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: bool ::
  { wand(arg1, arg2, arg3) }
  getPredWandId(wand(arg1, arg2, arg3)) == 0
);
axiom (forall arg1: Ref, arg2: Perm, arg3: bool, arg1_2: Ref, arg2_2: Perm, arg3_2: bool ::
  { wand(arg1, arg2, arg3), wand(arg1_2, arg2_2, arg3_2) }
  wand(arg1, arg2, arg3) == wand(arg1_2, arg2_2, arg3_2) ==> arg1 == arg1_2 && (arg2 == arg2_2 && arg3 == arg3_2)
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
type WandType_wand_2;
function  wand_2(arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm, arg5: bool): Field WandType_wand_2 int;
function  wand_2#sm(arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm, arg5: bool): Field WandType_wand_2 PMaskType;
function  wand_2#ft(arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm, arg5: bool): Field WandType_wand_2 FrameType;
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm, arg5: bool ::
  { wand_2(arg1, arg2, arg3, arg4, arg5) }
  IsWandField(wand_2(arg1, arg2, arg3, arg4, arg5))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm, arg5: bool ::
  { wand_2#ft(arg1, arg2, arg3, arg4, arg5) }
  IsWandField(wand_2#ft(arg1, arg2, arg3, arg4, arg5))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm, arg5: bool ::
  { wand_2(arg1, arg2, arg3, arg4, arg5) }
  !IsPredicateField(wand_2(arg1, arg2, arg3, arg4, arg5))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm, arg5: bool ::
  { wand_2#ft(arg1, arg2, arg3, arg4, arg5) }
  !IsPredicateField(wand_2#ft(arg1, arg2, arg3, arg4, arg5))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm, arg5: bool ::
  { WandMaskField(wand_2#ft(arg1, arg2, arg3, arg4, arg5)) }
  wand_2#sm(arg1, arg2, arg3, arg4, arg5) == WandMaskField(wand_2#ft(arg1, arg2, arg3, arg4, arg5))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm, arg5: bool ::
  { wand_2(arg1, arg2, arg3, arg4, arg5) }
  getPredWandId(wand_2(arg1, arg2, arg3, arg4, arg5)) == 2
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm, arg5: bool, arg1_2: Ref, arg2_2: Perm, arg3_2: Ref, arg4_2: Perm, arg5_2: bool ::
  { wand_2(arg1, arg2, arg3, arg4, arg5), wand_2(arg1_2, arg2_2, arg3_2, arg4_2, arg5_2) }
  wand_2(arg1, arg2, arg3, arg4, arg5) == wand_2(arg1_2, arg2_2, arg3_2, arg4_2, arg5_2) ==> arg1 == arg1_2 && (arg2 == arg2_2 && (arg3 == arg3_2 && (arg4 == arg4_2 && arg5 == arg5_2)))
);

// ==================================================
// Translation of all fields
// ==================================================

const unique a_6: Field NormalField int;
axiom !IsPredicateField(a_6);
axiom !IsWandField(a_6);
const unique b_94: Field NormalField int;
axiom !IsPredicateField(b_94);
axiom !IsWandField(b_94);

// ==================================================
// Translation of method test0
// ==================================================

procedure test0(x: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var Ops_1Heap: HeapType;
  var Ops_1Mask: MaskType;
  var b_1_1: bool;
  var UsedHeap: HeapType;
  var UsedMask: MaskType;
  var b_2: bool;
  var Labellhs1Heap: HeapType;
  var Labellhs1Mask: MaskType;
  var boolCur: bool;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var Used_1Heap: HeapType;
  var Used_1Mask: MaskType;
  var b_2_1: bool;
  var Used_2Heap: HeapType;
  var Used_2Mask: MaskType;
  var b_3: bool;
  var AssertHeap: HeapType;
  var AssertMask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[x, $allocated];
  
  // -- Checked inhaling of precondition
    perm := 1 / 2;
    assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (Perm.vpr@8.10--8.23) [138396]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> x != null;
    Mask := Mask[x, a_6:=Mask[x, a_6] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: package acc(x.b, 1 / 2) --* true {
  //   assert perm(x.a) == perm(x.b)
  // } -- Perm.vpr@9.5--12.6
    havoc Ops_1Heap;
    Ops_1Mask := ZeroMask;
    b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
    havoc UsedHeap;
    UsedMask := ZeroMask;
    b_2 := b_2 && state(UsedHeap, UsedMask);
    // Inhaling left hand side of current wand into hypothetical state
    if (b_1_1) {
      perm := 1 / 2;
      assert {:msg "  Packaging wand might fail. Fraction 1 / 2 might be negative. (Perm.vpr@9.5--12.6) [138397]"}
        perm >= NoPerm;
      b_1_1 := b_1_1 && (perm > NoPerm ==> x != null);
      Ops_1Mask := Ops_1Mask[x, b_94:=Ops_1Mask[x, b_94] + perm];
      b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
    }
    b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
    
    // -- Translating statement: label lhs1 -- Perm.vpr@9.13--9.35
      lhs1:
      Labellhs1Heap := Ops_1Heap;
      Labellhs1Mask := Ops_1Mask;
      b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
    boolCur := true;
    if (b_1_1) {
      
      // -- Translating statement: assert perm(x.a) == perm(x.b) -- Perm.vpr@11.9--11.38
        ExhaleWellDef0Heap := Ops_1Heap;
        ExhaleWellDef0Mask := Ops_1Mask;
        havoc Used_1Heap;
        Used_1Mask := ZeroMask;
        b_2_1 := b_2_1 && state(Used_1Heap, Used_1Mask);
        assert {:msg "  Assert might fail. Assertion perm(x.a) == perm(x.b) might not hold. (Perm.vpr@11.16--11.38) [138398]"}
          b_1_1 && b_2_1 ==> Ops_1Mask[x, a_6] == Ops_1Mask[x, b_94];
        b_1_1 := b_1_1 && b_2_1;
        b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
    }
    // Translating exec of non-ghost operationtrue
    havoc Used_2Heap;
    Used_2Mask := ZeroMask;
    b_3 := b_3 && state(Used_2Heap, Used_2Mask);
    Mask := Mask[null, wand(x, 1 / 2, true):=Mask[null, wand(x, 1 / 2, true)] + FullPerm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert acc(x.a, 1 / 2) -- Perm.vpr@13.5--13.25
    AssertHeap := Heap;
    AssertMask := Mask;
    ExhaleWellDef0Heap := AssertHeap;
    ExhaleWellDef0Mask := AssertMask;
    perm := 1 / 2;
    assert {:msg "  Assert might fail. Fraction 1 / 2 might be negative. (Perm.vpr@13.12--13.25) [138400]"}
      perm >= NoPerm;
    if (perm != NoPerm) {
      assert {:msg "  Assert might fail. There might be insufficient permission to access x.a (Perm.vpr@13.12--13.25) [138401]"}
        perm <= AssertMask[x, a_6];
    }
    AssertMask := AssertMask[x, a_6:=AssertMask[x, a_6] - perm];
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test1
// ==================================================

procedure test1(x: Ref) returns ()
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var Ops_3Heap: HeapType;
  var Ops_3Mask: MaskType;
  var b_5: bool;
  var Used_3Heap: HeapType;
  var Used_3Mask: MaskType;
  var b_4: bool;
  var perm: Perm;
  var Labellhs4Heap: HeapType;
  var Labellhs4Mask: MaskType;
  var boolCur_1: bool;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var Used_4Heap: HeapType;
  var Used_4Mask: MaskType;
  var b_6: bool;
  var Ops_5Heap: HeapType;
  var Ops_5Mask: MaskType;
  var b_8: bool;
  var Used_5Heap: HeapType;
  var Used_5Mask: MaskType;
  var b_7: bool;
  var Labellhs6Heap: HeapType;
  var Labellhs6Mask: MaskType;
  var boolCur_2: bool;
  var Used_6Heap: HeapType;
  var Used_6Mask: MaskType;
  var b_9: bool;
  var Used_7Heap: HeapType;
  var Used_7Mask: MaskType;
  var b_10: bool;
  var Used_8Heap: HeapType;
  var Used_8Mask: MaskType;
  var b_11: bool;
  var WandDefLHSHeap: HeapType;
  var WandDefLHSMask: MaskType;
  var Labellhs8Heap: HeapType;
  var Labellhs8Mask: MaskType;
  var WandDefRHSHeap: HeapType;
  var WandDefRHSMask: MaskType;
  var neededTransfer: Perm;
  var initNeededTransfer: Perm;
  var accVar2: bool;
  var maskTransfer: Perm;
  var takeTransfer: Perm;
  var b_12: bool;
  var ResultHeap: HeapType;
  var ResultMask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[x, $allocated];
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: package acc(x.a, 1 / 2) && acc(x.b, 1 / 2) --*
  // acc(x.a, 1 / 2) && acc(x.b, write) --* true {
  //   assert perm(x.a) == perm(x.b)
  //   package acc(x.a, 1 / 2) && acc(x.b, write) --* true {
  //     assert perm(x.a) == perm(x.b)
  //   }
  // } -- Perm.vpr@17.5--23.6
    havoc Ops_3Heap;
    Ops_3Mask := ZeroMask;
    b_5 := b_5 && state(Ops_3Heap, Ops_3Mask);
    havoc Used_3Heap;
    Used_3Mask := ZeroMask;
    b_4 := b_4 && state(Used_3Heap, Used_3Mask);
    // Inhaling left hand side of current wand into hypothetical state
    if (b_5) {
      if (b_5) {
        perm := 1 / 2;
        assert {:msg "  Packaging wand might fail. Fraction 1 / 2 might be negative. (Perm.vpr@17.5--23.6) [138402]"}
          perm >= NoPerm;
        b_5 := b_5 && (perm > NoPerm ==> x != null);
        Ops_3Mask := Ops_3Mask[x, a_6:=Ops_3Mask[x, a_6] + perm];
        b_5 := b_5 && state(Ops_3Heap, Ops_3Mask);
      }
      if (b_5) {
        perm := 1 / 2;
        assert {:msg "  Packaging wand might fail. Fraction 1 / 2 might be negative. (Perm.vpr@17.5--23.6) [138403]"}
          perm >= NoPerm;
        b_5 := b_5 && (perm > NoPerm ==> x != null);
        Ops_3Mask := Ops_3Mask[x, b_94:=Ops_3Mask[x, b_94] + perm];
        b_5 := b_5 && state(Ops_3Heap, Ops_3Mask);
      }
    }
    b_5 := b_5 && state(Ops_3Heap, Ops_3Mask);
    
    // -- Translating statement: label lhs4 -- Perm.vpr@17.13--17.84
      lhs4:
      Labellhs4Heap := Ops_3Heap;
      Labellhs4Mask := Ops_3Mask;
      b_5 := b_5 && state(Ops_3Heap, Ops_3Mask);
    boolCur_1 := true;
    if (b_5) {
      
      // -- Translating statement: assert perm(x.a) == perm(x.b) -- Perm.vpr@18.9--18.38
        ExhaleWellDef0Heap := Ops_3Heap;
        ExhaleWellDef0Mask := Ops_3Mask;
        havoc Used_4Heap;
        Used_4Mask := ZeroMask;
        b_6 := b_6 && state(Used_4Heap, Used_4Mask);
        assert {:msg "  Assert might fail. Assertion perm(x.a) == perm(x.b) might not hold. (Perm.vpr@18.16--18.38) [138404]"}
          b_5 && b_6 ==> Ops_3Mask[x, a_6] == Ops_3Mask[x, b_94];
        b_5 := b_5 && b_6;
        b_5 := b_5 && state(Ops_3Heap, Ops_3Mask);
    }
    if (b_5) {
      
      // -- Translating statement: package acc(x.a, 1 / 2) && acc(x.b, write) --* true {
  //   assert perm(x.a) == perm(x.b)
  // } -- Perm.vpr@19.9--22.10
        havoc Ops_5Heap;
        Ops_5Mask := ZeroMask;
        b_8 := b_8 && state(Ops_5Heap, Ops_5Mask);
        havoc Used_5Heap;
        Used_5Mask := ZeroMask;
        b_7 := b_7 && state(Used_5Heap, Used_5Mask);
        // Inhaling left hand side of current wand into hypothetical state
        if (b_8) {
          if (b_8) {
            perm := 1 / 2;
            assert {:msg "  Packaging wand might fail. Fraction 1 / 2 might be negative. (Perm.vpr@19.9--22.10) [138405]"}
              perm >= NoPerm;
            b_8 := b_8 && (perm > NoPerm ==> x != null);
            Ops_5Mask := Ops_5Mask[x, a_6:=Ops_5Mask[x, a_6] + perm];
            b_8 := b_8 && state(Ops_5Heap, Ops_5Mask);
          }
          if (b_8) {
            perm := FullPerm;
            b_8 := b_8 && x != null;
            Ops_5Mask := Ops_5Mask[x, b_94:=Ops_5Mask[x, b_94] + perm];
            b_8 := b_8 && state(Ops_5Heap, Ops_5Mask);
          }
        }
        b_8 := b_8 && state(Ops_5Heap, Ops_5Mask);
        
        // -- Translating statement: label lhs6 -- Perm.vpr@19.17--19.51
          lhs6:
          Labellhs6Heap := Ops_5Heap;
          Labellhs6Mask := Ops_5Mask;
          b_8 := b_8 && state(Ops_5Heap, Ops_5Mask);
        boolCur_2 := true;
        if (b_8 && b_5) {
          
          // -- Translating statement: assert perm(x.a) == perm(x.b) -- Perm.vpr@21.13--21.42
            ExhaleWellDef0Heap := Ops_5Heap;
            ExhaleWellDef0Mask := Ops_5Mask;
            havoc Used_6Heap;
            Used_6Mask := ZeroMask;
            b_9 := b_9 && state(Used_6Heap, Used_6Mask);
            assert {:msg "  Assert might fail. Assertion perm(x.a) == perm(x.b) might not hold. (Perm.vpr@21.20--21.42) [138406]"}
              b_8 && b_9 ==> Ops_5Mask[x, a_6] == Ops_5Mask[x, b_94];
            b_8 := b_8 && b_9;
            b_8 := b_8 && state(Ops_5Heap, Ops_5Mask);
        }
        // Translating exec of non-ghost operationtrue
        havoc Used_7Heap;
        Used_7Mask := ZeroMask;
        b_10 := b_10 && state(Used_7Heap, Used_7Mask);
        Ops_3Mask := Ops_3Mask[null, wand_2(x, 1 / 2, x, FullPerm, true):=Ops_3Mask[null, wand_2(x, 1 / 2, x, FullPerm, true)] + FullPerm];
        b_5 := b_5 && state(Ops_3Heap, Ops_3Mask);
        b_5 := b_5 && state(Ops_3Heap, Ops_3Mask);
        b_5 := b_5 && state(Ops_3Heap, Ops_3Mask);
    }
    // Translating exec of non-ghost operationacc(x.a, 1 / 2) && acc(x.b, write) --* true
    havoc Used_8Heap;
    Used_8Mask := ZeroMask;
    b_11 := b_11 && state(Used_8Heap, Used_8Mask);
    
    // -- Transfer of acc(x.a, 1 / 2) && acc(x.b, write) --* true
      
      // -- checking if access predicate defined in used state
        if ((b_5 && b_5) && b_11) {
          if (b_5) {
            
            // -- Check definedness of acc(x.a, 1 / 2) && acc(x.b, write) --* true
              if (*) {
                havoc WandDefLHSHeap;
                WandDefLHSMask := ZeroMask;
                perm := 1 / 2;
                assert {:msg "  Packaging wand might fail. Fraction 1 / 2 might be negative. (Perm.vpr@17.5--23.6) [138408]"}
                  perm >= NoPerm;
                assume perm > NoPerm ==> x != null;
                WandDefLHSMask := WandDefLHSMask[x, a_6:=WandDefLHSMask[x, a_6] + perm];
                assume state(WandDefLHSHeap, WandDefLHSMask);
                perm := FullPerm;
                assume x != null;
                WandDefLHSMask := WandDefLHSMask[x, b_94:=WandDefLHSMask[x, b_94] + perm];
                assume state(WandDefLHSHeap, WandDefLHSMask);
                assume state(WandDefLHSHeap, WandDefLHSMask);
                
                // -- Translating statement: label lhs8 -- Perm.vpr@17.49--17.83
                  lhs8:
                  Labellhs8Heap := WandDefLHSHeap;
                  Labellhs8Mask := WandDefLHSMask;
                  assume state(WandDefLHSHeap, WandDefLHSMask);
                havoc WandDefRHSHeap;
                WandDefRHSMask := ZeroMask;
                assume state(WandDefRHSHeap, WandDefRHSMask);
                assume false;
              }
          }
        }
      neededTransfer := 1.000000000;
      initNeededTransfer := Used_8Mask[null, wand_2(x, 1 / 2, x, FullPerm, true)] + neededTransfer;
      assert {:msg "  Packaging wand might fail. Fraction acc(x.a, 1 / 2) && acc(x.b, write) --* true might be negative. (Perm.vpr@17.5--23.6) [138409]"}
        neededTransfer >= 0.000000000;
      
      // -- transfer code for top state of stack
        // accumulate constraints which need to be satisfied for transfer to occur
        accVar2 := true;
        // actual code for the transfer from current state on stack
        if ((((b_5 && b_5) && b_11) && accVar2) && neededTransfer > 0.000000000) {
          maskTransfer := Ops_3Mask[null, wand_2(x, 1 / 2, x, FullPerm, true)];
          if (neededTransfer <= maskTransfer) {
            takeTransfer := neededTransfer;
          } else {
            takeTransfer := maskTransfer;
          }
          if (takeTransfer > 0.000000000) {
            neededTransfer := neededTransfer - takeTransfer;
            Used_8Mask := Used_8Mask[null, wand_2(x, 1 / 2, x, FullPerm, true):=Used_8Mask[null, wand_2(x, 1 / 2, x, FullPerm, true)] + takeTransfer];
            b_11 := b_11 && state(Used_8Heap, Used_8Mask);
            Ops_3Mask := Ops_3Mask[null, wand_2(x, 1 / 2, x, FullPerm, true):=Ops_3Mask[null, wand_2(x, 1 / 2, x, FullPerm, true)] - takeTransfer];
          }
        }
      
      // -- transfer code for top state of stack
        // accumulate constraints which need to be satisfied for transfer to occur
        accVar2 := true;
        // actual code for the transfer from current state on stack
        if ((((b_5 && b_5) && b_11) && accVar2) && neededTransfer > 0.000000000) {
          maskTransfer := Mask[null, wand_2(x, 1 / 2, x, FullPerm, true)];
          if (neededTransfer <= maskTransfer) {
            takeTransfer := neededTransfer;
          } else {
            takeTransfer := maskTransfer;
          }
          if (takeTransfer > 0.000000000) {
            neededTransfer := neededTransfer - takeTransfer;
            Used_8Mask := Used_8Mask[null, wand_2(x, 1 / 2, x, FullPerm, true):=Used_8Mask[null, wand_2(x, 1 / 2, x, FullPerm, true)] + takeTransfer];
            b_11 := b_11 && state(Used_8Heap, Used_8Mask);
            Mask := Mask[null, wand_2(x, 1 / 2, x, FullPerm, true):=Mask[null, wand_2(x, 1 / 2, x, FullPerm, true)] - takeTransfer];
          }
        }
      assert {:msg "  Packaging wand might fail. Magic wand instance not found. (Perm.vpr@17.5--23.6) [138410]"}
        (b_5 && b_5) && b_11 ==> neededTransfer == 0.000000000 && Used_8Mask[null, wand_2(x, 1 / 2, x, FullPerm, true)] == initNeededTransfer;
      
      // -- Creating state which is the sum of the two previously built up states
        b_12 := b_5 && b_11;
        b_12 := b_12 && state(ResultHeap, ResultMask);
        b_12 := b_12 && sumMask(ResultMask, Ops_3Mask, Used_8Mask);
        b_12 := (b_12 && IdenticalOnKnownLocations(Ops_3Heap, ResultHeap, Ops_3Mask)) && IdenticalOnKnownLocations(Used_8Heap, ResultHeap, Used_8Mask);
        b_12 := b_12 && state(ResultHeap, ResultMask);
      b_5 := b_5 && b_12;
    Mask := Mask[null, wand_1(x, 1 / 2, x, 1 / 2, x, 1 / 2, x, FullPerm, true):=Mask[null, wand_1(x, 1 / 2, x, 1 / 2, x, 1 / 2, x, FullPerm, true)] + FullPerm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
}