// 
// Translation of Viper program.
// 
// Date:         2025-01-26 23:14:36
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/issues/silicon/0197.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/issues/silicon/0197-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
axiom (forall o_3: Ref, f_8: (Field NormalField Ref), Heap: HeapType ::
  { Heap[o_3, f_8] }
  Heap[o_3, $allocated] ==> Heap[Heap[o_3, f_8], $allocated]
);
function  succHeap(Heap0: HeapType, Heap1: HeapType): bool;
function  succHeapTrans(Heap0: HeapType, Heap1: HeapType): bool;
function  IdenticalOnKnownLocations(Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType): bool;
function  IsPredicateField<A, B>(f_1: (Field A B)): bool;
function  IsWandField<A, B>(f_1: (Field A B)): bool;
function  getPredWandId<A, B>(f_1: (Field A B)): int;
// Frame all locations with direct permissions
axiom (forall <A, B> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_4: Ref, f_9: (Field A B) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_4, f_9] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, o_4, f_9) ==> Heap[o_4, f_9] == ExhaleHeap[o_4, f_9]
);
// Frame all predicate mask locations of predicates with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_1: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_1), ExhaleHeap[null, PredicateMaskField(pm_f_1)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_1) && IsPredicateField(pm_f_1) ==> Heap[null, PredicateMaskField(pm_f_1)] == ExhaleHeap[null, PredicateMaskField(pm_f_1)]
);
// Frame all locations with known folded permissions
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_1: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_1) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_1) && IsPredicateField(pm_f_1) ==> (forall <A, B> o2_1: Ref, f_9: (Field A B) ::
    { ExhaleHeap[o2_1, f_9] }
    Heap[null, PredicateMaskField(pm_f_1)][o2_1, f_9] ==> Heap[o2_1, f_9] == ExhaleHeap[o2_1, f_9]
  )
);
// Frame all wand mask locations of wands with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_1: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_1), ExhaleHeap[null, WandMaskField(pm_f_1)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_1) && IsWandField(pm_f_1) ==> Heap[null, WandMaskField(pm_f_1)] == ExhaleHeap[null, WandMaskField(pm_f_1)]
);
// Frame all locations in the footprint of magic wands
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_1: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_1) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_1) && IsWandField(pm_f_1) ==> (forall <A, B> o2_1: Ref, f_9: (Field A B) ::
    { ExhaleHeap[o2_1, f_9] }
    Heap[null, WandMaskField(pm_f_1)][o2_1, f_9] ==> Heap[o2_1, f_9] == ExhaleHeap[o2_1, f_9]
  )
);
// All previously-allocated references are still allocated
axiom (forall Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_4: Ref ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_4, $allocated] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> Heap[o_4, $allocated] ==> ExhaleHeap[o_4, $allocated]
);
// Updated Heaps are Successor Heaps
axiom (forall <A, B> Heap: HeapType, o_3: Ref, f_10: (Field A B), v: B ::
  { Heap[o_3, f_10:=v] }
  succHeap(Heap, Heap[o_3, f_10:=v])
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
function  wand(arg1: Ref, arg2: int, arg3: Ref, arg4: Perm, arg5: Ref, arg6: Perm, arg7: Ref, arg8: int): Field WandType_wand int;
function  wand#sm(arg1: Ref, arg2: int, arg3: Ref, arg4: Perm, arg5: Ref, arg6: Perm, arg7: Ref, arg8: int): Field WandType_wand PMaskType;
function  wand#ft(arg1: Ref, arg2: int, arg3: Ref, arg4: Perm, arg5: Ref, arg6: Perm, arg7: Ref, arg8: int): Field WandType_wand FrameType;
axiom (forall arg1: Ref, arg2: int, arg3: Ref, arg4: Perm, arg5: Ref, arg6: Perm, arg7: Ref, arg8: int ::
  { wand(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8) }
  IsWandField(wand(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8))
);
axiom (forall arg1: Ref, arg2: int, arg3: Ref, arg4: Perm, arg5: Ref, arg6: Perm, arg7: Ref, arg8: int ::
  { wand#ft(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8) }
  IsWandField(wand#ft(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8))
);
axiom (forall arg1: Ref, arg2: int, arg3: Ref, arg4: Perm, arg5: Ref, arg6: Perm, arg7: Ref, arg8: int ::
  { wand(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8) }
  !IsPredicateField(wand(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8))
);
axiom (forall arg1: Ref, arg2: int, arg3: Ref, arg4: Perm, arg5: Ref, arg6: Perm, arg7: Ref, arg8: int ::
  { wand#ft(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8) }
  !IsPredicateField(wand#ft(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8))
);
axiom (forall arg1: Ref, arg2: int, arg3: Ref, arg4: Perm, arg5: Ref, arg6: Perm, arg7: Ref, arg8: int ::
  { WandMaskField(wand#ft(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8)) }
  wand#sm(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8) == WandMaskField(wand#ft(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8))
);
axiom (forall arg1: Ref, arg2: int, arg3: Ref, arg4: Perm, arg5: Ref, arg6: Perm, arg7: Ref, arg8: int ::
  { wand(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8) }
  getPredWandId(wand(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8)) == 1
);
axiom (forall arg1: Ref, arg2: int, arg3: Ref, arg4: Perm, arg5: Ref, arg6: Perm, arg7: Ref, arg8: int, arg1_2: Ref, arg2_2: int, arg3_2: Ref, arg4_2: Perm, arg5_2: Ref, arg6_2: Perm, arg7_2: Ref, arg8_2: int ::
  { wand(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8), wand(arg1_2, arg2_2, arg3_2, arg4_2, arg5_2, arg6_2, arg7_2, arg8_2) }
  wand(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8) == wand(arg1_2, arg2_2, arg3_2, arg4_2, arg5_2, arg6_2, arg7_2, arg8_2) ==> arg1 == arg1_2 && (arg2 == arg2_2 && (arg3 == arg3_2 && (arg4 == arg4_2 && (arg5 == arg5_2 && (arg6 == arg6_2 && (arg7 == arg7_2 && arg8 == arg8_2))))))
);

// ==================================================
// Translation of all fields
// ==================================================

const unique val: Field NormalField int;
axiom !IsPredicateField(val);
axiom !IsWandField(val);
const unique next: Field NormalField Ref;
axiom !IsPredicateField(next);
axiom !IsWandField(next);

// ==================================================
// Translation of predicate LLInf
// ==================================================

type PredicateType_LLInf;
function  LLInf(x: Ref, i: int): Field PredicateType_LLInf FrameType;
function  LLInf#sm(x: Ref, i: int): Field PredicateType_LLInf PMaskType;
axiom (forall x: Ref, i: int ::
  { PredicateMaskField(LLInf(x, i)) }
  PredicateMaskField(LLInf(x, i)) == LLInf#sm(x, i)
);
axiom (forall x: Ref, i: int ::
  { LLInf(x, i) }
  IsPredicateField(LLInf(x, i))
);
axiom (forall x: Ref, i: int ::
  { LLInf(x, i) }
  getPredWandId(LLInf(x, i)) == 0
);
function  LLInf#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  LLInf#everUsed<A>(pred: (Field A FrameType)): bool;
axiom (forall x: Ref, i: int, x2: Ref, i2: int ::
  { LLInf(x, i), LLInf(x2, i2) }
  LLInf(x, i) == LLInf(x2, i2) ==> x == x2 && i == i2
);
axiom (forall x: Ref, i: int, x2: Ref, i2: int ::
  { LLInf#sm(x, i), LLInf#sm(x2, i2) }
  LLInf#sm(x, i) == LLInf#sm(x2, i2) ==> x == x2 && i == i2
);

axiom (forall Heap: HeapType, x: Ref, i: int ::
  { LLInf#trigger(Heap, LLInf(x, i)) }
  LLInf#everUsed(LLInf(x, i))
);

procedure LLInf#definedness(x: Ref, i: int) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  
  // -- Check definedness of predicate body of LLInf
    
    // -- Initializing the state
      Mask := ZeroMask;
      assume state(Heap, Mask);
      assume AssumePermUpperBound;
      assume Heap[x, $allocated];
    perm := FullPerm;
    assume x != null;
    Mask := Mask[x, val:=Mask[x, val] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of x.val == i
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access x.val (0197.vpr@7.1--11.2) [60098]"}
        HasDirectPerm(Mask, x, val);
    assume Heap[x, val] == i;
    perm := FullPerm;
    assume x != null;
    Mask := Mask[x, next:=Mask[x, next] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of acc(LLInf(x.next, i + 1), write)
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access x.next (0197.vpr@7.1--11.2) [60099]"}
        HasDirectPerm(Mask, x, next);
    perm := FullPerm;
    Mask := Mask[null, LLInf(Heap[x, next], i + 1):=Mask[null, LLInf(Heap[x, next], i + 1)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test04
// ==================================================

procedure test04(x: Ref) returns ()
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
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var Used_1Heap: HeapType;
  var Used_1Mask: MaskType;
  var b_2_1: bool;
  var arg: Ref;
  var arg_1_13: int;
  var neededTransfer: Perm;
  var initNeededTransfer: Perm;
  var accVar2: bool;
  var maskTransfer: Perm;
  var takeTransfer: Perm;
  var TempMask: MaskType;
  var newPMask: PMaskType;
  var b_3: bool;
  var ResultHeap: HeapType;
  var ResultMask: MaskType;
  var Used_2Heap: HeapType;
  var Used_2Mask: MaskType;
  var b_4: bool;
  var arg_2_13: Ref;
  var arg_3_13: int;
  var b_5: bool;
  var Result_1Heap: HeapType;
  var Result_1Mask: MaskType;
  var Used_3Heap: HeapType;
  var Used_3Mask: MaskType;
  var b_6: bool;
  var rcvLocal: Ref;
  var b_7: bool;
  var Result_2Heap: HeapType;
  var Result_2Mask: MaskType;
  var b_8: bool;
  var Result_3Heap: HeapType;
  var Result_3Mask: MaskType;
  var AssertHeap: HeapType;
  var AssertMask: MaskType;
  var WandDefLHSHeap: HeapType;
  var WandDefLHSMask: MaskType;
  var Labellhs3Mask: MaskType;
  var Labellhs3Heap: HeapType;
  var WandDefRHSHeap: HeapType;
  var WandDefRHSMask: MaskType;
  
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
  
  // -- Translating statement: package acc(LLInf(x, 0), write) --*
  // acc(x.next, write) && (acc(x.next.val, write) && x.next.val == 1) {
  //   unfold acc(LLInf(x, 0), write)
  //   unfold acc(LLInf(x.next, 1), write)
  // } -- 0197.vpr@14.3--17.4
    havoc Ops_1Heap;
    Ops_1Mask := ZeroMask;
    b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
    havoc UsedHeap;
    UsedMask := ZeroMask;
    b_2 := b_2 && state(UsedHeap, UsedMask);
    // Inhaling left hand side of current wand into hypothetical state
    if (b_1_1) {
      perm := FullPerm;
      b_1_1 := b_1_1;
      Ops_1Mask := Ops_1Mask[null, LLInf(x, 0):=Ops_1Mask[null, LLInf(x, 0)] + perm];
      b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
    }
    b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
    
    // -- Translating statement: label lhs1 -- 0197.vpr@14.11--14.83
      lhs1:
      Labellhs1Mask := Ops_1Mask;
      Labellhs1Heap := Ops_1Heap;
      b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
    boolCur := true;
    if (b_1_1) {
      
      // -- Translating statement: unfold acc(LLInf(x, 0), write) -- 0197.vpr@15.7--15.30
        assume LLInf#trigger(Ops_1Heap, LLInf(x, 0));
        assume Ops_1Heap[null, LLInf(x, 0)] == CombineFrames(FrameFragment(Ops_1Heap[x, val]), CombineFrames(FrameFragment(Ops_1Heap[x, next]), Ops_1Heap[null, LLInf(Ops_1Heap[x, next], 1)]));
        ExhaleWellDef0Mask := Ops_1Mask;
        ExhaleWellDef0Heap := Ops_1Heap;
        havoc Used_1Heap;
        Used_1Mask := ZeroMask;
        b_2_1 := b_2_1 && state(Used_1Heap, Used_1Mask);
        
        // -- Transfer of acc(LLInf(x, 0), write)
          arg := x;
          arg_1_13 := 0;
          neededTransfer := FullPerm;
          initNeededTransfer := Used_1Mask[null, LLInf(arg, arg_1_13)] + neededTransfer;
          assert {:msg "  Unfolding LLInf(x, 0) might fail. Fraction acc(LLInf(x, 0), write) might be negative. (0197.vpr@15.7--15.30) [60101]"}
            neededTransfer >= 0.000000000;
          
          // -- transfer code for top state of stack
            // accumulate constraints which need to be satisfied for transfer to occur
            accVar2 := true;
            // actual code for the transfer from current state on stack
            if (((b_1_1 && b_2_1) && accVar2) && neededTransfer > 0.000000000) {
              maskTransfer := Ops_1Mask[null, LLInf(arg, arg_1_13)];
              if (neededTransfer <= maskTransfer) {
                takeTransfer := neededTransfer;
              } else {
                takeTransfer := maskTransfer;
              }
              if (takeTransfer > 0.000000000) {
                neededTransfer := neededTransfer - takeTransfer;
                Used_1Mask := Used_1Mask[null, LLInf(arg, arg_1_13):=Used_1Mask[null, LLInf(arg, arg_1_13)] + takeTransfer];
                b_2_1 := b_2_1 && state(Used_1Heap, Used_1Mask);
                TempMask := ZeroMask[null, LLInf(arg, arg_1_13):=FullPerm];
                b_2_1 := b_2_1 && IdenticalOnKnownLocations(Ops_1Heap, Used_1Heap, TempMask);
                Ops_1Mask := Ops_1Mask[null, LLInf(arg, arg_1_13):=Ops_1Mask[null, LLInf(arg, arg_1_13)] - takeTransfer];
              }
            }
          
          // -- transfer code for top state of stack
            // accumulate constraints which need to be satisfied for transfer to occur
            accVar2 := true;
            // actual code for the transfer from current state on stack
            if (((b_1_1 && b_2_1) && accVar2) && neededTransfer > 0.000000000) {
              maskTransfer := Mask[null, LLInf(arg, arg_1_13)];
              if (neededTransfer <= maskTransfer) {
                takeTransfer := neededTransfer;
              } else {
                takeTransfer := maskTransfer;
              }
              if (takeTransfer > 0.000000000) {
                neededTransfer := neededTransfer - takeTransfer;
                Used_1Mask := Used_1Mask[null, LLInf(arg, arg_1_13):=Used_1Mask[null, LLInf(arg, arg_1_13)] + takeTransfer];
                b_2_1 := b_2_1 && state(Used_1Heap, Used_1Mask);
                TempMask := ZeroMask[null, LLInf(arg, arg_1_13):=FullPerm];
                b_2_1 := b_2_1 && IdenticalOnKnownLocations(Heap, Used_1Heap, TempMask);
                Mask := Mask[null, LLInf(arg, arg_1_13):=Mask[null, LLInf(arg, arg_1_13)] - takeTransfer];
                havoc newPMask;
                assume (forall <A, B> o_5: Ref, f_11: (Field A B) ::
                  { newPMask[o_5, f_11] }
                  Heap[null, wand#sm(x, 0, x, FullPerm, x, FullPerm, x, 1)][o_5, f_11] || Heap[null, LLInf#sm(x, 0)][o_5, f_11] ==> newPMask[o_5, f_11]
                );
                Heap := Heap[null, wand#sm(x, 0, x, FullPerm, x, FullPerm, x, 1):=newPMask];
              }
            }
          assert {:msg "  Unfolding LLInf(x, 0) might fail. There might be insufficient permission to access LLInf(x, 0) (0197.vpr@15.7--15.30) [60102]"}
            b_1_1 && b_2_1 ==> neededTransfer == 0.000000000 && Used_1Mask[null, LLInf(arg, arg_1_13)] == initNeededTransfer;
          
          // -- Creating state which is the sum of the two previously built up states
            b_3 := b_1_1 && b_2_1;
            b_3 := b_3 && state(ResultHeap, ResultMask);
            b_3 := b_3 && sumMask(ResultMask, Ops_1Mask, Used_1Mask);
            b_3 := (b_3 && IdenticalOnKnownLocations(Ops_1Heap, ResultHeap, Ops_1Mask)) && IdenticalOnKnownLocations(Used_1Heap, ResultHeap, Used_1Mask);
            b_3 := b_3 && state(ResultHeap, ResultMask);
          b_1_1 := b_1_1 && b_3;
        b_1_1 := b_1_1 && b_2_1;
        b_1_1 := b_1_1 && Used_1Heap == Ops_1Heap;
        perm := FullPerm;
        b_1_1 := b_1_1 && x != null;
        Ops_1Mask := Ops_1Mask[x, val:=Ops_1Mask[x, val] + perm];
        b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
        b_1_1 := b_1_1 && Ops_1Heap[x, val] == 0;
        perm := FullPerm;
        b_1_1 := b_1_1 && x != null;
        Ops_1Mask := Ops_1Mask[x, next:=Ops_1Mask[x, next] + perm];
        b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
        perm := FullPerm;
        b_1_1 := b_1_1;
        Ops_1Mask := Ops_1Mask[null, LLInf(Ops_1Heap[x, next], 1):=Ops_1Mask[null, LLInf(Ops_1Heap[x, next], 1)] + perm];
        
        // -- Extra unfolding of predicate
          b_1_1 := b_1_1 && InsidePredicate(LLInf(x, 0), Ops_1Heap[null, LLInf(x, 0)], LLInf(Ops_1Heap[x, next], 1), Ops_1Heap[null, LLInf(Ops_1Heap[x, next], 1)]);
        b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
        b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
        b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
    }
    if (b_1_1) {
      
      // -- Translating statement: unfold acc(LLInf(x.next, 1), write) -- 0197.vpr@16.7--16.35
        if (b_1_1) {
          
          // -- Check definedness of acc(LLInf(x.next, 1), write)
            assert {:msg "  Unfolding LLInf(x.next, 1) might fail. There might be insufficient permission to access x.next (0197.vpr@16.7--16.35) [60106]"}
              HasDirectPerm(Ops_1Mask, x, next);
        }
        assume LLInf#trigger(Ops_1Heap, LLInf(Ops_1Heap[x, next], 1));
        assume Ops_1Heap[null, LLInf(Ops_1Heap[x, next], 1)] == CombineFrames(FrameFragment(Ops_1Heap[Ops_1Heap[x, next], val]), CombineFrames(FrameFragment(Ops_1Heap[Ops_1Heap[x, next], next]), Ops_1Heap[null, LLInf(Ops_1Heap[Ops_1Heap[x, next], next], 2)]));
        ExhaleWellDef0Mask := Ops_1Mask;
        ExhaleWellDef0Heap := Ops_1Heap;
        havoc Used_2Heap;
        Used_2Mask := ZeroMask;
        b_4 := b_4 && state(Used_2Heap, Used_2Mask);
        
        // -- Transfer of acc(LLInf(x.next, 1), write)
          
          // -- checking if access predicate defined in used state
            if (b_1_1 && b_4) {
              if (b_1_1) {
                
                // -- Check definedness of acc(LLInf(x.next, 1), write)
                  assert {:msg "  Unfolding LLInf(x.next, 1) might fail. There might be insufficient permission to access x.next (0197.vpr@16.7--16.35) [60108]"}
                    HasDirectPerm(Ops_1Mask, x, next);
              }
            }
          arg_2_13 := Ops_1Heap[x, next];
          arg_3_13 := 1;
          neededTransfer := FullPerm;
          initNeededTransfer := Used_2Mask[null, LLInf(arg_2_13, arg_3_13)] + neededTransfer;
          assert {:msg "  Unfolding LLInf(x.next, 1) might fail. Fraction acc(LLInf(x.next, 1), write) might be negative. (0197.vpr@16.7--16.35) [60109]"}
            neededTransfer >= 0.000000000;
          
          // -- transfer code for top state of stack
            // accumulate constraints which need to be satisfied for transfer to occur
            accVar2 := true;
            // actual code for the transfer from current state on stack
            if (((b_1_1 && b_4) && accVar2) && neededTransfer > 0.000000000) {
              maskTransfer := Ops_1Mask[null, LLInf(arg_2_13, arg_3_13)];
              if (neededTransfer <= maskTransfer) {
                takeTransfer := neededTransfer;
              } else {
                takeTransfer := maskTransfer;
              }
              if (takeTransfer > 0.000000000) {
                neededTransfer := neededTransfer - takeTransfer;
                Used_2Mask := Used_2Mask[null, LLInf(arg_2_13, arg_3_13):=Used_2Mask[null, LLInf(arg_2_13, arg_3_13)] + takeTransfer];
                b_4 := b_4 && state(Used_2Heap, Used_2Mask);
                TempMask := ZeroMask[null, LLInf(arg_2_13, arg_3_13):=FullPerm];
                b_4 := b_4 && IdenticalOnKnownLocations(Ops_1Heap, Used_2Heap, TempMask);
                Ops_1Mask := Ops_1Mask[null, LLInf(arg_2_13, arg_3_13):=Ops_1Mask[null, LLInf(arg_2_13, arg_3_13)] - takeTransfer];
              }
            }
          
          // -- transfer code for top state of stack
            // accumulate constraints which need to be satisfied for transfer to occur
            accVar2 := true;
            // actual code for the transfer from current state on stack
            if (((b_1_1 && b_4) && accVar2) && neededTransfer > 0.000000000) {
              maskTransfer := Mask[null, LLInf(arg_2_13, arg_3_13)];
              if (neededTransfer <= maskTransfer) {
                takeTransfer := neededTransfer;
              } else {
                takeTransfer := maskTransfer;
              }
              if (takeTransfer > 0.000000000) {
                neededTransfer := neededTransfer - takeTransfer;
                Used_2Mask := Used_2Mask[null, LLInf(arg_2_13, arg_3_13):=Used_2Mask[null, LLInf(arg_2_13, arg_3_13)] + takeTransfer];
                b_4 := b_4 && state(Used_2Heap, Used_2Mask);
                TempMask := ZeroMask[null, LLInf(arg_2_13, arg_3_13):=FullPerm];
                b_4 := b_4 && IdenticalOnKnownLocations(Heap, Used_2Heap, TempMask);
                Mask := Mask[null, LLInf(arg_2_13, arg_3_13):=Mask[null, LLInf(arg_2_13, arg_3_13)] - takeTransfer];
                havoc newPMask;
                assume (forall <A, B> o_6: Ref, f_12: (Field A B) ::
                  { newPMask[o_6, f_12] }
                  Heap[null, wand#sm(x, 0, x, FullPerm, x, FullPerm, x, 1)][o_6, f_12] || Heap[null, LLInf#sm(Heap[x, next], 1)][o_6, f_12] ==> newPMask[o_6, f_12]
                );
                Heap := Heap[null, wand#sm(x, 0, x, FullPerm, x, FullPerm, x, 1):=newPMask];
              }
            }
          assert {:msg "  Unfolding LLInf(x.next, 1) might fail. There might be insufficient permission to access LLInf(x.next, 1) (0197.vpr@16.7--16.35) [60110]"}
            b_1_1 && b_4 ==> neededTransfer == 0.000000000 && Used_2Mask[null, LLInf(arg_2_13, arg_3_13)] == initNeededTransfer;
          
          // -- Creating state which is the sum of the two previously built up states
            b_5 := b_1_1 && b_4;
            b_5 := b_5 && state(Result_1Heap, Result_1Mask);
            b_5 := b_5 && sumMask(Result_1Mask, Ops_1Mask, Used_2Mask);
            b_5 := (b_5 && IdenticalOnKnownLocations(Ops_1Heap, Result_1Heap, Ops_1Mask)) && IdenticalOnKnownLocations(Used_2Heap, Result_1Heap, Used_2Mask);
            b_5 := b_5 && state(Result_1Heap, Result_1Mask);
          b_1_1 := b_1_1 && b_5;
        b_1_1 := b_1_1 && b_4;
        b_1_1 := b_1_1 && Used_2Heap == Ops_1Heap;
        perm := FullPerm;
        b_1_1 := b_1_1 && Ops_1Heap[x, next] != null;
        Ops_1Mask := Ops_1Mask[Ops_1Heap[x, next], val:=Ops_1Mask[Ops_1Heap[x, next], val] + perm];
        b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
        b_1_1 := b_1_1 && Ops_1Heap[Ops_1Heap[x, next], val] == 1;
        perm := FullPerm;
        b_1_1 := b_1_1 && Ops_1Heap[x, next] != null;
        Ops_1Mask := Ops_1Mask[Ops_1Heap[x, next], next:=Ops_1Mask[Ops_1Heap[x, next], next] + perm];
        b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
        perm := FullPerm;
        b_1_1 := b_1_1;
        Ops_1Mask := Ops_1Mask[null, LLInf(Ops_1Heap[Ops_1Heap[x, next], next], 2):=Ops_1Mask[null, LLInf(Ops_1Heap[Ops_1Heap[x, next], next], 2)] + perm];
        
        // -- Extra unfolding of predicate
          b_1_1 := b_1_1 && InsidePredicate(LLInf(Ops_1Heap[x, next], 1), Ops_1Heap[null, LLInf(Ops_1Heap[x, next], 1)], LLInf(Ops_1Heap[Ops_1Heap[x, next], next], 2), Ops_1Heap[null, LLInf(Ops_1Heap[Ops_1Heap[x, next], next], 2)]);
        b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
        b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
        b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
    }
    // Translating exec of non-ghost operationacc(x.next, write) && (acc(x.next.val, write) && x.next.val == 1)
    havoc Used_3Heap;
    Used_3Mask := ZeroMask;
    b_6 := b_6 && state(Used_3Heap, Used_3Mask);
    
    // -- Transfer of acc(x.next, write)
      rcvLocal := x;
      neededTransfer := FullPerm;
      initNeededTransfer := Used_3Mask[rcvLocal, next] + neededTransfer;
      assert {:msg "  Packaging wand might fail. Fraction acc(x.next, write) might be negative. (0197.vpr@14.3--17.4) [60114]"}
        neededTransfer >= 0.000000000;
      
      // -- transfer code for top state of stack
        // accumulate constraints which need to be satisfied for transfer to occur
        accVar2 := true;
        // actual code for the transfer from current state on stack
        if ((((b_1_1 && b_1_1) && b_6) && accVar2) && neededTransfer > 0.000000000) {
          maskTransfer := Ops_1Mask[rcvLocal, next];
          if (neededTransfer <= maskTransfer) {
            takeTransfer := neededTransfer;
          } else {
            takeTransfer := maskTransfer;
          }
          if (takeTransfer > 0.000000000) {
            neededTransfer := neededTransfer - takeTransfer;
            Used_3Mask := Used_3Mask[rcvLocal, next:=Used_3Mask[rcvLocal, next] + takeTransfer];
            b_6 := b_6 && state(Used_3Heap, Used_3Mask);
            b_6 := b_6 && Ops_1Heap[rcvLocal, next] == Used_3Heap[rcvLocal, next];
            Ops_1Mask := Ops_1Mask[rcvLocal, next:=Ops_1Mask[rcvLocal, next] - takeTransfer];
          }
        }
      
      // -- transfer code for top state of stack
        // accumulate constraints which need to be satisfied for transfer to occur
        accVar2 := true;
        // actual code for the transfer from current state on stack
        if ((((b_1_1 && b_1_1) && b_6) && accVar2) && neededTransfer > 0.000000000) {
          maskTransfer := Mask[rcvLocal, next];
          if (neededTransfer <= maskTransfer) {
            takeTransfer := neededTransfer;
          } else {
            takeTransfer := maskTransfer;
          }
          if (takeTransfer > 0.000000000) {
            neededTransfer := neededTransfer - takeTransfer;
            Used_3Mask := Used_3Mask[rcvLocal, next:=Used_3Mask[rcvLocal, next] + takeTransfer];
            b_6 := b_6 && state(Used_3Heap, Used_3Mask);
            b_6 := b_6 && Heap[rcvLocal, next] == Used_3Heap[rcvLocal, next];
            Mask := Mask[rcvLocal, next:=Mask[rcvLocal, next] - takeTransfer];
            Heap := Heap[null, wand#sm(x, 0, x, FullPerm, x, FullPerm, x, 1):=Heap[null, wand#sm(x, 0, x, FullPerm, x, FullPerm, x, 1)][x, next:=true]];
          }
        }
      assert {:msg "  Packaging wand might fail. There might be insufficient permission to access x.next (0197.vpr@14.3--17.4) [60115]"}
        (b_1_1 && b_1_1) && b_6 ==> neededTransfer == 0.000000000 && Used_3Mask[rcvLocal, next] == initNeededTransfer;
      
      // -- Creating state which is the sum of the two previously built up states
        b_7 := b_1_1 && b_6;
        b_7 := b_7 && state(Result_2Heap, Result_2Mask);
        b_7 := b_7 && sumMask(Result_2Mask, Ops_1Mask, Used_3Mask);
        b_7 := (b_7 && IdenticalOnKnownLocations(Ops_1Heap, Result_2Heap, Ops_1Mask)) && IdenticalOnKnownLocations(Used_3Heap, Result_2Heap, Used_3Mask);
        b_7 := b_7 && state(Result_2Heap, Result_2Mask);
      b_1_1 := b_1_1 && b_7;
    
    // -- Transfer of acc(x.next.val, write)
      
      // -- checking if access predicate defined in used state
        if ((b_1_1 && b_1_1) && b_6) {
          if (b_1_1) {
            
            // -- Check definedness of acc(x.next.val, write)
              assert {:msg "  Packaging wand might fail. There might be insufficient permission to access x.next (0197.vpr@14.3--17.4) [60116]"}
                HasDirectPerm(Result_2Mask, x, next);
          }
        }
      rcvLocal := Result_2Heap[x, next];
      neededTransfer := FullPerm;
      initNeededTransfer := Used_3Mask[rcvLocal, val] + neededTransfer;
      assert {:msg "  Packaging wand might fail. Fraction acc(x.next.val, write) might be negative. (0197.vpr@14.3--17.4) [60117]"}
        neededTransfer >= 0.000000000;
      
      // -- transfer code for top state of stack
        // accumulate constraints which need to be satisfied for transfer to occur
        accVar2 := true;
        // actual code for the transfer from current state on stack
        if ((((b_1_1 && b_1_1) && b_6) && accVar2) && neededTransfer > 0.000000000) {
          maskTransfer := Ops_1Mask[rcvLocal, val];
          if (neededTransfer <= maskTransfer) {
            takeTransfer := neededTransfer;
          } else {
            takeTransfer := maskTransfer;
          }
          if (takeTransfer > 0.000000000) {
            neededTransfer := neededTransfer - takeTransfer;
            Used_3Mask := Used_3Mask[rcvLocal, val:=Used_3Mask[rcvLocal, val] + takeTransfer];
            b_6 := b_6 && state(Used_3Heap, Used_3Mask);
            b_6 := b_6 && Ops_1Heap[rcvLocal, val] == Used_3Heap[rcvLocal, val];
            Ops_1Mask := Ops_1Mask[rcvLocal, val:=Ops_1Mask[rcvLocal, val] - takeTransfer];
          }
        }
      
      // -- transfer code for top state of stack
        // accumulate constraints which need to be satisfied for transfer to occur
        accVar2 := true;
        // actual code for the transfer from current state on stack
        if ((((b_1_1 && b_1_1) && b_6) && accVar2) && neededTransfer > 0.000000000) {
          maskTransfer := Mask[rcvLocal, val];
          if (neededTransfer <= maskTransfer) {
            takeTransfer := neededTransfer;
          } else {
            takeTransfer := maskTransfer;
          }
          if (takeTransfer > 0.000000000) {
            neededTransfer := neededTransfer - takeTransfer;
            Used_3Mask := Used_3Mask[rcvLocal, val:=Used_3Mask[rcvLocal, val] + takeTransfer];
            b_6 := b_6 && state(Used_3Heap, Used_3Mask);
            b_6 := b_6 && Heap[rcvLocal, val] == Used_3Heap[rcvLocal, val];
            Mask := Mask[rcvLocal, val:=Mask[rcvLocal, val] - takeTransfer];
            Heap := Heap[null, wand#sm(x, 0, x, FullPerm, x, FullPerm, x, 1):=Heap[null, wand#sm(x, 0, x, FullPerm, x, FullPerm, x, 1)][Heap[x, next], val:=true]];
          }
        }
      assert {:msg "  Packaging wand might fail. There might be insufficient permission to access x.next.val (0197.vpr@14.3--17.4) [60118]"}
        (b_1_1 && b_1_1) && b_6 ==> neededTransfer == 0.000000000 && Used_3Mask[rcvLocal, val] == initNeededTransfer;
      
      // -- Creating state which is the sum of the two previously built up states
        b_8 := b_1_1 && b_6;
        b_8 := b_8 && state(Result_3Heap, Result_3Mask);
        b_8 := b_8 && sumMask(Result_3Mask, Ops_1Mask, Used_3Mask);
        b_8 := (b_8 && IdenticalOnKnownLocations(Ops_1Heap, Result_3Heap, Ops_1Mask)) && IdenticalOnKnownLocations(Used_3Heap, Result_3Heap, Used_3Mask);
        b_8 := b_8 && state(Result_3Heap, Result_3Mask);
      b_1_1 := b_1_1 && b_8;
    if ((b_1_1 && b_1_1) && b_6) {
      if (b_1_1) {
        
        // -- Check definedness of x.next.val == 1
          assert {:msg "  Packaging wand might fail. There might be insufficient permission to access x.next (0197.vpr@14.3--17.4) [60119]"}
            HasDirectPerm(Result_3Mask, x, next);
          assert {:msg "  Packaging wand might fail. There might be insufficient permission to access x.next.val (0197.vpr@14.3--17.4) [60120]"}
            HasDirectPerm(Result_3Mask, Result_3Heap[x, next], val);
      }
    }
    assert {:msg "  Packaging wand might fail. Assertion x.next.val == 1 might not hold. (0197.vpr@14.3--17.4) [60121]"}
      (b_1_1 && b_1_1) && b_6 ==> Result_3Heap[Result_3Heap[x, next], val] == 1;
    Mask := Mask[null, wand(x, 0, x, FullPerm, x, FullPerm, x, 1):=Mask[null, wand(x, 0, x, FullPerm, x, FullPerm, x, 1)] + FullPerm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert acc(LLInf(x, 0), write) --*
  //   acc(x.next, write) && (acc(x.next.val, write) && x.next.val == 1) -- 0197.vpr@19.3--19.80
    AssertHeap := Heap;
    AssertMask := Mask;
    ExhaleWellDef0Mask := AssertMask;
    ExhaleWellDef0Heap := AssertHeap;
    
    // -- Check definedness of acc(LLInf(x, 0), write) --* acc(x.next, write) && (acc(x.next.val, write) && x.next.val == 1)
      if (*) {
        havoc WandDefLHSHeap;
        WandDefLHSMask := ZeroMask;
        perm := FullPerm;
        WandDefLHSMask := WandDefLHSMask[null, LLInf(x, 0):=WandDefLHSMask[null, LLInf(x, 0)] + perm];
        assume state(WandDefLHSHeap, WandDefLHSMask);
        assume state(WandDefLHSHeap, WandDefLHSMask);
        
        // -- Translating statement: label lhs3 -- 0197.vpr@19.10--19.80
          lhs3:
          Labellhs3Mask := WandDefLHSMask;
          Labellhs3Heap := WandDefLHSHeap;
          assume state(WandDefLHSHeap, WandDefLHSMask);
        havoc WandDefRHSHeap;
        WandDefRHSMask := ZeroMask;
        perm := FullPerm;
        assume x != null;
        WandDefRHSMask := WandDefRHSMask[x, next:=WandDefRHSMask[x, next] + perm];
        assume state(WandDefRHSHeap, WandDefRHSMask);
        
        // -- Check definedness of acc(x.next.val, write)
          assert {:msg "  Assert might fail. There might be insufficient permission to access x.next (0197.vpr@19.10--19.80) [60122]"}
            HasDirectPerm(WandDefRHSMask, x, next);
        perm := FullPerm;
        assume WandDefRHSHeap[x, next] != null;
        WandDefRHSMask := WandDefRHSMask[WandDefRHSHeap[x, next], val:=WandDefRHSMask[WandDefRHSHeap[x, next], val] + perm];
        assume state(WandDefRHSHeap, WandDefRHSMask);
        
        // -- Check definedness of x.next.val == 1
          assert {:msg "  Assert might fail. There might be insufficient permission to access x.next (0197.vpr@19.10--19.80) [60123]"}
            HasDirectPerm(WandDefRHSMask, x, next);
          assert {:msg "  Assert might fail. There might be insufficient permission to access x.next.val (0197.vpr@19.10--19.80) [60124]"}
            HasDirectPerm(WandDefRHSMask, WandDefRHSHeap[x, next], val);
        assume WandDefRHSHeap[WandDefRHSHeap[x, next], val] == 1;
        assume state(WandDefRHSHeap, WandDefRHSMask);
        assume false;
      }
    // permLe
    assert {:msg "  Assert might fail. Magic wand instance not found. (0197.vpr@19.10--19.80) [60125]"}
      FullPerm <= AssertMask[null, wand(x, 0, x, FullPerm, x, FullPerm, x, 1)];
    AssertMask := AssertMask[null, wand(x, 0, x, FullPerm, x, FullPerm, x, 1):=AssertMask[null, wand(x, 0, x, FullPerm, x, FullPerm, x, 1)] - FullPerm];
    assume state(Heap, Mask);
}