// 
// Translation of Viper program.
// 
// Date:         2024-12-27 02:15:59
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/quantifiedpredicates/basic/independence.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/quantifiedpredicates/basic/independence-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
axiom (forall o_22: Ref, f_30: (Field NormalField Ref), Heap: HeapType ::
  { Heap[o_22, f_30] }
  Heap[o_22, $allocated] ==> Heap[Heap[o_22, f_30], $allocated]
);
function  succHeap(Heap0: HeapType, Heap1: HeapType): bool;
function  succHeapTrans(Heap0: HeapType, Heap1: HeapType): bool;
function  IdenticalOnKnownLocations(Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType): bool;
function  IsPredicateField<A, B>(f_1: (Field A B)): bool;
function  IsWandField<A, B>(f_1: (Field A B)): bool;
function  getPredWandId<A, B>(f_1: (Field A B)): int;
// Frame all locations with direct permissions
axiom (forall <A, B> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_41: Ref, f_27: (Field A B) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_41, f_27] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, o_41, f_27) ==> Heap[o_41, f_27] == ExhaleHeap[o_41, f_27]
);
// Frame all predicate mask locations of predicates with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_28: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_28), ExhaleHeap[null, PredicateMaskField(pm_f_28)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_28) && IsPredicateField(pm_f_28) ==> Heap[null, PredicateMaskField(pm_f_28)] == ExhaleHeap[null, PredicateMaskField(pm_f_28)]
);
// Frame all locations with known folded permissions
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_28: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_28) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_28) && IsPredicateField(pm_f_28) ==> (forall <A, B> o2_28: Ref, f_27: (Field A B) ::
    { ExhaleHeap[o2_28, f_27] }
    Heap[null, PredicateMaskField(pm_f_28)][o2_28, f_27] ==> Heap[o2_28, f_27] == ExhaleHeap[o2_28, f_27]
  )
);
// Frame all wand mask locations of wands with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_28: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_28), ExhaleHeap[null, WandMaskField(pm_f_28)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_28) && IsWandField(pm_f_28) ==> Heap[null, WandMaskField(pm_f_28)] == ExhaleHeap[null, WandMaskField(pm_f_28)]
);
// Frame all locations in the footprint of magic wands
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_28: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_28) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_28) && IsWandField(pm_f_28) ==> (forall <A, B> o2_28: Ref, f_27: (Field A B) ::
    { ExhaleHeap[o2_28, f_27] }
    Heap[null, WandMaskField(pm_f_28)][o2_28, f_27] ==> Heap[o2_28, f_27] == ExhaleHeap[o2_28, f_27]
  )
);
// All previously-allocated references are still allocated
axiom (forall Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_41: Ref ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_41, $allocated] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> Heap[o_41, $allocated] ==> ExhaleHeap[o_41, $allocated]
);
// Updated Heaps are Successor Heaps
axiom (forall <A, B> Heap: HeapType, o_22: Ref, f_12: (Field A B), v: B ::
  { Heap[o_22, f_12:=v] }
  succHeap(Heap, Heap[o_22, f_12:=v])
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

function  neverTriggered1(x_1: int): bool;
function  neverTriggered2(x_4: int): bool;
function  neverTriggered3(x_1: int): bool;
function  neverTriggered4(x_4: int): bool;
function  neverTriggered5(x_1: int): bool;
function  neverTriggered6(x_4: int): bool;
function  neverTriggered7(x_1: int): bool;
function  neverTriggered8(x_4: int): bool;
function  neverTriggered9(x_1: int): bool;
function  neverTriggered10(x_4: int): bool;
// ==================================================
// Functions used as inverse of receiver expressions in quantified permissions during inhale and exhale
// ==================================================

function  invRecv1(a_2: Ref, b_24: int): int;
function  invRecv2(a_1_1: Ref, b_1_2: int): int;
function  invRecv3(a_2: Ref, b_24: int): int;
function  invRecv4(a_1_1: Ref, b_1_2: int): int;
function  invRecv5(a_2: Ref, b_24: int): int;
function  invRecv6(a_1_1: Ref, b_1_2: int): int;
function  invRecv7(a_2: Ref, b_24: int): int;
function  invRecv8(a_1_1: Ref, b_1_2: int): int;
function  invRecv9(a_2: Ref, b_24: int): int;
function  invRecv10(a_1_1: Ref, b_1_2: int): int;
// ==================================================
// Functions used to represent the range of the projection of each QP instance onto its receiver expressions for quantified permissions during inhale and exhale
// ==================================================

function  qpRange1(a_2: Ref, b_24: int): bool;
function  qpRange2(a_1_1: Ref, b_1_2: int): bool;
function  qpRange3(a_2: Ref, b_24: int): bool;
function  qpRange4(a_1_1: Ref, b_1_2: int): bool;
function  qpRange5(a_2: Ref, b_24: int): bool;
function  qpRange6(a_1_1: Ref, b_1_2: int): bool;
function  qpRange7(a_2: Ref, b_24: int): bool;
function  qpRange8(a_1_1: Ref, b_1_2: int): bool;
function  qpRange9(a_2: Ref, b_24: int): bool;
function  qpRange10(a_1_1: Ref, b_1_2: int): bool;

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
function  wand(arg1: Ref, arg2: Perm, arg3: bool, arg4: Ref, arg5: Perm, arg6: Ref, arg7: int): Field WandType_wand int;
function  wand#sm(arg1: Ref, arg2: Perm, arg3: bool, arg4: Ref, arg5: Perm, arg6: Ref, arg7: int): Field WandType_wand PMaskType;
function  wand#ft(arg1: Ref, arg2: Perm, arg3: bool, arg4: Ref, arg5: Perm, arg6: Ref, arg7: int): Field WandType_wand FrameType;
axiom (forall arg1: Ref, arg2: Perm, arg3: bool, arg4: Ref, arg5: Perm, arg6: Ref, arg7: int ::
  { wand(arg1, arg2, arg3, arg4, arg5, arg6, arg7) }
  IsWandField(wand(arg1, arg2, arg3, arg4, arg5, arg6, arg7))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: bool, arg4: Ref, arg5: Perm, arg6: Ref, arg7: int ::
  { wand#ft(arg1, arg2, arg3, arg4, arg5, arg6, arg7) }
  IsWandField(wand#ft(arg1, arg2, arg3, arg4, arg5, arg6, arg7))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: bool, arg4: Ref, arg5: Perm, arg6: Ref, arg7: int ::
  { wand(arg1, arg2, arg3, arg4, arg5, arg6, arg7) }
  !IsPredicateField(wand(arg1, arg2, arg3, arg4, arg5, arg6, arg7))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: bool, arg4: Ref, arg5: Perm, arg6: Ref, arg7: int ::
  { wand#ft(arg1, arg2, arg3, arg4, arg5, arg6, arg7) }
  !IsPredicateField(wand#ft(arg1, arg2, arg3, arg4, arg5, arg6, arg7))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: bool, arg4: Ref, arg5: Perm, arg6: Ref, arg7: int ::
  { WandMaskField(wand#ft(arg1, arg2, arg3, arg4, arg5, arg6, arg7)) }
  wand#sm(arg1, arg2, arg3, arg4, arg5, arg6, arg7) == WandMaskField(wand#ft(arg1, arg2, arg3, arg4, arg5, arg6, arg7))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: bool, arg4: Ref, arg5: Perm, arg6: Ref, arg7: int ::
  { wand(arg1, arg2, arg3, arg4, arg5, arg6, arg7) }
  getPredWandId(wand(arg1, arg2, arg3, arg4, arg5, arg6, arg7)) == 2
);
axiom (forall arg1: Ref, arg2: Perm, arg3: bool, arg4: Ref, arg5: Perm, arg6: Ref, arg7: int, arg1_2: Ref, arg2_2: Perm, arg3_2: bool, arg4_2: Ref, arg5_2: Perm, arg6_2: Ref, arg7_2: int ::
  { wand(arg1, arg2, arg3, arg4, arg5, arg6, arg7), wand(arg1_2, arg2_2, arg3_2, arg4_2, arg5_2, arg6_2, arg7_2) }
  wand(arg1, arg2, arg3, arg4, arg5, arg6, arg7) == wand(arg1_2, arg2_2, arg3_2, arg4_2, arg5_2, arg6_2, arg7_2) ==> arg1 == arg1_2 && (arg2 == arg2_2 && (arg3 == arg3_2 && (arg4 == arg4_2 && (arg5 == arg5_2 && (arg6 == arg6_2 && arg7 == arg7_2)))))
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

// ==================================================
// Translation of predicate p1
// ==================================================

type PredicateType_p1;
function  p1(a_2: Ref): Field PredicateType_p1 FrameType;
function  p1#sm(a_2: Ref): Field PredicateType_p1 PMaskType;
axiom (forall a_2: Ref ::
  { PredicateMaskField(p1(a_2)) }
  PredicateMaskField(p1(a_2)) == p1#sm(a_2)
);
axiom (forall a_2: Ref ::
  { p1(a_2) }
  IsPredicateField(p1(a_2))
);
axiom (forall a_2: Ref ::
  { p1(a_2) }
  getPredWandId(p1(a_2)) == 0
);
function  p1#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  p1#everUsed<A>(pred: (Field A FrameType)): bool;
axiom (forall a_2: Ref, a2: Ref ::
  { p1(a_2), p1(a2) }
  p1(a_2) == p1(a2) ==> a_2 == a2
);
axiom (forall a_2: Ref, a2: Ref ::
  { p1#sm(a_2), p1#sm(a2) }
  p1#sm(a_2) == p1#sm(a2) ==> a_2 == a2
);

axiom (forall Heap: HeapType, a_2: Ref ::
  { p1#trigger(Heap, p1(a_2)) }
  p1#everUsed(p1(a_2))
);

procedure p1#definedness(a_2: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  
  // -- Check definedness of predicate body of p1
    
    // -- Initializing the state
      Mask := ZeroMask;
      assume state(Heap, Mask);
      assume AssumePermUpperBound;
      assume Heap[a_2, $allocated];
    perm := FullPerm;
    assume a_2 != null;
    Mask := Mask[a_2, f_7:=Mask[a_2, f_7] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of predicate p2
// ==================================================

type PredicateType_p2;
function  p2(a_2: Ref, b_24: int): Field PredicateType_p2 FrameType;
function  p2#sm(a_2: Ref, b_24: int): Field PredicateType_p2 PMaskType;
axiom (forall a_2: Ref, b_24: int ::
  { PredicateMaskField(p2(a_2, b_24)) }
  PredicateMaskField(p2(a_2, b_24)) == p2#sm(a_2, b_24)
);
axiom (forall a_2: Ref, b_24: int ::
  { p2(a_2, b_24) }
  IsPredicateField(p2(a_2, b_24))
);
axiom (forall a_2: Ref, b_24: int ::
  { p2(a_2, b_24) }
  getPredWandId(p2(a_2, b_24)) == 1
);
function  p2#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  p2#everUsed<A>(pred: (Field A FrameType)): bool;
axiom (forall a_2: Ref, b_24: int, a2: Ref, b2: int ::
  { p2(a_2, b_24), p2(a2, b2) }
  p2(a_2, b_24) == p2(a2, b2) ==> a_2 == a2 && b_24 == b2
);
axiom (forall a_2: Ref, b_24: int, a2: Ref, b2: int ::
  { p2#sm(a_2, b_24), p2#sm(a2, b2) }
  p2#sm(a_2, b_24) == p2#sm(a2, b2) ==> a_2 == a2 && b_24 == b2
);

axiom (forall Heap: HeapType, a_2: Ref, b_24: int ::
  { p2#trigger(Heap, p2(a_2, b_24)) }
  p2#everUsed(p2(a_2, b_24))
);

procedure p2#definedness(a_2: Ref, b_24: int) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  
  // -- Check definedness of predicate body of p2
    
    // -- Initializing the state
      Mask := ZeroMask;
      assume state(Heap, Mask);
      assume AssumePermUpperBound;
      assume Heap[a_2, $allocated];
    perm := FullPerm;
    assume a_2 != null;
    Mask := Mask[a_2, g:=Mask[a_2, g] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method m1
// ==================================================

procedure m1(r_1: Ref) returns ()
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var c: int;
  var QPMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[r_1, $allocated];
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: c := 2 -- independence.vpr@18.2--18.16
    c := 2;
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale (forall x: Int ::x > 0 ==> acc(p2(r, x), write)) -- independence.vpr@19.2--19.48
    
    // -- Check definedness of (forall x: Int ::x > 0 ==> acc(p2(r, x), write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    
    // -- check if receiver acc(p2(r, x), write) is injective
      assert {:msg "  Inhale might fail. Quantified resource p2(r, x) might not be injective. (independence.vpr@19.9--19.48) [107431]"}
        (forall x_1: int, x_1_1: int ::
        { neverTriggered1(x_1), neverTriggered1(x_1_1) }
        (((x_1 != x_1_1 && x_1 > 0) && x_1_1 > 0) && NoPerm < FullPerm) && NoPerm < FullPerm ==> r_1 != r_1 || x_1 != x_1_1
      );
    
    // -- Define Inverse Function
      assume (forall x_1: int ::
        { Heap[null, p2(r_1, x_1)] } { Mask[null, p2(r_1, x_1)] }
        x_1 > 0 && NoPerm < FullPerm ==> invRecv1(r_1, x_1) == x_1 && qpRange1(r_1, x_1)
      );
      assume (forall a_2: Ref, b_24: int ::
        { invRecv1(a_2, b_24) }
        (invRecv1(a_2, b_24) > 0 && NoPerm < FullPerm) && qpRange1(a_2, b_24) ==> r_1 == a_2 && invRecv1(a_2, b_24) == b_24
      );
    
    // -- Define updated permissions
      assume (forall a_2: Ref, b_24: int ::
        { QPMask[null, p2(a_2, b_24)] }
        (invRecv1(a_2, b_24) > 0 && NoPerm < FullPerm) && qpRange1(a_2, b_24) ==> (NoPerm < FullPerm ==> r_1 == a_2 && invRecv1(a_2, b_24) == b_24) && QPMask[null, p2(a_2, b_24)] == Mask[null, p2(a_2, b_24)] + FullPerm
      );
    
    // -- Define independent locations
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        (o_4 != null || !IsPredicateField(f_5)) || getPredWandId(f_5) != 1 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
      assume (forall a_2: Ref, b_24: int ::
        { QPMask[null, p2(a_2, b_24)] }
        !((invRecv1(a_2, b_24) > 0 && NoPerm < FullPerm) && qpRange1(a_2, b_24)) ==> QPMask[null, p2(a_2, b_24)] == Mask[null, p2(a_2, b_24)]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert c == 2 -- independence.vpr@20.2--20.16
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Assert might fail. Assertion c == 2 might not hold. (independence.vpr@20.9--20.15) [107432]"}
      c == 2;
    assume state(Heap, Mask);
  
  // -- Translating statement: exhale (forall x: Int ::x > 0 ==> acc(p2(r, x), write)) -- independence.vpr@21.2--21.48
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of (forall x: Int ::x > 0 ==> acc(p2(r, x), write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    
    // -- check that the permission amount is positive
      
    
    // -- check if receiver acc(p2(r, x), write) is injective
      assert {:msg "  Exhale might fail. Quantified resource p2(r, x) might not be injective. (independence.vpr@21.9--21.48) [107434]"}
        (forall x_4: int, x_4_1: int ::
        { neverTriggered2(x_4), neverTriggered2(x_4_1) }
        (((x_4 != x_4_1 && x_4 > 0) && x_4_1 > 0) && NoPerm < FullPerm) && NoPerm < FullPerm ==> r_1 != r_1 || x_4 != x_4_1
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Exhale might fail. There might be insufficient permission to access p2(r, x) (independence.vpr@21.9--21.48) [107435]"}
        (forall x_4: int ::
        { Heap[null, p2(r_1, x_4)] } { Mask[null, p2(r_1, x_4)] }
        x_4 > 0 ==> Mask[null, p2(r_1, x_4)] >= FullPerm
      );
    
    // -- assumptions for inverse of receiver acc(p2(r, x), write)
      assume (forall x_4: int ::
        { Heap[null, p2(r_1, x_4)] } { Mask[null, p2(r_1, x_4)] }
        x_4 > 0 && NoPerm < FullPerm ==> invRecv2(r_1, x_4) == x_4 && qpRange2(r_1, x_4)
      );
      assume (forall a_1_1: Ref, b_1_2: int ::
        { invRecv2(a_1_1, b_1_2) }
        (invRecv2(a_1_1, b_1_2) > 0 && NoPerm < FullPerm) && qpRange2(a_1_1, b_1_2) ==> r_1 == a_1_1 && invRecv2(a_1_1, b_1_2) == b_1_2
      );
    
    // -- assume permission updates
      assume (forall a_1_1: Ref, b_1_2: int ::
        { QPMask[null, p2(a_1_1, b_1_2)] }
        (invRecv2(a_1_1, b_1_2) > 0 && NoPerm < FullPerm) && qpRange2(a_1_1, b_1_2) ==> (r_1 == a_1_1 && invRecv2(a_1_1, b_1_2) == b_1_2) && QPMask[null, p2(a_1_1, b_1_2)] == Mask[null, p2(a_1_1, b_1_2)] - FullPerm
      );
      assume (forall a_1_1: Ref, b_1_2: int ::
        { QPMask[null, p2(a_1_1, b_1_2)] }
        !((invRecv2(a_1_1, b_1_2) > 0 && NoPerm < FullPerm) && qpRange2(a_1_1, b_1_2)) ==> QPMask[null, p2(a_1_1, b_1_2)] == Mask[null, p2(a_1_1, b_1_2)]
      );
    
    // -- assume permission updates for independent locations 
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        (o_4 != null || !IsPredicateField(f_5)) || getPredWandId(f_5) != 1 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
    assume state(Heap, Mask);
  
  // -- Translating statement: assert c == 2 -- independence.vpr@22.2--22.17
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Assert might fail. Assertion c == 2 might not hold. (independence.vpr@22.10--22.16) [107436]"}
      c == 2;
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method m2
// ==================================================

procedure m2(r_1: Ref, r2: Ref, i: int) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var QPMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var newVersion: FrameType;
  var freshVersion: FrameType;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[r_1, $allocated];
    assume Heap[r2, $allocated];
  
  // -- Checked inhaling of precondition
    assume r_1 != r2;
    assume state(Heap, Mask);
    perm := FullPerm;
    Mask := Mask[null, p2(r2, i):=Mask[null, p2(r2, i)] + perm];
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
    PostMask := PostMask[null, p2(r2, i):=PostMask[null, p2(r2, i)] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: inhale (forall x: Int ::x > 0 ==> acc(p2(r, x), write)) -- independence.vpr@32.2--32.48
    
    // -- Check definedness of (forall x: Int ::x > 0 ==> acc(p2(r, x), write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    
    // -- check if receiver acc(p2(r, x), write) is injective
      assert {:msg "  Inhale might fail. Quantified resource p2(r, x) might not be injective. (independence.vpr@32.9--32.48) [107437]"}
        (forall x_1: int, x_1_1: int ::
        { neverTriggered3(x_1), neverTriggered3(x_1_1) }
        (((x_1 != x_1_1 && x_1 > 0) && x_1_1 > 0) && NoPerm < FullPerm) && NoPerm < FullPerm ==> r_1 != r_1 || x_1 != x_1_1
      );
    
    // -- Define Inverse Function
      assume (forall x_1: int ::
        { Heap[null, p2(r_1, x_1)] } { Mask[null, p2(r_1, x_1)] }
        x_1 > 0 && NoPerm < FullPerm ==> invRecv3(r_1, x_1) == x_1 && qpRange3(r_1, x_1)
      );
      assume (forall a_2: Ref, b_24: int ::
        { invRecv3(a_2, b_24) }
        (invRecv3(a_2, b_24) > 0 && NoPerm < FullPerm) && qpRange3(a_2, b_24) ==> r_1 == a_2 && invRecv3(a_2, b_24) == b_24
      );
    
    // -- Define updated permissions
      assume (forall a_2: Ref, b_24: int ::
        { QPMask[null, p2(a_2, b_24)] }
        (invRecv3(a_2, b_24) > 0 && NoPerm < FullPerm) && qpRange3(a_2, b_24) ==> (NoPerm < FullPerm ==> r_1 == a_2 && invRecv3(a_2, b_24) == b_24) && QPMask[null, p2(a_2, b_24)] == Mask[null, p2(a_2, b_24)] + FullPerm
      );
    
    // -- Define independent locations
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        (o_4 != null || !IsPredicateField(f_5)) || getPredWandId(f_5) != 1 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
      assume (forall a_2: Ref, b_24: int ::
        { QPMask[null, p2(a_2, b_24)] }
        !((invRecv3(a_2, b_24) > 0 && NoPerm < FullPerm) && qpRange3(a_2, b_24)) ==> QPMask[null, p2(a_2, b_24)] == Mask[null, p2(a_2, b_24)]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: unfold acc(p2(r2, i), write) -- independence.vpr@33.2--33.18
    assume p2#trigger(Heap, p2(r2, i));
    assume Heap[null, p2(r2, i)] == FrameFragment(Heap[r2, g]);
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Unfolding p2(r2, i) might fail. There might be insufficient permission to access p2(r2, i) (independence.vpr@33.2--33.18) [107440]"}
        perm <= Mask[null, p2(r2, i)];
    }
    Mask := Mask[null, p2(r2, i):=Mask[null, p2(r2, i)] - perm];
    
    // -- Update version of predicate
      if (!HasDirectPerm(Mask, null, p2(r2, i))) {
        havoc newVersion;
        Heap := Heap[null, p2(r2, i):=newVersion];
      }
    perm := FullPerm;
    assume r2 != null;
    Mask := Mask[r2, g:=Mask[r2, g] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(p2(r2, i), write) -- independence.vpr@34.2--34.16
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding p2(r2, i) might fail. There might be insufficient permission to access r2.g (independence.vpr@34.2--34.16) [107444]"}
        perm <= Mask[r2, g];
    }
    Mask := Mask[r2, g:=Mask[r2, g] - perm];
    perm := FullPerm;
    Mask := Mask[null, p2(r2, i):=Mask[null, p2(r2, i)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume p2#trigger(Heap, p2(r2, i));
    assume Heap[null, p2(r2, i)] == FrameFragment(Heap[r2, g]);
    if (!HasDirectPerm(Mask, null, p2(r2, i))) {
      Heap := Heap[null, p2#sm(r2, i):=ZeroPMask];
      havoc freshVersion;
      Heap := Heap[null, p2(r2, i):=freshVersion];
    }
    Heap := Heap[null, p2#sm(r2, i):=Heap[null, p2#sm(r2, i)][r2, g:=true]];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: exhale (forall x: Int ::x > 0 ==> acc(p2(r, x), write)) -- independence.vpr@35.2--35.48
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of (forall x: Int ::x > 0 ==> acc(p2(r, x), write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    
    // -- check that the permission amount is positive
      
    
    // -- check if receiver acc(p2(r, x), write) is injective
      assert {:msg "  Exhale might fail. Quantified resource p2(r, x) might not be injective. (independence.vpr@35.9--35.48) [107447]"}
        (forall x_4: int, x_4_1: int ::
        { neverTriggered4(x_4), neverTriggered4(x_4_1) }
        (((x_4 != x_4_1 && x_4 > 0) && x_4_1 > 0) && NoPerm < FullPerm) && NoPerm < FullPerm ==> r_1 != r_1 || x_4 != x_4_1
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Exhale might fail. There might be insufficient permission to access p2(r, x) (independence.vpr@35.9--35.48) [107448]"}
        (forall x_4: int ::
        { Heap[null, p2(r_1, x_4)] } { Mask[null, p2(r_1, x_4)] }
        x_4 > 0 ==> Mask[null, p2(r_1, x_4)] >= FullPerm
      );
    
    // -- assumptions for inverse of receiver acc(p2(r, x), write)
      assume (forall x_4: int ::
        { Heap[null, p2(r_1, x_4)] } { Mask[null, p2(r_1, x_4)] }
        x_4 > 0 && NoPerm < FullPerm ==> invRecv4(r_1, x_4) == x_4 && qpRange4(r_1, x_4)
      );
      assume (forall a_1_1: Ref, b_1_2: int ::
        { invRecv4(a_1_1, b_1_2) }
        (invRecv4(a_1_1, b_1_2) > 0 && NoPerm < FullPerm) && qpRange4(a_1_1, b_1_2) ==> r_1 == a_1_1 && invRecv4(a_1_1, b_1_2) == b_1_2
      );
    
    // -- assume permission updates
      assume (forall a_1_1: Ref, b_1_2: int ::
        { QPMask[null, p2(a_1_1, b_1_2)] }
        (invRecv4(a_1_1, b_1_2) > 0 && NoPerm < FullPerm) && qpRange4(a_1_1, b_1_2) ==> (r_1 == a_1_1 && invRecv4(a_1_1, b_1_2) == b_1_2) && QPMask[null, p2(a_1_1, b_1_2)] == Mask[null, p2(a_1_1, b_1_2)] - FullPerm
      );
      assume (forall a_1_1: Ref, b_1_2: int ::
        { QPMask[null, p2(a_1_1, b_1_2)] }
        !((invRecv4(a_1_1, b_1_2) > 0 && NoPerm < FullPerm) && qpRange4(a_1_1, b_1_2)) ==> QPMask[null, p2(a_1_1, b_1_2)] == Mask[null, p2(a_1_1, b_1_2)]
      );
    
    // -- assume permission updates for independent locations 
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        (o_4 != null || !IsPredicateField(f_5)) || getPredWandId(f_5) != 1 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
    assume state(Heap, Mask);
  
  // -- Translating statement: unfold acc(p2(r2, i), write) -- independence.vpr@36.2--36.18
    assume p2#trigger(Heap, p2(r2, i));
    assume Heap[null, p2(r2, i)] == FrameFragment(Heap[r2, g]);
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Unfolding p2(r2, i) might fail. There might be insufficient permission to access p2(r2, i) (independence.vpr@36.2--36.18) [107451]"}
        perm <= Mask[null, p2(r2, i)];
    }
    Mask := Mask[null, p2(r2, i):=Mask[null, p2(r2, i)] - perm];
    
    // -- Update version of predicate
      if (!HasDirectPerm(Mask, null, p2(r2, i))) {
        havoc newVersion;
        Heap := Heap[null, p2(r2, i):=newVersion];
      }
    perm := FullPerm;
    assume r2 != null;
    Mask := Mask[r2, g:=Mask[r2, g] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(p2(r2, i), write) -- independence.vpr@37.2--37.16
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding p2(r2, i) might fail. There might be insufficient permission to access r2.g (independence.vpr@37.2--37.16) [107455]"}
        perm <= Mask[r2, g];
    }
    Mask := Mask[r2, g:=Mask[r2, g] - perm];
    perm := FullPerm;
    Mask := Mask[null, p2(r2, i):=Mask[null, p2(r2, i)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume p2#trigger(Heap, p2(r2, i));
    assume Heap[null, p2(r2, i)] == FrameFragment(Heap[r2, g]);
    if (!HasDirectPerm(Mask, null, p2(r2, i))) {
      Heap := Heap[null, p2#sm(r2, i):=ZeroPMask];
      havoc freshVersion;
      Heap := Heap[null, p2(r2, i):=freshVersion];
    }
    Heap := Heap[null, p2#sm(r2, i):=Heap[null, p2#sm(r2, i)][r2, g:=true]];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of m2 might not hold. There might be insufficient permission to access p2(r2, i) (independence.vpr@30.9--30.23) [107457]"}
        perm <= Mask[null, p2(r2, i)];
    }
    Mask := Mask[null, p2(r2, i):=Mask[null, p2(r2, i)] - perm];
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method m3
// ==================================================

procedure m3(r_1: Ref, r2: Ref, i: int) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var QPMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var newVersion: FrameType;
  var freshVersion: FrameType;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[r_1, $allocated];
    assume Heap[r2, $allocated];
  
  // -- Checked inhaling of precondition
    assume r_1 != r2;
    assume state(Heap, Mask);
    perm := FullPerm;
    Mask := Mask[null, p2(r_1, -1):=Mask[null, p2(r_1, -1)] + perm];
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
    PostMask := PostMask[null, p2(r_1, -1):=PostMask[null, p2(r_1, -1)] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: inhale (forall x: Int ::x > 0 ==> acc(p2(r, x), write)) -- independence.vpr@46.2--46.48
    
    // -- Check definedness of (forall x: Int ::x > 0 ==> acc(p2(r, x), write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    
    // -- check if receiver acc(p2(r, x), write) is injective
      assert {:msg "  Inhale might fail. Quantified resource p2(r, x) might not be injective. (independence.vpr@46.9--46.48) [107458]"}
        (forall x_1: int, x_1_1: int ::
        { neverTriggered5(x_1), neverTriggered5(x_1_1) }
        (((x_1 != x_1_1 && x_1 > 0) && x_1_1 > 0) && NoPerm < FullPerm) && NoPerm < FullPerm ==> r_1 != r_1 || x_1 != x_1_1
      );
    
    // -- Define Inverse Function
      assume (forall x_1: int ::
        { Heap[null, p2(r_1, x_1)] } { Mask[null, p2(r_1, x_1)] }
        x_1 > 0 && NoPerm < FullPerm ==> invRecv5(r_1, x_1) == x_1 && qpRange5(r_1, x_1)
      );
      assume (forall a_2: Ref, b_24: int ::
        { invRecv5(a_2, b_24) }
        (invRecv5(a_2, b_24) > 0 && NoPerm < FullPerm) && qpRange5(a_2, b_24) ==> r_1 == a_2 && invRecv5(a_2, b_24) == b_24
      );
    
    // -- Define updated permissions
      assume (forall a_2: Ref, b_24: int ::
        { QPMask[null, p2(a_2, b_24)] }
        (invRecv5(a_2, b_24) > 0 && NoPerm < FullPerm) && qpRange5(a_2, b_24) ==> (NoPerm < FullPerm ==> r_1 == a_2 && invRecv5(a_2, b_24) == b_24) && QPMask[null, p2(a_2, b_24)] == Mask[null, p2(a_2, b_24)] + FullPerm
      );
    
    // -- Define independent locations
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        (o_4 != null || !IsPredicateField(f_5)) || getPredWandId(f_5) != 1 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
      assume (forall a_2: Ref, b_24: int ::
        { QPMask[null, p2(a_2, b_24)] }
        !((invRecv5(a_2, b_24) > 0 && NoPerm < FullPerm) && qpRange5(a_2, b_24)) ==> QPMask[null, p2(a_2, b_24)] == Mask[null, p2(a_2, b_24)]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: unfold acc(p2(r, -1), write) -- independence.vpr@47.2--47.18
    assume p2#trigger(Heap, p2(r_1, -1));
    assume Heap[null, p2(r_1, -1)] == FrameFragment(Heap[r_1, g]);
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Unfolding p2(r, -1) might fail. There might be insufficient permission to access p2(r, -1) (independence.vpr@47.2--47.18) [107461]"}
        perm <= Mask[null, p2(r_1, -1)];
    }
    Mask := Mask[null, p2(r_1, -1):=Mask[null, p2(r_1, -1)] - perm];
    
    // -- Update version of predicate
      if (!HasDirectPerm(Mask, null, p2(r_1, -1))) {
        havoc newVersion;
        Heap := Heap[null, p2(r_1, -1):=newVersion];
      }
    perm := FullPerm;
    assume r_1 != null;
    Mask := Mask[r_1, g:=Mask[r_1, g] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(p2(r, -1), write) -- independence.vpr@48.2--48.16
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding p2(r, -1) might fail. There might be insufficient permission to access r.g (independence.vpr@48.2--48.16) [107465]"}
        perm <= Mask[r_1, g];
    }
    Mask := Mask[r_1, g:=Mask[r_1, g] - perm];
    perm := FullPerm;
    Mask := Mask[null, p2(r_1, -1):=Mask[null, p2(r_1, -1)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume p2#trigger(Heap, p2(r_1, -1));
    assume Heap[null, p2(r_1, -1)] == FrameFragment(Heap[r_1, g]);
    if (!HasDirectPerm(Mask, null, p2(r_1, -1))) {
      Heap := Heap[null, p2#sm(r_1, -1):=ZeroPMask];
      havoc freshVersion;
      Heap := Heap[null, p2(r_1, -1):=freshVersion];
    }
    Heap := Heap[null, p2#sm(r_1, -1):=Heap[null, p2#sm(r_1, -1)][r_1, g:=true]];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: exhale (forall x: Int ::x > 0 ==> acc(p2(r, x), write)) -- independence.vpr@49.2--49.48
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of (forall x: Int ::x > 0 ==> acc(p2(r, x), write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    
    // -- check that the permission amount is positive
      
    
    // -- check if receiver acc(p2(r, x), write) is injective
      assert {:msg "  Exhale might fail. Quantified resource p2(r, x) might not be injective. (independence.vpr@49.9--49.48) [107468]"}
        (forall x_4: int, x_4_1: int ::
        { neverTriggered6(x_4), neverTriggered6(x_4_1) }
        (((x_4 != x_4_1 && x_4 > 0) && x_4_1 > 0) && NoPerm < FullPerm) && NoPerm < FullPerm ==> r_1 != r_1 || x_4 != x_4_1
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Exhale might fail. There might be insufficient permission to access p2(r, x) (independence.vpr@49.9--49.48) [107469]"}
        (forall x_4: int ::
        { Heap[null, p2(r_1, x_4)] } { Mask[null, p2(r_1, x_4)] }
        x_4 > 0 ==> Mask[null, p2(r_1, x_4)] >= FullPerm
      );
    
    // -- assumptions for inverse of receiver acc(p2(r, x), write)
      assume (forall x_4: int ::
        { Heap[null, p2(r_1, x_4)] } { Mask[null, p2(r_1, x_4)] }
        x_4 > 0 && NoPerm < FullPerm ==> invRecv6(r_1, x_4) == x_4 && qpRange6(r_1, x_4)
      );
      assume (forall a_1_1: Ref, b_1_2: int ::
        { invRecv6(a_1_1, b_1_2) }
        (invRecv6(a_1_1, b_1_2) > 0 && NoPerm < FullPerm) && qpRange6(a_1_1, b_1_2) ==> r_1 == a_1_1 && invRecv6(a_1_1, b_1_2) == b_1_2
      );
    
    // -- assume permission updates
      assume (forall a_1_1: Ref, b_1_2: int ::
        { QPMask[null, p2(a_1_1, b_1_2)] }
        (invRecv6(a_1_1, b_1_2) > 0 && NoPerm < FullPerm) && qpRange6(a_1_1, b_1_2) ==> (r_1 == a_1_1 && invRecv6(a_1_1, b_1_2) == b_1_2) && QPMask[null, p2(a_1_1, b_1_2)] == Mask[null, p2(a_1_1, b_1_2)] - FullPerm
      );
      assume (forall a_1_1: Ref, b_1_2: int ::
        { QPMask[null, p2(a_1_1, b_1_2)] }
        !((invRecv6(a_1_1, b_1_2) > 0 && NoPerm < FullPerm) && qpRange6(a_1_1, b_1_2)) ==> QPMask[null, p2(a_1_1, b_1_2)] == Mask[null, p2(a_1_1, b_1_2)]
      );
    
    // -- assume permission updates for independent locations 
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        (o_4 != null || !IsPredicateField(f_5)) || getPredWandId(f_5) != 1 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
    assume state(Heap, Mask);
  
  // -- Translating statement: unfold acc(p2(r, -1), write) -- independence.vpr@50.2--50.18
    assume p2#trigger(Heap, p2(r_1, -1));
    assume Heap[null, p2(r_1, -1)] == FrameFragment(Heap[r_1, g]);
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Unfolding p2(r, -1) might fail. There might be insufficient permission to access p2(r, -1) (independence.vpr@50.2--50.18) [107472]"}
        perm <= Mask[null, p2(r_1, -1)];
    }
    Mask := Mask[null, p2(r_1, -1):=Mask[null, p2(r_1, -1)] - perm];
    
    // -- Update version of predicate
      if (!HasDirectPerm(Mask, null, p2(r_1, -1))) {
        havoc newVersion;
        Heap := Heap[null, p2(r_1, -1):=newVersion];
      }
    perm := FullPerm;
    assume r_1 != null;
    Mask := Mask[r_1, g:=Mask[r_1, g] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(p2(r, -1), write) -- independence.vpr@51.2--51.16
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding p2(r, -1) might fail. There might be insufficient permission to access r.g (independence.vpr@51.2--51.16) [107476]"}
        perm <= Mask[r_1, g];
    }
    Mask := Mask[r_1, g:=Mask[r_1, g] - perm];
    perm := FullPerm;
    Mask := Mask[null, p2(r_1, -1):=Mask[null, p2(r_1, -1)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume p2#trigger(Heap, p2(r_1, -1));
    assume Heap[null, p2(r_1, -1)] == FrameFragment(Heap[r_1, g]);
    if (!HasDirectPerm(Mask, null, p2(r_1, -1))) {
      Heap := Heap[null, p2#sm(r_1, -1):=ZeroPMask];
      havoc freshVersion;
      Heap := Heap[null, p2(r_1, -1):=freshVersion];
    }
    Heap := Heap[null, p2#sm(r_1, -1):=Heap[null, p2#sm(r_1, -1)][r_1, g:=true]];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of m3 might not hold. There might be insufficient permission to access p2(r, -1) (independence.vpr@44.9--44.23) [107478]"}
        perm <= Mask[null, p2(r_1, -1)];
    }
    Mask := Mask[null, p2(r_1, -1):=Mask[null, p2(r_1, -1)] - perm];
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method m4
// ==================================================

procedure m4(r_1: Ref, i: int) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var QPMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var newVersion: FrameType;
  var freshVersion: FrameType;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[r_1, $allocated];
  
  // -- Checked inhaling of precondition
    perm := FullPerm;
    Mask := Mask[null, p1(r_1):=Mask[null, p1(r_1)] + perm];
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
    PostMask := PostMask[null, p1(r_1):=PostMask[null, p1(r_1)] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: inhale (forall x: Int ::x > 0 ==> acc(p2(r, x), write)) -- independence.vpr@59.3--59.49
    
    // -- Check definedness of (forall x: Int ::x > 0 ==> acc(p2(r, x), write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    
    // -- check if receiver acc(p2(r, x), write) is injective
      assert {:msg "  Inhale might fail. Quantified resource p2(r, x) might not be injective. (independence.vpr@59.10--59.49) [107479]"}
        (forall x_1: int, x_1_1: int ::
        { neverTriggered7(x_1), neverTriggered7(x_1_1) }
        (((x_1 != x_1_1 && x_1 > 0) && x_1_1 > 0) && NoPerm < FullPerm) && NoPerm < FullPerm ==> r_1 != r_1 || x_1 != x_1_1
      );
    
    // -- Define Inverse Function
      assume (forall x_1: int ::
        { Heap[null, p2(r_1, x_1)] } { Mask[null, p2(r_1, x_1)] }
        x_1 > 0 && NoPerm < FullPerm ==> invRecv7(r_1, x_1) == x_1 && qpRange7(r_1, x_1)
      );
      assume (forall a_2: Ref, b_24: int ::
        { invRecv7(a_2, b_24) }
        (invRecv7(a_2, b_24) > 0 && NoPerm < FullPerm) && qpRange7(a_2, b_24) ==> r_1 == a_2 && invRecv7(a_2, b_24) == b_24
      );
    
    // -- Define updated permissions
      assume (forall a_2: Ref, b_24: int ::
        { QPMask[null, p2(a_2, b_24)] }
        (invRecv7(a_2, b_24) > 0 && NoPerm < FullPerm) && qpRange7(a_2, b_24) ==> (NoPerm < FullPerm ==> r_1 == a_2 && invRecv7(a_2, b_24) == b_24) && QPMask[null, p2(a_2, b_24)] == Mask[null, p2(a_2, b_24)] + FullPerm
      );
    
    // -- Define independent locations
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        (o_4 != null || !IsPredicateField(f_5)) || getPredWandId(f_5) != 1 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
      assume (forall a_2: Ref, b_24: int ::
        { QPMask[null, p2(a_2, b_24)] }
        !((invRecv7(a_2, b_24) > 0 && NoPerm < FullPerm) && qpRange7(a_2, b_24)) ==> QPMask[null, p2(a_2, b_24)] == Mask[null, p2(a_2, b_24)]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: unfold acc(p1(r), write) -- independence.vpr@60.3--60.15
    assume p1#trigger(Heap, p1(r_1));
    assume Heap[null, p1(r_1)] == FrameFragment(Heap[r_1, f_7]);
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Unfolding p1(r) might fail. There might be insufficient permission to access p1(r) (independence.vpr@60.3--60.15) [107482]"}
        perm <= Mask[null, p1(r_1)];
    }
    Mask := Mask[null, p1(r_1):=Mask[null, p1(r_1)] - perm];
    
    // -- Update version of predicate
      if (!HasDirectPerm(Mask, null, p1(r_1))) {
        havoc newVersion;
        Heap := Heap[null, p1(r_1):=newVersion];
      }
    perm := FullPerm;
    assume r_1 != null;
    Mask := Mask[r_1, f_7:=Mask[r_1, f_7] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(p1(r), write) -- independence.vpr@61.3--61.13
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding p1(r) might fail. There might be insufficient permission to access r.f (independence.vpr@61.3--61.13) [107486]"}
        perm <= Mask[r_1, f_7];
    }
    Mask := Mask[r_1, f_7:=Mask[r_1, f_7] - perm];
    perm := FullPerm;
    Mask := Mask[null, p1(r_1):=Mask[null, p1(r_1)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume p1#trigger(Heap, p1(r_1));
    assume Heap[null, p1(r_1)] == FrameFragment(Heap[r_1, f_7]);
    if (!HasDirectPerm(Mask, null, p1(r_1))) {
      Heap := Heap[null, p1#sm(r_1):=ZeroPMask];
      havoc freshVersion;
      Heap := Heap[null, p1(r_1):=freshVersion];
    }
    Heap := Heap[null, p1#sm(r_1):=Heap[null, p1#sm(r_1)][r_1, f_7:=true]];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: exhale (forall x: Int ::x > 0 ==> acc(p2(r, x), write)) -- independence.vpr@62.3--62.49
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of (forall x: Int ::x > 0 ==> acc(p2(r, x), write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    
    // -- check that the permission amount is positive
      
    
    // -- check if receiver acc(p2(r, x), write) is injective
      assert {:msg "  Exhale might fail. Quantified resource p2(r, x) might not be injective. (independence.vpr@62.10--62.49) [107489]"}
        (forall x_4: int, x_4_1: int ::
        { neverTriggered8(x_4), neverTriggered8(x_4_1) }
        (((x_4 != x_4_1 && x_4 > 0) && x_4_1 > 0) && NoPerm < FullPerm) && NoPerm < FullPerm ==> r_1 != r_1 || x_4 != x_4_1
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Exhale might fail. There might be insufficient permission to access p2(r, x) (independence.vpr@62.10--62.49) [107490]"}
        (forall x_4: int ::
        { Heap[null, p2(r_1, x_4)] } { Mask[null, p2(r_1, x_4)] }
        x_4 > 0 ==> Mask[null, p2(r_1, x_4)] >= FullPerm
      );
    
    // -- assumptions for inverse of receiver acc(p2(r, x), write)
      assume (forall x_4: int ::
        { Heap[null, p2(r_1, x_4)] } { Mask[null, p2(r_1, x_4)] }
        x_4 > 0 && NoPerm < FullPerm ==> invRecv8(r_1, x_4) == x_4 && qpRange8(r_1, x_4)
      );
      assume (forall a_1_1: Ref, b_1_2: int ::
        { invRecv8(a_1_1, b_1_2) }
        (invRecv8(a_1_1, b_1_2) > 0 && NoPerm < FullPerm) && qpRange8(a_1_1, b_1_2) ==> r_1 == a_1_1 && invRecv8(a_1_1, b_1_2) == b_1_2
      );
    
    // -- assume permission updates
      assume (forall a_1_1: Ref, b_1_2: int ::
        { QPMask[null, p2(a_1_1, b_1_2)] }
        (invRecv8(a_1_1, b_1_2) > 0 && NoPerm < FullPerm) && qpRange8(a_1_1, b_1_2) ==> (r_1 == a_1_1 && invRecv8(a_1_1, b_1_2) == b_1_2) && QPMask[null, p2(a_1_1, b_1_2)] == Mask[null, p2(a_1_1, b_1_2)] - FullPerm
      );
      assume (forall a_1_1: Ref, b_1_2: int ::
        { QPMask[null, p2(a_1_1, b_1_2)] }
        !((invRecv8(a_1_1, b_1_2) > 0 && NoPerm < FullPerm) && qpRange8(a_1_1, b_1_2)) ==> QPMask[null, p2(a_1_1, b_1_2)] == Mask[null, p2(a_1_1, b_1_2)]
      );
    
    // -- assume permission updates for independent locations 
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        (o_4 != null || !IsPredicateField(f_5)) || getPredWandId(f_5) != 1 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
    assume state(Heap, Mask);
  
  // -- Translating statement: unfold acc(p1(r), write) -- independence.vpr@63.3--63.15
    assume p1#trigger(Heap, p1(r_1));
    assume Heap[null, p1(r_1)] == FrameFragment(Heap[r_1, f_7]);
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Unfolding p1(r) might fail. There might be insufficient permission to access p1(r) (independence.vpr@63.3--63.15) [107493]"}
        perm <= Mask[null, p1(r_1)];
    }
    Mask := Mask[null, p1(r_1):=Mask[null, p1(r_1)] - perm];
    
    // -- Update version of predicate
      if (!HasDirectPerm(Mask, null, p1(r_1))) {
        havoc newVersion;
        Heap := Heap[null, p1(r_1):=newVersion];
      }
    perm := FullPerm;
    assume r_1 != null;
    Mask := Mask[r_1, f_7:=Mask[r_1, f_7] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(p1(r), write) -- independence.vpr@64.3--64.13
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding p1(r) might fail. There might be insufficient permission to access r.f (independence.vpr@64.3--64.13) [107497]"}
        perm <= Mask[r_1, f_7];
    }
    Mask := Mask[r_1, f_7:=Mask[r_1, f_7] - perm];
    perm := FullPerm;
    Mask := Mask[null, p1(r_1):=Mask[null, p1(r_1)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume p1#trigger(Heap, p1(r_1));
    assume Heap[null, p1(r_1)] == FrameFragment(Heap[r_1, f_7]);
    if (!HasDirectPerm(Mask, null, p1(r_1))) {
      Heap := Heap[null, p1#sm(r_1):=ZeroPMask];
      havoc freshVersion;
      Heap := Heap[null, p1(r_1):=freshVersion];
    }
    Heap := Heap[null, p1#sm(r_1):=Heap[null, p1#sm(r_1)][r_1, f_7:=true]];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of m4 might not hold. There might be insufficient permission to access p1(r) (independence.vpr@57.10--57.20) [107499]"}
        perm <= Mask[null, p1(r_1)];
    }
    Mask := Mask[null, p1(r_1):=Mask[null, p1(r_1)] - perm];
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method m5
// ==================================================

procedure m5(r_1: Ref, r2: Ref, i: int) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var WandDefLHSHeap: HeapType;
  var WandDefLHSMask: MaskType;
  var Labellhs1Heap: HeapType;
  var Labellhs1Mask: MaskType;
  var WandDefRHSHeap: HeapType;
  var WandDefRHSMask: MaskType;
  var Labellhs2Heap: HeapType;
  var Labellhs2Mask: MaskType;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var QPMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleHeap: HeapType;
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
  var b_7: bool;
  var Result_1Heap: HeapType;
  var Result_1Mask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[r_1, $allocated];
    assume Heap[r2, $allocated];
  
  // -- Checked inhaling of precondition
    perm := FullPerm;
    assume r_1 != null;
    Mask := Mask[r_1, f_7:=Mask[r_1, f_7] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    perm := FullPerm;
    assume r2 != null;
    Mask := Mask[r2, f_7:=Mask[r2, f_7] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of acc(r2.f, write) --* r2 != null && (acc(r2.g, write) && r2.g == i)
      if (*) {
        havoc WandDefLHSHeap;
        WandDefLHSMask := ZeroMask;
        perm := FullPerm;
        assume r2 != null;
        WandDefLHSMask := WandDefLHSMask[r2, f_7:=WandDefLHSMask[r2, f_7] + perm];
        assume state(WandDefLHSHeap, WandDefLHSMask);
        assume state(WandDefLHSHeap, WandDefLHSMask);
        
        // -- Translating statement: label lhs1 -- independence.vpr@70.11--70.61
          lhs1:
          Labellhs1Heap := WandDefLHSHeap;
          Labellhs1Mask := WandDefLHSMask;
          assume state(WandDefLHSHeap, WandDefLHSMask);
        havoc WandDefRHSHeap;
        WandDefRHSMask := ZeroMask;
        assume r2 != null;
        perm := FullPerm;
        assume r2 != null;
        WandDefRHSMask := WandDefRHSMask[r2, g:=WandDefRHSMask[r2, g] + perm];
        assume state(WandDefRHSHeap, WandDefRHSMask);
        
        // -- Check definedness of r2.g == i
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access r2.g (independence.vpr@70.11--70.61) [107500]"}
            HasDirectPerm(WandDefRHSMask, r2, g);
        assume WandDefRHSHeap[r2, g] == i;
        assume state(WandDefRHSHeap, WandDefRHSMask);
        assume false;
      }
    Mask := Mask[null, wand(r2, FullPerm, r2 != null, r2, FullPerm, r2, i):=Mask[null, wand(r2, FullPerm, r2 != null, r2, FullPerm, r2, i)] + FullPerm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of acc(r.f, write) --* r != null && (acc(r.g, write) && r.g == i)
      if (*) {
        havoc WandDefLHSHeap;
        WandDefLHSMask := ZeroMask;
        perm := FullPerm;
        assume r_1 != null;
        WandDefLHSMask := WandDefLHSMask[r_1, f_7:=WandDefLHSMask[r_1, f_7] + perm];
        assume state(WandDefLHSHeap, WandDefLHSMask);
        assume state(WandDefLHSHeap, WandDefLHSMask);
        
        // -- Translating statement: label lhs2 -- independence.vpr@71.11--71.57
          lhs2:
          Labellhs2Heap := WandDefLHSHeap;
          Labellhs2Mask := WandDefLHSMask;
          assume state(WandDefLHSHeap, WandDefLHSMask);
        havoc WandDefRHSHeap;
        WandDefRHSMask := ZeroMask;
        assume r_1 != null;
        perm := FullPerm;
        assume r_1 != null;
        WandDefRHSMask := WandDefRHSMask[r_1, g:=WandDefRHSMask[r_1, g] + perm];
        assume state(WandDefRHSHeap, WandDefRHSMask);
        
        // -- Check definedness of r.g == i
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access r.g (independence.vpr@71.11--71.57) [107501]"}
            HasDirectPerm(WandDefRHSMask, r_1, g);
        assume WandDefRHSHeap[r_1, g] == i;
        assume state(WandDefRHSHeap, WandDefRHSMask);
        assume false;
      }
    Mask := Mask[null, wand(r_1, FullPerm, r_1 != null, r_1, FullPerm, r_1, i):=Mask[null, wand(r_1, FullPerm, r_1 != null, r_1, FullPerm, r_1, i)] + FullPerm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: inhale (forall x: Int ::x != i ==> acc(p2(r, x), write)) -- independence.vpr@74.5--74.54
    
    // -- Check definedness of (forall x: Int ::x != i ==> acc(p2(r, x), write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    
    // -- check if receiver acc(p2(r, x), write) is injective
      assert {:msg "  Inhale might fail. Quantified resource p2(r, x) might not be injective. (independence.vpr@74.12--74.54) [107502]"}
        (forall x_1: int, x_1_1: int ::
        { neverTriggered9(x_1), neverTriggered9(x_1_1) }
        (((x_1 != x_1_1 && x_1 != i) && x_1_1 != i) && NoPerm < FullPerm) && NoPerm < FullPerm ==> r_1 != r_1 || x_1 != x_1_1
      );
    
    // -- Define Inverse Function
      assume (forall x_1: int ::
        { Heap[null, p2(r_1, x_1)] } { Mask[null, p2(r_1, x_1)] }
        x_1 != i && NoPerm < FullPerm ==> invRecv9(r_1, x_1) == x_1 && qpRange9(r_1, x_1)
      );
      assume (forall a_2: Ref, b_24: int ::
        { invRecv9(a_2, b_24) }
        (invRecv9(a_2, b_24) != i && NoPerm < FullPerm) && qpRange9(a_2, b_24) ==> r_1 == a_2 && invRecv9(a_2, b_24) == b_24
      );
    
    // -- Define updated permissions
      assume (forall a_2: Ref, b_24: int ::
        { QPMask[null, p2(a_2, b_24)] }
        (invRecv9(a_2, b_24) != i && NoPerm < FullPerm) && qpRange9(a_2, b_24) ==> (NoPerm < FullPerm ==> r_1 == a_2 && invRecv9(a_2, b_24) == b_24) && QPMask[null, p2(a_2, b_24)] == Mask[null, p2(a_2, b_24)] + FullPerm
      );
    
    // -- Define independent locations
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        (o_4 != null || !IsPredicateField(f_5)) || getPredWandId(f_5) != 1 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
      assume (forall a_2: Ref, b_24: int ::
        { QPMask[null, p2(a_2, b_24)] }
        !((invRecv9(a_2, b_24) != i && NoPerm < FullPerm) && qpRange9(a_2, b_24)) ==> QPMask[null, p2(a_2, b_24)] == Mask[null, p2(a_2, b_24)]
      );
    Mask := QPMask;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: apply acc(r.f, write) --* r != null && (acc(r.g, write) && r.g == i) -- independence.vpr@75.5--75.57
    
    // -- check if wand is held and remove an instance
      ExhaleWellDef0Heap := Heap;
      ExhaleWellDef0Mask := Mask;
      // permLe
      assert {:msg "  Applying wand might fail. Magic wand instance not found. (independence.vpr@75.5--75.57) [107503]"}
        FullPerm <= Mask[null, wand(r_1, FullPerm, r_1 != null, r_1, FullPerm, r_1, i)];
      Mask := Mask[null, wand(r_1, FullPerm, r_1 != null, r_1, FullPerm, r_1, i):=Mask[null, wand(r_1, FullPerm, r_1 != null, r_1, FullPerm, r_1, i)] - FullPerm];
    assume state(Heap, Mask);
    
    // -- check if LHS holds and remove permissions 
      ExhaleWellDef0Heap := Heap;
      ExhaleWellDef0Mask := Mask;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Applying wand might fail. There might be insufficient permission to access r.f (independence.vpr@75.5--75.57) [107505]"}
          perm <= Mask[r_1, f_7];
      }
      Mask := Mask[r_1, f_7:=Mask[r_1, f_7] - perm];
    assume state(Heap, Mask);
    
    // -- inhale the RHS of the wand
      assume r_1 != null;
      perm := FullPerm;
      assume r_1 != null;
      Mask := Mask[r_1, g:=Mask[r_1, g] + perm];
      assume state(Heap, Mask);
      assume Heap[r_1, g] == i;
      assume state(Heap, Mask);
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert r.g == i -- independence.vpr@76.5--76.21
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of r.g == i
      assert {:msg "  Assert might fail. There might be insufficient permission to access r.g (independence.vpr@76.12--76.20) [107507]"}
        HasDirectPerm(ExhaleWellDef0Mask, r_1, g);
    assert {:msg "  Assert might fail. Assertion r.g == i might not hold. (independence.vpr@76.12--76.20) [107508]"}
      Heap[r_1, g] == i;
    assume state(Heap, Mask);
  
  // -- Translating statement: package acc(r.f, write) --* r != null && (acc(r.g, write) && r.g == i) {
  // } -- independence.vpr@77.5--77.59
    havoc Ops_1Heap;
    Ops_1Mask := ZeroMask;
    b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
    havoc UsedHeap;
    UsedMask := ZeroMask;
    b_2 := b_2 && state(UsedHeap, UsedMask);
    // Inhaling left hand side of current wand into hypothetical state
    if (b_1_1) {
      perm := FullPerm;
      b_1_1 := b_1_1 && r_1 != null;
      Ops_1Mask := Ops_1Mask[r_1, f_7:=Ops_1Mask[r_1, f_7] + perm];
      b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
    }
    b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
    
    // -- Translating statement: label lhs4 -- independence.vpr@77.13--77.59
      lhs4:
      Labellhs4Heap := Ops_1Heap;
      Labellhs4Mask := Ops_1Mask;
      b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
    boolCur := true;
    // Translating exec of non-ghost operationr != null && (acc(r.g, write) && r.g == i)
    havoc Used_1Heap;
    Used_1Mask := ZeroMask;
    b_2_1 := b_2_1 && state(Used_1Heap, Used_1Mask);
    assert {:msg "  Packaging wand might fail. Assertion r != null might not hold. (independence.vpr@77.5--77.59) [107509]"}
      (b_1_1 && b_1_1) && b_2_1 ==> r_1 != null;
    
    // -- Transfer of acc(r.g, write)
      rcvLocal := r_1;
      neededTransfer := FullPerm;
      initNeededTransfer := Used_1Mask[rcvLocal, g] + neededTransfer;
      assert {:msg "  Packaging wand might fail. Fraction acc(r.g, write) might be negative. (independence.vpr@77.5--77.59) [107510]"}
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
            Heap := Heap[null, wand#sm(r_1, FullPerm, r_1 != null, r_1, FullPerm, r_1, i):=Heap[null, wand#sm(r_1, FullPerm, r_1 != null, r_1, FullPerm, r_1, i)][r_1, g:=true]];
          }
        }
      assert {:msg "  Packaging wand might fail. There might be insufficient permission to access r.g (independence.vpr@77.5--77.59) [107511]"}
        (b_1_1 && b_1_1) && b_2_1 ==> neededTransfer == 0.000000000 && Used_1Mask[rcvLocal, g] == initNeededTransfer;
      
      // -- Creating state which is the sum of the two previously built up states
        b_3 := b_1_1 && b_2_1;
        b_3 := b_3 && state(ResultHeap, ResultMask);
        b_3 := b_3 && sumMask(ResultMask, Ops_1Mask, Used_1Mask);
        b_3 := (b_3 && IdenticalOnKnownLocations(Ops_1Heap, ResultHeap, Ops_1Mask)) && IdenticalOnKnownLocations(Used_1Heap, ResultHeap, Used_1Mask);
        b_3 := b_3 && state(ResultHeap, ResultMask);
      b_1_1 := b_1_1 && b_3;
    if ((b_1_1 && b_1_1) && b_2_1) {
      if (b_1_1) {
        
        // -- Check definedness of r.g == i
          assert {:msg "  Packaging wand might fail. There might be insufficient permission to access r.g (independence.vpr@77.5--77.59) [107512]"}
            HasDirectPerm(ResultMask, r_1, g);
      }
    }
    assert {:msg "  Packaging wand might fail. Assertion r.g == i might not hold. (independence.vpr@77.5--77.59) [107513]"}
      (b_1_1 && b_1_1) && b_2_1 ==> ResultHeap[r_1, g] == i;
    Mask := Mask[null, wand(r_1, FullPerm, r_1 != null, r_1, FullPerm, r_1, i):=Mask[null, wand(r_1, FullPerm, r_1 != null, r_1, FullPerm, r_1, i)] + FullPerm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: exhale (forall x: Int ::x != i ==> acc(p2(r, x), write)) -- independence.vpr@78.5--78.54
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of (forall x: Int ::x != i ==> acc(p2(r, x), write))
      if (*) {
        assume false;
      }
    havoc QPMask;
    
    // -- check that the permission amount is positive
      
    
    // -- check if receiver acc(p2(r, x), write) is injective
      assert {:msg "  Exhale might fail. Quantified resource p2(r, x) might not be injective. (independence.vpr@78.12--78.54) [107515]"}
        (forall x_4: int, x_4_1: int ::
        { neverTriggered10(x_4), neverTriggered10(x_4_1) }
        (((x_4 != x_4_1 && x_4 != i) && x_4_1 != i) && NoPerm < FullPerm) && NoPerm < FullPerm ==> r_1 != r_1 || x_4 != x_4_1
      );
    
    // -- check if sufficient permission is held
      assert {:msg "  Exhale might fail. There might be insufficient permission to access p2(r, x) (independence.vpr@78.12--78.54) [107516]"}
        (forall x_4: int ::
        { Heap[null, p2(r_1, x_4)] } { Mask[null, p2(r_1, x_4)] }
        x_4 != i ==> Mask[null, p2(r_1, x_4)] >= FullPerm
      );
    
    // -- assumptions for inverse of receiver acc(p2(r, x), write)
      assume (forall x_4: int ::
        { Heap[null, p2(r_1, x_4)] } { Mask[null, p2(r_1, x_4)] }
        x_4 != i && NoPerm < FullPerm ==> invRecv10(r_1, x_4) == x_4 && qpRange10(r_1, x_4)
      );
      assume (forall a_1_1: Ref, b_1_2: int ::
        { invRecv10(a_1_1, b_1_2) }
        (invRecv10(a_1_1, b_1_2) != i && NoPerm < FullPerm) && qpRange10(a_1_1, b_1_2) ==> r_1 == a_1_1 && invRecv10(a_1_1, b_1_2) == b_1_2
      );
    
    // -- assume permission updates
      assume (forall a_1_1: Ref, b_1_2: int ::
        { QPMask[null, p2(a_1_1, b_1_2)] }
        (invRecv10(a_1_1, b_1_2) != i && NoPerm < FullPerm) && qpRange10(a_1_1, b_1_2) ==> (r_1 == a_1_1 && invRecv10(a_1_1, b_1_2) == b_1_2) && QPMask[null, p2(a_1_1, b_1_2)] == Mask[null, p2(a_1_1, b_1_2)] - FullPerm
      );
      assume (forall a_1_1: Ref, b_1_2: int ::
        { QPMask[null, p2(a_1_1, b_1_2)] }
        !((invRecv10(a_1_1, b_1_2) != i && NoPerm < FullPerm) && qpRange10(a_1_1, b_1_2)) ==> QPMask[null, p2(a_1_1, b_1_2)] == Mask[null, p2(a_1_1, b_1_2)]
      );
    
    // -- assume permission updates for independent locations 
      assume (forall <A, B> o_4: Ref, f_5: (Field A B) ::
        { Mask[o_4, f_5] } { QPMask[o_4, f_5] }
        (o_4 != null || !IsPredicateField(f_5)) || getPredWandId(f_5) != 1 ==> Mask[o_4, f_5] == QPMask[o_4, f_5]
      );
    Mask := QPMask;
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
    assume state(Heap, Mask);
  
  // -- Translating statement: apply acc(r2.f, write) --* r2 != null && (acc(r2.g, write) && r2.g == i) -- independence.vpr@79.5--79.62
    
    // -- check if wand is held and remove an instance
      ExhaleWellDef0Heap := Heap;
      ExhaleWellDef0Mask := Mask;
      // permLe
      assert {:msg "  Applying wand might fail. Magic wand instance not found. (independence.vpr@79.5--79.62) [107517]"}
        FullPerm <= Mask[null, wand(r2, FullPerm, r2 != null, r2, FullPerm, r2, i)];
      Mask := Mask[null, wand(r2, FullPerm, r2 != null, r2, FullPerm, r2, i):=Mask[null, wand(r2, FullPerm, r2 != null, r2, FullPerm, r2, i)] - FullPerm];
    assume state(Heap, Mask);
    
    // -- check if LHS holds and remove permissions 
      ExhaleWellDef0Heap := Heap;
      ExhaleWellDef0Mask := Mask;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Applying wand might fail. There might be insufficient permission to access r2.f (independence.vpr@79.5--79.62) [107519]"}
          perm <= Mask[r2, f_7];
      }
      Mask := Mask[r2, f_7:=Mask[r2, f_7] - perm];
    assume state(Heap, Mask);
    
    // -- inhale the RHS of the wand
      assume r2 != null;
      perm := FullPerm;
      assume r2 != null;
      Mask := Mask[r2, g:=Mask[r2, g] + perm];
      assume state(Heap, Mask);
      assume Heap[r2, g] == i;
      assume state(Heap, Mask);
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert r2.g == i -- independence.vpr@80.5--80.23
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of r2.g == i
      assert {:msg "  Assert might fail. There might be insufficient permission to access r2.g (independence.vpr@80.13--80.22) [107521]"}
        HasDirectPerm(ExhaleWellDef0Mask, r2, g);
    assert {:msg "  Assert might fail. Assertion r2.g == i might not hold. (independence.vpr@80.13--80.22) [107522]"}
      Heap[r2, g] == i;
    assume state(Heap, Mask);
  
  // -- Translating statement: package acc(r2.f, write) --* r2 != null && (acc(r2.g, write) && r2.g == i) {
  // } -- independence.vpr@81.5--81.64
    havoc Ops_3Heap;
    Ops_3Mask := ZeroMask;
    b_5 := b_5 && state(Ops_3Heap, Ops_3Mask);
    havoc Used_2Heap;
    Used_2Mask := ZeroMask;
    b_4 := b_4 && state(Used_2Heap, Used_2Mask);
    // Inhaling left hand side of current wand into hypothetical state
    if (b_5) {
      perm := FullPerm;
      b_5 := b_5 && r2 != null;
      Ops_3Mask := Ops_3Mask[r2, f_7:=Ops_3Mask[r2, f_7] + perm];
      b_5 := b_5 && state(Ops_3Heap, Ops_3Mask);
    }
    b_5 := b_5 && state(Ops_3Heap, Ops_3Mask);
    
    // -- Translating statement: label lhs7 -- independence.vpr@81.14--81.64
      lhs7:
      Labellhs7Heap := Ops_3Heap;
      Labellhs7Mask := Ops_3Mask;
      b_5 := b_5 && state(Ops_3Heap, Ops_3Mask);
    boolCur_1 := true;
    // Translating exec of non-ghost operationr2 != null && (acc(r2.g, write) && r2.g == i)
    havoc Used_3Heap;
    Used_3Mask := ZeroMask;
    b_6 := b_6 && state(Used_3Heap, Used_3Mask);
    assert {:msg "  Packaging wand might fail. Assertion r2 != null might not hold. (independence.vpr@81.5--81.64) [107523]"}
      (b_5 && b_5) && b_6 ==> r2 != null;
    
    // -- Transfer of acc(r2.g, write)
      rcvLocal := r2;
      neededTransfer := FullPerm;
      initNeededTransfer := Used_3Mask[rcvLocal, g] + neededTransfer;
      assert {:msg "  Packaging wand might fail. Fraction acc(r2.g, write) might be negative. (independence.vpr@81.5--81.64) [107524]"}
        neededTransfer >= 0.000000000;
      
      // -- transfer code for top state of stack
        // accumulate constraints which need to be satisfied for transfer to occur
        accVar2 := true;
        // actual code for the transfer from current state on stack
        if ((((b_5 && b_5) && b_6) && accVar2) && neededTransfer > 0.000000000) {
          maskTransfer := Ops_3Mask[rcvLocal, g];
          if (neededTransfer <= maskTransfer) {
            takeTransfer := neededTransfer;
          } else {
            takeTransfer := maskTransfer;
          }
          if (takeTransfer > 0.000000000) {
            neededTransfer := neededTransfer - takeTransfer;
            Used_3Mask := Used_3Mask[rcvLocal, g:=Used_3Mask[rcvLocal, g] + takeTransfer];
            b_6 := b_6 && state(Used_3Heap, Used_3Mask);
            b_6 := b_6 && Ops_3Heap[rcvLocal, g] == Used_3Heap[rcvLocal, g];
            Ops_3Mask := Ops_3Mask[rcvLocal, g:=Ops_3Mask[rcvLocal, g] - takeTransfer];
          }
        }
      
      // -- transfer code for top state of stack
        // accumulate constraints which need to be satisfied for transfer to occur
        accVar2 := true;
        // actual code for the transfer from current state on stack
        if ((((b_5 && b_5) && b_6) && accVar2) && neededTransfer > 0.000000000) {
          maskTransfer := Mask[rcvLocal, g];
          if (neededTransfer <= maskTransfer) {
            takeTransfer := neededTransfer;
          } else {
            takeTransfer := maskTransfer;
          }
          if (takeTransfer > 0.000000000) {
            neededTransfer := neededTransfer - takeTransfer;
            Used_3Mask := Used_3Mask[rcvLocal, g:=Used_3Mask[rcvLocal, g] + takeTransfer];
            b_6 := b_6 && state(Used_3Heap, Used_3Mask);
            b_6 := b_6 && Heap[rcvLocal, g] == Used_3Heap[rcvLocal, g];
            Mask := Mask[rcvLocal, g:=Mask[rcvLocal, g] - takeTransfer];
            Heap := Heap[null, wand#sm(r2, FullPerm, r2 != null, r2, FullPerm, r2, i):=Heap[null, wand#sm(r2, FullPerm, r2 != null, r2, FullPerm, r2, i)][r2, g:=true]];
          }
        }
      assert {:msg "  Packaging wand might fail. There might be insufficient permission to access r2.g (independence.vpr@81.5--81.64) [107525]"}
        (b_5 && b_5) && b_6 ==> neededTransfer == 0.000000000 && Used_3Mask[rcvLocal, g] == initNeededTransfer;
      
      // -- Creating state which is the sum of the two previously built up states
        b_7 := b_5 && b_6;
        b_7 := b_7 && state(Result_1Heap, Result_1Mask);
        b_7 := b_7 && sumMask(Result_1Mask, Ops_3Mask, Used_3Mask);
        b_7 := (b_7 && IdenticalOnKnownLocations(Ops_3Heap, Result_1Heap, Ops_3Mask)) && IdenticalOnKnownLocations(Used_3Heap, Result_1Heap, Used_3Mask);
        b_7 := b_7 && state(Result_1Heap, Result_1Mask);
      b_5 := b_5 && b_7;
    if ((b_5 && b_5) && b_6) {
      if (b_5) {
        
        // -- Check definedness of r2.g == i
          assert {:msg "  Packaging wand might fail. There might be insufficient permission to access r2.g (independence.vpr@81.5--81.64) [107526]"}
            HasDirectPerm(Result_1Mask, r2, g);
      }
    }
    assert {:msg "  Packaging wand might fail. Assertion r2.g == i might not hold. (independence.vpr@81.5--81.64) [107527]"}
      (b_5 && b_5) && b_6 ==> Result_1Heap[r2, g] == i;
    Mask := Mask[null, wand(r2, FullPerm, r2 != null, r2, FullPerm, r2, i):=Mask[null, wand(r2, FullPerm, r2 != null, r2, FullPerm, r2, i)] + FullPerm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
}