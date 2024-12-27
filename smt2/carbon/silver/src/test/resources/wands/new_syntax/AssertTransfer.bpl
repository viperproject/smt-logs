// 
// Translation of Viper program.
// 
// Date:         2024-12-27 02:27:14
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/wands/new_syntax/AssertTransfer.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/wands/new_syntax/AssertTransfer-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
type WandType_wand_1;
function  wand_1(arg1: Ref, arg2: Perm, arg3: Ref, arg4: int, arg5: bool): Field WandType_wand_1 int;
function  wand_1#sm(arg1: Ref, arg2: Perm, arg3: Ref, arg4: int, arg5: bool): Field WandType_wand_1 PMaskType;
function  wand_1#ft(arg1: Ref, arg2: Perm, arg3: Ref, arg4: int, arg5: bool): Field WandType_wand_1 FrameType;
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: int, arg5: bool ::
  { wand_1(arg1, arg2, arg3, arg4, arg5) }
  IsWandField(wand_1(arg1, arg2, arg3, arg4, arg5))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: int, arg5: bool ::
  { wand_1#ft(arg1, arg2, arg3, arg4, arg5) }
  IsWandField(wand_1#ft(arg1, arg2, arg3, arg4, arg5))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: int, arg5: bool ::
  { wand_1(arg1, arg2, arg3, arg4, arg5) }
  !IsPredicateField(wand_1(arg1, arg2, arg3, arg4, arg5))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: int, arg5: bool ::
  { wand_1#ft(arg1, arg2, arg3, arg4, arg5) }
  !IsPredicateField(wand_1#ft(arg1, arg2, arg3, arg4, arg5))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: int, arg5: bool ::
  { WandMaskField(wand_1#ft(arg1, arg2, arg3, arg4, arg5)) }
  wand_1#sm(arg1, arg2, arg3, arg4, arg5) == WandMaskField(wand_1#ft(arg1, arg2, arg3, arg4, arg5))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: int, arg5: bool ::
  { wand_1(arg1, arg2, arg3, arg4, arg5) }
  getPredWandId(wand_1(arg1, arg2, arg3, arg4, arg5)) == 1
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: int, arg5: bool, arg1_2: Ref, arg2_2: Perm, arg3_2: Ref, arg4_2: int, arg5_2: bool ::
  { wand_1(arg1, arg2, arg3, arg4, arg5), wand_1(arg1_2, arg2_2, arg3_2, arg4_2, arg5_2) }
  wand_1(arg1, arg2, arg3, arg4, arg5) == wand_1(arg1_2, arg2_2, arg3_2, arg4_2, arg5_2) ==> arg1 == arg1_2 && (arg2 == arg2_2 && (arg3 == arg3_2 && (arg4 == arg4_2 && arg5 == arg5_2)))
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
    
    // -- Check definedness of x.f == 0
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access x.f (AssertTransfer.vpr@8.10--8.30) [139273]"}
        HasDirectPerm(Mask, x, f_7);
    assume Heap[x, f_7] == 0;
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: package true --* true {
  //   assert x.f == 0
  // } -- AssertTransfer.vpr@9.5--12.6
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
    
    // -- Translating statement: label lhs1 -- AssertTransfer.vpr@9.13--9.26
      lhs1:
      Labellhs1Heap := Ops_1Heap;
      Labellhs1Mask := Ops_1Mask;
      b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
    boolCur := true;
    if (b_1_1) {
      
      // -- Translating statement: assert x.f == 0 -- AssertTransfer.vpr@11.9--11.24
        ExhaleWellDef0Heap := Ops_1Heap;
        ExhaleWellDef0Mask := Ops_1Mask;
        havoc Used_1Heap;
        Used_1Mask := ZeroMask;
        b_2_1 := b_2_1 && state(Used_1Heap, Used_1Mask);
        if (b_1_1 && b_2_1) {
          if (b_1_1) {
            
            // -- Check definedness of x.f == 0
              assert {:msg "  Assert might fail. There might be insufficient permission to access x.f (AssertTransfer.vpr@11.16--11.24) [139274]"}
                HasDirectPerm(Ops_1Mask, x, f_7);
          }
        }
        assert {:msg "  Assert might fail. Assertion x.f == 0 might not hold. (AssertTransfer.vpr@11.16--11.24) [139275]"}
          b_1_1 && b_2_1 ==> Ops_1Heap[x, f_7] == 0;
        b_1_1 := b_1_1 && b_2_1;
        b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
    }
    // Translating exec of non-ghost operationtrue
    havoc Used_2Heap;
    Used_2Mask := ZeroMask;
    b_3 := b_3 && state(Used_2Heap, Used_2Mask);
    Mask := Mask[null, wand(true, true):=Mask[null, wand(true, true)] + FullPerm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test1
// ==================================================

procedure test1(x: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var Ops_3Heap: HeapType;
  var Ops_3Mask: MaskType;
  var b_5: bool;
  var Used_3Heap: HeapType;
  var Used_3Mask: MaskType;
  var b_4: bool;
  var Labellhs3Heap: HeapType;
  var Labellhs3Mask: MaskType;
  var boolCur_1: bool;
  var AssertHeap: HeapType;
  var AssertMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var Used_4Heap: HeapType;
  var Used_4Mask: MaskType;
  var b_6: bool;
  var rcvLocal: Ref;
  var neededTransfer: Perm;
  var initNeededTransfer: Perm;
  var accVar2: bool;
  var maskTransfer: Perm;
  var takeTransfer: Perm;
  var b_7: bool;
  var ResultHeap: HeapType;
  var ResultMask: MaskType;
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
  
  // -- Checked inhaling of precondition
    perm := FullPerm;
    assume x != null;
    Mask := Mask[x, f_7:=Mask[x, f_7] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of x.f == 0
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access x.f (AssertTransfer.vpr@16.10--16.30) [139277]"}
        HasDirectPerm(Mask, x, f_7);
    assume Heap[x, f_7] == 0;
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: package true --* true {
  //   assert acc(x.f, write)
  //   assert x.f == 0
  // } -- AssertTransfer.vpr@17.5--20.6
    havoc Ops_3Heap;
    Ops_3Mask := ZeroMask;
    b_5 := b_5 && state(Ops_3Heap, Ops_3Mask);
    havoc Used_3Heap;
    Used_3Mask := ZeroMask;
    b_4 := b_4 && state(Used_3Heap, Used_3Mask);
    // Inhaling left hand side of current wand into hypothetical state
    if (b_5) {
      b_5 := b_5;
    }
    b_5 := b_5 && state(Ops_3Heap, Ops_3Mask);
    
    // -- Translating statement: label lhs3 -- AssertTransfer.vpr@17.13--17.26
      lhs3:
      Labellhs3Heap := Ops_3Heap;
      Labellhs3Mask := Ops_3Mask;
      b_5 := b_5 && state(Ops_3Heap, Ops_3Mask);
    boolCur_1 := true;
    if (b_5) {
      
      // -- Translating statement: assert acc(x.f, write) -- AssertTransfer.vpr@18.9--18.24
        AssertHeap := Ops_3Heap;
        AssertMask := Ops_3Mask;
        ExhaleWellDef0Heap := AssertHeap;
        ExhaleWellDef0Mask := AssertMask;
        havoc Used_4Heap;
        Used_4Mask := ZeroMask;
        b_6 := b_6 && state(Used_4Heap, Used_4Mask);
        
        // -- Transfer of acc(x.f, write)
          rcvLocal := x;
          neededTransfer := FullPerm;
          initNeededTransfer := Used_4Mask[rcvLocal, f_7] + neededTransfer;
          assert {:msg "  Assert might fail. Fraction acc(x.f, write) might be negative. (AssertTransfer.vpr@18.16--18.24) [139278]"}
            neededTransfer >= 0.000000000;
          
          // -- transfer code for top state of stack
            // accumulate constraints which need to be satisfied for transfer to occur
            accVar2 := true;
            // actual code for the transfer from current state on stack
            if (((b_5 && b_6) && accVar2) && neededTransfer > 0.000000000) {
              maskTransfer := Ops_3Mask[rcvLocal, f_7];
              if (neededTransfer <= maskTransfer) {
                takeTransfer := neededTransfer;
              } else {
                takeTransfer := maskTransfer;
              }
              if (takeTransfer > 0.000000000) {
                neededTransfer := neededTransfer - takeTransfer;
                Used_4Mask := Used_4Mask[rcvLocal, f_7:=Used_4Mask[rcvLocal, f_7] + takeTransfer];
                b_6 := b_6 && state(Used_4Heap, Used_4Mask);
                b_6 := b_6 && Ops_3Heap[rcvLocal, f_7] == Used_4Heap[rcvLocal, f_7];
                Ops_3Mask := Ops_3Mask[rcvLocal, f_7:=Ops_3Mask[rcvLocal, f_7] - takeTransfer];
              }
            }
          
          // -- transfer code for top state of stack
            // accumulate constraints which need to be satisfied for transfer to occur
            accVar2 := true;
            // actual code for the transfer from current state on stack
            if (((b_5 && b_6) && accVar2) && neededTransfer > 0.000000000) {
              maskTransfer := Mask[rcvLocal, f_7];
              if (neededTransfer <= maskTransfer) {
                takeTransfer := neededTransfer;
              } else {
                takeTransfer := maskTransfer;
              }
              if (takeTransfer > 0.000000000) {
                neededTransfer := neededTransfer - takeTransfer;
                Used_4Mask := Used_4Mask[rcvLocal, f_7:=Used_4Mask[rcvLocal, f_7] + takeTransfer];
                b_6 := b_6 && state(Used_4Heap, Used_4Mask);
                b_6 := b_6 && Heap[rcvLocal, f_7] == Used_4Heap[rcvLocal, f_7];
                Mask := Mask[rcvLocal, f_7:=Mask[rcvLocal, f_7] - takeTransfer];
                Heap := Heap[null, wand#sm(true, true):=Heap[null, wand#sm(true, true)][x, f_7:=true]];
              }
            }
          assert {:msg "  Assert might fail. There might be insufficient permission to access x.f (AssertTransfer.vpr@18.16--18.24) [139279]"}
            b_5 && b_6 ==> neededTransfer == 0.000000000 && Used_4Mask[rcvLocal, f_7] == initNeededTransfer;
          
          // -- Creating state which is the sum of the two previously built up states
            b_7 := b_5 && b_6;
            b_7 := b_7 && state(ResultHeap, ResultMask);
            b_7 := b_7 && sumMask(ResultMask, Ops_3Mask, Used_4Mask);
            b_7 := (b_7 && IdenticalOnKnownLocations(Ops_3Heap, ResultHeap, Ops_3Mask)) && IdenticalOnKnownLocations(Used_4Heap, ResultHeap, Used_4Mask);
            b_7 := b_7 && state(ResultHeap, ResultMask);
          b_5 := b_5 && b_7;
        b_5 := b_5 && b_6;
        b_5 := b_5 && Used_4Heap == Ops_3Heap;
        
        // -- Transfer of acc(x.f, write)
          rcvLocal := x;
          neededTransfer := FullPerm;
          initNeededTransfer := Ops_3Mask[rcvLocal, f_7] + neededTransfer;
          assert {:msg "  Assert might fail. Fraction acc(x.f, write) might be negative. (AssertTransfer.vpr@18.16--18.24) [139280]"}
            neededTransfer >= 0.000000000;
          
          // -- transfer code for top state of stack
            // accumulate constraints which need to be satisfied for transfer to occur
            accVar2 := true;
            // actual code for the transfer from current state on stack
            if (((b_5 && b_5) && accVar2) && neededTransfer > 0.000000000) {
              maskTransfer := Used_4Mask[rcvLocal, f_7];
              if (neededTransfer <= maskTransfer) {
                takeTransfer := neededTransfer;
              } else {
                takeTransfer := maskTransfer;
              }
              if (takeTransfer > 0.000000000) {
                neededTransfer := neededTransfer - takeTransfer;
                Ops_3Mask := Ops_3Mask[rcvLocal, f_7:=Ops_3Mask[rcvLocal, f_7] + takeTransfer];
                b_5 := b_5 && state(Ops_3Heap, Ops_3Mask);
                b_5 := b_5 && Used_4Heap[rcvLocal, f_7] == Ops_3Heap[rcvLocal, f_7];
                Used_4Mask := Used_4Mask[rcvLocal, f_7:=Used_4Mask[rcvLocal, f_7] - takeTransfer];
                Used_4Heap := Used_4Heap[null, wand#sm(true, true):=Used_4Heap[null, wand#sm(true, true)][x, f_7:=true]];
              }
            }
          assert {:msg "  Assert might fail. There might be insufficient permission to access x.f (AssertTransfer.vpr@18.16--18.24) [139281]"}
            b_5 && b_5 ==> neededTransfer == 0.000000000 && Ops_3Mask[rcvLocal, f_7] == initNeededTransfer;
          
          // -- Creating state which is the sum of the two previously built up states
            b_8 := b_5 && b_6;
            b_8 := b_8 && state(Result_1Heap, Result_1Mask);
            b_8 := b_8 && sumMask(Result_1Mask, Ops_3Mask, Used_4Mask);
            b_8 := (b_8 && IdenticalOnKnownLocations(Ops_3Heap, Result_1Heap, Ops_3Mask)) && IdenticalOnKnownLocations(Used_4Heap, Result_1Heap, Used_4Mask);
            b_8 := b_8 && state(Result_1Heap, Result_1Mask);
          b_5 := b_5 && b_8;
        b_5 := b_5 && state(Ops_3Heap, Ops_3Mask);
    }
    if (b_5) {
      
      // -- Translating statement: assert x.f == 0 -- AssertTransfer.vpr@19.9--19.24
        ExhaleWellDef0Heap := Ops_3Heap;
        ExhaleWellDef0Mask := Ops_3Mask;
        havoc Used_5Heap;
        Used_5Mask := ZeroMask;
        b_9 := b_9 && state(Used_5Heap, Used_5Mask);
        if (b_5 && b_9) {
          if (b_5) {
            
            // -- Check definedness of x.f == 0
              assert {:msg "  Assert might fail. There might be insufficient permission to access x.f (AssertTransfer.vpr@19.16--19.24) [139282]"}
                HasDirectPerm(Ops_3Mask, x, f_7);
          }
        }
        assert {:msg "  Assert might fail. Assertion x.f == 0 might not hold. (AssertTransfer.vpr@19.16--19.24) [139283]"}
          b_5 && b_9 ==> Ops_3Heap[x, f_7] == 0;
        b_5 := b_5 && b_9;
        b_5 := b_5 && state(Ops_3Heap, Ops_3Mask);
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
// Translation of method test2
// ==================================================

procedure test2(x: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var Ops_5Heap: HeapType;
  var Ops_5Mask: MaskType;
  var b_12: bool;
  var Used_7Heap: HeapType;
  var Used_7Mask: MaskType;
  var b_11: bool;
  var Labellhs5Heap: HeapType;
  var Labellhs5Mask: MaskType;
  var boolCur_2: bool;
  var AssertHeap: HeapType;
  var AssertMask: MaskType;
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
  var b_15: bool;
  var Result_3Heap: HeapType;
  var Result_3Mask: MaskType;
  var Used_9Heap: HeapType;
  var Used_9Mask: MaskType;
  var b_16: bool;
  
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
    
    // -- Check definedness of x.f == 0
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access x.f (AssertTransfer.vpr@24.10--24.30) [139285]"}
        HasDirectPerm(Mask, x, f_7);
    assume Heap[x, f_7] == 0;
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: package acc(x.f, 1 / 2) && x.f == 2 --* true {
  //   assert acc(x.f, write) && false
  // } -- AssertTransfer.vpr@25.5--27.6
    havoc Ops_5Heap;
    Ops_5Mask := ZeroMask;
    b_12 := b_12 && state(Ops_5Heap, Ops_5Mask);
    havoc Used_7Heap;
    Used_7Mask := ZeroMask;
    b_11 := b_11 && state(Used_7Heap, Used_7Mask);
    // Inhaling left hand side of current wand into hypothetical state
    if (b_12) {
      if (b_12) {
        perm := 1 / 2;
        assert {:msg "  Packaging wand might fail. Fraction 1 / 2 might be negative. (AssertTransfer.vpr@25.5--27.6) [139286]"}
          perm >= NoPerm;
        b_12 := b_12 && (perm > NoPerm ==> x != null);
        Ops_5Mask := Ops_5Mask[x, f_7:=Ops_5Mask[x, f_7] + perm];
        b_12 := b_12 && state(Ops_5Heap, Ops_5Mask);
      }
      if (b_12) {
        if (b_12) {
          
          // -- Check definedness of x.f == 2
            assert {:msg "  Packaging wand might fail. There might be insufficient permission to access x.f (AssertTransfer.vpr@25.5--27.6) [139287]"}
              HasDirectPerm(Ops_5Mask, x, f_7);
        }
        b_12 := b_12 && Ops_5Heap[x, f_7] == 2;
      }
    }
    b_12 := b_12 && state(Ops_5Heap, Ops_5Mask);
    
    // -- Translating statement: label lhs5 -- AssertTransfer.vpr@25.13--25.47
      lhs5:
      Labellhs5Heap := Ops_5Heap;
      Labellhs5Mask := Ops_5Mask;
      b_12 := b_12 && state(Ops_5Heap, Ops_5Mask);
    boolCur_2 := true;
    if (b_12) {
      
      // -- Translating statement: assert acc(x.f, write) && false -- AssertTransfer.vpr@26.9--26.33
        AssertHeap := Ops_5Heap;
        AssertMask := Ops_5Mask;
        ExhaleWellDef0Heap := AssertHeap;
        ExhaleWellDef0Mask := AssertMask;
        havoc Used_8Heap;
        Used_8Mask := ZeroMask;
        b_13 := b_13 && state(Used_8Heap, Used_8Mask);
        
        // -- Transfer of acc(x.f, write)
          rcvLocal := x;
          neededTransfer := FullPerm;
          initNeededTransfer := Used_8Mask[rcvLocal, f_7] + neededTransfer;
          assert {:msg "  Assert might fail. Fraction acc(x.f, write) might be negative. (AssertTransfer.vpr@26.16--26.33) [139288]"}
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
                Heap := Heap[null, wand_1#sm(x, 1 / 2, x, 2, true):=Heap[null, wand_1#sm(x, 1 / 2, x, 2, true)][x, f_7:=true]];
              }
            }
          assert {:msg "  Assert might fail. There might be insufficient permission to access x.f (AssertTransfer.vpr@26.16--26.33) [139289]"}
            b_12 && b_13 ==> neededTransfer == 0.000000000 && Used_8Mask[rcvLocal, f_7] == initNeededTransfer;
          
          // -- Creating state which is the sum of the two previously built up states
            b_14 := b_12 && b_13;
            b_14 := b_14 && state(Result_2Heap, Result_2Mask);
            b_14 := b_14 && sumMask(Result_2Mask, Ops_5Mask, Used_8Mask);
            b_14 := (b_14 && IdenticalOnKnownLocations(Ops_5Heap, Result_2Heap, Ops_5Mask)) && IdenticalOnKnownLocations(Used_8Heap, Result_2Heap, Used_8Mask);
            b_14 := b_14 && state(Result_2Heap, Result_2Mask);
          b_12 := b_12 && b_14;
        b_12 := b_12 && b_13;
        b_12 := b_12 && Used_8Heap == Ops_5Heap;
        
        // -- Transfer of acc(x.f, write)
          rcvLocal := x;
          neededTransfer := FullPerm;
          initNeededTransfer := Ops_5Mask[rcvLocal, f_7] + neededTransfer;
          assert {:msg "  Assert might fail. Fraction acc(x.f, write) might be negative. (AssertTransfer.vpr@26.16--26.33) [139290]"}
            neededTransfer >= 0.000000000;
          
          // -- transfer code for top state of stack
            // accumulate constraints which need to be satisfied for transfer to occur
            accVar2 := true;
            // actual code for the transfer from current state on stack
            if (((b_12 && b_12) && accVar2) && neededTransfer > 0.000000000) {
              maskTransfer := Used_8Mask[rcvLocal, f_7];
              if (neededTransfer <= maskTransfer) {
                takeTransfer := neededTransfer;
              } else {
                takeTransfer := maskTransfer;
              }
              if (takeTransfer > 0.000000000) {
                neededTransfer := neededTransfer - takeTransfer;
                Ops_5Mask := Ops_5Mask[rcvLocal, f_7:=Ops_5Mask[rcvLocal, f_7] + takeTransfer];
                b_12 := b_12 && state(Ops_5Heap, Ops_5Mask);
                b_12 := b_12 && Used_8Heap[rcvLocal, f_7] == Ops_5Heap[rcvLocal, f_7];
                Used_8Mask := Used_8Mask[rcvLocal, f_7:=Used_8Mask[rcvLocal, f_7] - takeTransfer];
                Used_8Heap := Used_8Heap[null, wand_1#sm(x, 1 / 2, x, 2, true):=Used_8Heap[null, wand_1#sm(x, 1 / 2, x, 2, true)][x, f_7:=true]];
              }
            }
          assert {:msg "  Assert might fail. There might be insufficient permission to access x.f (AssertTransfer.vpr@26.16--26.33) [139291]"}
            b_12 && b_12 ==> neededTransfer == 0.000000000 && Ops_5Mask[rcvLocal, f_7] == initNeededTransfer;
          
          // -- Creating state which is the sum of the two previously built up states
            b_15 := b_12 && b_13;
            b_15 := b_15 && state(Result_3Heap, Result_3Mask);
            b_15 := b_15 && sumMask(Result_3Mask, Ops_5Mask, Used_8Mask);
            b_15 := (b_15 && IdenticalOnKnownLocations(Ops_5Heap, Result_3Heap, Ops_5Mask)) && IdenticalOnKnownLocations(Used_8Heap, Result_3Heap, Used_8Mask);
            b_15 := b_15 && state(Result_3Heap, Result_3Mask);
          b_12 := b_12 && b_15;
        assert {:msg "  Assert might fail. Assertion false might not hold. (AssertTransfer.vpr@26.16--26.33) [139292]"}
          b_12 && b_13 ==> false;
        b_12 := b_12 && b_13;
        b_12 := b_12 && Used_8Heap == Ops_5Heap;
        b_12 := b_12 && state(Ops_5Heap, Ops_5Mask);
    }
    // Translating exec of non-ghost operationtrue
    havoc Used_9Heap;
    Used_9Mask := ZeroMask;
    b_16 := b_16 && state(Used_9Heap, Used_9Mask);
    Mask := Mask[null, wand_1(x, 1 / 2, x, 2, true):=Mask[null, wand_1(x, 1 / 2, x, 2, true)] + FullPerm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test3
// ==================================================

procedure test3(x: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var Ops_7Heap: HeapType;
  var Ops_7Mask: MaskType;
  var b_18: bool;
  var Used_10Heap: HeapType;
  var Used_10Mask: MaskType;
  var b_17: bool;
  var Labellhs7Heap: HeapType;
  var Labellhs7Mask: MaskType;
  var boolCur_3: bool;
  var AssertHeap: HeapType;
  var AssertMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var Used_11Heap: HeapType;
  var Used_11Mask: MaskType;
  var b_19: bool;
  var rcvLocal: Ref;
  var neededTransfer: Perm;
  var initNeededTransfer: Perm;
  var accVar2: bool;
  var maskTransfer: Perm;
  var takeTransfer: Perm;
  var b_20: bool;
  var Result_4Heap: HeapType;
  var Result_4Mask: MaskType;
  var b_21: bool;
  var Result_5Heap: HeapType;
  var Result_5Mask: MaskType;
  var b_22: bool;
  var Result_6Heap: HeapType;
  var Result_6Mask: MaskType;
  var b_23: bool;
  var Result_7Heap: HeapType;
  var Result_7Mask: MaskType;
  var b_24_1: bool;
  var Result_8Heap: HeapType;
  var Result_8Mask: MaskType;
  var Used_12Heap: HeapType;
  var Used_12Mask: MaskType;
  var b_25: bool;
  
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
    
    // -- Check definedness of x.f == 0
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access x.f (AssertTransfer.vpr@31.10--31.45) [139294]"}
        HasDirectPerm(Mask, x, f_7);
    if (Heap[x, f_7] == 0) {
      perm := FullPerm;
      assume x != null;
      Mask := Mask[x, g:=Mask[x, g] + perm];
      assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: package true --* true {
  //   assert acc(x.f, write) && (x.f == 0 ==> acc(x.g, write))
  //   if (x.f == 0) {
  //     if (x.g == 0) {
  //     }
  //   } elseif (x.g == 0) {
  //   }
  // } -- AssertTransfer.vpr@32.5--42.6
    havoc Ops_7Heap;
    Ops_7Mask := ZeroMask;
    b_18 := b_18 && state(Ops_7Heap, Ops_7Mask);
    havoc Used_10Heap;
    Used_10Mask := ZeroMask;
    b_17 := b_17 && state(Used_10Heap, Used_10Mask);
    // Inhaling left hand side of current wand into hypothetical state
    if (b_18) {
      b_18 := b_18;
    }
    b_18 := b_18 && state(Ops_7Heap, Ops_7Mask);
    
    // -- Translating statement: label lhs7 -- AssertTransfer.vpr@32.13--32.26
      lhs7:
      Labellhs7Heap := Ops_7Heap;
      Labellhs7Mask := Ops_7Mask;
      b_18 := b_18 && state(Ops_7Heap, Ops_7Mask);
    boolCur_3 := true;
    if (b_18) {
      
      // -- Translating statement: assert acc(x.f, write) && (x.f == 0 ==> acc(x.g, write)) -- AssertTransfer.vpr@33.9--33.51
        AssertHeap := Ops_7Heap;
        AssertMask := Ops_7Mask;
        ExhaleWellDef0Heap := AssertHeap;
        ExhaleWellDef0Mask := AssertMask;
        havoc Used_11Heap;
        Used_11Mask := ZeroMask;
        b_19 := b_19 && state(Used_11Heap, Used_11Mask);
        
        // -- Transfer of acc(x.f, write)
          rcvLocal := x;
          neededTransfer := FullPerm;
          initNeededTransfer := Used_11Mask[rcvLocal, f_7] + neededTransfer;
          assert {:msg "  Assert might fail. Fraction acc(x.f, write) might be negative. (AssertTransfer.vpr@33.16--33.51) [139295]"}
            neededTransfer >= 0.000000000;
          
          // -- transfer code for top state of stack
            // accumulate constraints which need to be satisfied for transfer to occur
            accVar2 := true;
            // actual code for the transfer from current state on stack
            if (((b_18 && b_19) && accVar2) && neededTransfer > 0.000000000) {
              maskTransfer := Ops_7Mask[rcvLocal, f_7];
              if (neededTransfer <= maskTransfer) {
                takeTransfer := neededTransfer;
              } else {
                takeTransfer := maskTransfer;
              }
              if (takeTransfer > 0.000000000) {
                neededTransfer := neededTransfer - takeTransfer;
                Used_11Mask := Used_11Mask[rcvLocal, f_7:=Used_11Mask[rcvLocal, f_7] + takeTransfer];
                b_19 := b_19 && state(Used_11Heap, Used_11Mask);
                b_19 := b_19 && Ops_7Heap[rcvLocal, f_7] == Used_11Heap[rcvLocal, f_7];
                Ops_7Mask := Ops_7Mask[rcvLocal, f_7:=Ops_7Mask[rcvLocal, f_7] - takeTransfer];
              }
            }
          
          // -- transfer code for top state of stack
            // accumulate constraints which need to be satisfied for transfer to occur
            accVar2 := true;
            // actual code for the transfer from current state on stack
            if (((b_18 && b_19) && accVar2) && neededTransfer > 0.000000000) {
              maskTransfer := Mask[rcvLocal, f_7];
              if (neededTransfer <= maskTransfer) {
                takeTransfer := neededTransfer;
              } else {
                takeTransfer := maskTransfer;
              }
              if (takeTransfer > 0.000000000) {
                neededTransfer := neededTransfer - takeTransfer;
                Used_11Mask := Used_11Mask[rcvLocal, f_7:=Used_11Mask[rcvLocal, f_7] + takeTransfer];
                b_19 := b_19 && state(Used_11Heap, Used_11Mask);
                b_19 := b_19 && Heap[rcvLocal, f_7] == Used_11Heap[rcvLocal, f_7];
                Mask := Mask[rcvLocal, f_7:=Mask[rcvLocal, f_7] - takeTransfer];
                Heap := Heap[null, wand#sm(true, true):=Heap[null, wand#sm(true, true)][x, f_7:=true]];
              }
            }
          assert {:msg "  Assert might fail. There might be insufficient permission to access x.f (AssertTransfer.vpr@33.16--33.51) [139296]"}
            b_18 && b_19 ==> neededTransfer == 0.000000000 && Used_11Mask[rcvLocal, f_7] == initNeededTransfer;
          
          // -- Creating state which is the sum of the two previously built up states
            b_20 := b_18 && b_19;
            b_20 := b_20 && state(Result_4Heap, Result_4Mask);
            b_20 := b_20 && sumMask(Result_4Mask, Ops_7Mask, Used_11Mask);
            b_20 := (b_20 && IdenticalOnKnownLocations(Ops_7Heap, Result_4Heap, Ops_7Mask)) && IdenticalOnKnownLocations(Used_11Heap, Result_4Heap, Used_11Mask);
            b_20 := b_20 && state(Result_4Heap, Result_4Mask);
          b_18 := b_18 && b_20;
        b_18 := b_18 && b_19;
        b_18 := b_18 && Used_11Heap == Ops_7Heap;
        
        // -- Transfer of acc(x.f, write)
          rcvLocal := x;
          neededTransfer := FullPerm;
          initNeededTransfer := Ops_7Mask[rcvLocal, f_7] + neededTransfer;
          assert {:msg "  Assert might fail. Fraction acc(x.f, write) might be negative. (AssertTransfer.vpr@33.16--33.51) [139297]"}
            neededTransfer >= 0.000000000;
          
          // -- transfer code for top state of stack
            // accumulate constraints which need to be satisfied for transfer to occur
            accVar2 := true;
            // actual code for the transfer from current state on stack
            if (((b_18 && b_18) && accVar2) && neededTransfer > 0.000000000) {
              maskTransfer := Used_11Mask[rcvLocal, f_7];
              if (neededTransfer <= maskTransfer) {
                takeTransfer := neededTransfer;
              } else {
                takeTransfer := maskTransfer;
              }
              if (takeTransfer > 0.000000000) {
                neededTransfer := neededTransfer - takeTransfer;
                Ops_7Mask := Ops_7Mask[rcvLocal, f_7:=Ops_7Mask[rcvLocal, f_7] + takeTransfer];
                b_18 := b_18 && state(Ops_7Heap, Ops_7Mask);
                b_18 := b_18 && Used_11Heap[rcvLocal, f_7] == Ops_7Heap[rcvLocal, f_7];
                Used_11Mask := Used_11Mask[rcvLocal, f_7:=Used_11Mask[rcvLocal, f_7] - takeTransfer];
                Used_11Heap := Used_11Heap[null, wand#sm(true, true):=Used_11Heap[null, wand#sm(true, true)][x, f_7:=true]];
              }
            }
          assert {:msg "  Assert might fail. There might be insufficient permission to access x.f (AssertTransfer.vpr@33.16--33.51) [139298]"}
            b_18 && b_18 ==> neededTransfer == 0.000000000 && Ops_7Mask[rcvLocal, f_7] == initNeededTransfer;
          
          // -- Creating state which is the sum of the two previously built up states
            b_21 := b_18 && b_19;
            b_21 := b_21 && state(Result_5Heap, Result_5Mask);
            b_21 := b_21 && sumMask(Result_5Mask, Ops_7Mask, Used_11Mask);
            b_21 := (b_21 && IdenticalOnKnownLocations(Ops_7Heap, Result_5Heap, Ops_7Mask)) && IdenticalOnKnownLocations(Used_11Heap, Result_5Heap, Used_11Mask);
            b_21 := b_21 && state(Result_5Heap, Result_5Mask);
          b_18 := b_18 && b_21;
        if (b_18 ==> Result_5Heap[x, f_7] == 0) {
          
          // -- Transfer of acc(x.g, write)
            rcvLocal := x;
            neededTransfer := FullPerm;
            initNeededTransfer := Used_11Mask[rcvLocal, g] + neededTransfer;
            assert {:msg "  Assert might fail. Fraction acc(x.g, write) might be negative. (AssertTransfer.vpr@33.16--33.51) [139299]"}
              neededTransfer >= 0.000000000;
            
            // -- transfer code for top state of stack
              // accumulate constraints which need to be satisfied for transfer to occur
              accVar2 := true;
              // actual code for the transfer from current state on stack
              if (((b_18 && b_19) && accVar2) && neededTransfer > 0.000000000) {
                maskTransfer := Ops_7Mask[rcvLocal, g];
                if (neededTransfer <= maskTransfer) {
                  takeTransfer := neededTransfer;
                } else {
                  takeTransfer := maskTransfer;
                }
                if (takeTransfer > 0.000000000) {
                  neededTransfer := neededTransfer - takeTransfer;
                  Used_11Mask := Used_11Mask[rcvLocal, g:=Used_11Mask[rcvLocal, g] + takeTransfer];
                  b_19 := b_19 && state(Used_11Heap, Used_11Mask);
                  b_19 := b_19 && Ops_7Heap[rcvLocal, g] == Used_11Heap[rcvLocal, g];
                  Ops_7Mask := Ops_7Mask[rcvLocal, g:=Ops_7Mask[rcvLocal, g] - takeTransfer];
                }
              }
            
            // -- transfer code for top state of stack
              // accumulate constraints which need to be satisfied for transfer to occur
              accVar2 := true;
              // actual code for the transfer from current state on stack
              if (((b_18 && b_19) && accVar2) && neededTransfer > 0.000000000) {
                maskTransfer := Mask[rcvLocal, g];
                if (neededTransfer <= maskTransfer) {
                  takeTransfer := neededTransfer;
                } else {
                  takeTransfer := maskTransfer;
                }
                if (takeTransfer > 0.000000000) {
                  neededTransfer := neededTransfer - takeTransfer;
                  Used_11Mask := Used_11Mask[rcvLocal, g:=Used_11Mask[rcvLocal, g] + takeTransfer];
                  b_19 := b_19 && state(Used_11Heap, Used_11Mask);
                  b_19 := b_19 && Heap[rcvLocal, g] == Used_11Heap[rcvLocal, g];
                  Mask := Mask[rcvLocal, g:=Mask[rcvLocal, g] - takeTransfer];
                  Heap := Heap[null, wand#sm(true, true):=Heap[null, wand#sm(true, true)][x, g:=true]];
                }
              }
            assert {:msg "  Assert might fail. There might be insufficient permission to access x.g (AssertTransfer.vpr@33.16--33.51) [139300]"}
              b_18 && b_19 ==> neededTransfer == 0.000000000 && Used_11Mask[rcvLocal, g] == initNeededTransfer;
            
            // -- Creating state which is the sum of the two previously built up states
              b_22 := b_18 && b_19;
              b_22 := b_22 && state(Result_6Heap, Result_6Mask);
              b_22 := b_22 && sumMask(Result_6Mask, Ops_7Mask, Used_11Mask);
              b_22 := (b_22 && IdenticalOnKnownLocations(Ops_7Heap, Result_6Heap, Ops_7Mask)) && IdenticalOnKnownLocations(Used_11Heap, Result_6Heap, Used_11Mask);
              b_22 := b_22 && state(Result_6Heap, Result_6Mask);
            b_18 := b_18 && b_22;
          b_18 := b_18 && b_19;
          b_18 := b_18 && Used_11Heap == Ops_7Heap;
          
          // -- Transfer of acc(x.g, write)
            rcvLocal := x;
            neededTransfer := FullPerm;
            initNeededTransfer := Ops_7Mask[rcvLocal, g] + neededTransfer;
            assert {:msg "  Assert might fail. Fraction acc(x.g, write) might be negative. (AssertTransfer.vpr@33.16--33.51) [139301]"}
              neededTransfer >= 0.000000000;
            
            // -- transfer code for top state of stack
              // accumulate constraints which need to be satisfied for transfer to occur
              accVar2 := true;
              // actual code for the transfer from current state on stack
              if (((b_18 && b_18) && accVar2) && neededTransfer > 0.000000000) {
                maskTransfer := Used_11Mask[rcvLocal, g];
                if (neededTransfer <= maskTransfer) {
                  takeTransfer := neededTransfer;
                } else {
                  takeTransfer := maskTransfer;
                }
                if (takeTransfer > 0.000000000) {
                  neededTransfer := neededTransfer - takeTransfer;
                  Ops_7Mask := Ops_7Mask[rcvLocal, g:=Ops_7Mask[rcvLocal, g] + takeTransfer];
                  b_18 := b_18 && state(Ops_7Heap, Ops_7Mask);
                  b_18 := b_18 && Used_11Heap[rcvLocal, g] == Ops_7Heap[rcvLocal, g];
                  Used_11Mask := Used_11Mask[rcvLocal, g:=Used_11Mask[rcvLocal, g] - takeTransfer];
                  Used_11Heap := Used_11Heap[null, wand#sm(true, true):=Used_11Heap[null, wand#sm(true, true)][x, g:=true]];
                }
              }
            assert {:msg "  Assert might fail. There might be insufficient permission to access x.g (AssertTransfer.vpr@33.16--33.51) [139302]"}
              b_18 && b_18 ==> neededTransfer == 0.000000000 && Ops_7Mask[rcvLocal, g] == initNeededTransfer;
            
            // -- Creating state which is the sum of the two previously built up states
              b_23 := b_18 && b_19;
              b_23 := b_23 && state(Result_7Heap, Result_7Mask);
              b_23 := b_23 && sumMask(Result_7Mask, Ops_7Mask, Used_11Mask);
              b_23 := (b_23 && IdenticalOnKnownLocations(Ops_7Heap, Result_7Heap, Ops_7Mask)) && IdenticalOnKnownLocations(Used_11Heap, Result_7Heap, Used_11Mask);
              b_23 := b_23 && state(Result_7Heap, Result_7Mask);
            b_18 := b_18 && b_23;
        }
        
        // -- Creating state which is the sum of the two previously built up states
          b_24_1 := b_18 && b_19;
          b_24_1 := b_24_1 && state(Result_8Heap, Result_8Mask);
          b_24_1 := b_24_1 && sumMask(Result_8Mask, Ops_7Mask, Used_11Mask);
          b_24_1 := (b_24_1 && IdenticalOnKnownLocations(Ops_7Heap, Result_8Heap, Ops_7Mask)) && IdenticalOnKnownLocations(Used_11Heap, Result_8Heap, Used_11Mask);
          b_24_1 := b_24_1 && state(Result_8Heap, Result_8Mask);
        b_18 := b_18 && b_24_1;
        b_18 := b_18 && state(Ops_7Heap, Ops_7Mask);
    }
    if (b_18) {
      
      // -- Translating statement: if (x.f == 0) -- AssertTransfer.vpr@34.9--41.10
        if (b_18) {
          
          // -- Check definedness of x.f == 0
            assert {:msg "  Conditional statement might fail. There might be insufficient permission to access x.f (AssertTransfer.vpr@34.13--34.21) [139303]"}
              HasDirectPerm(Ops_7Mask, x, f_7);
        }
        if (b_18 ==> Ops_7Heap[x, f_7] == 0) {
          
          // -- Translating statement: if (x.g == 0) -- AssertTransfer.vpr@35.13--36.14
            if (b_18) {
              
              // -- Check definedness of x.g == 0
                assert {:msg "  Conditional statement might fail. There might be insufficient permission to access x.g (AssertTransfer.vpr@35.17--35.25) [139304]"}
                  HasDirectPerm(Ops_7Mask, x, g);
            }
            b_18 := b_18 && state(Ops_7Heap, Ops_7Mask);
        } else {
          
          // -- Translating statement: if (x.g == 0) -- AssertTransfer.vpr@39.13--40.14
            if (b_18) {
              
              // -- Check definedness of x.g == 0
                assert {:msg "  Conditional statement might fail. There might be insufficient permission to access x.g (AssertTransfer.vpr@39.17--39.25) [139305]"}
                  HasDirectPerm(Ops_7Mask, x, g);
            }
            b_18 := b_18 && state(Ops_7Heap, Ops_7Mask);
        }
        b_18 := b_18 && state(Ops_7Heap, Ops_7Mask);
    }
    // Translating exec of non-ghost operationtrue
    havoc Used_12Heap;
    Used_12Mask := ZeroMask;
    b_25 := b_25 && state(Used_12Heap, Used_12Mask);
    Mask := Mask[null, wand(true, true):=Mask[null, wand(true, true)] + FullPerm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test4
// ==================================================

procedure test4(x: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var Ops_9Heap: HeapType;
  var Ops_9Mask: MaskType;
  var b_27: bool;
  var Used_13Heap: HeapType;
  var Used_13Mask: MaskType;
  var b_26: bool;
  var Labellhs9Heap: HeapType;
  var Labellhs9Mask: MaskType;
  var boolCur_4: bool;
  var AssertHeap: HeapType;
  var AssertMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var Used_14Heap: HeapType;
  var Used_14Mask: MaskType;
  var b_28: bool;
  var rcvLocal: Ref;
  var neededTransfer: Perm;
  var initNeededTransfer: Perm;
  var accVar2: bool;
  var maskTransfer: Perm;
  var takeTransfer: Perm;
  var b_29: bool;
  var Result_9Heap: HeapType;
  var Result_9Mask: MaskType;
  var b_30: bool;
  var Result_10Heap: HeapType;
  var Result_10Mask: MaskType;
  var b_31: bool;
  var Result_11Heap: HeapType;
  var Result_11Mask: MaskType;
  var b_32: bool;
  var Result_12Heap: HeapType;
  var Result_12Mask: MaskType;
  var b_33: bool;
  var Result_13Heap: HeapType;
  var Result_13Mask: MaskType;
  var Used_15Heap: HeapType;
  var Used_15Mask: MaskType;
  var b_34: bool;
  
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
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: package true --* true {
  //   assert acc(x.f, write) && (x.f == 0 ==> acc(x.g, write))
  //   if (x.f == 0) {
  //     if (x.g == 0) {
  //     }
  //   } elseif (x.g == 0) {
  //   }
  // } -- AssertTransfer.vpr@47.5--57.6
    havoc Ops_9Heap;
    Ops_9Mask := ZeroMask;
    b_27 := b_27 && state(Ops_9Heap, Ops_9Mask);
    havoc Used_13Heap;
    Used_13Mask := ZeroMask;
    b_26 := b_26 && state(Used_13Heap, Used_13Mask);
    // Inhaling left hand side of current wand into hypothetical state
    if (b_27) {
      b_27 := b_27;
    }
    b_27 := b_27 && state(Ops_9Heap, Ops_9Mask);
    
    // -- Translating statement: label lhs9 -- AssertTransfer.vpr@47.13--47.26
      lhs9:
      Labellhs9Heap := Ops_9Heap;
      Labellhs9Mask := Ops_9Mask;
      b_27 := b_27 && state(Ops_9Heap, Ops_9Mask);
    boolCur_4 := true;
    if (b_27) {
      
      // -- Translating statement: assert acc(x.f, write) && (x.f == 0 ==> acc(x.g, write)) -- AssertTransfer.vpr@48.9--48.51
        AssertHeap := Ops_9Heap;
        AssertMask := Ops_9Mask;
        ExhaleWellDef0Heap := AssertHeap;
        ExhaleWellDef0Mask := AssertMask;
        havoc Used_14Heap;
        Used_14Mask := ZeroMask;
        b_28 := b_28 && state(Used_14Heap, Used_14Mask);
        
        // -- Transfer of acc(x.f, write)
          rcvLocal := x;
          neededTransfer := FullPerm;
          initNeededTransfer := Used_14Mask[rcvLocal, f_7] + neededTransfer;
          assert {:msg "  Assert might fail. Fraction acc(x.f, write) might be negative. (AssertTransfer.vpr@48.16--48.51) [139307]"}
            neededTransfer >= 0.000000000;
          
          // -- transfer code for top state of stack
            // accumulate constraints which need to be satisfied for transfer to occur
            accVar2 := true;
            // actual code for the transfer from current state on stack
            if (((b_27 && b_28) && accVar2) && neededTransfer > 0.000000000) {
              maskTransfer := Ops_9Mask[rcvLocal, f_7];
              if (neededTransfer <= maskTransfer) {
                takeTransfer := neededTransfer;
              } else {
                takeTransfer := maskTransfer;
              }
              if (takeTransfer > 0.000000000) {
                neededTransfer := neededTransfer - takeTransfer;
                Used_14Mask := Used_14Mask[rcvLocal, f_7:=Used_14Mask[rcvLocal, f_7] + takeTransfer];
                b_28 := b_28 && state(Used_14Heap, Used_14Mask);
                b_28 := b_28 && Ops_9Heap[rcvLocal, f_7] == Used_14Heap[rcvLocal, f_7];
                Ops_9Mask := Ops_9Mask[rcvLocal, f_7:=Ops_9Mask[rcvLocal, f_7] - takeTransfer];
              }
            }
          
          // -- transfer code for top state of stack
            // accumulate constraints which need to be satisfied for transfer to occur
            accVar2 := true;
            // actual code for the transfer from current state on stack
            if (((b_27 && b_28) && accVar2) && neededTransfer > 0.000000000) {
              maskTransfer := Mask[rcvLocal, f_7];
              if (neededTransfer <= maskTransfer) {
                takeTransfer := neededTransfer;
              } else {
                takeTransfer := maskTransfer;
              }
              if (takeTransfer > 0.000000000) {
                neededTransfer := neededTransfer - takeTransfer;
                Used_14Mask := Used_14Mask[rcvLocal, f_7:=Used_14Mask[rcvLocal, f_7] + takeTransfer];
                b_28 := b_28 && state(Used_14Heap, Used_14Mask);
                b_28 := b_28 && Heap[rcvLocal, f_7] == Used_14Heap[rcvLocal, f_7];
                Mask := Mask[rcvLocal, f_7:=Mask[rcvLocal, f_7] - takeTransfer];
                Heap := Heap[null, wand#sm(true, true):=Heap[null, wand#sm(true, true)][x, f_7:=true]];
              }
            }
          assert {:msg "  Assert might fail. There might be insufficient permission to access x.f (AssertTransfer.vpr@48.16--48.51) [139308]"}
            b_27 && b_28 ==> neededTransfer == 0.000000000 && Used_14Mask[rcvLocal, f_7] == initNeededTransfer;
          
          // -- Creating state which is the sum of the two previously built up states
            b_29 := b_27 && b_28;
            b_29 := b_29 && state(Result_9Heap, Result_9Mask);
            b_29 := b_29 && sumMask(Result_9Mask, Ops_9Mask, Used_14Mask);
            b_29 := (b_29 && IdenticalOnKnownLocations(Ops_9Heap, Result_9Heap, Ops_9Mask)) && IdenticalOnKnownLocations(Used_14Heap, Result_9Heap, Used_14Mask);
            b_29 := b_29 && state(Result_9Heap, Result_9Mask);
          b_27 := b_27 && b_29;
        b_27 := b_27 && b_28;
        b_27 := b_27 && Used_14Heap == Ops_9Heap;
        
        // -- Transfer of acc(x.f, write)
          rcvLocal := x;
          neededTransfer := FullPerm;
          initNeededTransfer := Ops_9Mask[rcvLocal, f_7] + neededTransfer;
          assert {:msg "  Assert might fail. Fraction acc(x.f, write) might be negative. (AssertTransfer.vpr@48.16--48.51) [139309]"}
            neededTransfer >= 0.000000000;
          
          // -- transfer code for top state of stack
            // accumulate constraints which need to be satisfied for transfer to occur
            accVar2 := true;
            // actual code for the transfer from current state on stack
            if (((b_27 && b_27) && accVar2) && neededTransfer > 0.000000000) {
              maskTransfer := Used_14Mask[rcvLocal, f_7];
              if (neededTransfer <= maskTransfer) {
                takeTransfer := neededTransfer;
              } else {
                takeTransfer := maskTransfer;
              }
              if (takeTransfer > 0.000000000) {
                neededTransfer := neededTransfer - takeTransfer;
                Ops_9Mask := Ops_9Mask[rcvLocal, f_7:=Ops_9Mask[rcvLocal, f_7] + takeTransfer];
                b_27 := b_27 && state(Ops_9Heap, Ops_9Mask);
                b_27 := b_27 && Used_14Heap[rcvLocal, f_7] == Ops_9Heap[rcvLocal, f_7];
                Used_14Mask := Used_14Mask[rcvLocal, f_7:=Used_14Mask[rcvLocal, f_7] - takeTransfer];
                Used_14Heap := Used_14Heap[null, wand#sm(true, true):=Used_14Heap[null, wand#sm(true, true)][x, f_7:=true]];
              }
            }
          assert {:msg "  Assert might fail. There might be insufficient permission to access x.f (AssertTransfer.vpr@48.16--48.51) [139310]"}
            b_27 && b_27 ==> neededTransfer == 0.000000000 && Ops_9Mask[rcvLocal, f_7] == initNeededTransfer;
          
          // -- Creating state which is the sum of the two previously built up states
            b_30 := b_27 && b_28;
            b_30 := b_30 && state(Result_10Heap, Result_10Mask);
            b_30 := b_30 && sumMask(Result_10Mask, Ops_9Mask, Used_14Mask);
            b_30 := (b_30 && IdenticalOnKnownLocations(Ops_9Heap, Result_10Heap, Ops_9Mask)) && IdenticalOnKnownLocations(Used_14Heap, Result_10Heap, Used_14Mask);
            b_30 := b_30 && state(Result_10Heap, Result_10Mask);
          b_27 := b_27 && b_30;
        if (b_27 ==> Result_10Heap[x, f_7] == 0) {
          
          // -- Transfer of acc(x.g, write)
            rcvLocal := x;
            neededTransfer := FullPerm;
            initNeededTransfer := Used_14Mask[rcvLocal, g] + neededTransfer;
            assert {:msg "  Assert might fail. Fraction acc(x.g, write) might be negative. (AssertTransfer.vpr@48.16--48.51) [139311]"}
              neededTransfer >= 0.000000000;
            
            // -- transfer code for top state of stack
              // accumulate constraints which need to be satisfied for transfer to occur
              accVar2 := true;
              // actual code for the transfer from current state on stack
              if (((b_27 && b_28) && accVar2) && neededTransfer > 0.000000000) {
                maskTransfer := Ops_9Mask[rcvLocal, g];
                if (neededTransfer <= maskTransfer) {
                  takeTransfer := neededTransfer;
                } else {
                  takeTransfer := maskTransfer;
                }
                if (takeTransfer > 0.000000000) {
                  neededTransfer := neededTransfer - takeTransfer;
                  Used_14Mask := Used_14Mask[rcvLocal, g:=Used_14Mask[rcvLocal, g] + takeTransfer];
                  b_28 := b_28 && state(Used_14Heap, Used_14Mask);
                  b_28 := b_28 && Ops_9Heap[rcvLocal, g] == Used_14Heap[rcvLocal, g];
                  Ops_9Mask := Ops_9Mask[rcvLocal, g:=Ops_9Mask[rcvLocal, g] - takeTransfer];
                }
              }
            
            // -- transfer code for top state of stack
              // accumulate constraints which need to be satisfied for transfer to occur
              accVar2 := true;
              // actual code for the transfer from current state on stack
              if (((b_27 && b_28) && accVar2) && neededTransfer > 0.000000000) {
                maskTransfer := Mask[rcvLocal, g];
                if (neededTransfer <= maskTransfer) {
                  takeTransfer := neededTransfer;
                } else {
                  takeTransfer := maskTransfer;
                }
                if (takeTransfer > 0.000000000) {
                  neededTransfer := neededTransfer - takeTransfer;
                  Used_14Mask := Used_14Mask[rcvLocal, g:=Used_14Mask[rcvLocal, g] + takeTransfer];
                  b_28 := b_28 && state(Used_14Heap, Used_14Mask);
                  b_28 := b_28 && Heap[rcvLocal, g] == Used_14Heap[rcvLocal, g];
                  Mask := Mask[rcvLocal, g:=Mask[rcvLocal, g] - takeTransfer];
                  Heap := Heap[null, wand#sm(true, true):=Heap[null, wand#sm(true, true)][x, g:=true]];
                }
              }
            assert {:msg "  Assert might fail. There might be insufficient permission to access x.g (AssertTransfer.vpr@48.16--48.51) [139312]"}
              b_27 && b_28 ==> neededTransfer == 0.000000000 && Used_14Mask[rcvLocal, g] == initNeededTransfer;
            
            // -- Creating state which is the sum of the two previously built up states
              b_31 := b_27 && b_28;
              b_31 := b_31 && state(Result_11Heap, Result_11Mask);
              b_31 := b_31 && sumMask(Result_11Mask, Ops_9Mask, Used_14Mask);
              b_31 := (b_31 && IdenticalOnKnownLocations(Ops_9Heap, Result_11Heap, Ops_9Mask)) && IdenticalOnKnownLocations(Used_14Heap, Result_11Heap, Used_14Mask);
              b_31 := b_31 && state(Result_11Heap, Result_11Mask);
            b_27 := b_27 && b_31;
          b_27 := b_27 && b_28;
          b_27 := b_27 && Used_14Heap == Ops_9Heap;
          
          // -- Transfer of acc(x.g, write)
            rcvLocal := x;
            neededTransfer := FullPerm;
            initNeededTransfer := Ops_9Mask[rcvLocal, g] + neededTransfer;
            assert {:msg "  Assert might fail. Fraction acc(x.g, write) might be negative. (AssertTransfer.vpr@48.16--48.51) [139313]"}
              neededTransfer >= 0.000000000;
            
            // -- transfer code for top state of stack
              // accumulate constraints which need to be satisfied for transfer to occur
              accVar2 := true;
              // actual code for the transfer from current state on stack
              if (((b_27 && b_27) && accVar2) && neededTransfer > 0.000000000) {
                maskTransfer := Used_14Mask[rcvLocal, g];
                if (neededTransfer <= maskTransfer) {
                  takeTransfer := neededTransfer;
                } else {
                  takeTransfer := maskTransfer;
                }
                if (takeTransfer > 0.000000000) {
                  neededTransfer := neededTransfer - takeTransfer;
                  Ops_9Mask := Ops_9Mask[rcvLocal, g:=Ops_9Mask[rcvLocal, g] + takeTransfer];
                  b_27 := b_27 && state(Ops_9Heap, Ops_9Mask);
                  b_27 := b_27 && Used_14Heap[rcvLocal, g] == Ops_9Heap[rcvLocal, g];
                  Used_14Mask := Used_14Mask[rcvLocal, g:=Used_14Mask[rcvLocal, g] - takeTransfer];
                  Used_14Heap := Used_14Heap[null, wand#sm(true, true):=Used_14Heap[null, wand#sm(true, true)][x, g:=true]];
                }
              }
            assert {:msg "  Assert might fail. There might be insufficient permission to access x.g (AssertTransfer.vpr@48.16--48.51) [139314]"}
              b_27 && b_27 ==> neededTransfer == 0.000000000 && Ops_9Mask[rcvLocal, g] == initNeededTransfer;
            
            // -- Creating state which is the sum of the two previously built up states
              b_32 := b_27 && b_28;
              b_32 := b_32 && state(Result_12Heap, Result_12Mask);
              b_32 := b_32 && sumMask(Result_12Mask, Ops_9Mask, Used_14Mask);
              b_32 := (b_32 && IdenticalOnKnownLocations(Ops_9Heap, Result_12Heap, Ops_9Mask)) && IdenticalOnKnownLocations(Used_14Heap, Result_12Heap, Used_14Mask);
              b_32 := b_32 && state(Result_12Heap, Result_12Mask);
            b_27 := b_27 && b_32;
        }
        
        // -- Creating state which is the sum of the two previously built up states
          b_33 := b_27 && b_28;
          b_33 := b_33 && state(Result_13Heap, Result_13Mask);
          b_33 := b_33 && sumMask(Result_13Mask, Ops_9Mask, Used_14Mask);
          b_33 := (b_33 && IdenticalOnKnownLocations(Ops_9Heap, Result_13Heap, Ops_9Mask)) && IdenticalOnKnownLocations(Used_14Heap, Result_13Heap, Used_14Mask);
          b_33 := b_33 && state(Result_13Heap, Result_13Mask);
        b_27 := b_27 && b_33;
        b_27 := b_27 && state(Ops_9Heap, Ops_9Mask);
    }
    if (b_27) {
      
      // -- Translating statement: if (x.f == 0) -- AssertTransfer.vpr@49.9--56.10
        if (b_27) {
          
          // -- Check definedness of x.f == 0
            assert {:msg "  Conditional statement might fail. There might be insufficient permission to access x.f (AssertTransfer.vpr@49.13--49.21) [139315]"}
              HasDirectPerm(Ops_9Mask, x, f_7);
        }
        if (b_27 ==> Ops_9Heap[x, f_7] == 0) {
          
          // -- Translating statement: if (x.g == 0) -- AssertTransfer.vpr@50.13--51.14
            if (b_27) {
              
              // -- Check definedness of x.g == 0
                assert {:msg "  Conditional statement might fail. There might be insufficient permission to access x.g (AssertTransfer.vpr@50.17--50.25) [139316]"}
                  HasDirectPerm(Ops_9Mask, x, g);
            }
            b_27 := b_27 && state(Ops_9Heap, Ops_9Mask);
        } else {
          
          // -- Translating statement: if (x.g == 0) -- AssertTransfer.vpr@54.13--55.14
            if (b_27) {
              
              // -- Check definedness of x.g == 0
                assert {:msg "  Conditional statement might fail. There might be insufficient permission to access x.g (AssertTransfer.vpr@54.17--54.25) [139317]"}
                  HasDirectPerm(Ops_9Mask, x, g);
            }
            b_27 := b_27 && state(Ops_9Heap, Ops_9Mask);
        }
        b_27 := b_27 && state(Ops_9Heap, Ops_9Mask);
    }
    // Translating exec of non-ghost operationtrue
    havoc Used_15Heap;
    Used_15Mask := ZeroMask;
    b_34 := b_34 && state(Used_15Heap, Used_15Mask);
    Mask := Mask[null, wand(true, true):=Mask[null, wand(true, true)] + FullPerm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
}