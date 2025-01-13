// 
// Translation of Viper program.
// 
// Date:         2025-01-13 13:03:05
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/wands/regression/PackageStateConsolidation.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/wands/regression/PackageStateConsolidation-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
function  wand(arg1: bool, arg2: bool): Field WandType_wand int;
function  wand#sm(arg1: bool, arg2: bool): Field WandType_wand PMaskType;
function  wand#ft(arg1: bool, arg2: bool): Field WandType_wand FrameType;
axiom (forall arg1: bool, arg2: bool ::
  { wand(arg1, arg2) }
  IsWandField(wand(arg1, arg2))
);
axiom (forall arg1: bool, arg2: bool ::
  { wand#ft(arg1, arg2) }
  IsWandField(wand#ft(arg1, arg2))
);
axiom (forall arg1: bool, arg2: bool ::
  { wand(arg1, arg2) }
  !IsPredicateField(wand(arg1, arg2))
);
axiom (forall arg1: bool, arg2: bool ::
  { wand#ft(arg1, arg2) }
  !IsPredicateField(wand#ft(arg1, arg2))
);
axiom (forall arg1: bool, arg2: bool ::
  { WandMaskField(wand#ft(arg1, arg2)) }
  wand#sm(arg1, arg2) == WandMaskField(wand#ft(arg1, arg2))
);
axiom (forall arg1: bool, arg2: bool ::
  { wand(arg1, arg2) }
  getPredWandId(wand(arg1, arg2)) == 0
);
axiom (forall arg1: bool, arg2: bool, arg1_2: bool, arg2_2: bool ::
  { wand(arg1, arg2), wand(arg1_2, arg2_2) }
  wand(arg1, arg2) == wand(arg1_2, arg2_2) ==> arg1 == arg1_2 && arg2 == arg2_2
);

// ==================================================
// Translation of all fields
// ==================================================

const unique f_7: Field NormalField int;
axiom !IsPredicateField(f_7);
axiom !IsWandField(f_7);

// ==================================================
// Translation of method test01
// ==================================================

procedure test01(x: Ref, y: Ref, z: Ref) returns ()
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var perm: Perm;
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
  var rcvLocal: Ref;
  var neededTransfer: Perm;
  var initNeededTransfer: Perm;
  var accVar2: bool;
  var maskTransfer: Perm;
  var takeTransfer: Perm;
  var b_4: bool;
  var ResultHeap: HeapType;
  var ResultMask: MaskType;
  var ExhaleHeap: HeapType;
  var Ops_3Heap: HeapType;
  var Ops_3Mask: MaskType;
  var b_6: bool;
  var Used_3Heap: HeapType;
  var Used_3Mask: MaskType;
  var b_5: bool;
  var Labellhs3Heap: HeapType;
  var Labellhs3Mask: MaskType;
  var boolCur_1: bool;
  var Used_4Heap: HeapType;
  var Used_4Mask: MaskType;
  var b_7: bool;
  var b_8: bool;
  var Result_1Heap: HeapType;
  var Result_1Mask: MaskType;
  var Used_5Heap: HeapType;
  var Used_5Mask: MaskType;
  var b_9: bool;
  var Used_6Heap: HeapType;
  var Used_6Mask: MaskType;
  var b_10: bool;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[x, $allocated];
    assume Heap[y, $allocated];
    assume Heap[z, $allocated];
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: inhale acc(x.f, 1 / 2) -- PackageStateConsolidation.vpr@8.3--8.23
    perm := 1 / 2;
    assert {:msg "  Inhale might fail. Fraction 1 / 2 might be negative. (PackageStateConsolidation.vpr@8.10--8.23) [127372]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> x != null;
    Mask := Mask[x, f_7:=Mask[x, f_7] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale acc(y.f, 1 / 2) -- PackageStateConsolidation.vpr@9.3--9.23
    perm := 1 / 2;
    assert {:msg "  Inhale might fail. Fraction 1 / 2 might be negative. (PackageStateConsolidation.vpr@9.10--9.23) [127373]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> y != null;
    Mask := Mask[y, f_7:=Mask[y, f_7] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale acc(z.f, write) -- PackageStateConsolidation.vpr@10.3--10.18
    perm := FullPerm;
    assume z != null;
    Mask := Mask[z, f_7:=Mask[z, f_7] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale x == y -- PackageStateConsolidation.vpr@11.10--11.16
    assume x == y;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: package true --* true {
  //   assert z != x
  //   exhale acc(x.f, write)
  //   inhale acc(x.f, 1 / 2)
  //   inhale acc(y.f, 1 / 2)
  //   package true --* true {
  //     exhale acc(y.f, write)
  //   }
  // } -- PackageStateConsolidation.vpr@13.3--21.4
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
    
    // -- Translating statement: label lhs1 -- PackageStateConsolidation.vpr@13.11--13.24
      lhs1:
      Labellhs1Heap := Ops_1Heap;
      Labellhs1Mask := Ops_1Mask;
      b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
    boolCur := true;
    if (b_1_1) {
      
      // -- Translating statement: assert z != x -- PackageStateConsolidation.vpr@14.5--14.18
        ExhaleWellDef0Heap := Ops_1Heap;
        ExhaleWellDef0Mask := Ops_1Mask;
        havoc Used_1Heap;
        Used_1Mask := ZeroMask;
        b_2_1 := b_2_1 && state(Used_1Heap, Used_1Mask);
        assert {:msg "  Assert might fail. Assertion z != x might not hold. (PackageStateConsolidation.vpr@14.12--14.18) [127375]"}
          b_1_1 && b_2_1 ==> z != x;
        b_1_1 := b_1_1 && b_2_1;
        b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
    }
    if (b_1_1) {
      
      // -- Translating statement: exhale acc(x.f, write) -- PackageStateConsolidation.vpr@15.5--15.20
        ExhaleWellDef0Heap := Ops_1Heap;
        ExhaleWellDef0Mask := Ops_1Mask;
        havoc Used_2Heap;
        Used_2Mask := ZeroMask;
        b_3 := b_3 && state(Used_2Heap, Used_2Mask);
        
        // -- Transfer of acc(x.f, write)
          rcvLocal := x;
          neededTransfer := FullPerm;
          initNeededTransfer := Used_2Mask[rcvLocal, f_7] + neededTransfer;
          assert {:msg "  Exhale might fail. Fraction acc(x.f, write) might be negative. (PackageStateConsolidation.vpr@15.12--15.20) [127376]"}
            neededTransfer >= 0.000000000;
          
          // -- transfer code for top state of stack
            // accumulate constraints which need to be satisfied for transfer to occur
            accVar2 := true;
            // actual code for the transfer from current state on stack
            if (((b_1_1 && b_3) && accVar2) && neededTransfer > 0.000000000) {
              maskTransfer := Ops_1Mask[rcvLocal, f_7];
              if (neededTransfer <= maskTransfer) {
                takeTransfer := neededTransfer;
              } else {
                takeTransfer := maskTransfer;
              }
              if (takeTransfer > 0.000000000) {
                neededTransfer := neededTransfer - takeTransfer;
                Used_2Mask := Used_2Mask[rcvLocal, f_7:=Used_2Mask[rcvLocal, f_7] + takeTransfer];
                b_3 := b_3 && state(Used_2Heap, Used_2Mask);
                b_3 := b_3 && Ops_1Heap[rcvLocal, f_7] == Used_2Heap[rcvLocal, f_7];
                Ops_1Mask := Ops_1Mask[rcvLocal, f_7:=Ops_1Mask[rcvLocal, f_7] - takeTransfer];
              }
            }
          
          // -- transfer code for top state of stack
            // accumulate constraints which need to be satisfied for transfer to occur
            accVar2 := true;
            // actual code for the transfer from current state on stack
            if (((b_1_1 && b_3) && accVar2) && neededTransfer > 0.000000000) {
              maskTransfer := Mask[rcvLocal, f_7];
              if (neededTransfer <= maskTransfer) {
                takeTransfer := neededTransfer;
              } else {
                takeTransfer := maskTransfer;
              }
              if (takeTransfer > 0.000000000) {
                neededTransfer := neededTransfer - takeTransfer;
                Used_2Mask := Used_2Mask[rcvLocal, f_7:=Used_2Mask[rcvLocal, f_7] + takeTransfer];
                b_3 := b_3 && state(Used_2Heap, Used_2Mask);
                b_3 := b_3 && Heap[rcvLocal, f_7] == Used_2Heap[rcvLocal, f_7];
                Mask := Mask[rcvLocal, f_7:=Mask[rcvLocal, f_7] - takeTransfer];
                Heap := Heap[null, wand#sm(true, true):=Heap[null, wand#sm(true, true)][x, f_7:=true]];
              }
            }
          assert {:msg "  Exhale might fail. There might be insufficient permission to access x.f (PackageStateConsolidation.vpr@15.12--15.20) [127377]"}
            b_1_1 && b_3 ==> neededTransfer == 0.000000000 && Used_2Mask[rcvLocal, f_7] == initNeededTransfer;
          
          // -- Creating state which is the sum of the two previously built up states
            b_4 := b_1_1 && b_3;
            b_4 := b_4 && state(ResultHeap, ResultMask);
            b_4 := b_4 && sumMask(ResultMask, Ops_1Mask, Used_2Mask);
            b_4 := (b_4 && IdenticalOnKnownLocations(Ops_1Heap, ResultHeap, Ops_1Mask)) && IdenticalOnKnownLocations(Used_2Heap, ResultHeap, Used_2Mask);
            b_4 := b_4 && state(ResultHeap, ResultMask);
          b_1_1 := b_1_1 && b_4;
        b_1_1 := b_1_1 && b_3;
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Ops_1Heap, ExhaleHeap, Ops_1Mask);
        Ops_1Heap := ExhaleHeap;
        b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
    }
    if (b_1_1) {
      
      // -- Translating statement: inhale acc(x.f, 1 / 2) -- PackageStateConsolidation.vpr@16.5--16.25
        if (b_1_1) {
          perm := 1 / 2;
          assert {:msg "  Inhale might fail. Fraction 1 / 2 might be negative. (PackageStateConsolidation.vpr@16.12--16.25) [127378]"}
            perm >= NoPerm;
          b_1_1 := b_1_1 && (perm > NoPerm ==> x != null);
          Ops_1Mask := Ops_1Mask[x, f_7:=Ops_1Mask[x, f_7] + perm];
          b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
        }
        assume state(Ops_1Heap, Ops_1Mask);
        b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
    }
    if (b_1_1) {
      
      // -- Translating statement: inhale acc(y.f, 1 / 2) -- PackageStateConsolidation.vpr@17.5--17.25
        if (b_1_1) {
          perm := 1 / 2;
          assert {:msg "  Inhale might fail. Fraction 1 / 2 might be negative. (PackageStateConsolidation.vpr@17.12--17.25) [127379]"}
            perm >= NoPerm;
          b_1_1 := b_1_1 && (perm > NoPerm ==> y != null);
          Ops_1Mask := Ops_1Mask[y, f_7:=Ops_1Mask[y, f_7] + perm];
          b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
        }
        assume state(Ops_1Heap, Ops_1Mask);
        b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
    }
    if (b_1_1) {
      
      // -- Translating statement: package true --* true {
  //   exhale acc(y.f, write)
  // } -- PackageStateConsolidation.vpr@18.5--20.6
        havoc Ops_3Heap;
        Ops_3Mask := ZeroMask;
        b_6 := b_6 && state(Ops_3Heap, Ops_3Mask);
        havoc Used_3Heap;
        Used_3Mask := ZeroMask;
        b_5 := b_5 && state(Used_3Heap, Used_3Mask);
        // Inhaling left hand side of current wand into hypothetical state
        if (b_6) {
          b_6 := b_6;
        }
        b_6 := b_6 && state(Ops_3Heap, Ops_3Mask);
        
        // -- Translating statement: label lhs3 -- PackageStateConsolidation.vpr@18.13--18.26
          lhs3:
          Labellhs3Heap := Ops_3Heap;
          Labellhs3Mask := Ops_3Mask;
          b_6 := b_6 && state(Ops_3Heap, Ops_3Mask);
        boolCur_1 := true;
        if (b_6 && b_1_1) {
          
          // -- Translating statement: exhale acc(y.f, write) -- PackageStateConsolidation.vpr@19.7--19.22
            ExhaleWellDef0Heap := Ops_3Heap;
            ExhaleWellDef0Mask := Ops_3Mask;
            havoc Used_4Heap;
            Used_4Mask := ZeroMask;
            b_7 := b_7 && state(Used_4Heap, Used_4Mask);
            
            // -- Transfer of acc(y.f, write)
              rcvLocal := y;
              neededTransfer := FullPerm;
              initNeededTransfer := Used_4Mask[rcvLocal, f_7] + neededTransfer;
              assert {:msg "  Exhale might fail. Fraction acc(y.f, write) might be negative. (PackageStateConsolidation.vpr@19.14--19.22) [127380]"}
                neededTransfer >= 0.000000000;
              
              // -- transfer code for top state of stack
                // accumulate constraints which need to be satisfied for transfer to occur
                accVar2 := true;
                // actual code for the transfer from current state on stack
                if (((b_6 && b_7) && accVar2) && neededTransfer > 0.000000000) {
                  maskTransfer := Ops_3Mask[rcvLocal, f_7];
                  if (neededTransfer <= maskTransfer) {
                    takeTransfer := neededTransfer;
                  } else {
                    takeTransfer := maskTransfer;
                  }
                  if (takeTransfer > 0.000000000) {
                    neededTransfer := neededTransfer - takeTransfer;
                    Used_4Mask := Used_4Mask[rcvLocal, f_7:=Used_4Mask[rcvLocal, f_7] + takeTransfer];
                    b_7 := b_7 && state(Used_4Heap, Used_4Mask);
                    b_7 := b_7 && Ops_3Heap[rcvLocal, f_7] == Used_4Heap[rcvLocal, f_7];
                    Ops_3Mask := Ops_3Mask[rcvLocal, f_7:=Ops_3Mask[rcvLocal, f_7] - takeTransfer];
                  }
                }
              
              // -- transfer code for top state of stack
                // accumulate constraints which need to be satisfied for transfer to occur
                accVar2 := true;
                // actual code for the transfer from current state on stack
                if (((b_6 && b_7) && accVar2) && neededTransfer > 0.000000000) {
                  maskTransfer := Ops_1Mask[rcvLocal, f_7];
                  if (neededTransfer <= maskTransfer) {
                    takeTransfer := neededTransfer;
                  } else {
                    takeTransfer := maskTransfer;
                  }
                  if (takeTransfer > 0.000000000) {
                    neededTransfer := neededTransfer - takeTransfer;
                    Used_4Mask := Used_4Mask[rcvLocal, f_7:=Used_4Mask[rcvLocal, f_7] + takeTransfer];
                    b_7 := b_7 && state(Used_4Heap, Used_4Mask);
                    b_7 := b_7 && Ops_1Heap[rcvLocal, f_7] == Used_4Heap[rcvLocal, f_7];
                    Ops_1Mask := Ops_1Mask[rcvLocal, f_7:=Ops_1Mask[rcvLocal, f_7] - takeTransfer];
                    Ops_1Heap := Ops_1Heap[null, wand#sm(true, true):=Ops_1Heap[null, wand#sm(true, true)][y, f_7:=true]];
                  }
                }
              
              // -- transfer code for top state of stack
                // accumulate constraints which need to be satisfied for transfer to occur
                accVar2 := true;
                // actual code for the transfer from current state on stack
                if (((b_6 && b_7) && accVar2) && neededTransfer > 0.000000000) {
                  maskTransfer := Mask[rcvLocal, f_7];
                  if (neededTransfer <= maskTransfer) {
                    takeTransfer := neededTransfer;
                  } else {
                    takeTransfer := maskTransfer;
                  }
                  if (takeTransfer > 0.000000000) {
                    neededTransfer := neededTransfer - takeTransfer;
                    Used_4Mask := Used_4Mask[rcvLocal, f_7:=Used_4Mask[rcvLocal, f_7] + takeTransfer];
                    b_7 := b_7 && state(Used_4Heap, Used_4Mask);
                    b_7 := b_7 && Heap[rcvLocal, f_7] == Used_4Heap[rcvLocal, f_7];
                    Mask := Mask[rcvLocal, f_7:=Mask[rcvLocal, f_7] - takeTransfer];
                    Heap := Heap[null, wand#sm(true, true):=Heap[null, wand#sm(true, true)][y, f_7:=true]];
                  }
                }
              assert {:msg "  Exhale might fail. There might be insufficient permission to access y.f (PackageStateConsolidation.vpr@19.14--19.22) [127381]"}
                b_6 && b_7 ==> neededTransfer == 0.000000000 && Used_4Mask[rcvLocal, f_7] == initNeededTransfer;
              
              // -- Creating state which is the sum of the two previously built up states
                b_8 := b_6 && b_7;
                b_8 := b_8 && state(Result_1Heap, Result_1Mask);
                b_8 := b_8 && sumMask(Result_1Mask, Ops_3Mask, Used_4Mask);
                b_8 := (b_8 && IdenticalOnKnownLocations(Ops_3Heap, Result_1Heap, Ops_3Mask)) && IdenticalOnKnownLocations(Used_4Heap, Result_1Heap, Used_4Mask);
                b_8 := b_8 && state(Result_1Heap, Result_1Mask);
              b_6 := b_6 && b_8;
            b_6 := b_6 && b_7;
            // Finish exhale
            havoc ExhaleHeap;
            assume IdenticalOnKnownLocations(Ops_3Heap, ExhaleHeap, Ops_3Mask);
            Ops_3Heap := ExhaleHeap;
            b_6 := b_6 && state(Ops_3Heap, Ops_3Mask);
        }
        // Translating exec of non-ghost operationtrue
        havoc Used_5Heap;
        Used_5Mask := ZeroMask;
        b_9 := b_9 && state(Used_5Heap, Used_5Mask);
        Ops_1Mask := Ops_1Mask[null, wand(true, true):=Ops_1Mask[null, wand(true, true)] + FullPerm];
        b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
        b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
        b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
    }
    // Translating exec of non-ghost operationtrue
    havoc Used_6Heap;
    Used_6Mask := ZeroMask;
    b_10 := b_10 && state(Used_6Heap, Used_6Mask);
    Mask := Mask[null, wand(true, true):=Mask[null, wand(true, true)] + FullPerm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test02
// ==================================================

procedure test02(x: Ref, z: Ref) returns ()
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var perm: Perm;
  var Ops_5Heap: HeapType;
  var Ops_5Mask: MaskType;
  var b_12: bool;
  var Used_7Heap: HeapType;
  var Used_7Mask: MaskType;
  var b_11: bool;
  var Labellhs5Heap: HeapType;
  var Labellhs5Mask: MaskType;
  var boolCur_2: bool;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var Used_8Heap: HeapType;
  var Used_8Mask: MaskType;
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
  var ExhaleHeap: HeapType;
  var Used_9Heap: HeapType;
  var Used_9Mask: MaskType;
  var b_15: bool;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[x, $allocated];
    assume Heap[z, $allocated];
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: inhale acc(x.f, 1 / 2) -- PackageStateConsolidation.vpr@26.3--26.23
    perm := 1 / 2;
    assert {:msg "  Inhale might fail. Fraction 1 / 2 might be negative. (PackageStateConsolidation.vpr@26.10--26.23) [127384]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> x != null;
    Mask := Mask[x, f_7:=Mask[x, f_7] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale x != z ==> acc(x.f, 1 / 2) -- PackageStateConsolidation.vpr@27.3--27.34
    if (x != z) {
      perm := 1 / 2;
      assert {:msg "  Inhale might fail. Fraction 1 / 2 might be negative. (PackageStateConsolidation.vpr@27.10--27.34) [127385]"}
        perm >= NoPerm;
      assume perm > NoPerm ==> x != null;
      Mask := Mask[x, f_7:=Mask[x, f_7] + perm];
      assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: package true --* true {
  //   inhale acc(z.f, write)
  //   exhale acc(x.f, write)
  // } -- PackageStateConsolidation.vpr@28.3--31.4
    havoc Ops_5Heap;
    Ops_5Mask := ZeroMask;
    b_12 := b_12 && state(Ops_5Heap, Ops_5Mask);
    havoc Used_7Heap;
    Used_7Mask := ZeroMask;
    b_11 := b_11 && state(Used_7Heap, Used_7Mask);
    // Inhaling left hand side of current wand into hypothetical state
    if (b_12) {
      b_12 := b_12;
    }
    b_12 := b_12 && state(Ops_5Heap, Ops_5Mask);
    
    // -- Translating statement: label lhs5 -- PackageStateConsolidation.vpr@28.11--28.24
      lhs5:
      Labellhs5Heap := Ops_5Heap;
      Labellhs5Mask := Ops_5Mask;
      b_12 := b_12 && state(Ops_5Heap, Ops_5Mask);
    boolCur_2 := true;
    if (b_12) {
      
      // -- Translating statement: inhale acc(z.f, write) -- PackageStateConsolidation.vpr@29.5--29.20
        if (b_12) {
          perm := FullPerm;
          b_12 := b_12 && z != null;
          Ops_5Mask := Ops_5Mask[z, f_7:=Ops_5Mask[z, f_7] + perm];
          b_12 := b_12 && state(Ops_5Heap, Ops_5Mask);
        }
        assume state(Ops_5Heap, Ops_5Mask);
        b_12 := b_12 && state(Ops_5Heap, Ops_5Mask);
    }
    if (b_12) {
      
      // -- Translating statement: exhale acc(x.f, write) -- PackageStateConsolidation.vpr@30.5--30.20
        ExhaleWellDef0Heap := Ops_5Heap;
        ExhaleWellDef0Mask := Ops_5Mask;
        havoc Used_8Heap;
        Used_8Mask := ZeroMask;
        b_13 := b_13 && state(Used_8Heap, Used_8Mask);
        
        // -- Transfer of acc(x.f, write)
          rcvLocal := x;
          neededTransfer := FullPerm;
          initNeededTransfer := Used_8Mask[rcvLocal, f_7] + neededTransfer;
          assert {:msg "  Exhale might fail. Fraction acc(x.f, write) might be negative. (PackageStateConsolidation.vpr@30.12--30.20) [127387]"}
            neededTransfer >= 0.000000000;
          
          // -- transfer code for top state of stack
            // accumulate constraints which need to be satisfied for transfer to occur
            accVar2 := true;
            // actual code for the transfer from current state on stack
            if (((b_12 && b_13) && accVar2) && neededTransfer > 0.000000000) {
              maskTransfer := Ops_5Mask[rcvLocal, f_7];
              if (neededTransfer <= maskTransfer) {
                takeTransfer := neededTransfer;
              } else {
                takeTransfer := maskTransfer;
              }
              if (takeTransfer > 0.000000000) {
                neededTransfer := neededTransfer - takeTransfer;
                Used_8Mask := Used_8Mask[rcvLocal, f_7:=Used_8Mask[rcvLocal, f_7] + takeTransfer];
                b_13 := b_13 && state(Used_8Heap, Used_8Mask);
                b_13 := b_13 && Ops_5Heap[rcvLocal, f_7] == Used_8Heap[rcvLocal, f_7];
                Ops_5Mask := Ops_5Mask[rcvLocal, f_7:=Ops_5Mask[rcvLocal, f_7] - takeTransfer];
              }
            }
          
          // -- transfer code for top state of stack
            // accumulate constraints which need to be satisfied for transfer to occur
            accVar2 := true;
            // actual code for the transfer from current state on stack
            if (((b_12 && b_13) && accVar2) && neededTransfer > 0.000000000) {
              maskTransfer := Mask[rcvLocal, f_7];
              if (neededTransfer <= maskTransfer) {
                takeTransfer := neededTransfer;
              } else {
                takeTransfer := maskTransfer;
              }
              if (takeTransfer > 0.000000000) {
                neededTransfer := neededTransfer - takeTransfer;
                Used_8Mask := Used_8Mask[rcvLocal, f_7:=Used_8Mask[rcvLocal, f_7] + takeTransfer];
                b_13 := b_13 && state(Used_8Heap, Used_8Mask);
                b_13 := b_13 && Heap[rcvLocal, f_7] == Used_8Heap[rcvLocal, f_7];
                Mask := Mask[rcvLocal, f_7:=Mask[rcvLocal, f_7] - takeTransfer];
                Heap := Heap[null, wand#sm(true, true):=Heap[null, wand#sm(true, true)][x, f_7:=true]];
              }
            }
          assert {:msg "  Exhale might fail. There might be insufficient permission to access x.f (PackageStateConsolidation.vpr@30.12--30.20) [127388]"}
            b_12 && b_13 ==> neededTransfer == 0.000000000 && Used_8Mask[rcvLocal, f_7] == initNeededTransfer;
          
          // -- Creating state which is the sum of the two previously built up states
            b_14 := b_12 && b_13;
            b_14 := b_14 && state(Result_2Heap, Result_2Mask);
            b_14 := b_14 && sumMask(Result_2Mask, Ops_5Mask, Used_8Mask);
            b_14 := (b_14 && IdenticalOnKnownLocations(Ops_5Heap, Result_2Heap, Ops_5Mask)) && IdenticalOnKnownLocations(Used_8Heap, Result_2Heap, Used_8Mask);
            b_14 := b_14 && state(Result_2Heap, Result_2Mask);
          b_12 := b_12 && b_14;
        b_12 := b_12 && b_13;
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Ops_5Heap, ExhaleHeap, Ops_5Mask);
        Ops_5Heap := ExhaleHeap;
        b_12 := b_12 && state(Ops_5Heap, Ops_5Mask);
    }
    // Translating exec of non-ghost operationtrue
    havoc Used_9Heap;
    Used_9Mask := ZeroMask;
    b_15 := b_15 && state(Used_9Heap, Used_9Mask);
    Mask := Mask[null, wand(true, true):=Mask[null, wand(true, true)] + FullPerm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test03
// ==================================================

procedure test03(x: Ref) returns ()
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var perm: Perm;
  var Ops_7Heap: HeapType;
  var Ops_7Mask: MaskType;
  var b_17: bool;
  var Used_10Heap: HeapType;
  var Used_10Mask: MaskType;
  var b_16: bool;
  var Labellhs7Heap: HeapType;
  var Labellhs7Mask: MaskType;
  var boolCur_3: bool;
  var Ops_9Heap: HeapType;
  var Ops_9Mask: MaskType;
  var b_19: bool;
  var Used_11Heap: HeapType;
  var Used_11Mask: MaskType;
  var b_18: bool;
  var Labellhs9Heap: HeapType;
  var Labellhs9Mask: MaskType;
  var boolCur_4: bool;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var Used_12Heap: HeapType;
  var Used_12Mask: MaskType;
  var b_20: bool;
  var rcvLocal: Ref;
  var neededTransfer: Perm;
  var initNeededTransfer: Perm;
  var accVar2: bool;
  var maskTransfer: Perm;
  var takeTransfer: Perm;
  var b_21: bool;
  var Result_3Heap: HeapType;
  var Result_3Mask: MaskType;
  var ExhaleHeap: HeapType;
  var Used_13Heap: HeapType;
  var Used_13Mask: MaskType;
  var b_22: bool;
  var Used_14Heap: HeapType;
  var Used_14Mask: MaskType;
  var b_23: bool;
  
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
  
  // -- Translating statement: inhale acc(x.f, 1 / 3) -- PackageStateConsolidation.vpr@36.3--36.23
    perm := 1 / 3;
    assert {:msg "  Inhale might fail. Fraction 1 / 3 might be negative. (PackageStateConsolidation.vpr@36.10--36.23) [127390]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> x != null;
    Mask := Mask[x, f_7:=Mask[x, f_7] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: package true --* true {
  //   inhale acc(x.f, 1 / 3)
  //   package true --* true {
  //     inhale acc(x.f, 1 / 3)
  //     exhale acc(x.f, write)
  //   }
  // } -- PackageStateConsolidation.vpr@37.3--43.4
    havoc Ops_7Heap;
    Ops_7Mask := ZeroMask;
    b_17 := b_17 && state(Ops_7Heap, Ops_7Mask);
    havoc Used_10Heap;
    Used_10Mask := ZeroMask;
    b_16 := b_16 && state(Used_10Heap, Used_10Mask);
    // Inhaling left hand side of current wand into hypothetical state
    if (b_17) {
      b_17 := b_17;
    }
    b_17 := b_17 && state(Ops_7Heap, Ops_7Mask);
    
    // -- Translating statement: label lhs7 -- PackageStateConsolidation.vpr@37.11--37.24
      lhs7:
      Labellhs7Heap := Ops_7Heap;
      Labellhs7Mask := Ops_7Mask;
      b_17 := b_17 && state(Ops_7Heap, Ops_7Mask);
    boolCur_3 := true;
    if (b_17) {
      
      // -- Translating statement: inhale acc(x.f, 1 / 3) -- PackageStateConsolidation.vpr@38.5--38.25
        if (b_17) {
          perm := 1 / 3;
          assert {:msg "  Inhale might fail. Fraction 1 / 3 might be negative. (PackageStateConsolidation.vpr@38.12--38.25) [127391]"}
            perm >= NoPerm;
          b_17 := b_17 && (perm > NoPerm ==> x != null);
          Ops_7Mask := Ops_7Mask[x, f_7:=Ops_7Mask[x, f_7] + perm];
          b_17 := b_17 && state(Ops_7Heap, Ops_7Mask);
        }
        assume state(Ops_7Heap, Ops_7Mask);
        b_17 := b_17 && state(Ops_7Heap, Ops_7Mask);
    }
    if (b_17) {
      
      // -- Translating statement: package true --* true {
  //   inhale acc(x.f, 1 / 3)
  //   exhale acc(x.f, write)
  // } -- PackageStateConsolidation.vpr@39.5--42.6
        havoc Ops_9Heap;
        Ops_9Mask := ZeroMask;
        b_19 := b_19 && state(Ops_9Heap, Ops_9Mask);
        havoc Used_11Heap;
        Used_11Mask := ZeroMask;
        b_18 := b_18 && state(Used_11Heap, Used_11Mask);
        // Inhaling left hand side of current wand into hypothetical state
        if (b_19) {
          b_19 := b_19;
        }
        b_19 := b_19 && state(Ops_9Heap, Ops_9Mask);
        
        // -- Translating statement: label lhs9 -- PackageStateConsolidation.vpr@39.13--39.26
          lhs9:
          Labellhs9Heap := Ops_9Heap;
          Labellhs9Mask := Ops_9Mask;
          b_19 := b_19 && state(Ops_9Heap, Ops_9Mask);
        boolCur_4 := true;
        if (b_19 && b_17) {
          
          // -- Translating statement: inhale acc(x.f, 1 / 3) -- PackageStateConsolidation.vpr@40.7--40.27
            if (b_19) {
              perm := 1 / 3;
              assert {:msg "  Inhale might fail. Fraction 1 / 3 might be negative. (PackageStateConsolidation.vpr@40.14--40.27) [127392]"}
                perm >= NoPerm;
              b_19 := b_19 && (perm > NoPerm ==> x != null);
              Ops_9Mask := Ops_9Mask[x, f_7:=Ops_9Mask[x, f_7] + perm];
              b_19 := b_19 && state(Ops_9Heap, Ops_9Mask);
            }
            assume state(Ops_9Heap, Ops_9Mask);
            b_19 := b_19 && state(Ops_9Heap, Ops_9Mask);
        }
        if (b_19 && b_17) {
          
          // -- Translating statement: exhale acc(x.f, write) -- PackageStateConsolidation.vpr@41.7--41.22
            ExhaleWellDef0Heap := Ops_9Heap;
            ExhaleWellDef0Mask := Ops_9Mask;
            havoc Used_12Heap;
            Used_12Mask := ZeroMask;
            b_20 := b_20 && state(Used_12Heap, Used_12Mask);
            
            // -- Transfer of acc(x.f, write)
              rcvLocal := x;
              neededTransfer := FullPerm;
              initNeededTransfer := Used_12Mask[rcvLocal, f_7] + neededTransfer;
              assert {:msg "  Exhale might fail. Fraction acc(x.f, write) might be negative. (PackageStateConsolidation.vpr@41.14--41.22) [127393]"}
                neededTransfer >= 0.000000000;
              
              // -- transfer code for top state of stack
                // accumulate constraints which need to be satisfied for transfer to occur
                accVar2 := true;
                // actual code for the transfer from current state on stack
                if (((b_19 && b_20) && accVar2) && neededTransfer > 0.000000000) {
                  maskTransfer := Ops_9Mask[rcvLocal, f_7];
                  if (neededTransfer <= maskTransfer) {
                    takeTransfer := neededTransfer;
                  } else {
                    takeTransfer := maskTransfer;
                  }
                  if (takeTransfer > 0.000000000) {
                    neededTransfer := neededTransfer - takeTransfer;
                    Used_12Mask := Used_12Mask[rcvLocal, f_7:=Used_12Mask[rcvLocal, f_7] + takeTransfer];
                    b_20 := b_20 && state(Used_12Heap, Used_12Mask);
                    b_20 := b_20 && Ops_9Heap[rcvLocal, f_7] == Used_12Heap[rcvLocal, f_7];
                    Ops_9Mask := Ops_9Mask[rcvLocal, f_7:=Ops_9Mask[rcvLocal, f_7] - takeTransfer];
                  }
                }
              
              // -- transfer code for top state of stack
                // accumulate constraints which need to be satisfied for transfer to occur
                accVar2 := true;
                // actual code for the transfer from current state on stack
                if (((b_19 && b_20) && accVar2) && neededTransfer > 0.000000000) {
                  maskTransfer := Ops_7Mask[rcvLocal, f_7];
                  if (neededTransfer <= maskTransfer) {
                    takeTransfer := neededTransfer;
                  } else {
                    takeTransfer := maskTransfer;
                  }
                  if (takeTransfer > 0.000000000) {
                    neededTransfer := neededTransfer - takeTransfer;
                    Used_12Mask := Used_12Mask[rcvLocal, f_7:=Used_12Mask[rcvLocal, f_7] + takeTransfer];
                    b_20 := b_20 && state(Used_12Heap, Used_12Mask);
                    b_20 := b_20 && Ops_7Heap[rcvLocal, f_7] == Used_12Heap[rcvLocal, f_7];
                    Ops_7Mask := Ops_7Mask[rcvLocal, f_7:=Ops_7Mask[rcvLocal, f_7] - takeTransfer];
                    Ops_7Heap := Ops_7Heap[null, wand#sm(true, true):=Ops_7Heap[null, wand#sm(true, true)][x, f_7:=true]];
                  }
                }
              
              // -- transfer code for top state of stack
                // accumulate constraints which need to be satisfied for transfer to occur
                accVar2 := true;
                // actual code for the transfer from current state on stack
                if (((b_19 && b_20) && accVar2) && neededTransfer > 0.000000000) {
                  maskTransfer := Mask[rcvLocal, f_7];
                  if (neededTransfer <= maskTransfer) {
                    takeTransfer := neededTransfer;
                  } else {
                    takeTransfer := maskTransfer;
                  }
                  if (takeTransfer > 0.000000000) {
                    neededTransfer := neededTransfer - takeTransfer;
                    Used_12Mask := Used_12Mask[rcvLocal, f_7:=Used_12Mask[rcvLocal, f_7] + takeTransfer];
                    b_20 := b_20 && state(Used_12Heap, Used_12Mask);
                    b_20 := b_20 && Heap[rcvLocal, f_7] == Used_12Heap[rcvLocal, f_7];
                    Mask := Mask[rcvLocal, f_7:=Mask[rcvLocal, f_7] - takeTransfer];
                    Heap := Heap[null, wand#sm(true, true):=Heap[null, wand#sm(true, true)][x, f_7:=true]];
                  }
                }
              assert {:msg "  Exhale might fail. There might be insufficient permission to access x.f (PackageStateConsolidation.vpr@41.14--41.22) [127394]"}
                b_19 && b_20 ==> neededTransfer == 0.000000000 && Used_12Mask[rcvLocal, f_7] == initNeededTransfer;
              
              // -- Creating state which is the sum of the two previously built up states
                b_21 := b_19 && b_20;
                b_21 := b_21 && state(Result_3Heap, Result_3Mask);
                b_21 := b_21 && sumMask(Result_3Mask, Ops_9Mask, Used_12Mask);
                b_21 := (b_21 && IdenticalOnKnownLocations(Ops_9Heap, Result_3Heap, Ops_9Mask)) && IdenticalOnKnownLocations(Used_12Heap, Result_3Heap, Used_12Mask);
                b_21 := b_21 && state(Result_3Heap, Result_3Mask);
              b_19 := b_19 && b_21;
            b_19 := b_19 && b_20;
            // Finish exhale
            havoc ExhaleHeap;
            assume IdenticalOnKnownLocations(Ops_9Heap, ExhaleHeap, Ops_9Mask);
            Ops_9Heap := ExhaleHeap;
            b_19 := b_19 && state(Ops_9Heap, Ops_9Mask);
        }
        // Translating exec of non-ghost operationtrue
        havoc Used_13Heap;
        Used_13Mask := ZeroMask;
        b_22 := b_22 && state(Used_13Heap, Used_13Mask);
        Ops_7Mask := Ops_7Mask[null, wand(true, true):=Ops_7Mask[null, wand(true, true)] + FullPerm];
        b_17 := b_17 && state(Ops_7Heap, Ops_7Mask);
        b_17 := b_17 && state(Ops_7Heap, Ops_7Mask);
        b_17 := b_17 && state(Ops_7Heap, Ops_7Mask);
    }
    // Translating exec of non-ghost operationtrue
    havoc Used_14Heap;
    Used_14Mask := ZeroMask;
    b_23 := b_23 && state(Used_14Heap, Used_14Mask);
    Mask := Mask[null, wand(true, true):=Mask[null, wand(true, true)] + FullPerm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test04
// ==================================================

procedure test04(x: Ref, y: Ref) returns ()
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var Ops_11Heap: HeapType;
  var Ops_11Mask: MaskType;
  var b_25: bool;
  var Used_15Heap: HeapType;
  var Used_15Mask: MaskType;
  var b_24_1: bool;
  var Labellhs11Heap: HeapType;
  var Labellhs11Mask: MaskType;
  var boolCur_5: bool;
  var perm: Perm;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var Used_16Heap: HeapType;
  var Used_16Mask: MaskType;
  var b_26: bool;
  var Used_17Heap: HeapType;
  var Used_17Mask: MaskType;
  var b_27: bool;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[x, $allocated];
    assume Heap[y, $allocated];
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: package true --* true {
  //   inhale acc(x.f, write)
  //   inhale acc(y.f, write)
  //   assert x != y
  // } -- PackageStateConsolidation.vpr@48.3--52.4
    havoc Ops_11Heap;
    Ops_11Mask := ZeroMask;
    b_25 := b_25 && state(Ops_11Heap, Ops_11Mask);
    havoc Used_15Heap;
    Used_15Mask := ZeroMask;
    b_24_1 := b_24_1 && state(Used_15Heap, Used_15Mask);
    // Inhaling left hand side of current wand into hypothetical state
    if (b_25) {
      b_25 := b_25;
    }
    b_25 := b_25 && state(Ops_11Heap, Ops_11Mask);
    
    // -- Translating statement: label lhs11 -- PackageStateConsolidation.vpr@48.11--48.24
      lhs11:
      Labellhs11Heap := Ops_11Heap;
      Labellhs11Mask := Ops_11Mask;
      b_25 := b_25 && state(Ops_11Heap, Ops_11Mask);
    boolCur_5 := true;
    if (b_25) {
      
      // -- Translating statement: inhale acc(x.f, write) -- PackageStateConsolidation.vpr@49.5--49.20
        if (b_25) {
          perm := FullPerm;
          b_25 := b_25 && x != null;
          Ops_11Mask := Ops_11Mask[x, f_7:=Ops_11Mask[x, f_7] + perm];
          b_25 := b_25 && state(Ops_11Heap, Ops_11Mask);
        }
        assume state(Ops_11Heap, Ops_11Mask);
        b_25 := b_25 && state(Ops_11Heap, Ops_11Mask);
    }
    if (b_25) {
      
      // -- Translating statement: inhale acc(y.f, write) -- PackageStateConsolidation.vpr@50.5--50.20
        if (b_25) {
          perm := FullPerm;
          b_25 := b_25 && y != null;
          Ops_11Mask := Ops_11Mask[y, f_7:=Ops_11Mask[y, f_7] + perm];
          b_25 := b_25 && state(Ops_11Heap, Ops_11Mask);
        }
        assume state(Ops_11Heap, Ops_11Mask);
        b_25 := b_25 && state(Ops_11Heap, Ops_11Mask);
    }
    if (b_25) {
      
      // -- Translating statement: assert x != y -- PackageStateConsolidation.vpr@51.5--51.18
        ExhaleWellDef0Heap := Ops_11Heap;
        ExhaleWellDef0Mask := Ops_11Mask;
        havoc Used_16Heap;
        Used_16Mask := ZeroMask;
        b_26 := b_26 && state(Used_16Heap, Used_16Mask);
        assert {:msg "  Assert might fail. Assertion x != y might not hold. (PackageStateConsolidation.vpr@51.12--51.18) [127399]"}
          b_25 && b_26 ==> x != y;
        b_25 := b_25 && b_26;
        b_25 := b_25 && state(Ops_11Heap, Ops_11Mask);
    }
    // Translating exec of non-ghost operationtrue
    havoc Used_17Heap;
    Used_17Mask := ZeroMask;
    b_27 := b_27 && state(Used_17Heap, Used_17Mask);
    Mask := Mask[null, wand(true, true):=Mask[null, wand(true, true)] + FullPerm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test05
// ==================================================

procedure test05(x: Ref, y: Ref) returns ()
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var Ops_13Heap: HeapType;
  var Ops_13Mask: MaskType;
  var b_29: bool;
  var Used_18Heap: HeapType;
  var Used_18Mask: MaskType;
  var b_28: bool;
  var Labellhs13Heap: HeapType;
  var Labellhs13Mask: MaskType;
  var boolCur_6: bool;
  var perm: Perm;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var Used_19Heap: HeapType;
  var Used_19Mask: MaskType;
  var b_30: bool;
  var Used_20Heap: HeapType;
  var Used_20Mask: MaskType;
  var b_31: bool;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[x, $allocated];
    assume Heap[y, $allocated];
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: package true --* true {
  //   inhale acc(x.f, 1 / 2)
  //   inhale acc(y.f, 1 / 2)
  //   inhale x.f == 4
  //   inhale y.f == 5
  //   assert x != y
  // } -- PackageStateConsolidation.vpr@57.3--62.4
    havoc Ops_13Heap;
    Ops_13Mask := ZeroMask;
    b_29 := b_29 && state(Ops_13Heap, Ops_13Mask);
    havoc Used_18Heap;
    Used_18Mask := ZeroMask;
    b_28 := b_28 && state(Used_18Heap, Used_18Mask);
    // Inhaling left hand side of current wand into hypothetical state
    if (b_29) {
      b_29 := b_29;
    }
    b_29 := b_29 && state(Ops_13Heap, Ops_13Mask);
    
    // -- Translating statement: label lhs13 -- PackageStateConsolidation.vpr@57.11--57.24
      lhs13:
      Labellhs13Heap := Ops_13Heap;
      Labellhs13Mask := Ops_13Mask;
      b_29 := b_29 && state(Ops_13Heap, Ops_13Mask);
    boolCur_6 := true;
    if (b_29) {
      
      // -- Translating statement: inhale acc(x.f, 1 / 2) -- PackageStateConsolidation.vpr@58.5--58.25
        if (b_29) {
          perm := 1 / 2;
          assert {:msg "  Inhale might fail. Fraction 1 / 2 might be negative. (PackageStateConsolidation.vpr@58.12--58.25) [127401]"}
            perm >= NoPerm;
          b_29 := b_29 && (perm > NoPerm ==> x != null);
          Ops_13Mask := Ops_13Mask[x, f_7:=Ops_13Mask[x, f_7] + perm];
          b_29 := b_29 && state(Ops_13Heap, Ops_13Mask);
        }
        assume state(Ops_13Heap, Ops_13Mask);
        b_29 := b_29 && state(Ops_13Heap, Ops_13Mask);
    }
    if (b_29) {
      
      // -- Translating statement: inhale acc(y.f, 1 / 2) -- PackageStateConsolidation.vpr@59.5--59.25
        if (b_29) {
          perm := 1 / 2;
          assert {:msg "  Inhale might fail. Fraction 1 / 2 might be negative. (PackageStateConsolidation.vpr@59.12--59.25) [127402]"}
            perm >= NoPerm;
          b_29 := b_29 && (perm > NoPerm ==> y != null);
          Ops_13Mask := Ops_13Mask[y, f_7:=Ops_13Mask[y, f_7] + perm];
          b_29 := b_29 && state(Ops_13Heap, Ops_13Mask);
        }
        assume state(Ops_13Heap, Ops_13Mask);
        b_29 := b_29 && state(Ops_13Heap, Ops_13Mask);
    }
    if (b_29) {
      
      // -- Translating statement: inhale x.f == 4 -- PackageStateConsolidation.vpr@60.12--60.20
        if (b_29) {
          if (b_29) {
            
            // -- Check definedness of x.f == 4
              assert {:msg "  Inhale might fail. There might be insufficient permission to access x.f (PackageStateConsolidation.vpr@60.12--60.20) [127403]"}
                HasDirectPerm(Ops_13Mask, x, f_7);
          }
          b_29 := b_29 && Ops_13Heap[x, f_7] == 4;
        }
        assume state(Ops_13Heap, Ops_13Mask);
        b_29 := b_29 && state(Ops_13Heap, Ops_13Mask);
      
      // -- Translating statement: inhale y.f == 5 -- PackageStateConsolidation.vpr@60.24--60.32
        if (b_29) {
          if (b_29) {
            
            // -- Check definedness of y.f == 5
              assert {:msg "  Inhale might fail. There might be insufficient permission to access y.f (PackageStateConsolidation.vpr@60.24--60.32) [127404]"}
                HasDirectPerm(Ops_13Mask, y, f_7);
          }
          b_29 := b_29 && Ops_13Heap[y, f_7] == 5;
        }
        assume state(Ops_13Heap, Ops_13Mask);
        b_29 := b_29 && state(Ops_13Heap, Ops_13Mask);
    }
    if (b_29) {
      
      // -- Translating statement: assert x != y -- PackageStateConsolidation.vpr@61.5--61.18
        ExhaleWellDef0Heap := Ops_13Heap;
        ExhaleWellDef0Mask := Ops_13Mask;
        havoc Used_19Heap;
        Used_19Mask := ZeroMask;
        b_30 := b_30 && state(Used_19Heap, Used_19Mask);
        assert {:msg "  Assert might fail. Assertion x != y might not hold. (PackageStateConsolidation.vpr@61.12--61.18) [127405]"}
          b_29 && b_30 ==> x != y;
        b_29 := b_29 && b_30;
        b_29 := b_29 && state(Ops_13Heap, Ops_13Mask);
    }
    // Translating exec of non-ghost operationtrue
    havoc Used_20Heap;
    Used_20Mask := ZeroMask;
    b_31 := b_31 && state(Used_20Heap, Used_20Mask);
    Mask := Mask[null, wand(true, true):=Mask[null, wand(true, true)] + FullPerm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
}