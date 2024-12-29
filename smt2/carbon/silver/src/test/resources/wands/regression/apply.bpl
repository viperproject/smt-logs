// 
// Translation of Viper program.
// 
// Date:         2024-12-29 20:29:14
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/wands/regression/apply.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/wands/regression/apply-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
function  wand(arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm): Field WandType_wand int;
function  wand#sm(arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm): Field WandType_wand PMaskType;
function  wand#ft(arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm): Field WandType_wand FrameType;
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm ::
  { wand(arg1, arg2, arg3, arg4) }
  IsWandField(wand(arg1, arg2, arg3, arg4))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm ::
  { wand#ft(arg1, arg2, arg3, arg4) }
  IsWandField(wand#ft(arg1, arg2, arg3, arg4))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm ::
  { wand(arg1, arg2, arg3, arg4) }
  !IsPredicateField(wand(arg1, arg2, arg3, arg4))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm ::
  { wand#ft(arg1, arg2, arg3, arg4) }
  !IsPredicateField(wand#ft(arg1, arg2, arg3, arg4))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm ::
  { WandMaskField(wand#ft(arg1, arg2, arg3, arg4)) }
  wand#sm(arg1, arg2, arg3, arg4) == WandMaskField(wand#ft(arg1, arg2, arg3, arg4))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm ::
  { wand(arg1, arg2, arg3, arg4) }
  getPredWandId(wand(arg1, arg2, arg3, arg4)) == 0
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm, arg1_2: Ref, arg2_2: Perm, arg3_2: Ref, arg4_2: Perm ::
  { wand(arg1, arg2, arg3, arg4), wand(arg1_2, arg2_2, arg3_2, arg4_2) }
  wand(arg1, arg2, arg3, arg4) == wand(arg1_2, arg2_2, arg3_2, arg4_2) ==> arg1 == arg1_2 && (arg2 == arg2_2 && (arg3 == arg3_2 && arg4 == arg4_2))
);
type WandType_wand_1;
function  wand_1(arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm, arg5: Ref, arg6: int): Field WandType_wand_1 int;
function  wand_1#sm(arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm, arg5: Ref, arg6: int): Field WandType_wand_1 PMaskType;
function  wand_1#ft(arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm, arg5: Ref, arg6: int): Field WandType_wand_1 FrameType;
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm, arg5: Ref, arg6: int ::
  { wand_1(arg1, arg2, arg3, arg4, arg5, arg6) }
  IsWandField(wand_1(arg1, arg2, arg3, arg4, arg5, arg6))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm, arg5: Ref, arg6: int ::
  { wand_1#ft(arg1, arg2, arg3, arg4, arg5, arg6) }
  IsWandField(wand_1#ft(arg1, arg2, arg3, arg4, arg5, arg6))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm, arg5: Ref, arg6: int ::
  { wand_1(arg1, arg2, arg3, arg4, arg5, arg6) }
  !IsPredicateField(wand_1(arg1, arg2, arg3, arg4, arg5, arg6))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm, arg5: Ref, arg6: int ::
  { wand_1#ft(arg1, arg2, arg3, arg4, arg5, arg6) }
  !IsPredicateField(wand_1#ft(arg1, arg2, arg3, arg4, arg5, arg6))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm, arg5: Ref, arg6: int ::
  { WandMaskField(wand_1#ft(arg1, arg2, arg3, arg4, arg5, arg6)) }
  wand_1#sm(arg1, arg2, arg3, arg4, arg5, arg6) == WandMaskField(wand_1#ft(arg1, arg2, arg3, arg4, arg5, arg6))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm, arg5: Ref, arg6: int ::
  { wand_1(arg1, arg2, arg3, arg4, arg5, arg6) }
  getPredWandId(wand_1(arg1, arg2, arg3, arg4, arg5, arg6)) == 1
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm, arg5: Ref, arg6: int, arg1_2: Ref, arg2_2: Perm, arg3_2: Ref, arg4_2: Perm, arg5_2: Ref, arg6_2: int ::
  { wand_1(arg1, arg2, arg3, arg4, arg5, arg6), wand_1(arg1_2, arg2_2, arg3_2, arg4_2, arg5_2, arg6_2) }
  wand_1(arg1, arg2, arg3, arg4, arg5, arg6) == wand_1(arg1_2, arg2_2, arg3_2, arg4_2, arg5_2, arg6_2) ==> arg1 == arg1_2 && (arg2 == arg2_2 && (arg3 == arg3_2 && (arg4 == arg4_2 && (arg5 == arg5_2 && arg6 == arg6_2))))
);
type WandType_wand_2;
function  wand_2(arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm, arg5: Ref, arg6: int): Field WandType_wand_2 int;
function  wand_2#sm(arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm, arg5: Ref, arg6: int): Field WandType_wand_2 PMaskType;
function  wand_2#ft(arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm, arg5: Ref, arg6: int): Field WandType_wand_2 FrameType;
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm, arg5: Ref, arg6: int ::
  { wand_2(arg1, arg2, arg3, arg4, arg5, arg6) }
  IsWandField(wand_2(arg1, arg2, arg3, arg4, arg5, arg6))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm, arg5: Ref, arg6: int ::
  { wand_2#ft(arg1, arg2, arg3, arg4, arg5, arg6) }
  IsWandField(wand_2#ft(arg1, arg2, arg3, arg4, arg5, arg6))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm, arg5: Ref, arg6: int ::
  { wand_2(arg1, arg2, arg3, arg4, arg5, arg6) }
  !IsPredicateField(wand_2(arg1, arg2, arg3, arg4, arg5, arg6))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm, arg5: Ref, arg6: int ::
  { wand_2#ft(arg1, arg2, arg3, arg4, arg5, arg6) }
  !IsPredicateField(wand_2#ft(arg1, arg2, arg3, arg4, arg5, arg6))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm, arg5: Ref, arg6: int ::
  { WandMaskField(wand_2#ft(arg1, arg2, arg3, arg4, arg5, arg6)) }
  wand_2#sm(arg1, arg2, arg3, arg4, arg5, arg6) == WandMaskField(wand_2#ft(arg1, arg2, arg3, arg4, arg5, arg6))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm, arg5: Ref, arg6: int ::
  { wand_2(arg1, arg2, arg3, arg4, arg5, arg6) }
  getPredWandId(wand_2(arg1, arg2, arg3, arg4, arg5, arg6)) == 2
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm, arg5: Ref, arg6: int, arg1_2: Ref, arg2_2: Perm, arg3_2: Ref, arg4_2: Perm, arg5_2: Ref, arg6_2: int ::
  { wand_2(arg1, arg2, arg3, arg4, arg5, arg6), wand_2(arg1_2, arg2_2, arg3_2, arg4_2, arg5_2, arg6_2) }
  wand_2(arg1, arg2, arg3, arg4, arg5, arg6) == wand_2(arg1_2, arg2_2, arg3_2, arg4_2, arg5_2, arg6_2) ==> arg1 == arg1_2 && (arg2 == arg2_2 && (arg3 == arg3_2 && (arg4 == arg4_2 && (arg5 == arg5_2 && arg6 == arg6_2))))
);

// ==================================================
// Translation of all fields
// ==================================================

const unique f_7: Field NormalField int;
axiom !IsPredicateField(f_7);
axiom !IsWandField(f_7);

// ==================================================
// Translation of method test04
// ==================================================

procedure test04(x: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldHeap: HeapType;
  var oldMask: MaskType;
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
    Mask := Mask[x, f_7:=Mask[x, f_7] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: apply acc(x.f, 1 / 2) --* acc(x.f, 1 / 2) -- apply.vpr@10.3--10.40
    
    // -- check if wand is held and remove an instance
      ExhaleWellDef0Heap := Heap;
      ExhaleWellDef0Mask := Mask;
      // permLe
      assert {:msg "  Applying wand might fail. Magic wand instance not found. (apply.vpr@10.3--10.40) [130841]"}
        FullPerm <= Mask[null, wand(x, 1 / 2, x, 1 / 2)];
      Mask := Mask[null, wand(x, 1 / 2, x, 1 / 2):=Mask[null, wand(x, 1 / 2, x, 1 / 2)] - FullPerm];
    assume state(Heap, Mask);
    
    // -- check if LHS holds and remove permissions 
      ExhaleWellDef0Heap := Heap;
      ExhaleWellDef0Mask := Mask;
      perm := 1 / 2;
      assert {:msg "  Applying wand might fail. Fraction 1 / 2 might be negative. (apply.vpr@10.3--10.40) [130842]"}
        perm >= NoPerm;
      if (perm != NoPerm) {
        assert {:msg "  Applying wand might fail. There might be insufficient permission to access x.f (apply.vpr@10.3--10.40) [130843]"}
          perm <= Mask[x, f_7];
      }
      Mask := Mask[x, f_7:=Mask[x, f_7] - perm];
    assume state(Heap, Mask);
    
    // -- inhale the RHS of the wand
      perm := 1 / 2;
      assert {:msg "  Applying wand might fail. Fraction 1 / 2 might be negative. (apply.vpr@10.3--10.40) [130844]"}
        perm >= NoPerm;
      assume perm > NoPerm ==> x != null;
      Mask := Mask[x, f_7:=Mask[x, f_7] + perm];
      assume state(Heap, Mask);
      assume state(Heap, Mask);
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
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
  var Labellhs2Heap: HeapType;
  var Labellhs2Mask: MaskType;
  var WandDefRHSHeap: HeapType;
  var WandDefRHSMask: MaskType;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
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
    
    // -- Check definedness of acc(x.f, 1 / 2) --* acc(x.f, write) && x.f == 0
      if (*) {
        havoc WandDefLHSHeap;
        WandDefLHSMask := ZeroMask;
        perm := 1 / 2;
        assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (apply.vpr@14.12--14.50) [130845]"}
          perm >= NoPerm;
        assume perm > NoPerm ==> x != null;
        WandDefLHSMask := WandDefLHSMask[x, f_7:=WandDefLHSMask[x, f_7] + perm];
        assume state(WandDefLHSHeap, WandDefLHSMask);
        assume state(WandDefLHSHeap, WandDefLHSMask);
        
        // -- Translating statement: label lhs2 -- apply.vpr@14.12--14.50
          lhs2:
          Labellhs2Heap := WandDefLHSHeap;
          Labellhs2Mask := WandDefLHSMask;
          assume state(WandDefLHSHeap, WandDefLHSMask);
        havoc WandDefRHSHeap;
        WandDefRHSMask := ZeroMask;
        perm := FullPerm;
        assume x != null;
        WandDefRHSMask := WandDefRHSMask[x, f_7:=WandDefRHSMask[x, f_7] + perm];
        assume state(WandDefRHSHeap, WandDefRHSMask);
        
        // -- Check definedness of x.f == 0
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access x.f (apply.vpr@14.12--14.50) [130846]"}
            HasDirectPerm(WandDefRHSMask, x, f_7);
        assume WandDefRHSHeap[x, f_7] == 0;
        assume state(WandDefRHSHeap, WandDefRHSMask);
        assume false;
      }
    Mask := Mask[null, wand_1(x, 1 / 2, x, FullPerm, x, 0):=Mask[null, wand_1(x, 1 / 2, x, FullPerm, x, 0)] + FullPerm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    perm := 1 / 2;
    assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (apply.vpr@15.12--15.25) [130847]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> x != null;
    Mask := Mask[x, f_7:=Mask[x, f_7] + perm];
    assume state(Heap, Mask);
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
    perm := FullPerm;
    assume x != null;
    PostMask := PostMask[x, f_7:=PostMask[x, f_7] + perm];
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of x.f == 0
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access x.f (apply.vpr@16.11--16.31) [130848]"}
        HasDirectPerm(PostMask, x, f_7);
    assume PostHeap[x, f_7] == 0;
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: apply acc(x.f, 1 / 2) --* acc(x.f, write) && x.f == 0 -- apply.vpr@18.3--18.47
    
    // -- check if wand is held and remove an instance
      ExhaleWellDef0Heap := Heap;
      ExhaleWellDef0Mask := Mask;
      // permLe
      assert {:msg "  Applying wand might fail. Magic wand instance not found. (apply.vpr@18.3--18.47) [130849]"}
        FullPerm <= Mask[null, wand_1(x, 1 / 2, x, FullPerm, x, 0)];
      Mask := Mask[null, wand_1(x, 1 / 2, x, FullPerm, x, 0):=Mask[null, wand_1(x, 1 / 2, x, FullPerm, x, 0)] - FullPerm];
    assume state(Heap, Mask);
    
    // -- check if LHS holds and remove permissions 
      ExhaleWellDef0Heap := Heap;
      ExhaleWellDef0Mask := Mask;
      perm := 1 / 2;
      assert {:msg "  Applying wand might fail. Fraction 1 / 2 might be negative. (apply.vpr@18.3--18.47) [130850]"}
        perm >= NoPerm;
      if (perm != NoPerm) {
        assert {:msg "  Applying wand might fail. There might be insufficient permission to access x.f (apply.vpr@18.3--18.47) [130851]"}
          perm <= Mask[x, f_7];
      }
      Mask := Mask[x, f_7:=Mask[x, f_7] - perm];
    assume state(Heap, Mask);
    
    // -- inhale the RHS of the wand
      perm := FullPerm;
      assume x != null;
      Mask := Mask[x, f_7:=Mask[x, f_7] + perm];
      assume state(Heap, Mask);
      assume Heap[x, f_7] == 0;
      assume state(Heap, Mask);
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of test02 might not hold. There might be insufficient permission to access x.f (apply.vpr@16.11--16.31) [130853]"}
        perm <= Mask[x, f_7];
    }
    Mask := Mask[x, f_7:=Mask[x, f_7] - perm];
    assert {:msg "  Postcondition of test02 might not hold. Assertion x.f == 0 might not hold. (apply.vpr@16.11--16.31) [130854]"}
      Heap[x, f_7] == 0;
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method test03
// ==================================================

procedure test03(x: Ref, y: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var z: Ref;
  var Ops_1Heap: HeapType;
  var Ops_1Mask: MaskType;
  var b_1_1: bool;
  var UsedHeap: HeapType;
  var UsedMask: MaskType;
  var b_2: bool;
  var Labellhs4Heap: HeapType;
  var Labellhs4Mask: MaskType;
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
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[x, $allocated];
    assume Heap[y, $allocated];
  
  // -- Checked inhaling of precondition
    perm := FullPerm;
    assume x != null;
    Mask := Mask[x, f_7:=Mask[x, f_7] + perm];
    assume state(Heap, Mask);
    perm := FullPerm;
    assume y != null;
    Mask := Mask[y, f_7:=Mask[y, f_7] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of x.f == 0
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access x.f (apply.vpr@23.12--23.20) [130855]"}
        HasDirectPerm(Mask, x, f_7);
    assume Heap[x, f_7] == 0;
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Assumptions about local variables
    assume Heap[z, $allocated];
  
  // -- Translating statement: z := x -- apply.vpr@25.3--25.18
    z := x;
    assume state(Heap, Mask);
  
  // -- Translating statement: package acc(z.f, 1 / 2) --* acc(z.f, 2 / 3) && z.f == 0 {
  // } -- apply.vpr@26.3--26.56
    havoc Ops_1Heap;
    Ops_1Mask := ZeroMask;
    b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
    havoc UsedHeap;
    UsedMask := ZeroMask;
    b_2 := b_2 && state(UsedHeap, UsedMask);
    // Inhaling left hand side of current wand into hypothetical state
    if (b_1_1) {
      perm := 1 / 2;
      assert {:msg "  Packaging wand might fail. Fraction 1 / 2 might be negative. (apply.vpr@26.3--26.56) [130856]"}
        perm >= NoPerm;
      b_1_1 := b_1_1 && (perm > NoPerm ==> z != null);
      Ops_1Mask := Ops_1Mask[z, f_7:=Ops_1Mask[z, f_7] + perm];
      b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
    }
    b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
    
    // -- Translating statement: label lhs4 -- apply.vpr@26.11--26.56
      lhs4:
      Labellhs4Heap := Ops_1Heap;
      Labellhs4Mask := Ops_1Mask;
      b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
    boolCur := true;
    // Translating exec of non-ghost operationacc(z.f, 2 / 3) && z.f == 0
    havoc Used_1Heap;
    Used_1Mask := ZeroMask;
    b_2_1 := b_2_1 && state(Used_1Heap, Used_1Mask);
    
    // -- Transfer of acc(z.f, 2 / 3)
      rcvLocal := z;
      neededTransfer := 2 / 3;
      initNeededTransfer := Used_1Mask[rcvLocal, f_7] + neededTransfer;
      assert {:msg "  Packaging wand might fail. Fraction acc(z.f, 2 / 3) might be negative. (apply.vpr@26.3--26.56) [130857]"}
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
            Heap := Heap[null, wand_2#sm(z, 1 / 2, z, 2 / 3, z, 0):=Heap[null, wand_2#sm(z, 1 / 2, z, 2 / 3, z, 0)][z, f_7:=true]];
          }
        }
      assert {:msg "  Packaging wand might fail. There might be insufficient permission to access z.f (apply.vpr@26.3--26.56) [130858]"}
        (b_1_1 && b_1_1) && b_2_1 ==> neededTransfer == 0.000000000 && Used_1Mask[rcvLocal, f_7] == initNeededTransfer;
      
      // -- Creating state which is the sum of the two previously built up states
        b_3 := b_1_1 && b_2_1;
        b_3 := b_3 && state(ResultHeap, ResultMask);
        b_3 := b_3 && sumMask(ResultMask, Ops_1Mask, Used_1Mask);
        b_3 := (b_3 && IdenticalOnKnownLocations(Ops_1Heap, ResultHeap, Ops_1Mask)) && IdenticalOnKnownLocations(Used_1Heap, ResultHeap, Used_1Mask);
        b_3 := b_3 && state(ResultHeap, ResultMask);
      b_1_1 := b_1_1 && b_3;
    if ((b_1_1 && b_1_1) && b_2_1) {
      if (b_1_1) {
        
        // -- Check definedness of z.f == 0
          assert {:msg "  Packaging wand might fail. There might be insufficient permission to access z.f (apply.vpr@26.3--26.56) [130859]"}
            HasDirectPerm(ResultMask, z, f_7);
      }
    }
    assert {:msg "  Packaging wand might fail. Assertion z.f == 0 might not hold. (apply.vpr@26.3--26.56) [130860]"}
      (b_1_1 && b_1_1) && b_2_1 ==> ResultHeap[z, f_7] == 0;
    Mask := Mask[null, wand_2(z, 1 / 2, z, 2 / 3, z, 0):=Mask[null, wand_2(z, 1 / 2, z, 2 / 3, z, 0)] + FullPerm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: z := y -- apply.vpr@28.3--28.9
    z := y;
    assume state(Heap, Mask);
  
  // -- Translating statement: apply acc(z.f, 1 / 2) --* acc(z.f, 2 / 3) && z.f == 0 -- apply.vpr@30.3--30.54
    
    // -- check if wand is held and remove an instance
      ExhaleWellDef0Heap := Heap;
      ExhaleWellDef0Mask := Mask;
      // permLe
      assert {:msg "  Applying wand might fail. Magic wand instance not found. (apply.vpr@30.3--30.54) [130861]"}
        FullPerm <= Mask[null, wand_2(z, 1 / 2, z, 2 / 3, z, 0)];
      Mask := Mask[null, wand_2(z, 1 / 2, z, 2 / 3, z, 0):=Mask[null, wand_2(z, 1 / 2, z, 2 / 3, z, 0)] - FullPerm];
    assume state(Heap, Mask);
    
    // -- check if LHS holds and remove permissions 
      ExhaleWellDef0Heap := Heap;
      ExhaleWellDef0Mask := Mask;
      perm := 1 / 2;
      assert {:msg "  Applying wand might fail. Fraction 1 / 2 might be negative. (apply.vpr@30.3--30.54) [130862]"}
        perm >= NoPerm;
      if (perm != NoPerm) {
        assert {:msg "  Applying wand might fail. There might be insufficient permission to access z.f (apply.vpr@30.3--30.54) [130863]"}
          perm <= Mask[z, f_7];
      }
      Mask := Mask[z, f_7:=Mask[z, f_7] - perm];
    assume state(Heap, Mask);
    
    // -- inhale the RHS of the wand
      perm := 2 / 3;
      assert {:msg "  Applying wand might fail. Fraction 2 / 3 might be negative. (apply.vpr@30.3--30.54) [130864]"}
        perm >= NoPerm;
      assume perm > NoPerm ==> z != null;
      Mask := Mask[z, f_7:=Mask[z, f_7] + perm];
      assume state(Heap, Mask);
      assume Heap[z, f_7] == 0;
      assume state(Heap, Mask);
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test01
// ==================================================

procedure test01(x: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var Ops_3Heap: HeapType;
  var Ops_3Mask: MaskType;
  var b_5: bool;
  var Used_2Heap: HeapType;
  var Used_2Mask: MaskType;
  var b_4: bool;
  var Labellhs7Heap: HeapType;
  var Labellhs7Mask: MaskType;
  var boolCur_1: bool;
  var Used_3Heap: HeapType;
  var Used_3Mask: MaskType;
  var b_6: bool;
  var rcvLocal: Ref;
  var neededTransfer: Perm;
  var initNeededTransfer: Perm;
  var accVar2: bool;
  var maskTransfer: Perm;
  var takeTransfer: Perm;
  var b_7: bool;
  var Result_1Heap: HeapType;
  var Result_1Mask: MaskType;
  var PreCallHeap: HeapType;
  var PreCallMask: MaskType;
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
    Mask := Mask[x, f_7:=Mask[x, f_7] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: x.f := 0 -- apply.vpr@36.3--36.11
    assert {:msg "  Assignment might fail. There might be insufficient permission to access x.f (apply.vpr@36.3--36.11) [130865]"}
      FullPerm == Mask[x, f_7];
    Heap := Heap[x, f_7:=0];
    assume state(Heap, Mask);
  
  // -- Translating statement: package acc(x.f, 1 / 2) --* acc(x.f, write) && x.f == 0 {
  // } -- apply.vpr@37.3--37.51
    havoc Ops_3Heap;
    Ops_3Mask := ZeroMask;
    b_5 := b_5 && state(Ops_3Heap, Ops_3Mask);
    havoc Used_2Heap;
    Used_2Mask := ZeroMask;
    b_4 := b_4 && state(Used_2Heap, Used_2Mask);
    // Inhaling left hand side of current wand into hypothetical state
    if (b_5) {
      perm := 1 / 2;
      assert {:msg "  Packaging wand might fail. Fraction 1 / 2 might be negative. (apply.vpr@37.3--37.51) [130866]"}
        perm >= NoPerm;
      b_5 := b_5 && (perm > NoPerm ==> x != null);
      Ops_3Mask := Ops_3Mask[x, f_7:=Ops_3Mask[x, f_7] + perm];
      b_5 := b_5 && state(Ops_3Heap, Ops_3Mask);
    }
    b_5 := b_5 && state(Ops_3Heap, Ops_3Mask);
    
    // -- Translating statement: label lhs7 -- apply.vpr@37.11--37.51
      lhs7:
      Labellhs7Heap := Ops_3Heap;
      Labellhs7Mask := Ops_3Mask;
      b_5 := b_5 && state(Ops_3Heap, Ops_3Mask);
    boolCur_1 := true;
    // Translating exec of non-ghost operationacc(x.f, write) && x.f == 0
    havoc Used_3Heap;
    Used_3Mask := ZeroMask;
    b_6 := b_6 && state(Used_3Heap, Used_3Mask);
    
    // -- Transfer of acc(x.f, write)
      rcvLocal := x;
      neededTransfer := FullPerm;
      initNeededTransfer := Used_3Mask[rcvLocal, f_7] + neededTransfer;
      assert {:msg "  Packaging wand might fail. Fraction acc(x.f, write) might be negative. (apply.vpr@37.3--37.51) [130867]"}
        neededTransfer >= 0.000000000;
      
      // -- transfer code for top state of stack
        // accumulate constraints which need to be satisfied for transfer to occur
        accVar2 := true;
        // actual code for the transfer from current state on stack
        if ((((b_5 && b_5) && b_6) && accVar2) && neededTransfer > 0.000000000) {
          maskTransfer := Ops_3Mask[rcvLocal, f_7];
          if (neededTransfer <= maskTransfer) {
            takeTransfer := neededTransfer;
          } else {
            takeTransfer := maskTransfer;
          }
          if (takeTransfer > 0.000000000) {
            neededTransfer := neededTransfer - takeTransfer;
            Used_3Mask := Used_3Mask[rcvLocal, f_7:=Used_3Mask[rcvLocal, f_7] + takeTransfer];
            b_6 := b_6 && state(Used_3Heap, Used_3Mask);
            b_6 := b_6 && Ops_3Heap[rcvLocal, f_7] == Used_3Heap[rcvLocal, f_7];
            Ops_3Mask := Ops_3Mask[rcvLocal, f_7:=Ops_3Mask[rcvLocal, f_7] - takeTransfer];
          }
        }
      
      // -- transfer code for top state of stack
        // accumulate constraints which need to be satisfied for transfer to occur
        accVar2 := true;
        // actual code for the transfer from current state on stack
        if ((((b_5 && b_5) && b_6) && accVar2) && neededTransfer > 0.000000000) {
          maskTransfer := Mask[rcvLocal, f_7];
          if (neededTransfer <= maskTransfer) {
            takeTransfer := neededTransfer;
          } else {
            takeTransfer := maskTransfer;
          }
          if (takeTransfer > 0.000000000) {
            neededTransfer := neededTransfer - takeTransfer;
            Used_3Mask := Used_3Mask[rcvLocal, f_7:=Used_3Mask[rcvLocal, f_7] + takeTransfer];
            b_6 := b_6 && state(Used_3Heap, Used_3Mask);
            b_6 := b_6 && Heap[rcvLocal, f_7] == Used_3Heap[rcvLocal, f_7];
            Mask := Mask[rcvLocal, f_7:=Mask[rcvLocal, f_7] - takeTransfer];
            Heap := Heap[null, wand_1#sm(x, 1 / 2, x, FullPerm, x, 0):=Heap[null, wand_1#sm(x, 1 / 2, x, FullPerm, x, 0)][x, f_7:=true]];
          }
        }
      assert {:msg "  Packaging wand might fail. There might be insufficient permission to access x.f (apply.vpr@37.3--37.51) [130868]"}
        (b_5 && b_5) && b_6 ==> neededTransfer == 0.000000000 && Used_3Mask[rcvLocal, f_7] == initNeededTransfer;
      
      // -- Creating state which is the sum of the two previously built up states
        b_7 := b_5 && b_6;
        b_7 := b_7 && state(Result_1Heap, Result_1Mask);
        b_7 := b_7 && sumMask(Result_1Mask, Ops_3Mask, Used_3Mask);
        b_7 := (b_7 && IdenticalOnKnownLocations(Ops_3Heap, Result_1Heap, Ops_3Mask)) && IdenticalOnKnownLocations(Used_3Heap, Result_1Heap, Used_3Mask);
        b_7 := b_7 && state(Result_1Heap, Result_1Mask);
      b_5 := b_5 && b_7;
    if ((b_5 && b_5) && b_6) {
      if (b_5) {
        
        // -- Check definedness of x.f == 0
          assert {:msg "  Packaging wand might fail. There might be insufficient permission to access x.f (apply.vpr@37.3--37.51) [130869]"}
            HasDirectPerm(Result_1Mask, x, f_7);
      }
    }
    assert {:msg "  Packaging wand might fail. Assertion x.f == 0 might not hold. (apply.vpr@37.3--37.51) [130870]"}
      (b_5 && b_5) && b_6 ==> Result_1Heap[x, f_7] == 0;
    Mask := Mask[null, wand_1(x, 1 / 2, x, FullPerm, x, 0):=Mask[null, wand_1(x, 1 / 2, x, FullPerm, x, 0)] + FullPerm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: test02(x) -- apply.vpr@38.3--38.12
    PreCallHeap := Heap;
    PreCallMask := Mask;
    
    // -- Exhaling precondition
      ExhaleWellDef0Heap := Heap;
      ExhaleWellDef0Mask := Mask;
      // permLe
      assert {:msg "  The precondition of method test02 might not hold. Magic wand instance not found. (apply.vpr@38.3--38.12) [130871]"}
        FullPerm <= Mask[null, wand_1(x, 1 / 2, x, FullPerm, x, 0)];
      Mask := Mask[null, wand_1(x, 1 / 2, x, FullPerm, x, 0):=Mask[null, wand_1(x, 1 / 2, x, FullPerm, x, 0)] - FullPerm];
      perm := 1 / 2;
      assert {:msg "  The precondition of method test02 might not hold. Fraction 1 / 2 might be negative. (apply.vpr@38.3--38.12) [130872]"}
        perm >= NoPerm;
      if (perm != NoPerm) {
        assert {:msg "  The precondition of method test02 might not hold. There might be insufficient permission to access x.f (apply.vpr@38.3--38.12) [130873]"}
          perm <= Mask[x, f_7];
      }
      Mask := Mask[x, f_7:=Mask[x, f_7] - perm];
      // Finish exhale
      havoc ExhaleHeap;
      assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
      Heap := ExhaleHeap;
    
    // -- Inhaling postcondition
      perm := FullPerm;
      assume x != null;
      Mask := Mask[x, f_7:=Mask[x, f_7] + perm];
      assume state(Heap, Mask);
      assume Heap[x, f_7] == 0;
      assume state(Heap, Mask);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test05
// ==================================================

procedure test05(x: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var Ops_5Heap: HeapType;
  var Ops_5Mask: MaskType;
  var b_9: bool;
  var Used_4Heap: HeapType;
  var Used_4Mask: MaskType;
  var b_8: bool;
  var Labellhs9Heap: HeapType;
  var Labellhs9Mask: MaskType;
  var boolCur_2: bool;
  var Used_5Heap: HeapType;
  var Used_5Mask: MaskType;
  var b_10: bool;
  var rcvLocal: Ref;
  var neededTransfer: Perm;
  var initNeededTransfer: Perm;
  var accVar2: bool;
  var maskTransfer: Perm;
  var takeTransfer: Perm;
  var b_11: bool;
  var Result_2Heap: HeapType;
  var Result_2Mask: MaskType;
  var PreCallHeap: HeapType;
  var PreCallMask: MaskType;
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
    Mask := Mask[x, f_7:=Mask[x, f_7] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: x.f := 0 -- apply.vpr@44.3--44.11
    assert {:msg "  Assignment might fail. There might be insufficient permission to access x.f (apply.vpr@44.3--44.11) [130874]"}
      FullPerm == Mask[x, f_7];
    Heap := Heap[x, f_7:=0];
    assume state(Heap, Mask);
  
  // -- Translating statement: package acc(x.f, 1 / 2) --* acc(x.f, 2 / 3) && x.f == 0 {
  // } -- apply.vpr@45.3--45.56
    havoc Ops_5Heap;
    Ops_5Mask := ZeroMask;
    b_9 := b_9 && state(Ops_5Heap, Ops_5Mask);
    havoc Used_4Heap;
    Used_4Mask := ZeroMask;
    b_8 := b_8 && state(Used_4Heap, Used_4Mask);
    // Inhaling left hand side of current wand into hypothetical state
    if (b_9) {
      perm := 1 / 2;
      assert {:msg "  Packaging wand might fail. Fraction 1 / 2 might be negative. (apply.vpr@45.3--45.56) [130875]"}
        perm >= NoPerm;
      b_9 := b_9 && (perm > NoPerm ==> x != null);
      Ops_5Mask := Ops_5Mask[x, f_7:=Ops_5Mask[x, f_7] + perm];
      b_9 := b_9 && state(Ops_5Heap, Ops_5Mask);
    }
    b_9 := b_9 && state(Ops_5Heap, Ops_5Mask);
    
    // -- Translating statement: label lhs9 -- apply.vpr@45.11--45.56
      lhs9:
      Labellhs9Heap := Ops_5Heap;
      Labellhs9Mask := Ops_5Mask;
      b_9 := b_9 && state(Ops_5Heap, Ops_5Mask);
    boolCur_2 := true;
    // Translating exec of non-ghost operationacc(x.f, 2 / 3) && x.f == 0
    havoc Used_5Heap;
    Used_5Mask := ZeroMask;
    b_10 := b_10 && state(Used_5Heap, Used_5Mask);
    
    // -- Transfer of acc(x.f, 2 / 3)
      rcvLocal := x;
      neededTransfer := 2 / 3;
      initNeededTransfer := Used_5Mask[rcvLocal, f_7] + neededTransfer;
      assert {:msg "  Packaging wand might fail. Fraction acc(x.f, 2 / 3) might be negative. (apply.vpr@45.3--45.56) [130876]"}
        neededTransfer >= 0.000000000;
      
      // -- transfer code for top state of stack
        // accumulate constraints which need to be satisfied for transfer to occur
        accVar2 := true;
        // actual code for the transfer from current state on stack
        if ((((b_9 && b_9) && b_10) && accVar2) && neededTransfer > 0.000000000) {
          maskTransfer := Ops_5Mask[rcvLocal, f_7];
          if (neededTransfer <= maskTransfer) {
            takeTransfer := neededTransfer;
          } else {
            takeTransfer := maskTransfer;
          }
          if (takeTransfer > 0.000000000) {
            neededTransfer := neededTransfer - takeTransfer;
            Used_5Mask := Used_5Mask[rcvLocal, f_7:=Used_5Mask[rcvLocal, f_7] + takeTransfer];
            b_10 := b_10 && state(Used_5Heap, Used_5Mask);
            b_10 := b_10 && Ops_5Heap[rcvLocal, f_7] == Used_5Heap[rcvLocal, f_7];
            Ops_5Mask := Ops_5Mask[rcvLocal, f_7:=Ops_5Mask[rcvLocal, f_7] - takeTransfer];
          }
        }
      
      // -- transfer code for top state of stack
        // accumulate constraints which need to be satisfied for transfer to occur
        accVar2 := true;
        // actual code for the transfer from current state on stack
        if ((((b_9 && b_9) && b_10) && accVar2) && neededTransfer > 0.000000000) {
          maskTransfer := Mask[rcvLocal, f_7];
          if (neededTransfer <= maskTransfer) {
            takeTransfer := neededTransfer;
          } else {
            takeTransfer := maskTransfer;
          }
          if (takeTransfer > 0.000000000) {
            neededTransfer := neededTransfer - takeTransfer;
            Used_5Mask := Used_5Mask[rcvLocal, f_7:=Used_5Mask[rcvLocal, f_7] + takeTransfer];
            b_10 := b_10 && state(Used_5Heap, Used_5Mask);
            b_10 := b_10 && Heap[rcvLocal, f_7] == Used_5Heap[rcvLocal, f_7];
            Mask := Mask[rcvLocal, f_7:=Mask[rcvLocal, f_7] - takeTransfer];
            Heap := Heap[null, wand_2#sm(x, 1 / 2, x, 2 / 3, x, 0):=Heap[null, wand_2#sm(x, 1 / 2, x, 2 / 3, x, 0)][x, f_7:=true]];
          }
        }
      assert {:msg "  Packaging wand might fail. There might be insufficient permission to access x.f (apply.vpr@45.3--45.56) [130877]"}
        (b_9 && b_9) && b_10 ==> neededTransfer == 0.000000000 && Used_5Mask[rcvLocal, f_7] == initNeededTransfer;
      
      // -- Creating state which is the sum of the two previously built up states
        b_11 := b_9 && b_10;
        b_11 := b_11 && state(Result_2Heap, Result_2Mask);
        b_11 := b_11 && sumMask(Result_2Mask, Ops_5Mask, Used_5Mask);
        b_11 := (b_11 && IdenticalOnKnownLocations(Ops_5Heap, Result_2Heap, Ops_5Mask)) && IdenticalOnKnownLocations(Used_5Heap, Result_2Heap, Used_5Mask);
        b_11 := b_11 && state(Result_2Heap, Result_2Mask);
      b_9 := b_9 && b_11;
    if ((b_9 && b_9) && b_10) {
      if (b_9) {
        
        // -- Check definedness of x.f == 0
          assert {:msg "  Packaging wand might fail. There might be insufficient permission to access x.f (apply.vpr@45.3--45.56) [130878]"}
            HasDirectPerm(Result_2Mask, x, f_7);
      }
    }
    assert {:msg "  Packaging wand might fail. Assertion x.f == 0 might not hold. (apply.vpr@45.3--45.56) [130879]"}
      (b_9 && b_9) && b_10 ==> Result_2Heap[x, f_7] == 0;
    Mask := Mask[null, wand_2(x, 1 / 2, x, 2 / 3, x, 0):=Mask[null, wand_2(x, 1 / 2, x, 2 / 3, x, 0)] + FullPerm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: test02(x) -- apply.vpr@48.3--48.12
    PreCallHeap := Heap;
    PreCallMask := Mask;
    
    // -- Exhaling precondition
      ExhaleWellDef0Heap := Heap;
      ExhaleWellDef0Mask := Mask;
      // permLe
      assert {:msg "  The precondition of method test02 might not hold. Magic wand instance not found. (apply.vpr@48.3--48.12) [130880]"}
        FullPerm <= Mask[null, wand_1(x, 1 / 2, x, FullPerm, x, 0)];
      Mask := Mask[null, wand_1(x, 1 / 2, x, FullPerm, x, 0):=Mask[null, wand_1(x, 1 / 2, x, FullPerm, x, 0)] - FullPerm];
      perm := 1 / 2;
      assert {:msg "  The precondition of method test02 might not hold. Fraction 1 / 2 might be negative. (apply.vpr@48.3--48.12) [130881]"}
        perm >= NoPerm;
      if (perm != NoPerm) {
        assert {:msg "  The precondition of method test02 might not hold. There might be insufficient permission to access x.f (apply.vpr@48.3--48.12) [130882]"}
          perm <= Mask[x, f_7];
      }
      Mask := Mask[x, f_7:=Mask[x, f_7] - perm];
      // Finish exhale
      havoc ExhaleHeap;
      assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
      Heap := ExhaleHeap;
    
    // -- Inhaling postcondition
      perm := FullPerm;
      assume x != null;
      Mask := Mask[x, f_7:=Mask[x, f_7] + perm];
      assume state(Heap, Mask);
      assume Heap[x, f_7] == 0;
      assume state(Heap, Mask);
    assume state(Heap, Mask);
}