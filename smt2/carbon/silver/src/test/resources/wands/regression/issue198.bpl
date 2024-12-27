// 
// Translation of Viper program.
// 
// Date:         2024-12-27 02:22:35
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/wands/regression/issue198.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/wands/regression/issue198-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
axiom (forall <A, B> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_34: Ref, f_40: (Field A B) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_34, f_40] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, o_34, f_40) ==> Heap[o_34, f_40] == ExhaleHeap[o_34, f_40]
);
// Frame all predicate mask locations of predicates with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_16: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_16), ExhaleHeap[null, PredicateMaskField(pm_f_16)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_16) && IsPredicateField(pm_f_16) ==> Heap[null, PredicateMaskField(pm_f_16)] == ExhaleHeap[null, PredicateMaskField(pm_f_16)]
);
// Frame all locations with known folded permissions
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_16: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_16) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_16) && IsPredicateField(pm_f_16) ==> (forall <A, B> o2_16: Ref, f_40: (Field A B) ::
    { ExhaleHeap[o2_16, f_40] }
    Heap[null, PredicateMaskField(pm_f_16)][o2_16, f_40] ==> Heap[o2_16, f_40] == ExhaleHeap[o2_16, f_40]
  )
);
// Frame all wand mask locations of wands with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_16: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_16), ExhaleHeap[null, WandMaskField(pm_f_16)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_16) && IsWandField(pm_f_16) ==> Heap[null, WandMaskField(pm_f_16)] == ExhaleHeap[null, WandMaskField(pm_f_16)]
);
// Frame all locations in the footprint of magic wands
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_16: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_16) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_16) && IsWandField(pm_f_16) ==> (forall <A, B> o2_16: Ref, f_40: (Field A B) ::
    { ExhaleHeap[o2_16, f_40] }
    Heap[null, WandMaskField(pm_f_16)][o2_16, f_40] ==> Heap[o2_16, f_40] == ExhaleHeap[o2_16, f_40]
  )
);
// All previously-allocated references are still allocated
axiom (forall Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_34: Ref ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_34, $allocated] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> Heap[o_34, $allocated] ==> ExhaleHeap[o_34, $allocated]
);
// Updated Heaps are Successor Heaps
axiom (forall <A, B> Heap: HeapType, o_3: Ref, f_35: (Field A B), v: B ::
  { Heap[o_3, f_35:=v] }
  succHeap(Heap, Heap[o_3, f_35:=v])
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
function  wand(arg1: bool, arg2: Perm): Field WandType_wand int;
function  wand#sm(arg1: bool, arg2: Perm): Field WandType_wand PMaskType;
function  wand#ft(arg1: bool, arg2: Perm): Field WandType_wand FrameType;
axiom (forall arg1: bool, arg2: Perm ::
  { wand(arg1, arg2) }
  IsWandField(wand(arg1, arg2))
);
axiom (forall arg1: bool, arg2: Perm ::
  { wand#ft(arg1, arg2) }
  IsWandField(wand#ft(arg1, arg2))
);
axiom (forall arg1: bool, arg2: Perm ::
  { wand(arg1, arg2) }
  !IsPredicateField(wand(arg1, arg2))
);
axiom (forall arg1: bool, arg2: Perm ::
  { wand#ft(arg1, arg2) }
  !IsPredicateField(wand#ft(arg1, arg2))
);
axiom (forall arg1: bool, arg2: Perm ::
  { WandMaskField(wand#ft(arg1, arg2)) }
  wand#sm(arg1, arg2) == WandMaskField(wand#ft(arg1, arg2))
);
axiom (forall arg1: bool, arg2: Perm ::
  { wand(arg1, arg2) }
  getPredWandId(wand(arg1, arg2)) == 2
);
axiom (forall arg1: bool, arg2: Perm, arg1_2: bool, arg2_2: Perm ::
  { wand(arg1, arg2), wand(arg1_2, arg2_2) }
  wand(arg1, arg2) == wand(arg1_2, arg2_2) ==> arg1 == arg1_2 && arg2 == arg2_2
);
type WandType_wand_1;
function  wand_1(arg1: bool, arg2: Perm, arg3: Perm): Field WandType_wand_1 int;
function  wand_1#sm(arg1: bool, arg2: Perm, arg3: Perm): Field WandType_wand_1 PMaskType;
function  wand_1#ft(arg1: bool, arg2: Perm, arg3: Perm): Field WandType_wand_1 FrameType;
axiom (forall arg1: bool, arg2: Perm, arg3: Perm ::
  { wand_1(arg1, arg2, arg3) }
  IsWandField(wand_1(arg1, arg2, arg3))
);
axiom (forall arg1: bool, arg2: Perm, arg3: Perm ::
  { wand_1#ft(arg1, arg2, arg3) }
  IsWandField(wand_1#ft(arg1, arg2, arg3))
);
axiom (forall arg1: bool, arg2: Perm, arg3: Perm ::
  { wand_1(arg1, arg2, arg3) }
  !IsPredicateField(wand_1(arg1, arg2, arg3))
);
axiom (forall arg1: bool, arg2: Perm, arg3: Perm ::
  { wand_1#ft(arg1, arg2, arg3) }
  !IsPredicateField(wand_1#ft(arg1, arg2, arg3))
);
axiom (forall arg1: bool, arg2: Perm, arg3: Perm ::
  { WandMaskField(wand_1#ft(arg1, arg2, arg3)) }
  wand_1#sm(arg1, arg2, arg3) == WandMaskField(wand_1#ft(arg1, arg2, arg3))
);
axiom (forall arg1: bool, arg2: Perm, arg3: Perm ::
  { wand_1(arg1, arg2, arg3) }
  getPredWandId(wand_1(arg1, arg2, arg3)) == 3
);
axiom (forall arg1: bool, arg2: Perm, arg3: Perm, arg1_2: bool, arg2_2: Perm, arg3_2: Perm ::
  { wand_1(arg1, arg2, arg3), wand_1(arg1_2, arg2_2, arg3_2) }
  wand_1(arg1, arg2, arg3) == wand_1(arg1_2, arg2_2, arg3_2) ==> arg1 == arg1_2 && (arg2 == arg2_2 && arg3 == arg3_2)
);
type WandType_wand_2;
function  wand_2(arg1: bool, arg2: Perm, arg3: Perm): Field WandType_wand_2 int;
function  wand_2#sm(arg1: bool, arg2: Perm, arg3: Perm): Field WandType_wand_2 PMaskType;
function  wand_2#ft(arg1: bool, arg2: Perm, arg3: Perm): Field WandType_wand_2 FrameType;
axiom (forall arg1: bool, arg2: Perm, arg3: Perm ::
  { wand_2(arg1, arg2, arg3) }
  IsWandField(wand_2(arg1, arg2, arg3))
);
axiom (forall arg1: bool, arg2: Perm, arg3: Perm ::
  { wand_2#ft(arg1, arg2, arg3) }
  IsWandField(wand_2#ft(arg1, arg2, arg3))
);
axiom (forall arg1: bool, arg2: Perm, arg3: Perm ::
  { wand_2(arg1, arg2, arg3) }
  !IsPredicateField(wand_2(arg1, arg2, arg3))
);
axiom (forall arg1: bool, arg2: Perm, arg3: Perm ::
  { wand_2#ft(arg1, arg2, arg3) }
  !IsPredicateField(wand_2#ft(arg1, arg2, arg3))
);
axiom (forall arg1: bool, arg2: Perm, arg3: Perm ::
  { WandMaskField(wand_2#ft(arg1, arg2, arg3)) }
  wand_2#sm(arg1, arg2, arg3) == WandMaskField(wand_2#ft(arg1, arg2, arg3))
);
axiom (forall arg1: bool, arg2: Perm, arg3: Perm ::
  { wand_2(arg1, arg2, arg3) }
  getPredWandId(wand_2(arg1, arg2, arg3)) == 4
);
axiom (forall arg1: bool, arg2: Perm, arg3: Perm, arg1_2: bool, arg2_2: Perm, arg3_2: Perm ::
  { wand_2(arg1, arg2, arg3), wand_2(arg1_2, arg2_2, arg3_2) }
  wand_2(arg1, arg2, arg3) == wand_2(arg1_2, arg2_2, arg3_2) ==> arg1 == arg1_2 && (arg2 == arg2_2 && arg3 == arg3_2)
);

// ==================================================
// Translation of predicate P
// ==================================================

type PredicateType_P;
function  P(): Field PredicateType_P FrameType;
function  P#sm(): Field PredicateType_P PMaskType;
axiom PredicateMaskField(P()) == P#sm();
axiom IsPredicateField(P());
axiom getPredWandId(P()) == 0;
function  P#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  P#everUsed<A>(pred: (Field A FrameType)): bool;

axiom (forall Heap: HeapType ::
  { P#trigger(Heap, P()) }
  P#everUsed(P())
);

procedure P#definedness() returns ()
  modifies Heap, Mask;
{
  
  // -- Check definedness of predicate body of P
    
    // -- Initializing the state
      Mask := ZeroMask;
      assume state(Heap, Mask);
      assume AssumePermUpperBound;
    assume state(Heap, Mask);
}

// ==================================================
// Translation of predicate Q
// ==================================================

type PredicateType_Q;
function  Q(): Field PredicateType_Q FrameType;
function  Q#sm(): Field PredicateType_Q PMaskType;
axiom PredicateMaskField(Q()) == Q#sm();
axiom IsPredicateField(Q());
axiom getPredWandId(Q()) == 1;
function  Q#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  Q#everUsed<A>(pred: (Field A FrameType)): bool;

axiom (forall Heap: HeapType ::
  { Q#trigger(Heap, Q()) }
  Q#everUsed(Q())
);

procedure Q#definedness() returns ()
  modifies Heap, Mask;
{
  
  // -- Check definedness of predicate body of Q
    
    // -- Initializing the state
      Mask := ZeroMask;
      assume state(Heap, Mask);
      assume AssumePermUpperBound;
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test01
// ==================================================

procedure test01() returns ()
  modifies Heap, Mask;
{
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
  var perm: Perm;
  var freshVersion: FrameType;
  var Used_2Heap: HeapType;
  var Used_2Mask: MaskType;
  var b_3: bool;
  var Used_3Heap: HeapType;
  var Used_3Mask: MaskType;
  var b_4: bool;
  var neededTransfer: Perm;
  var initNeededTransfer: Perm;
  var accVar2: bool;
  var maskTransfer: Perm;
  var takeTransfer: Perm;
  var TempMask: MaskType;
  var newPMask: PMaskType;
  var b_5: bool;
  var ResultHeap: HeapType;
  var ResultMask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: package true --* acc(P(), 1 / 1) {
  //   fold acc(P(), write)
  //   fold acc(P(), write)
  // } -- issue198.vpr@8.3--11.4
    havoc Ops_1Heap;
    Ops_1Mask := ZeroMask;
    b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
    havoc UsedHeap;
    UsedMask := ZeroMask;
    b_2 := b_2 && state(UsedHeap, UsedMask);
    // Inhaling left hand side of current wand into hypothetical state
    if (b_1_1) {
      b_1_1 := b_1_1;
    }
    b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
    
    // -- Translating statement: label lhs1 -- issue198.vpr@8.11--8.33
      lhs1:
      Labellhs1Heap := Ops_1Heap;
      Labellhs1Mask := Ops_1Mask;
      b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
    boolCur := true;
    if (b_1_1) {
      
      // -- Translating statement: fold acc(P(), write) -- issue198.vpr@9.7--9.15
        ExhaleWellDef0Heap := Ops_1Heap;
        ExhaleWellDef0Mask := Ops_1Mask;
        havoc Used_1Heap;
        Used_1Mask := ZeroMask;
        b_2_1 := b_2_1 && state(Used_1Heap, Used_1Mask);
        b_1_1 := b_1_1 && b_2_1;
        b_1_1 := b_1_1 && Used_1Heap == Ops_1Heap;
        perm := FullPerm;
        b_1_1 := b_1_1;
        Ops_1Mask := Ops_1Mask[null, P():=Ops_1Mask[null, P()] + perm];
        b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
        b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
        assume P#trigger(Ops_1Heap, P());
        assume Ops_1Heap[null, P()] == EmptyFrame;
        if (!HasDirectPerm(Ops_1Mask, null, P())) {
          Ops_1Heap := Ops_1Heap[null, P#sm():=ZeroPMask];
          havoc freshVersion;
          Ops_1Heap := Ops_1Heap[null, P():=freshVersion];
        }
        assume state(Ops_1Heap, Ops_1Mask);
        b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
    }
    if (b_1_1) {
      
      // -- Translating statement: fold acc(P(), write) -- issue198.vpr@10.7--10.15
        ExhaleWellDef0Heap := Ops_1Heap;
        ExhaleWellDef0Mask := Ops_1Mask;
        havoc Used_2Heap;
        Used_2Mask := ZeroMask;
        b_3 := b_3 && state(Used_2Heap, Used_2Mask);
        b_1_1 := b_1_1 && b_3;
        b_1_1 := b_1_1 && Used_2Heap == Ops_1Heap;
        perm := FullPerm;
        b_1_1 := b_1_1;
        Ops_1Mask := Ops_1Mask[null, P():=Ops_1Mask[null, P()] + perm];
        b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
        b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
        assume P#trigger(Ops_1Heap, P());
        assume Ops_1Heap[null, P()] == EmptyFrame;
        if (!HasDirectPerm(Ops_1Mask, null, P())) {
          Ops_1Heap := Ops_1Heap[null, P#sm():=ZeroPMask];
          havoc freshVersion;
          Ops_1Heap := Ops_1Heap[null, P():=freshVersion];
        }
        assume state(Ops_1Heap, Ops_1Mask);
        b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
    }
    // Translating exec of non-ghost operationacc(P(), 1 / 1)
    havoc Used_3Heap;
    Used_3Mask := ZeroMask;
    b_4 := b_4 && state(Used_3Heap, Used_3Mask);
    
    // -- Transfer of acc(P(), 1 / 1)
      neededTransfer := 1 / 1;
      initNeededTransfer := Used_3Mask[null, P()] + neededTransfer;
      assert {:msg "  Packaging wand might fail. Fraction acc(P(), 1 / 1) might be negative. (issue198.vpr@8.3--11.4) [129682]"}
        neededTransfer >= 0.000000000;
      
      // -- transfer code for top state of stack
        // accumulate constraints which need to be satisfied for transfer to occur
        accVar2 := true;
        // actual code for the transfer from current state on stack
        if ((((b_1_1 && b_1_1) && b_4) && accVar2) && neededTransfer > 0.000000000) {
          maskTransfer := Ops_1Mask[null, P()];
          if (neededTransfer <= maskTransfer) {
            takeTransfer := neededTransfer;
          } else {
            takeTransfer := maskTransfer;
          }
          if (takeTransfer > 0.000000000) {
            neededTransfer := neededTransfer - takeTransfer;
            Used_3Mask := Used_3Mask[null, P():=Used_3Mask[null, P()] + takeTransfer];
            b_4 := b_4 && state(Used_3Heap, Used_3Mask);
            TempMask := ZeroMask[null, P():=FullPerm];
            b_4 := b_4 && IdenticalOnKnownLocations(Ops_1Heap, Used_3Heap, TempMask);
            Ops_1Mask := Ops_1Mask[null, P():=Ops_1Mask[null, P()] - takeTransfer];
          }
        }
      
      // -- transfer code for top state of stack
        // accumulate constraints which need to be satisfied for transfer to occur
        accVar2 := true;
        // actual code for the transfer from current state on stack
        if ((((b_1_1 && b_1_1) && b_4) && accVar2) && neededTransfer > 0.000000000) {
          maskTransfer := Mask[null, P()];
          if (neededTransfer <= maskTransfer) {
            takeTransfer := neededTransfer;
          } else {
            takeTransfer := maskTransfer;
          }
          if (takeTransfer > 0.000000000) {
            neededTransfer := neededTransfer - takeTransfer;
            Used_3Mask := Used_3Mask[null, P():=Used_3Mask[null, P()] + takeTransfer];
            b_4 := b_4 && state(Used_3Heap, Used_3Mask);
            TempMask := ZeroMask[null, P():=FullPerm];
            b_4 := b_4 && IdenticalOnKnownLocations(Heap, Used_3Heap, TempMask);
            Mask := Mask[null, P():=Mask[null, P()] - takeTransfer];
            havoc newPMask;
            assume (forall <A, B> o_15: Ref, f_20: (Field A B) ::
              { newPMask[o_15, f_20] }
              Heap[null, wand#sm(true, 1 / 1)][o_15, f_20] || Heap[null, P#sm()][o_15, f_20] ==> newPMask[o_15, f_20]
            );
            Heap := Heap[null, wand#sm(true, 1 / 1):=newPMask];
          }
        }
      assert {:msg "  Packaging wand might fail. There might be insufficient permission to access P() (issue198.vpr@8.3--11.4) [129683]"}
        (b_1_1 && b_1_1) && b_4 ==> neededTransfer == 0.000000000 && Used_3Mask[null, P()] == initNeededTransfer;
      
      // -- Creating state which is the sum of the two previously built up states
        b_5 := b_1_1 && b_4;
        b_5 := b_5 && state(ResultHeap, ResultMask);
        b_5 := b_5 && sumMask(ResultMask, Ops_1Mask, Used_3Mask);
        b_5 := (b_5 && IdenticalOnKnownLocations(Ops_1Heap, ResultHeap, Ops_1Mask)) && IdenticalOnKnownLocations(Used_3Heap, ResultHeap, Used_3Mask);
        b_5 := b_5 && state(ResultHeap, ResultMask);
      b_1_1 := b_1_1 && b_5;
    Mask := Mask[null, wand(true, 1 / 1):=Mask[null, wand(true, 1 / 1)] + FullPerm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test02
// ==================================================

procedure test02() returns ()
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var Ops_3Heap: HeapType;
  var Ops_3Mask: MaskType;
  var b_7: bool;
  var Used_4Heap: HeapType;
  var Used_4Mask: MaskType;
  var b_6: bool;
  var Labellhs3Heap: HeapType;
  var Labellhs3Mask: MaskType;
  var boolCur_1: bool;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var Used_5Heap: HeapType;
  var Used_5Mask: MaskType;
  var b_8: bool;
  var perm: Perm;
  var freshVersion: FrameType;
  var Used_6Heap: HeapType;
  var Used_6Mask: MaskType;
  var b_9: bool;
  var Used_7Heap: HeapType;
  var Used_7Mask: MaskType;
  var b_10: bool;
  var neededTransfer: Perm;
  var initNeededTransfer: Perm;
  var accVar2: bool;
  var maskTransfer: Perm;
  var takeTransfer: Perm;
  var TempMask: MaskType;
  var newPMask: PMaskType;
  var b_11: bool;
  var Result_1Heap: HeapType;
  var Result_1Mask: MaskType;
  var b_12: bool;
  var Result_2Heap: HeapType;
  var Result_2Mask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: package true --* acc(P(), 1 / 1) && acc(P(), 1 / 1) {
  //   fold acc(P(), write)
  //   fold acc(P(), write)
  // } -- issue198.vpr@15.3--18.4
    havoc Ops_3Heap;
    Ops_3Mask := ZeroMask;
    b_7 := b_7 && state(Ops_3Heap, Ops_3Mask);
    havoc Used_4Heap;
    Used_4Mask := ZeroMask;
    b_6 := b_6 && state(Used_4Heap, Used_4Mask);
    // Inhaling left hand side of current wand into hypothetical state
    if (b_7) {
      b_7 := b_7;
    }
    b_7 := b_7 && state(Ops_3Heap, Ops_3Mask);
    
    // -- Translating statement: label lhs3 -- issue198.vpr@15.11--15.50
      lhs3:
      Labellhs3Heap := Ops_3Heap;
      Labellhs3Mask := Ops_3Mask;
      b_7 := b_7 && state(Ops_3Heap, Ops_3Mask);
    boolCur_1 := true;
    if (b_7) {
      
      // -- Translating statement: fold acc(P(), write) -- issue198.vpr@16.7--16.15
        ExhaleWellDef0Heap := Ops_3Heap;
        ExhaleWellDef0Mask := Ops_3Mask;
        havoc Used_5Heap;
        Used_5Mask := ZeroMask;
        b_8 := b_8 && state(Used_5Heap, Used_5Mask);
        b_7 := b_7 && b_8;
        b_7 := b_7 && Used_5Heap == Ops_3Heap;
        perm := FullPerm;
        b_7 := b_7;
        Ops_3Mask := Ops_3Mask[null, P():=Ops_3Mask[null, P()] + perm];
        b_7 := b_7 && state(Ops_3Heap, Ops_3Mask);
        b_7 := b_7 && state(Ops_3Heap, Ops_3Mask);
        assume P#trigger(Ops_3Heap, P());
        assume Ops_3Heap[null, P()] == EmptyFrame;
        if (!HasDirectPerm(Ops_3Mask, null, P())) {
          Ops_3Heap := Ops_3Heap[null, P#sm():=ZeroPMask];
          havoc freshVersion;
          Ops_3Heap := Ops_3Heap[null, P():=freshVersion];
        }
        assume state(Ops_3Heap, Ops_3Mask);
        b_7 := b_7 && state(Ops_3Heap, Ops_3Mask);
    }
    if (b_7) {
      
      // -- Translating statement: fold acc(P(), write) -- issue198.vpr@17.7--17.15
        ExhaleWellDef0Heap := Ops_3Heap;
        ExhaleWellDef0Mask := Ops_3Mask;
        havoc Used_6Heap;
        Used_6Mask := ZeroMask;
        b_9 := b_9 && state(Used_6Heap, Used_6Mask);
        b_7 := b_7 && b_9;
        b_7 := b_7 && Used_6Heap == Ops_3Heap;
        perm := FullPerm;
        b_7 := b_7;
        Ops_3Mask := Ops_3Mask[null, P():=Ops_3Mask[null, P()] + perm];
        b_7 := b_7 && state(Ops_3Heap, Ops_3Mask);
        b_7 := b_7 && state(Ops_3Heap, Ops_3Mask);
        assume P#trigger(Ops_3Heap, P());
        assume Ops_3Heap[null, P()] == EmptyFrame;
        if (!HasDirectPerm(Ops_3Mask, null, P())) {
          Ops_3Heap := Ops_3Heap[null, P#sm():=ZeroPMask];
          havoc freshVersion;
          Ops_3Heap := Ops_3Heap[null, P():=freshVersion];
        }
        assume state(Ops_3Heap, Ops_3Mask);
        b_7 := b_7 && state(Ops_3Heap, Ops_3Mask);
    }
    // Translating exec of non-ghost operationacc(P(), 1 / 1) && acc(P(), 1 / 1)
    havoc Used_7Heap;
    Used_7Mask := ZeroMask;
    b_10 := b_10 && state(Used_7Heap, Used_7Mask);
    
    // -- Transfer of acc(P(), 1 / 1)
      neededTransfer := 1 / 1;
      initNeededTransfer := Used_7Mask[null, P()] + neededTransfer;
      assert {:msg "  Packaging wand might fail. Fraction acc(P(), 1 / 1) might be negative. (issue198.vpr@15.3--18.4) [129690]"}
        neededTransfer >= 0.000000000;
      
      // -- transfer code for top state of stack
        // accumulate constraints which need to be satisfied for transfer to occur
        accVar2 := true;
        // actual code for the transfer from current state on stack
        if ((((b_7 && b_7) && b_10) && accVar2) && neededTransfer > 0.000000000) {
          maskTransfer := Ops_3Mask[null, P()];
          if (neededTransfer <= maskTransfer) {
            takeTransfer := neededTransfer;
          } else {
            takeTransfer := maskTransfer;
          }
          if (takeTransfer > 0.000000000) {
            neededTransfer := neededTransfer - takeTransfer;
            Used_7Mask := Used_7Mask[null, P():=Used_7Mask[null, P()] + takeTransfer];
            b_10 := b_10 && state(Used_7Heap, Used_7Mask);
            TempMask := ZeroMask[null, P():=FullPerm];
            b_10 := b_10 && IdenticalOnKnownLocations(Ops_3Heap, Used_7Heap, TempMask);
            Ops_3Mask := Ops_3Mask[null, P():=Ops_3Mask[null, P()] - takeTransfer];
          }
        }
      
      // -- transfer code for top state of stack
        // accumulate constraints which need to be satisfied for transfer to occur
        accVar2 := true;
        // actual code for the transfer from current state on stack
        if ((((b_7 && b_7) && b_10) && accVar2) && neededTransfer > 0.000000000) {
          maskTransfer := Mask[null, P()];
          if (neededTransfer <= maskTransfer) {
            takeTransfer := neededTransfer;
          } else {
            takeTransfer := maskTransfer;
          }
          if (takeTransfer > 0.000000000) {
            neededTransfer := neededTransfer - takeTransfer;
            Used_7Mask := Used_7Mask[null, P():=Used_7Mask[null, P()] + takeTransfer];
            b_10 := b_10 && state(Used_7Heap, Used_7Mask);
            TempMask := ZeroMask[null, P():=FullPerm];
            b_10 := b_10 && IdenticalOnKnownLocations(Heap, Used_7Heap, TempMask);
            Mask := Mask[null, P():=Mask[null, P()] - takeTransfer];
            havoc newPMask;
            assume (forall <A, B> o_16: Ref, f_21: (Field A B) ::
              { newPMask[o_16, f_21] }
              Heap[null, wand_1#sm(true, 1 / 1, 1 / 1)][o_16, f_21] || Heap[null, P#sm()][o_16, f_21] ==> newPMask[o_16, f_21]
            );
            Heap := Heap[null, wand_1#sm(true, 1 / 1, 1 / 1):=newPMask];
          }
        }
      assert {:msg "  Packaging wand might fail. There might be insufficient permission to access P() (issue198.vpr@15.3--18.4) [129691]"}
        (b_7 && b_7) && b_10 ==> neededTransfer == 0.000000000 && Used_7Mask[null, P()] == initNeededTransfer;
      
      // -- Creating state which is the sum of the two previously built up states
        b_11 := b_7 && b_10;
        b_11 := b_11 && state(Result_1Heap, Result_1Mask);
        b_11 := b_11 && sumMask(Result_1Mask, Ops_3Mask, Used_7Mask);
        b_11 := (b_11 && IdenticalOnKnownLocations(Ops_3Heap, Result_1Heap, Ops_3Mask)) && IdenticalOnKnownLocations(Used_7Heap, Result_1Heap, Used_7Mask);
        b_11 := b_11 && state(Result_1Heap, Result_1Mask);
      b_7 := b_7 && b_11;
    
    // -- Transfer of acc(P(), 1 / 1)
      neededTransfer := 1 / 1;
      initNeededTransfer := Used_7Mask[null, P()] + neededTransfer;
      assert {:msg "  Packaging wand might fail. Fraction acc(P(), 1 / 1) might be negative. (issue198.vpr@15.3--18.4) [129692]"}
        neededTransfer >= 0.000000000;
      
      // -- transfer code for top state of stack
        // accumulate constraints which need to be satisfied for transfer to occur
        accVar2 := true;
        // actual code for the transfer from current state on stack
        if ((((b_7 && b_7) && b_10) && accVar2) && neededTransfer > 0.000000000) {
          maskTransfer := Ops_3Mask[null, P()];
          if (neededTransfer <= maskTransfer) {
            takeTransfer := neededTransfer;
          } else {
            takeTransfer := maskTransfer;
          }
          if (takeTransfer > 0.000000000) {
            neededTransfer := neededTransfer - takeTransfer;
            Used_7Mask := Used_7Mask[null, P():=Used_7Mask[null, P()] + takeTransfer];
            b_10 := b_10 && state(Used_7Heap, Used_7Mask);
            TempMask := ZeroMask[null, P():=FullPerm];
            b_10 := b_10 && IdenticalOnKnownLocations(Ops_3Heap, Used_7Heap, TempMask);
            Ops_3Mask := Ops_3Mask[null, P():=Ops_3Mask[null, P()] - takeTransfer];
          }
        }
      
      // -- transfer code for top state of stack
        // accumulate constraints which need to be satisfied for transfer to occur
        accVar2 := true;
        // actual code for the transfer from current state on stack
        if ((((b_7 && b_7) && b_10) && accVar2) && neededTransfer > 0.000000000) {
          maskTransfer := Mask[null, P()];
          if (neededTransfer <= maskTransfer) {
            takeTransfer := neededTransfer;
          } else {
            takeTransfer := maskTransfer;
          }
          if (takeTransfer > 0.000000000) {
            neededTransfer := neededTransfer - takeTransfer;
            Used_7Mask := Used_7Mask[null, P():=Used_7Mask[null, P()] + takeTransfer];
            b_10 := b_10 && state(Used_7Heap, Used_7Mask);
            TempMask := ZeroMask[null, P():=FullPerm];
            b_10 := b_10 && IdenticalOnKnownLocations(Heap, Used_7Heap, TempMask);
            Mask := Mask[null, P():=Mask[null, P()] - takeTransfer];
            havoc newPMask;
            assume (forall <A, B> o_52: Ref, f_55: (Field A B) ::
              { newPMask[o_52, f_55] }
              Heap[null, wand_1#sm(true, 1 / 1, 1 / 1)][o_52, f_55] || Heap[null, P#sm()][o_52, f_55] ==> newPMask[o_52, f_55]
            );
            Heap := Heap[null, wand_1#sm(true, 1 / 1, 1 / 1):=newPMask];
          }
        }
      assert {:msg "  Packaging wand might fail. There might be insufficient permission to access P() (issue198.vpr@15.3--18.4) [129693]"}
        (b_7 && b_7) && b_10 ==> neededTransfer == 0.000000000 && Used_7Mask[null, P()] == initNeededTransfer;
      
      // -- Creating state which is the sum of the two previously built up states
        b_12 := b_7 && b_10;
        b_12 := b_12 && state(Result_2Heap, Result_2Mask);
        b_12 := b_12 && sumMask(Result_2Mask, Ops_3Mask, Used_7Mask);
        b_12 := (b_12 && IdenticalOnKnownLocations(Ops_3Heap, Result_2Heap, Ops_3Mask)) && IdenticalOnKnownLocations(Used_7Heap, Result_2Heap, Used_7Mask);
        b_12 := b_12 && state(Result_2Heap, Result_2Mask);
      b_7 := b_7 && b_12;
    Mask := Mask[null, wand_1(true, 1 / 1, 1 / 1):=Mask[null, wand_1(true, 1 / 1, 1 / 1)] + FullPerm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test03
// ==================================================

procedure test03() returns ()
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var Ops_5Heap: HeapType;
  var Ops_5Mask: MaskType;
  var b_14: bool;
  var Used_8Heap: HeapType;
  var Used_8Mask: MaskType;
  var b_13: bool;
  var Labellhs5Heap: HeapType;
  var Labellhs5Mask: MaskType;
  var boolCur_2: bool;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var Used_9Heap: HeapType;
  var Used_9Mask: MaskType;
  var b_15: bool;
  var perm: Perm;
  var freshVersion: FrameType;
  var Used_10Heap: HeapType;
  var Used_10Mask: MaskType;
  var b_16: bool;
  var Used_11Heap: HeapType;
  var Used_11Mask: MaskType;
  var b_17: bool;
  var neededTransfer: Perm;
  var initNeededTransfer: Perm;
  var accVar2: bool;
  var maskTransfer: Perm;
  var takeTransfer: Perm;
  var TempMask: MaskType;
  var newPMask: PMaskType;
  var b_18: bool;
  var Result_3Heap: HeapType;
  var Result_3Mask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: package true --* acc(P(), 2 / 1) {
  //   fold acc(P(), write)
  //   fold acc(P(), write)
  // } -- issue198.vpr@22.3--25.4
    havoc Ops_5Heap;
    Ops_5Mask := ZeroMask;
    b_14 := b_14 && state(Ops_5Heap, Ops_5Mask);
    havoc Used_8Heap;
    Used_8Mask := ZeroMask;
    b_13 := b_13 && state(Used_8Heap, Used_8Mask);
    // Inhaling left hand side of current wand into hypothetical state
    if (b_14) {
      b_14 := b_14;
    }
    b_14 := b_14 && state(Ops_5Heap, Ops_5Mask);
    
    // -- Translating statement: label lhs5 -- issue198.vpr@22.11--22.33
      lhs5:
      Labellhs5Heap := Ops_5Heap;
      Labellhs5Mask := Ops_5Mask;
      b_14 := b_14 && state(Ops_5Heap, Ops_5Mask);
    boolCur_2 := true;
    if (b_14) {
      
      // -- Translating statement: fold acc(P(), write) -- issue198.vpr@23.5--23.13
        ExhaleWellDef0Heap := Ops_5Heap;
        ExhaleWellDef0Mask := Ops_5Mask;
        havoc Used_9Heap;
        Used_9Mask := ZeroMask;
        b_15 := b_15 && state(Used_9Heap, Used_9Mask);
        b_14 := b_14 && b_15;
        b_14 := b_14 && Used_9Heap == Ops_5Heap;
        perm := FullPerm;
        b_14 := b_14;
        Ops_5Mask := Ops_5Mask[null, P():=Ops_5Mask[null, P()] + perm];
        b_14 := b_14 && state(Ops_5Heap, Ops_5Mask);
        b_14 := b_14 && state(Ops_5Heap, Ops_5Mask);
        assume P#trigger(Ops_5Heap, P());
        assume Ops_5Heap[null, P()] == EmptyFrame;
        if (!HasDirectPerm(Ops_5Mask, null, P())) {
          Ops_5Heap := Ops_5Heap[null, P#sm():=ZeroPMask];
          havoc freshVersion;
          Ops_5Heap := Ops_5Heap[null, P():=freshVersion];
        }
        assume state(Ops_5Heap, Ops_5Mask);
        b_14 := b_14 && state(Ops_5Heap, Ops_5Mask);
    }
    if (b_14) {
      
      // -- Translating statement: fold acc(P(), write) -- issue198.vpr@24.5--24.13
        ExhaleWellDef0Heap := Ops_5Heap;
        ExhaleWellDef0Mask := Ops_5Mask;
        havoc Used_10Heap;
        Used_10Mask := ZeroMask;
        b_16 := b_16 && state(Used_10Heap, Used_10Mask);
        b_14 := b_14 && b_16;
        b_14 := b_14 && Used_10Heap == Ops_5Heap;
        perm := FullPerm;
        b_14 := b_14;
        Ops_5Mask := Ops_5Mask[null, P():=Ops_5Mask[null, P()] + perm];
        b_14 := b_14 && state(Ops_5Heap, Ops_5Mask);
        b_14 := b_14 && state(Ops_5Heap, Ops_5Mask);
        assume P#trigger(Ops_5Heap, P());
        assume Ops_5Heap[null, P()] == EmptyFrame;
        if (!HasDirectPerm(Ops_5Mask, null, P())) {
          Ops_5Heap := Ops_5Heap[null, P#sm():=ZeroPMask];
          havoc freshVersion;
          Ops_5Heap := Ops_5Heap[null, P():=freshVersion];
        }
        assume state(Ops_5Heap, Ops_5Mask);
        b_14 := b_14 && state(Ops_5Heap, Ops_5Mask);
    }
    // Translating exec of non-ghost operationacc(P(), 2 / 1)
    havoc Used_11Heap;
    Used_11Mask := ZeroMask;
    b_17 := b_17 && state(Used_11Heap, Used_11Mask);
    
    // -- Transfer of acc(P(), 2 / 1)
      neededTransfer := 2 / 1;
      initNeededTransfer := Used_11Mask[null, P()] + neededTransfer;
      assert {:msg "  Packaging wand might fail. Fraction acc(P(), 2 / 1) might be negative. (issue198.vpr@22.3--25.4) [129700]"}
        neededTransfer >= 0.000000000;
      
      // -- transfer code for top state of stack
        // accumulate constraints which need to be satisfied for transfer to occur
        accVar2 := true;
        // actual code for the transfer from current state on stack
        if ((((b_14 && b_14) && b_17) && accVar2) && neededTransfer > 0.000000000) {
          maskTransfer := Ops_5Mask[null, P()];
          if (neededTransfer <= maskTransfer) {
            takeTransfer := neededTransfer;
          } else {
            takeTransfer := maskTransfer;
          }
          if (takeTransfer > 0.000000000) {
            neededTransfer := neededTransfer - takeTransfer;
            Used_11Mask := Used_11Mask[null, P():=Used_11Mask[null, P()] + takeTransfer];
            b_17 := b_17 && state(Used_11Heap, Used_11Mask);
            TempMask := ZeroMask[null, P():=FullPerm];
            b_17 := b_17 && IdenticalOnKnownLocations(Ops_5Heap, Used_11Heap, TempMask);
            Ops_5Mask := Ops_5Mask[null, P():=Ops_5Mask[null, P()] - takeTransfer];
          }
        }
      
      // -- transfer code for top state of stack
        // accumulate constraints which need to be satisfied for transfer to occur
        accVar2 := true;
        // actual code for the transfer from current state on stack
        if ((((b_14 && b_14) && b_17) && accVar2) && neededTransfer > 0.000000000) {
          maskTransfer := Mask[null, P()];
          if (neededTransfer <= maskTransfer) {
            takeTransfer := neededTransfer;
          } else {
            takeTransfer := maskTransfer;
          }
          if (takeTransfer > 0.000000000) {
            neededTransfer := neededTransfer - takeTransfer;
            Used_11Mask := Used_11Mask[null, P():=Used_11Mask[null, P()] + takeTransfer];
            b_17 := b_17 && state(Used_11Heap, Used_11Mask);
            TempMask := ZeroMask[null, P():=FullPerm];
            b_17 := b_17 && IdenticalOnKnownLocations(Heap, Used_11Heap, TempMask);
            Mask := Mask[null, P():=Mask[null, P()] - takeTransfer];
            havoc newPMask;
            assume (forall <A, B> o_53: Ref, f_56: (Field A B) ::
              { newPMask[o_53, f_56] }
              Heap[null, wand#sm(true, 2 / 1)][o_53, f_56] || Heap[null, P#sm()][o_53, f_56] ==> newPMask[o_53, f_56]
            );
            Heap := Heap[null, wand#sm(true, 2 / 1):=newPMask];
          }
        }
      assert {:msg "  Packaging wand might fail. There might be insufficient permission to access P() (issue198.vpr@22.3--25.4) [129701]"}
        (b_14 && b_14) && b_17 ==> neededTransfer == 0.000000000 && Used_11Mask[null, P()] == initNeededTransfer;
      
      // -- Creating state which is the sum of the two previously built up states
        b_18 := b_14 && b_17;
        b_18 := b_18 && state(Result_3Heap, Result_3Mask);
        b_18 := b_18 && sumMask(Result_3Mask, Ops_5Mask, Used_11Mask);
        b_18 := (b_18 && IdenticalOnKnownLocations(Ops_5Heap, Result_3Heap, Ops_5Mask)) && IdenticalOnKnownLocations(Used_11Heap, Result_3Heap, Used_11Mask);
        b_18 := b_18 && state(Result_3Heap, Result_3Mask);
      b_14 := b_14 && b_18;
    Mask := Mask[null, wand(true, 2 / 1):=Mask[null, wand(true, 2 / 1)] + FullPerm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test04
// ==================================================

procedure test04() returns ()
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var Ops_7Heap: HeapType;
  var Ops_7Mask: MaskType;
  var b_20: bool;
  var Used_12Heap: HeapType;
  var Used_12Mask: MaskType;
  var b_19: bool;
  var Labellhs7Heap: HeapType;
  var Labellhs7Mask: MaskType;
  var boolCur_3: bool;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var Used_13Heap: HeapType;
  var Used_13Mask: MaskType;
  var b_21: bool;
  var perm: Perm;
  var freshVersion: FrameType;
  var Used_14Heap: HeapType;
  var Used_14Mask: MaskType;
  var b_22: bool;
  var Used_15Heap: HeapType;
  var Used_15Mask: MaskType;
  var b_23: bool;
  var neededTransfer: Perm;
  var initNeededTransfer: Perm;
  var accVar2: bool;
  var maskTransfer: Perm;
  var takeTransfer: Perm;
  var TempMask: MaskType;
  var newPMask: PMaskType;
  var b_24_1: bool;
  var Result_4Heap: HeapType;
  var Result_4Mask: MaskType;
  var b_25: bool;
  var Result_5Heap: HeapType;
  var Result_5Mask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: package true --* acc(P(), 1 / 1) && acc(Q(), 1 / 1) {
  //   fold acc(P(), write)
  //   fold acc(Q(), write)
  // } -- issue198.vpr@29.3--32.4
    havoc Ops_7Heap;
    Ops_7Mask := ZeroMask;
    b_20 := b_20 && state(Ops_7Heap, Ops_7Mask);
    havoc Used_12Heap;
    Used_12Mask := ZeroMask;
    b_19 := b_19 && state(Used_12Heap, Used_12Mask);
    // Inhaling left hand side of current wand into hypothetical state
    if (b_20) {
      b_20 := b_20;
    }
    b_20 := b_20 && state(Ops_7Heap, Ops_7Mask);
    
    // -- Translating statement: label lhs7 -- issue198.vpr@29.11--29.50
      lhs7:
      Labellhs7Heap := Ops_7Heap;
      Labellhs7Mask := Ops_7Mask;
      b_20 := b_20 && state(Ops_7Heap, Ops_7Mask);
    boolCur_3 := true;
    if (b_20) {
      
      // -- Translating statement: fold acc(P(), write) -- issue198.vpr@30.7--30.15
        ExhaleWellDef0Heap := Ops_7Heap;
        ExhaleWellDef0Mask := Ops_7Mask;
        havoc Used_13Heap;
        Used_13Mask := ZeroMask;
        b_21 := b_21 && state(Used_13Heap, Used_13Mask);
        b_20 := b_20 && b_21;
        b_20 := b_20 && Used_13Heap == Ops_7Heap;
        perm := FullPerm;
        b_20 := b_20;
        Ops_7Mask := Ops_7Mask[null, P():=Ops_7Mask[null, P()] + perm];
        b_20 := b_20 && state(Ops_7Heap, Ops_7Mask);
        b_20 := b_20 && state(Ops_7Heap, Ops_7Mask);
        assume P#trigger(Ops_7Heap, P());
        assume Ops_7Heap[null, P()] == EmptyFrame;
        if (!HasDirectPerm(Ops_7Mask, null, P())) {
          Ops_7Heap := Ops_7Heap[null, P#sm():=ZeroPMask];
          havoc freshVersion;
          Ops_7Heap := Ops_7Heap[null, P():=freshVersion];
        }
        assume state(Ops_7Heap, Ops_7Mask);
        b_20 := b_20 && state(Ops_7Heap, Ops_7Mask);
    }
    if (b_20) {
      
      // -- Translating statement: fold acc(Q(), write) -- issue198.vpr@31.7--31.15
        ExhaleWellDef0Heap := Ops_7Heap;
        ExhaleWellDef0Mask := Ops_7Mask;
        havoc Used_14Heap;
        Used_14Mask := ZeroMask;
        b_22 := b_22 && state(Used_14Heap, Used_14Mask);
        b_20 := b_20 && b_22;
        b_20 := b_20 && Used_14Heap == Ops_7Heap;
        perm := FullPerm;
        b_20 := b_20;
        Ops_7Mask := Ops_7Mask[null, Q():=Ops_7Mask[null, Q()] + perm];
        b_20 := b_20 && state(Ops_7Heap, Ops_7Mask);
        b_20 := b_20 && state(Ops_7Heap, Ops_7Mask);
        assume Q#trigger(Ops_7Heap, Q());
        assume Ops_7Heap[null, Q()] == EmptyFrame;
        if (!HasDirectPerm(Ops_7Mask, null, Q())) {
          Ops_7Heap := Ops_7Heap[null, Q#sm():=ZeroPMask];
          havoc freshVersion;
          Ops_7Heap := Ops_7Heap[null, Q():=freshVersion];
        }
        assume state(Ops_7Heap, Ops_7Mask);
        b_20 := b_20 && state(Ops_7Heap, Ops_7Mask);
    }
    // Translating exec of non-ghost operationacc(P(), 1 / 1) && acc(Q(), 1 / 1)
    havoc Used_15Heap;
    Used_15Mask := ZeroMask;
    b_23 := b_23 && state(Used_15Heap, Used_15Mask);
    
    // -- Transfer of acc(P(), 1 / 1)
      neededTransfer := 1 / 1;
      initNeededTransfer := Used_15Mask[null, P()] + neededTransfer;
      assert {:msg "  Packaging wand might fail. Fraction acc(P(), 1 / 1) might be negative. (issue198.vpr@29.3--32.4) [129708]"}
        neededTransfer >= 0.000000000;
      
      // -- transfer code for top state of stack
        // accumulate constraints which need to be satisfied for transfer to occur
        accVar2 := true;
        // actual code for the transfer from current state on stack
        if ((((b_20 && b_20) && b_23) && accVar2) && neededTransfer > 0.000000000) {
          maskTransfer := Ops_7Mask[null, P()];
          if (neededTransfer <= maskTransfer) {
            takeTransfer := neededTransfer;
          } else {
            takeTransfer := maskTransfer;
          }
          if (takeTransfer > 0.000000000) {
            neededTransfer := neededTransfer - takeTransfer;
            Used_15Mask := Used_15Mask[null, P():=Used_15Mask[null, P()] + takeTransfer];
            b_23 := b_23 && state(Used_15Heap, Used_15Mask);
            TempMask := ZeroMask[null, P():=FullPerm];
            b_23 := b_23 && IdenticalOnKnownLocations(Ops_7Heap, Used_15Heap, TempMask);
            Ops_7Mask := Ops_7Mask[null, P():=Ops_7Mask[null, P()] - takeTransfer];
          }
        }
      
      // -- transfer code for top state of stack
        // accumulate constraints which need to be satisfied for transfer to occur
        accVar2 := true;
        // actual code for the transfer from current state on stack
        if ((((b_20 && b_20) && b_23) && accVar2) && neededTransfer > 0.000000000) {
          maskTransfer := Mask[null, P()];
          if (neededTransfer <= maskTransfer) {
            takeTransfer := neededTransfer;
          } else {
            takeTransfer := maskTransfer;
          }
          if (takeTransfer > 0.000000000) {
            neededTransfer := neededTransfer - takeTransfer;
            Used_15Mask := Used_15Mask[null, P():=Used_15Mask[null, P()] + takeTransfer];
            b_23 := b_23 && state(Used_15Heap, Used_15Mask);
            TempMask := ZeroMask[null, P():=FullPerm];
            b_23 := b_23 && IdenticalOnKnownLocations(Heap, Used_15Heap, TempMask);
            Mask := Mask[null, P():=Mask[null, P()] - takeTransfer];
            havoc newPMask;
            assume (forall <A, B> o_26: Ref, f_29: (Field A B) ::
              { newPMask[o_26, f_29] }
              Heap[null, wand_2#sm(true, 1 / 1, 1 / 1)][o_26, f_29] || Heap[null, P#sm()][o_26, f_29] ==> newPMask[o_26, f_29]
            );
            Heap := Heap[null, wand_2#sm(true, 1 / 1, 1 / 1):=newPMask];
          }
        }
      assert {:msg "  Packaging wand might fail. There might be insufficient permission to access P() (issue198.vpr@29.3--32.4) [129709]"}
        (b_20 && b_20) && b_23 ==> neededTransfer == 0.000000000 && Used_15Mask[null, P()] == initNeededTransfer;
      
      // -- Creating state which is the sum of the two previously built up states
        b_24_1 := b_20 && b_23;
        b_24_1 := b_24_1 && state(Result_4Heap, Result_4Mask);
        b_24_1 := b_24_1 && sumMask(Result_4Mask, Ops_7Mask, Used_15Mask);
        b_24_1 := (b_24_1 && IdenticalOnKnownLocations(Ops_7Heap, Result_4Heap, Ops_7Mask)) && IdenticalOnKnownLocations(Used_15Heap, Result_4Heap, Used_15Mask);
        b_24_1 := b_24_1 && state(Result_4Heap, Result_4Mask);
      b_20 := b_20 && b_24_1;
    
    // -- Transfer of acc(Q(), 1 / 1)
      neededTransfer := 1 / 1;
      initNeededTransfer := Used_15Mask[null, Q()] + neededTransfer;
      assert {:msg "  Packaging wand might fail. Fraction acc(Q(), 1 / 1) might be negative. (issue198.vpr@29.3--32.4) [129710]"}
        neededTransfer >= 0.000000000;
      
      // -- transfer code for top state of stack
        // accumulate constraints which need to be satisfied for transfer to occur
        accVar2 := true;
        // actual code for the transfer from current state on stack
        if ((((b_20 && b_20) && b_23) && accVar2) && neededTransfer > 0.000000000) {
          maskTransfer := Ops_7Mask[null, Q()];
          if (neededTransfer <= maskTransfer) {
            takeTransfer := neededTransfer;
          } else {
            takeTransfer := maskTransfer;
          }
          if (takeTransfer > 0.000000000) {
            neededTransfer := neededTransfer - takeTransfer;
            Used_15Mask := Used_15Mask[null, Q():=Used_15Mask[null, Q()] + takeTransfer];
            b_23 := b_23 && state(Used_15Heap, Used_15Mask);
            TempMask := ZeroMask[null, Q():=FullPerm];
            b_23 := b_23 && IdenticalOnKnownLocations(Ops_7Heap, Used_15Heap, TempMask);
            Ops_7Mask := Ops_7Mask[null, Q():=Ops_7Mask[null, Q()] - takeTransfer];
          }
        }
      
      // -- transfer code for top state of stack
        // accumulate constraints which need to be satisfied for transfer to occur
        accVar2 := true;
        // actual code for the transfer from current state on stack
        if ((((b_20 && b_20) && b_23) && accVar2) && neededTransfer > 0.000000000) {
          maskTransfer := Mask[null, Q()];
          if (neededTransfer <= maskTransfer) {
            takeTransfer := neededTransfer;
          } else {
            takeTransfer := maskTransfer;
          }
          if (takeTransfer > 0.000000000) {
            neededTransfer := neededTransfer - takeTransfer;
            Used_15Mask := Used_15Mask[null, Q():=Used_15Mask[null, Q()] + takeTransfer];
            b_23 := b_23 && state(Used_15Heap, Used_15Mask);
            TempMask := ZeroMask[null, Q():=FullPerm];
            b_23 := b_23 && IdenticalOnKnownLocations(Heap, Used_15Heap, TempMask);
            Mask := Mask[null, Q():=Mask[null, Q()] - takeTransfer];
            havoc newPMask;
            assume (forall <A, B> o: Ref, f_85: (Field A B) ::
              { newPMask[o, f_85] }
              Heap[null, wand_2#sm(true, 1 / 1, 1 / 1)][o, f_85] || Heap[null, Q#sm()][o, f_85] ==> newPMask[o, f_85]
            );
            Heap := Heap[null, wand_2#sm(true, 1 / 1, 1 / 1):=newPMask];
          }
        }
      assert {:msg "  Packaging wand might fail. There might be insufficient permission to access Q() (issue198.vpr@29.3--32.4) [129711]"}
        (b_20 && b_20) && b_23 ==> neededTransfer == 0.000000000 && Used_15Mask[null, Q()] == initNeededTransfer;
      
      // -- Creating state which is the sum of the two previously built up states
        b_25 := b_20 && b_23;
        b_25 := b_25 && state(Result_5Heap, Result_5Mask);
        b_25 := b_25 && sumMask(Result_5Mask, Ops_7Mask, Used_15Mask);
        b_25 := (b_25 && IdenticalOnKnownLocations(Ops_7Heap, Result_5Heap, Ops_7Mask)) && IdenticalOnKnownLocations(Used_15Heap, Result_5Heap, Used_15Mask);
        b_25 := b_25 && state(Result_5Heap, Result_5Mask);
      b_20 := b_20 && b_25;
    Mask := Mask[null, wand_2(true, 1 / 1, 1 / 1):=Mask[null, wand_2(true, 1 / 1, 1 / 1)] + FullPerm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
}