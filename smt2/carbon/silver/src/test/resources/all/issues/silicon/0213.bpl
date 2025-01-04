// 
// Translation of Viper program.
// 
// Date:         2025-01-04 01:17:15
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/issues/silicon/0213.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/issues/silicon/0213-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
axiom (forall o_35: Ref, f_31: (Field NormalField Ref), Heap: HeapType ::
  { Heap[o_35, f_31] }
  Heap[o_35, $allocated] ==> Heap[Heap[o_35, f_31], $allocated]
);
function  succHeap(Heap0: HeapType, Heap1: HeapType): bool;
function  succHeapTrans(Heap0: HeapType, Heap1: HeapType): bool;
function  IdenticalOnKnownLocations(Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType): bool;
function  IsPredicateField<A, B>(f_1: (Field A B)): bool;
function  IsWandField<A, B>(f_1: (Field A B)): bool;
function  getPredWandId<A, B>(f_1: (Field A B)): int;
// Frame all locations with direct permissions
axiom (forall <A, B> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_22: Ref, f_30: (Field A B) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_22, f_30] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, o_22, f_30) ==> Heap[o_22, f_30] == ExhaleHeap[o_22, f_30]
);
// Frame all predicate mask locations of predicates with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_13: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_13), ExhaleHeap[null, PredicateMaskField(pm_f_13)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_13) && IsPredicateField(pm_f_13) ==> Heap[null, PredicateMaskField(pm_f_13)] == ExhaleHeap[null, PredicateMaskField(pm_f_13)]
);
// Frame all locations with known folded permissions
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_13: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_13) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_13) && IsPredicateField(pm_f_13) ==> (forall <A, B> o2_13: Ref, f_30: (Field A B) ::
    { ExhaleHeap[o2_13, f_30] }
    Heap[null, PredicateMaskField(pm_f_13)][o2_13, f_30] ==> Heap[o2_13, f_30] == ExhaleHeap[o2_13, f_30]
  )
);
// Frame all wand mask locations of wands with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_13: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_13), ExhaleHeap[null, WandMaskField(pm_f_13)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_13) && IsWandField(pm_f_13) ==> Heap[null, WandMaskField(pm_f_13)] == ExhaleHeap[null, WandMaskField(pm_f_13)]
);
// Frame all locations in the footprint of magic wands
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_13: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_13) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_13) && IsWandField(pm_f_13) ==> (forall <A, B> o2_13: Ref, f_30: (Field A B) ::
    { ExhaleHeap[o2_13, f_30] }
    Heap[null, WandMaskField(pm_f_13)][o2_13, f_30] ==> Heap[o2_13, f_30] == ExhaleHeap[o2_13, f_30]
  )
);
// All previously-allocated references are still allocated
axiom (forall Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_22: Ref ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_22, $allocated] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> Heap[o_22, $allocated] ==> ExhaleHeap[o_22, $allocated]
);
// Updated Heaps are Successor Heaps
axiom (forall <A, B> Heap: HeapType, o_35: Ref, f_11: (Field A B), v: B ::
  { Heap[o_35, f_11:=v] }
  succHeap(Heap, Heap[o_35, f_11:=v])
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
function  wand(arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm, arg5: Ref, arg6: Perm, arg7: Ref, arg8: int): Field WandType_wand int;
function  wand#sm(arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm, arg5: Ref, arg6: Perm, arg7: Ref, arg8: int): Field WandType_wand PMaskType;
function  wand#ft(arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm, arg5: Ref, arg6: Perm, arg7: Ref, arg8: int): Field WandType_wand FrameType;
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm, arg5: Ref, arg6: Perm, arg7: Ref, arg8: int ::
  { wand(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8) }
  IsWandField(wand(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm, arg5: Ref, arg6: Perm, arg7: Ref, arg8: int ::
  { wand#ft(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8) }
  IsWandField(wand#ft(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm, arg5: Ref, arg6: Perm, arg7: Ref, arg8: int ::
  { wand(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8) }
  !IsPredicateField(wand(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm, arg5: Ref, arg6: Perm, arg7: Ref, arg8: int ::
  { wand#ft(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8) }
  !IsPredicateField(wand#ft(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm, arg5: Ref, arg6: Perm, arg7: Ref, arg8: int ::
  { WandMaskField(wand#ft(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8)) }
  wand#sm(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8) == WandMaskField(wand#ft(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm, arg5: Ref, arg6: Perm, arg7: Ref, arg8: int ::
  { wand(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8) }
  getPredWandId(wand(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8)) == 1
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm, arg5: Ref, arg6: Perm, arg7: Ref, arg8: int, arg1_2: Ref, arg2_2: Perm, arg3_2: Ref, arg4_2: Perm, arg5_2: Ref, arg6_2: Perm, arg7_2: Ref, arg8_2: int ::
  { wand(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8), wand(arg1_2, arg2_2, arg3_2, arg4_2, arg5_2, arg6_2, arg7_2, arg8_2) }
  wand(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8) == wand(arg1_2, arg2_2, arg3_2, arg4_2, arg5_2, arg6_2, arg7_2, arg8_2) ==> arg1 == arg1_2 && (arg2 == arg2_2 && (arg3 == arg3_2 && (arg4 == arg4_2 && (arg5 == arg5_2 && (arg6 == arg6_2 && (arg7 == arg7_2 && arg8 == arg8_2))))))
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
  getPredWandId(wand_1(arg1, arg2, arg3, arg4, arg5, arg6)) == 2
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm, arg5: Ref, arg6: int, arg1_2: Ref, arg2_2: Perm, arg3_2: Ref, arg4_2: Perm, arg5_2: Ref, arg6_2: int ::
  { wand_1(arg1, arg2, arg3, arg4, arg5, arg6), wand_1(arg1_2, arg2_2, arg3_2, arg4_2, arg5_2, arg6_2) }
  wand_1(arg1, arg2, arg3, arg4, arg5, arg6) == wand_1(arg1_2, arg2_2, arg3_2, arg4_2, arg5_2, arg6_2) ==> arg1 == arg1_2 && (arg2 == arg2_2 && (arg3 == arg3_2 && (arg4 == arg4_2 && (arg5 == arg5_2 && arg6 == arg6_2))))
);

// ==================================================
// Translation of all fields
// ==================================================

const unique f1_1: Field NormalField Ref;
axiom !IsPredicateField(f1_1);
axiom !IsWandField(f1_1);
const unique f2_1: Field NormalField Ref;
axiom !IsPredicateField(f2_1);
axiom !IsWandField(f2_1);
const unique val: Field NormalField int;
axiom !IsPredicateField(val);
axiom !IsWandField(val);

// ==================================================
// Translation of predicate Foo
// ==================================================

type PredicateType_Foo;
function  Foo(self: Ref): Field PredicateType_Foo FrameType;
function  Foo#sm(self: Ref): Field PredicateType_Foo PMaskType;
axiom (forall self: Ref ::
  { PredicateMaskField(Foo(self)) }
  PredicateMaskField(Foo(self)) == Foo#sm(self)
);
axiom (forall self: Ref ::
  { Foo(self) }
  IsPredicateField(Foo(self))
);
axiom (forall self: Ref ::
  { Foo(self) }
  getPredWandId(Foo(self)) == 0
);
function  Foo#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  Foo#everUsed<A>(pred: (Field A FrameType)): bool;
axiom (forall self: Ref, self2: Ref ::
  { Foo(self), Foo(self2) }
  Foo(self) == Foo(self2) ==> self == self2
);
axiom (forall self: Ref, self2: Ref ::
  { Foo#sm(self), Foo#sm(self2) }
  Foo#sm(self) == Foo#sm(self2) ==> self == self2
);

axiom (forall Heap: HeapType, self: Ref ::
  { Foo#trigger(Heap, Foo(self)) }
  Foo#everUsed(Foo(self))
);

procedure Foo#definedness(self: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  
  // -- Check definedness of predicate body of Foo
    
    // -- Initializing the state
      Mask := ZeroMask;
      assume state(Heap, Mask);
      assume AssumePermUpperBound;
      assume Heap[self, $allocated];
    perm := FullPerm;
    assume self != null;
    Mask := Mask[self, f1_1:=Mask[self, f1_1] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of acc(self.f1.val, write)
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access self.f1 (0213.vpr@8.1--12.2) [210065]"}
        HasDirectPerm(Mask, self, f1_1);
    perm := FullPerm;
    assume Heap[self, f1_1] != null;
    Mask := Mask[Heap[self, f1_1], val:=Mask[Heap[self, f1_1], val] + perm];
    assume state(Heap, Mask);
    perm := FullPerm;
    assume self != null;
    Mask := Mask[self, val:=Mask[self, val] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method silicon_fail
// ==================================================

procedure silicon_fail(x: Ref) returns (res: Ref)
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var WandDefLHSHeap: HeapType;
  var WandDefLHSMask: MaskType;
  var Labellhs1Mask: MaskType;
  var Labellhs1Heap: HeapType;
  var WandDefRHSHeap: HeapType;
  var WandDefRHSMask: MaskType;
  var UnfoldingHeap: HeapType;
  var UnfoldingMask: MaskType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var newVersion: FrameType;
  var Ops_1Heap: HeapType;
  var Ops_1Mask: MaskType;
  var b_1_1: bool;
  var UsedHeap: HeapType;
  var UsedMask: MaskType;
  var b_2: bool;
  var Labellhs2Mask: MaskType;
  var Labellhs2Heap: HeapType;
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
  var b_5: bool;
  var Result_2Heap: HeapType;
  var Result_2Mask: MaskType;
  var freshVersion: FrameType;
  var Used_2Heap: HeapType;
  var Used_2Mask: MaskType;
  var b_6: bool;
  var arg_1: Ref;
  var TempMask: MaskType;
  var newPMask: PMaskType;
  var b_7: bool;
  var Result_3Heap: HeapType;
  var Result_3Mask: MaskType;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[x, $allocated];
  
  // -- Checked inhaling of precondition
    perm := FullPerm;
    Mask := Mask[null, Foo(x):=Mask[null, Foo(x)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  if (*) {
    havoc PostHeap;
    PostMask := ZeroMask;
    assume state(PostHeap, PostMask);
    // Checked inhaling of postcondition to check definedness
    perm := FullPerm;
    assume res != null;
    PostMask := PostMask[res, val:=PostMask[res, val] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of acc(res.val, write) --* acc(Foo(x), write) && (unfolding acc(Foo(x), 1 / 2) in x.val) == old((unfolding acc(Foo(x), 1 / 2) in x.val))
      if (*) {
        havoc WandDefLHSHeap;
        WandDefLHSMask := ZeroMask;
        perm := FullPerm;
        assume res != null;
        WandDefLHSMask := WandDefLHSMask[res, val:=WandDefLHSMask[res, val] + perm];
        assume state(WandDefLHSHeap, WandDefLHSMask);
        assume state(WandDefLHSHeap, WandDefLHSMask);
        
        // -- Translating statement: label lhs1 -- 0213.vpr@23.13--23.29
          lhs1:
          Labellhs1Mask := WandDefLHSMask;
          Labellhs1Heap := WandDefLHSHeap;
          assume state(WandDefLHSHeap, WandDefLHSMask);
        havoc WandDefRHSHeap;
        WandDefRHSMask := ZeroMask;
        perm := FullPerm;
        WandDefRHSMask := WandDefRHSMask[null, Foo(x):=WandDefRHSMask[null, Foo(x)] + perm];
        assume state(WandDefRHSHeap, WandDefRHSMask);
        
        // -- Check definedness of (unfolding acc(Foo(x), 1 / 2) in x.val) == old((unfolding acc(Foo(x), 1 / 2) in x.val))
          UnfoldingHeap := WandDefRHSHeap;
          UnfoldingMask := WandDefRHSMask;
          assume Foo#trigger(UnfoldingHeap, Foo(x));
          assume UnfoldingHeap[null, Foo(x)] == CombineFrames(FrameFragment(UnfoldingHeap[x, f1_1]), CombineFrames(FrameFragment(UnfoldingHeap[UnfoldingHeap[x, f1_1], val]), FrameFragment(UnfoldingHeap[x, val])));
          ExhaleWellDef0Mask := UnfoldingMask;
          ExhaleWellDef0Heap := UnfoldingHeap;
          perm := 1 / 2;
          assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (0213.vpr@23.13--23.29) [210066]"}
            perm >= NoPerm;
          if (perm != NoPerm) {
            assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access Foo(x) (0213.vpr@23.13--23.29) [210067]"}
              perm <= UnfoldingMask[null, Foo(x)];
          }
          UnfoldingMask := UnfoldingMask[null, Foo(x):=UnfoldingMask[null, Foo(x)] - perm];
          perm := 1 / 2;
          assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (0213.vpr@23.13--23.29) [210068]"}
            perm >= NoPerm;
          assume perm > NoPerm ==> x != null;
          UnfoldingMask := UnfoldingMask[x, f1_1:=UnfoldingMask[x, f1_1] + perm];
          assume state(UnfoldingHeap, UnfoldingMask);
          perm := 1 / 2;
          assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (0213.vpr@23.13--23.29) [210069]"}
            perm >= NoPerm;
          assume perm > NoPerm ==> UnfoldingHeap[x, f1_1] != null;
          UnfoldingMask := UnfoldingMask[UnfoldingHeap[x, f1_1], val:=UnfoldingMask[UnfoldingHeap[x, f1_1], val] + perm];
          assume state(UnfoldingHeap, UnfoldingMask);
          perm := 1 / 2;
          assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (0213.vpr@23.13--23.29) [210070]"}
            perm >= NoPerm;
          assume perm > NoPerm ==> x != null;
          UnfoldingMask := UnfoldingMask[x, val:=UnfoldingMask[x, val] + perm];
          assume state(UnfoldingHeap, UnfoldingMask);
          assume state(UnfoldingHeap, UnfoldingMask);
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access x.val (0213.vpr@23.13--23.29) [210071]"}
            HasDirectPerm(UnfoldingMask, x, val);
          
          // -- Free assumptions (exp module)
            WandDefRHSHeap := WandDefRHSHeap[null, Foo#sm(x):=WandDefRHSHeap[null, Foo#sm(x)][x, f1_1:=true]];
            WandDefRHSHeap := WandDefRHSHeap[null, Foo#sm(x):=WandDefRHSHeap[null, Foo#sm(x)][WandDefRHSHeap[x, f1_1], val:=true]];
            WandDefRHSHeap := WandDefRHSHeap[null, Foo#sm(x):=WandDefRHSHeap[null, Foo#sm(x)][x, val:=true]];
            assume state(WandDefRHSHeap, WandDefRHSMask);
          UnfoldingHeap := oldHeap;
          UnfoldingMask := oldMask;
          assume Foo#trigger(UnfoldingHeap, Foo(x));
          assume UnfoldingHeap[null, Foo(x)] == CombineFrames(FrameFragment(UnfoldingHeap[x, f1_1]), CombineFrames(FrameFragment(UnfoldingHeap[UnfoldingHeap[x, f1_1], val]), FrameFragment(UnfoldingHeap[x, val])));
          ExhaleWellDef0Mask := UnfoldingMask;
          ExhaleWellDef0Heap := UnfoldingHeap;
          perm := 1 / 2;
          assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (0213.vpr@23.13--23.29) [210072]"}
            perm >= NoPerm;
          if (perm != NoPerm) {
            assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access Foo(x) (0213.vpr@23.13--23.29) [210073]"}
              perm <= UnfoldingMask[null, Foo(x)];
          }
          UnfoldingMask := UnfoldingMask[null, Foo(x):=UnfoldingMask[null, Foo(x)] - perm];
          perm := 1 / 2;
          assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (0213.vpr@23.13--23.29) [210074]"}
            perm >= NoPerm;
          assume perm > NoPerm ==> x != null;
          UnfoldingMask := UnfoldingMask[x, f1_1:=UnfoldingMask[x, f1_1] + perm];
          assume state(UnfoldingHeap, UnfoldingMask);
          perm := 1 / 2;
          assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (0213.vpr@23.13--23.29) [210075]"}
            perm >= NoPerm;
          assume perm > NoPerm ==> UnfoldingHeap[x, f1_1] != null;
          UnfoldingMask := UnfoldingMask[UnfoldingHeap[x, f1_1], val:=UnfoldingMask[UnfoldingHeap[x, f1_1], val] + perm];
          assume state(UnfoldingHeap, UnfoldingMask);
          perm := 1 / 2;
          assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (0213.vpr@23.13--23.29) [210076]"}
            perm >= NoPerm;
          assume perm > NoPerm ==> x != null;
          UnfoldingMask := UnfoldingMask[x, val:=UnfoldingMask[x, val] + perm];
          assume state(UnfoldingHeap, UnfoldingMask);
          assume state(UnfoldingHeap, UnfoldingMask);
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access x.val (0213.vpr@23.13--23.29) [210077]"}
            HasDirectPerm(UnfoldingMask, x, val);
          
          // -- Free assumptions (exp module)
            WandDefRHSHeap := WandDefRHSHeap[null, Foo#sm(x):=WandDefRHSHeap[null, Foo#sm(x)][x, f1_1:=true]];
            WandDefRHSHeap := WandDefRHSHeap[null, Foo#sm(x):=WandDefRHSHeap[null, Foo#sm(x)][WandDefRHSHeap[x, f1_1], val:=true]];
            WandDefRHSHeap := WandDefRHSHeap[null, Foo#sm(x):=WandDefRHSHeap[null, Foo#sm(x)][x, val:=true]];
            assume state(WandDefRHSHeap, WandDefRHSMask);
        assume WandDefRHSHeap[x, val] == oldHeap[x, val];
        assume state(WandDefRHSHeap, WandDefRHSMask);
        assume false;
      }
    PostMask := PostMask[null, wand(res, FullPerm, x, FullPerm, x, 1 / 2, x, oldHeap[x, val]):=PostMask[null, wand(res, FullPerm, x, FullPerm, x, 1 / 2, x, oldHeap[x, val])] + FullPerm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: unfold acc(Foo(x), write) -- 0213.vpr@25.5--25.30
    assume Foo#trigger(Heap, Foo(x));
    assume Heap[null, Foo(x)] == CombineFrames(FrameFragment(Heap[x, f1_1]), CombineFrames(FrameFragment(Heap[Heap[x, f1_1], val]), FrameFragment(Heap[x, val])));
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Unfolding Foo(x) might fail. There might be insufficient permission to access Foo(x) (0213.vpr@25.5--25.30) [210080]"}
        perm <= Mask[null, Foo(x)];
    }
    Mask := Mask[null, Foo(x):=Mask[null, Foo(x)] - perm];
    
    // -- Update version of predicate
      if (!HasDirectPerm(Mask, null, Foo(x))) {
        havoc newVersion;
        Heap := Heap[null, Foo(x):=newVersion];
      }
    perm := FullPerm;
    assume x != null;
    Mask := Mask[x, f1_1:=Mask[x, f1_1] + perm];
    assume state(Heap, Mask);
    perm := FullPerm;
    assume Heap[x, f1_1] != null;
    Mask := Mask[Heap[x, f1_1], val:=Mask[Heap[x, f1_1], val] + perm];
    assume state(Heap, Mask);
    perm := FullPerm;
    assume x != null;
    Mask := Mask[x, val:=Mask[x, val] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: res := x.f1 -- 0213.vpr@26.5--26.16
    
    // -- Check definedness of x.f1
      assert {:msg "  Assignment might fail. There might be insufficient permission to access x.f1 (0213.vpr@26.5--26.16) [210084]"}
        HasDirectPerm(Mask, x, f1_1);
    res := Heap[x, f1_1];
    assume state(Heap, Mask);
  
  // -- Translating statement: package acc(res.val, write) --*
  // acc(Foo(x), write) &&
  // (unfolding acc(Foo(x), 1 / 2) in x.val) ==
  // old((unfolding acc(Foo(x), 1 / 2) in x.val)) {
  //   fold acc(Foo(x), write)
  // } -- 0213.vpr@27.5--29.6
    havoc Ops_1Heap;
    Ops_1Mask := ZeroMask;
    b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
    havoc UsedHeap;
    UsedMask := ZeroMask;
    b_2 := b_2 && state(UsedHeap, UsedMask);
    // Inhaling left hand side of current wand into hypothetical state
    if (b_1_1) {
      perm := FullPerm;
      b_1_1 := b_1_1 && res != null;
      Ops_1Mask := Ops_1Mask[res, val:=Ops_1Mask[res, val] + perm];
      b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
    }
    b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
    
    // -- Translating statement: label lhs2 -- 0213.vpr@27.13--27.31
      lhs2:
      Labellhs2Mask := Ops_1Mask;
      Labellhs2Heap := Ops_1Heap;
      b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
    boolCur := true;
    if (b_1_1) {
      
      // -- Translating statement: fold acc(Foo(x), write) -- 0213.vpr@28.9--28.25
        ExhaleWellDef0Mask := Ops_1Mask;
        ExhaleWellDef0Heap := Ops_1Heap;
        havoc Used_1Heap;
        Used_1Mask := ZeroMask;
        b_2_1 := b_2_1 && state(Used_1Heap, Used_1Mask);
        
        // -- Transfer of acc(x.f1, write)
          rcvLocal := x;
          neededTransfer := FullPerm;
          initNeededTransfer := Used_1Mask[rcvLocal, f1_1] + neededTransfer;
          assert {:msg "  Folding Foo(x) might fail. Fraction acc(x.f1, write) might be negative. (0213.vpr@28.9--28.25) [210086]"}
            neededTransfer >= 0.000000000;
          
          // -- transfer code for top state of stack
            // accumulate constraints which need to be satisfied for transfer to occur
            accVar2 := true;
            // actual code for the transfer from current state on stack
            if (((b_1_1 && b_2_1) && accVar2) && neededTransfer > 0.000000000) {
              maskTransfer := Ops_1Mask[rcvLocal, f1_1];
              if (neededTransfer <= maskTransfer) {
                takeTransfer := neededTransfer;
              } else {
                takeTransfer := maskTransfer;
              }
              if (takeTransfer > 0.000000000) {
                neededTransfer := neededTransfer - takeTransfer;
                Used_1Mask := Used_1Mask[rcvLocal, f1_1:=Used_1Mask[rcvLocal, f1_1] + takeTransfer];
                b_2_1 := b_2_1 && state(Used_1Heap, Used_1Mask);
                b_2_1 := b_2_1 && Ops_1Heap[rcvLocal, f1_1] == Used_1Heap[rcvLocal, f1_1];
                Ops_1Mask := Ops_1Mask[rcvLocal, f1_1:=Ops_1Mask[rcvLocal, f1_1] - takeTransfer];
              }
            }
          
          // -- transfer code for top state of stack
            // accumulate constraints which need to be satisfied for transfer to occur
            accVar2 := true;
            // actual code for the transfer from current state on stack
            if (((b_1_1 && b_2_1) && accVar2) && neededTransfer > 0.000000000) {
              maskTransfer := Mask[rcvLocal, f1_1];
              if (neededTransfer <= maskTransfer) {
                takeTransfer := neededTransfer;
              } else {
                takeTransfer := maskTransfer;
              }
              if (takeTransfer > 0.000000000) {
                neededTransfer := neededTransfer - takeTransfer;
                Used_1Mask := Used_1Mask[rcvLocal, f1_1:=Used_1Mask[rcvLocal, f1_1] + takeTransfer];
                b_2_1 := b_2_1 && state(Used_1Heap, Used_1Mask);
                b_2_1 := b_2_1 && Heap[rcvLocal, f1_1] == Used_1Heap[rcvLocal, f1_1];
                Mask := Mask[rcvLocal, f1_1:=Mask[rcvLocal, f1_1] - takeTransfer];
                Heap := Heap[null, wand#sm(res, FullPerm, x, FullPerm, x, 1 / 2, x, oldHeap[x, val]):=Heap[null, wand#sm(res, FullPerm, x, FullPerm, x, 1 / 2, x, oldHeap[x, val])][x, f1_1:=true]];
              }
            }
          assert {:msg "  Folding Foo(x) might fail. There might be insufficient permission to access x.f1 (0213.vpr@28.9--28.25) [210087]"}
            b_1_1 && b_2_1 ==> neededTransfer == 0.000000000 && Used_1Mask[rcvLocal, f1_1] == initNeededTransfer;
          
          // -- Creating state which is the sum of the two previously built up states
            b_3 := b_1_1 && b_2_1;
            b_3 := b_3 && state(ResultHeap, ResultMask);
            b_3 := b_3 && sumMask(ResultMask, Ops_1Mask, Used_1Mask);
            b_3 := (b_3 && IdenticalOnKnownLocations(Ops_1Heap, ResultHeap, Ops_1Mask)) && IdenticalOnKnownLocations(Used_1Heap, ResultHeap, Used_1Mask);
            b_3 := b_3 && state(ResultHeap, ResultMask);
          b_1_1 := b_1_1 && b_3;
        b_1_1 := b_1_1 && b_2_1;
        b_1_1 := b_1_1 && Used_1Heap == Ops_1Heap;
        
        // -- Transfer of acc(x.f1.val, write)
          
          // -- checking if access predicate defined in used state
            if (b_1_1 && b_2_1) {
              if (b_1_1) {
                
                // -- Check definedness of acc(x.f1.val, write)
                  assert {:msg "  Folding Foo(x) might fail. There might be insufficient permission to access x.f1 (0213.vpr@28.9--28.25) [210088]"}
                    HasDirectPerm(ResultMask, x, f1_1);
              }
            }
          rcvLocal := ResultHeap[x, f1_1];
          neededTransfer := FullPerm;
          initNeededTransfer := Used_1Mask[rcvLocal, val] + neededTransfer;
          assert {:msg "  Folding Foo(x) might fail. Fraction acc(x.f1.val, write) might be negative. (0213.vpr@28.9--28.25) [210089]"}
            neededTransfer >= 0.000000000;
          
          // -- transfer code for top state of stack
            // accumulate constraints which need to be satisfied for transfer to occur
            accVar2 := true;
            // actual code for the transfer from current state on stack
            if (((b_1_1 && b_2_1) && accVar2) && neededTransfer > 0.000000000) {
              maskTransfer := Ops_1Mask[rcvLocal, val];
              if (neededTransfer <= maskTransfer) {
                takeTransfer := neededTransfer;
              } else {
                takeTransfer := maskTransfer;
              }
              if (takeTransfer > 0.000000000) {
                neededTransfer := neededTransfer - takeTransfer;
                Used_1Mask := Used_1Mask[rcvLocal, val:=Used_1Mask[rcvLocal, val] + takeTransfer];
                b_2_1 := b_2_1 && state(Used_1Heap, Used_1Mask);
                b_2_1 := b_2_1 && Ops_1Heap[rcvLocal, val] == Used_1Heap[rcvLocal, val];
                Ops_1Mask := Ops_1Mask[rcvLocal, val:=Ops_1Mask[rcvLocal, val] - takeTransfer];
              }
            }
          
          // -- transfer code for top state of stack
            // accumulate constraints which need to be satisfied for transfer to occur
            accVar2 := true;
            // actual code for the transfer from current state on stack
            if (((b_1_1 && b_2_1) && accVar2) && neededTransfer > 0.000000000) {
              maskTransfer := Mask[rcvLocal, val];
              if (neededTransfer <= maskTransfer) {
                takeTransfer := neededTransfer;
              } else {
                takeTransfer := maskTransfer;
              }
              if (takeTransfer > 0.000000000) {
                neededTransfer := neededTransfer - takeTransfer;
                Used_1Mask := Used_1Mask[rcvLocal, val:=Used_1Mask[rcvLocal, val] + takeTransfer];
                b_2_1 := b_2_1 && state(Used_1Heap, Used_1Mask);
                b_2_1 := b_2_1 && Heap[rcvLocal, val] == Used_1Heap[rcvLocal, val];
                Mask := Mask[rcvLocal, val:=Mask[rcvLocal, val] - takeTransfer];
                Heap := Heap[null, wand#sm(res, FullPerm, x, FullPerm, x, 1 / 2, x, oldHeap[x, val]):=Heap[null, wand#sm(res, FullPerm, x, FullPerm, x, 1 / 2, x, oldHeap[x, val])][Heap[x, f1_1], val:=true]];
              }
            }
          assert {:msg "  Folding Foo(x) might fail. There might be insufficient permission to access x.f1.val (0213.vpr@28.9--28.25) [210090]"}
            b_1_1 && b_2_1 ==> neededTransfer == 0.000000000 && Used_1Mask[rcvLocal, val] == initNeededTransfer;
          
          // -- Creating state which is the sum of the two previously built up states
            b_4 := b_1_1 && b_2_1;
            b_4 := b_4 && state(Result_1Heap, Result_1Mask);
            b_4 := b_4 && sumMask(Result_1Mask, Ops_1Mask, Used_1Mask);
            b_4 := (b_4 && IdenticalOnKnownLocations(Ops_1Heap, Result_1Heap, Ops_1Mask)) && IdenticalOnKnownLocations(Used_1Heap, Result_1Heap, Used_1Mask);
            b_4 := b_4 && state(Result_1Heap, Result_1Mask);
          b_1_1 := b_1_1 && b_4;
        b_1_1 := b_1_1 && b_2_1;
        b_1_1 := b_1_1 && Used_1Heap == Ops_1Heap;
        
        // -- Transfer of acc(x.val, write)
          rcvLocal := x;
          neededTransfer := FullPerm;
          initNeededTransfer := Used_1Mask[rcvLocal, val] + neededTransfer;
          assert {:msg "  Folding Foo(x) might fail. Fraction acc(x.val, write) might be negative. (0213.vpr@28.9--28.25) [210091]"}
            neededTransfer >= 0.000000000;
          
          // -- transfer code for top state of stack
            // accumulate constraints which need to be satisfied for transfer to occur
            accVar2 := true;
            // actual code for the transfer from current state on stack
            if (((b_1_1 && b_2_1) && accVar2) && neededTransfer > 0.000000000) {
              maskTransfer := Ops_1Mask[rcvLocal, val];
              if (neededTransfer <= maskTransfer) {
                takeTransfer := neededTransfer;
              } else {
                takeTransfer := maskTransfer;
              }
              if (takeTransfer > 0.000000000) {
                neededTransfer := neededTransfer - takeTransfer;
                Used_1Mask := Used_1Mask[rcvLocal, val:=Used_1Mask[rcvLocal, val] + takeTransfer];
                b_2_1 := b_2_1 && state(Used_1Heap, Used_1Mask);
                b_2_1 := b_2_1 && Ops_1Heap[rcvLocal, val] == Used_1Heap[rcvLocal, val];
                Ops_1Mask := Ops_1Mask[rcvLocal, val:=Ops_1Mask[rcvLocal, val] - takeTransfer];
              }
            }
          
          // -- transfer code for top state of stack
            // accumulate constraints which need to be satisfied for transfer to occur
            accVar2 := true;
            // actual code for the transfer from current state on stack
            if (((b_1_1 && b_2_1) && accVar2) && neededTransfer > 0.000000000) {
              maskTransfer := Mask[rcvLocal, val];
              if (neededTransfer <= maskTransfer) {
                takeTransfer := neededTransfer;
              } else {
                takeTransfer := maskTransfer;
              }
              if (takeTransfer > 0.000000000) {
                neededTransfer := neededTransfer - takeTransfer;
                Used_1Mask := Used_1Mask[rcvLocal, val:=Used_1Mask[rcvLocal, val] + takeTransfer];
                b_2_1 := b_2_1 && state(Used_1Heap, Used_1Mask);
                b_2_1 := b_2_1 && Heap[rcvLocal, val] == Used_1Heap[rcvLocal, val];
                Mask := Mask[rcvLocal, val:=Mask[rcvLocal, val] - takeTransfer];
                Heap := Heap[null, wand#sm(res, FullPerm, x, FullPerm, x, 1 / 2, x, oldHeap[x, val]):=Heap[null, wand#sm(res, FullPerm, x, FullPerm, x, 1 / 2, x, oldHeap[x, val])][x, val:=true]];
              }
            }
          assert {:msg "  Folding Foo(x) might fail. There might be insufficient permission to access x.val (0213.vpr@28.9--28.25) [210092]"}
            b_1_1 && b_2_1 ==> neededTransfer == 0.000000000 && Used_1Mask[rcvLocal, val] == initNeededTransfer;
          
          // -- Creating state which is the sum of the two previously built up states
            b_5 := b_1_1 && b_2_1;
            b_5 := b_5 && state(Result_2Heap, Result_2Mask);
            b_5 := b_5 && sumMask(Result_2Mask, Ops_1Mask, Used_1Mask);
            b_5 := (b_5 && IdenticalOnKnownLocations(Ops_1Heap, Result_2Heap, Ops_1Mask)) && IdenticalOnKnownLocations(Used_1Heap, Result_2Heap, Used_1Mask);
            b_5 := b_5 && state(Result_2Heap, Result_2Mask);
          b_1_1 := b_1_1 && b_5;
        b_1_1 := b_1_1 && b_2_1;
        b_1_1 := b_1_1 && Used_1Heap == Ops_1Heap;
        perm := FullPerm;
        b_1_1 := b_1_1;
        Ops_1Mask := Ops_1Mask[null, Foo(x):=Ops_1Mask[null, Foo(x)] + perm];
        b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
        b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
        assume Foo#trigger(Ops_1Heap, Foo(x));
        assume Ops_1Heap[null, Foo(x)] == CombineFrames(FrameFragment(Ops_1Heap[x, f1_1]), CombineFrames(FrameFragment(Ops_1Heap[Ops_1Heap[x, f1_1], val]), FrameFragment(Ops_1Heap[x, val])));
        if (!HasDirectPerm(Ops_1Mask, null, Foo(x))) {
          Ops_1Heap := Ops_1Heap[null, Foo#sm(x):=ZeroPMask];
          havoc freshVersion;
          Ops_1Heap := Ops_1Heap[null, Foo(x):=freshVersion];
        }
        Ops_1Heap := Ops_1Heap[null, Foo#sm(x):=Ops_1Heap[null, Foo#sm(x)][x, f1_1:=true]];
        Ops_1Heap := Ops_1Heap[null, Foo#sm(x):=Ops_1Heap[null, Foo#sm(x)][Ops_1Heap[x, f1_1], val:=true]];
        Ops_1Heap := Ops_1Heap[null, Foo#sm(x):=Ops_1Heap[null, Foo#sm(x)][x, val:=true]];
        assume state(Ops_1Heap, Ops_1Mask);
        b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
    }
    // Translating exec of non-ghost operationacc(Foo(x), write) && (unfolding acc(Foo(x), 1 / 2) in x.val) == old((unfolding acc(Foo(x), 1 / 2) in x.val))
    havoc Used_2Heap;
    Used_2Mask := ZeroMask;
    b_6 := b_6 && state(Used_2Heap, Used_2Mask);
    
    // -- Transfer of acc(Foo(x), write)
      arg_1 := x;
      neededTransfer := FullPerm;
      initNeededTransfer := Used_2Mask[null, Foo(arg_1)] + neededTransfer;
      assert {:msg "  Packaging wand might fail. Fraction acc(Foo(x), write) might be negative. (0213.vpr@27.5--29.6) [210094]"}
        neededTransfer >= 0.000000000;
      
      // -- transfer code for top state of stack
        // accumulate constraints which need to be satisfied for transfer to occur
        accVar2 := true;
        // actual code for the transfer from current state on stack
        if ((((b_1_1 && b_1_1) && b_6) && accVar2) && neededTransfer > 0.000000000) {
          maskTransfer := Ops_1Mask[null, Foo(arg_1)];
          if (neededTransfer <= maskTransfer) {
            takeTransfer := neededTransfer;
          } else {
            takeTransfer := maskTransfer;
          }
          if (takeTransfer > 0.000000000) {
            neededTransfer := neededTransfer - takeTransfer;
            Used_2Mask := Used_2Mask[null, Foo(arg_1):=Used_2Mask[null, Foo(arg_1)] + takeTransfer];
            b_6 := b_6 && state(Used_2Heap, Used_2Mask);
            TempMask := ZeroMask[null, Foo(arg_1):=FullPerm];
            b_6 := b_6 && IdenticalOnKnownLocations(Ops_1Heap, Used_2Heap, TempMask);
            Ops_1Mask := Ops_1Mask[null, Foo(arg_1):=Ops_1Mask[null, Foo(arg_1)] - takeTransfer];
          }
        }
      
      // -- transfer code for top state of stack
        // accumulate constraints which need to be satisfied for transfer to occur
        accVar2 := true;
        // actual code for the transfer from current state on stack
        if ((((b_1_1 && b_1_1) && b_6) && accVar2) && neededTransfer > 0.000000000) {
          maskTransfer := Mask[null, Foo(arg_1)];
          if (neededTransfer <= maskTransfer) {
            takeTransfer := neededTransfer;
          } else {
            takeTransfer := maskTransfer;
          }
          if (takeTransfer > 0.000000000) {
            neededTransfer := neededTransfer - takeTransfer;
            Used_2Mask := Used_2Mask[null, Foo(arg_1):=Used_2Mask[null, Foo(arg_1)] + takeTransfer];
            b_6 := b_6 && state(Used_2Heap, Used_2Mask);
            TempMask := ZeroMask[null, Foo(arg_1):=FullPerm];
            b_6 := b_6 && IdenticalOnKnownLocations(Heap, Used_2Heap, TempMask);
            Mask := Mask[null, Foo(arg_1):=Mask[null, Foo(arg_1)] - takeTransfer];
            havoc newPMask;
            assume (forall <A, B> o_15: Ref, f_20: (Field A B) ::
              { newPMask[o_15, f_20] }
              Heap[null, wand#sm(res, FullPerm, x, FullPerm, x, 1 / 2, x, oldHeap[x, val])][o_15, f_20] || Heap[null, Foo#sm(x)][o_15, f_20] ==> newPMask[o_15, f_20]
            );
            Heap := Heap[null, wand#sm(res, FullPerm, x, FullPerm, x, 1 / 2, x, oldHeap[x, val]):=newPMask];
          }
        }
      assert {:msg "  Packaging wand might fail. There might be insufficient permission to access Foo(x) (0213.vpr@27.5--29.6) [210095]"}
        (b_1_1 && b_1_1) && b_6 ==> neededTransfer == 0.000000000 && Used_2Mask[null, Foo(arg_1)] == initNeededTransfer;
      
      // -- Creating state which is the sum of the two previously built up states
        b_7 := b_1_1 && b_6;
        b_7 := b_7 && state(Result_3Heap, Result_3Mask);
        b_7 := b_7 && sumMask(Result_3Mask, Ops_1Mask, Used_2Mask);
        b_7 := (b_7 && IdenticalOnKnownLocations(Ops_1Heap, Result_3Heap, Ops_1Mask)) && IdenticalOnKnownLocations(Used_2Heap, Result_3Heap, Used_2Mask);
        b_7 := b_7 && state(Result_3Heap, Result_3Mask);
      b_1_1 := b_1_1 && b_7;
    if ((b_1_1 && b_1_1) && b_6) {
      if (b_1_1) {
        
        // -- Check definedness of (unfolding acc(Foo(x), 1 / 2) in x.val) == old((unfolding acc(Foo(x), 1 / 2) in x.val))
          UnfoldingHeap := Result_3Heap;
          UnfoldingMask := Result_3Mask;
          assume Foo#trigger(UnfoldingHeap, Foo(x));
          assume UnfoldingHeap[null, Foo(x)] == CombineFrames(FrameFragment(UnfoldingHeap[x, f1_1]), CombineFrames(FrameFragment(UnfoldingHeap[UnfoldingHeap[x, f1_1], val]), FrameFragment(UnfoldingHeap[x, val])));
          ExhaleWellDef0Mask := UnfoldingMask;
          ExhaleWellDef0Heap := UnfoldingHeap;
          perm := 1 / 2;
          assert {:msg "  Packaging wand might fail. Fraction 1 / 2 might be negative. (0213.vpr@27.5--29.6) [210096]"}
            perm >= NoPerm;
          if (perm != NoPerm) {
            assert {:msg "  Packaging wand might fail. There might be insufficient permission to access Foo(x) (0213.vpr@27.5--29.6) [210097]"}
              perm <= UnfoldingMask[null, Foo(x)];
          }
          UnfoldingMask := UnfoldingMask[null, Foo(x):=UnfoldingMask[null, Foo(x)] - perm];
          perm := 1 / 2;
          assert {:msg "  Packaging wand might fail. Fraction 1 / 2 might be negative. (0213.vpr@27.5--29.6) [210098]"}
            perm >= NoPerm;
          assume perm > NoPerm ==> x != null;
          UnfoldingMask := UnfoldingMask[x, f1_1:=UnfoldingMask[x, f1_1] + perm];
          assume state(UnfoldingHeap, UnfoldingMask);
          perm := 1 / 2;
          assert {:msg "  Packaging wand might fail. Fraction 1 / 2 might be negative. (0213.vpr@27.5--29.6) [210099]"}
            perm >= NoPerm;
          assume perm > NoPerm ==> UnfoldingHeap[x, f1_1] != null;
          UnfoldingMask := UnfoldingMask[UnfoldingHeap[x, f1_1], val:=UnfoldingMask[UnfoldingHeap[x, f1_1], val] + perm];
          assume state(UnfoldingHeap, UnfoldingMask);
          perm := 1 / 2;
          assert {:msg "  Packaging wand might fail. Fraction 1 / 2 might be negative. (0213.vpr@27.5--29.6) [210100]"}
            perm >= NoPerm;
          assume perm > NoPerm ==> x != null;
          UnfoldingMask := UnfoldingMask[x, val:=UnfoldingMask[x, val] + perm];
          assume state(UnfoldingHeap, UnfoldingMask);
          assume state(UnfoldingHeap, UnfoldingMask);
          assert {:msg "  Packaging wand might fail. There might be insufficient permission to access x.val (0213.vpr@27.5--29.6) [210101]"}
            HasDirectPerm(UnfoldingMask, x, val);
          
          // -- Free assumptions (exp module)
            Result_3Heap := Result_3Heap[null, Foo#sm(x):=Result_3Heap[null, Foo#sm(x)][x, f1_1:=true]];
            Result_3Heap := Result_3Heap[null, Foo#sm(x):=Result_3Heap[null, Foo#sm(x)][Result_3Heap[x, f1_1], val:=true]];
            Result_3Heap := Result_3Heap[null, Foo#sm(x):=Result_3Heap[null, Foo#sm(x)][x, val:=true]];
            assume state(Result_3Heap, Result_3Mask);
          UnfoldingHeap := oldHeap;
          UnfoldingMask := oldMask;
          assume Foo#trigger(UnfoldingHeap, Foo(x));
          assume UnfoldingHeap[null, Foo(x)] == CombineFrames(FrameFragment(UnfoldingHeap[x, f1_1]), CombineFrames(FrameFragment(UnfoldingHeap[UnfoldingHeap[x, f1_1], val]), FrameFragment(UnfoldingHeap[x, val])));
          ExhaleWellDef0Mask := UnfoldingMask;
          ExhaleWellDef0Heap := UnfoldingHeap;
          perm := 1 / 2;
          assert {:msg "  Packaging wand might fail. Fraction 1 / 2 might be negative. (0213.vpr@27.5--29.6) [210102]"}
            perm >= NoPerm;
          if (perm != NoPerm) {
            assert {:msg "  Packaging wand might fail. There might be insufficient permission to access Foo(x) (0213.vpr@27.5--29.6) [210103]"}
              perm <= UnfoldingMask[null, Foo(x)];
          }
          UnfoldingMask := UnfoldingMask[null, Foo(x):=UnfoldingMask[null, Foo(x)] - perm];
          perm := 1 / 2;
          assert {:msg "  Packaging wand might fail. Fraction 1 / 2 might be negative. (0213.vpr@27.5--29.6) [210104]"}
            perm >= NoPerm;
          assume perm > NoPerm ==> x != null;
          UnfoldingMask := UnfoldingMask[x, f1_1:=UnfoldingMask[x, f1_1] + perm];
          assume state(UnfoldingHeap, UnfoldingMask);
          perm := 1 / 2;
          assert {:msg "  Packaging wand might fail. Fraction 1 / 2 might be negative. (0213.vpr@27.5--29.6) [210105]"}
            perm >= NoPerm;
          assume perm > NoPerm ==> UnfoldingHeap[x, f1_1] != null;
          UnfoldingMask := UnfoldingMask[UnfoldingHeap[x, f1_1], val:=UnfoldingMask[UnfoldingHeap[x, f1_1], val] + perm];
          assume state(UnfoldingHeap, UnfoldingMask);
          perm := 1 / 2;
          assert {:msg "  Packaging wand might fail. Fraction 1 / 2 might be negative. (0213.vpr@27.5--29.6) [210106]"}
            perm >= NoPerm;
          assume perm > NoPerm ==> x != null;
          UnfoldingMask := UnfoldingMask[x, val:=UnfoldingMask[x, val] + perm];
          assume state(UnfoldingHeap, UnfoldingMask);
          assume state(UnfoldingHeap, UnfoldingMask);
          assert {:msg "  Packaging wand might fail. There might be insufficient permission to access x.val (0213.vpr@27.5--29.6) [210107]"}
            HasDirectPerm(UnfoldingMask, x, val);
          
          // -- Free assumptions (exp module)
            Result_3Heap := Result_3Heap[null, Foo#sm(x):=Result_3Heap[null, Foo#sm(x)][x, f1_1:=true]];
            Result_3Heap := Result_3Heap[null, Foo#sm(x):=Result_3Heap[null, Foo#sm(x)][Result_3Heap[x, f1_1], val:=true]];
            Result_3Heap := Result_3Heap[null, Foo#sm(x):=Result_3Heap[null, Foo#sm(x)][x, val:=true]];
            assume state(Result_3Heap, Result_3Mask);
      }
    }
    assert {:msg "  Packaging wand might fail. Assertion (unfolding acc(Foo(x), 1 / 2) in x.val) == old((unfolding acc(Foo(x), 1 / 2) in x.val)) might not hold. (0213.vpr@27.5--29.6) [210108]"}
      (b_1_1 && b_1_1) && b_6 ==> Result_3Heap[x, val] == oldHeap[x, val];
    Mask := Mask[null, wand(res, FullPerm, x, FullPerm, x, 1 / 2, x, oldHeap[x, val]):=Mask[null, wand(res, FullPerm, x, FullPerm, x, 1 / 2, x, oldHeap[x, val])] + FullPerm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of silicon_fail might not hold. There might be insufficient permission to access res.val (0213.vpr@22.13--22.25) [210109]"}
        perm <= Mask[res, val];
    }
    Mask := Mask[res, val:=Mask[res, val] - perm];
    // permLe
    assert {:msg "  Postcondition of silicon_fail might not hold. Magic wand instance not found. (0213.vpr@23.13--23.29) [210110]"}
      FullPerm <= Mask[null, wand(res, FullPerm, x, FullPerm, x, 1 / 2, x, oldHeap[x, val])];
    Mask := Mask[null, wand(res, FullPerm, x, FullPerm, x, 1 / 2, x, oldHeap[x, val]):=Mask[null, wand(res, FullPerm, x, FullPerm, x, 1 / 2, x, oldHeap[x, val])] - FullPerm];
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method silicon_ok1
// ==================================================

procedure silicon_ok1(x: Ref) returns (res: Ref)
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var WandDefLHSHeap: HeapType;
  var WandDefLHSMask: MaskType;
  var Labellhs4Mask: MaskType;
  var Labellhs4Heap: HeapType;
  var WandDefRHSHeap: HeapType;
  var WandDefRHSMask: MaskType;
  var UnfoldingHeap: HeapType;
  var UnfoldingMask: MaskType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var newVersion: FrameType;
  var Ops_3Heap: HeapType;
  var Ops_3Mask: MaskType;
  var b_9: bool;
  var Used_3Heap: HeapType;
  var Used_3Mask: MaskType;
  var b_8: bool;
  var Labellhs5Mask: MaskType;
  var Labellhs5Heap: HeapType;
  var boolCur_1: bool;
  var Used_4Heap: HeapType;
  var Used_4Mask: MaskType;
  var b_10: bool;
  var rcvLocal: Ref;
  var neededTransfer: Perm;
  var initNeededTransfer: Perm;
  var accVar2: bool;
  var maskTransfer: Perm;
  var takeTransfer: Perm;
  var b_11: bool;
  var Result_4Heap: HeapType;
  var Result_4Mask: MaskType;
  var b_12: bool;
  var Result_5Heap: HeapType;
  var Result_5Mask: MaskType;
  var b_13: bool;
  var Result_6Heap: HeapType;
  var Result_6Mask: MaskType;
  var freshVersion: FrameType;
  var Used_5Heap: HeapType;
  var Used_5Mask: MaskType;
  var b_14: bool;
  var arg_1_1: Ref;
  var TempMask: MaskType;
  var newPMask: PMaskType;
  var b_15: bool;
  var Result_7Heap: HeapType;
  var Result_7Mask: MaskType;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[x, $allocated];
  
  // -- Checked inhaling of precondition
    perm := FullPerm;
    Mask := Mask[null, Foo(x):=Mask[null, Foo(x)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  if (*) {
    havoc PostHeap;
    PostMask := ZeroMask;
    assume state(PostHeap, PostMask);
    // Checked inhaling of postcondition to check definedness
    perm := FullPerm;
    assume res != null;
    PostMask := PostMask[res, val:=PostMask[res, val] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of acc(res.val, write) --* acc(Foo(x), write) && (unfolding acc(Foo(x), 1 / 2) in x.val) == 10
      if (*) {
        havoc WandDefLHSHeap;
        WandDefLHSMask := ZeroMask;
        perm := FullPerm;
        assume res != null;
        WandDefLHSMask := WandDefLHSMask[res, val:=WandDefLHSMask[res, val] + perm];
        assume state(WandDefLHSHeap, WandDefLHSMask);
        assume state(WandDefLHSHeap, WandDefLHSMask);
        
        // -- Translating statement: label lhs4 -- 0213.vpr@42.13--42.29
          lhs4:
          Labellhs4Mask := WandDefLHSMask;
          Labellhs4Heap := WandDefLHSHeap;
          assume state(WandDefLHSHeap, WandDefLHSMask);
        havoc WandDefRHSHeap;
        WandDefRHSMask := ZeroMask;
        perm := FullPerm;
        WandDefRHSMask := WandDefRHSMask[null, Foo(x):=WandDefRHSMask[null, Foo(x)] + perm];
        assume state(WandDefRHSHeap, WandDefRHSMask);
        
        // -- Check definedness of (unfolding acc(Foo(x), 1 / 2) in x.val) == 10
          UnfoldingHeap := WandDefRHSHeap;
          UnfoldingMask := WandDefRHSMask;
          assume Foo#trigger(UnfoldingHeap, Foo(x));
          assume UnfoldingHeap[null, Foo(x)] == CombineFrames(FrameFragment(UnfoldingHeap[x, f1_1]), CombineFrames(FrameFragment(UnfoldingHeap[UnfoldingHeap[x, f1_1], val]), FrameFragment(UnfoldingHeap[x, val])));
          ExhaleWellDef0Mask := UnfoldingMask;
          ExhaleWellDef0Heap := UnfoldingHeap;
          perm := 1 / 2;
          assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (0213.vpr@42.13--42.29) [210111]"}
            perm >= NoPerm;
          if (perm != NoPerm) {
            assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access Foo(x) (0213.vpr@42.13--42.29) [210112]"}
              perm <= UnfoldingMask[null, Foo(x)];
          }
          UnfoldingMask := UnfoldingMask[null, Foo(x):=UnfoldingMask[null, Foo(x)] - perm];
          perm := 1 / 2;
          assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (0213.vpr@42.13--42.29) [210113]"}
            perm >= NoPerm;
          assume perm > NoPerm ==> x != null;
          UnfoldingMask := UnfoldingMask[x, f1_1:=UnfoldingMask[x, f1_1] + perm];
          assume state(UnfoldingHeap, UnfoldingMask);
          perm := 1 / 2;
          assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (0213.vpr@42.13--42.29) [210114]"}
            perm >= NoPerm;
          assume perm > NoPerm ==> UnfoldingHeap[x, f1_1] != null;
          UnfoldingMask := UnfoldingMask[UnfoldingHeap[x, f1_1], val:=UnfoldingMask[UnfoldingHeap[x, f1_1], val] + perm];
          assume state(UnfoldingHeap, UnfoldingMask);
          perm := 1 / 2;
          assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (0213.vpr@42.13--42.29) [210115]"}
            perm >= NoPerm;
          assume perm > NoPerm ==> x != null;
          UnfoldingMask := UnfoldingMask[x, val:=UnfoldingMask[x, val] + perm];
          assume state(UnfoldingHeap, UnfoldingMask);
          assume state(UnfoldingHeap, UnfoldingMask);
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access x.val (0213.vpr@42.13--42.29) [210116]"}
            HasDirectPerm(UnfoldingMask, x, val);
          
          // -- Free assumptions (exp module)
            WandDefRHSHeap := WandDefRHSHeap[null, Foo#sm(x):=WandDefRHSHeap[null, Foo#sm(x)][x, f1_1:=true]];
            WandDefRHSHeap := WandDefRHSHeap[null, Foo#sm(x):=WandDefRHSHeap[null, Foo#sm(x)][WandDefRHSHeap[x, f1_1], val:=true]];
            WandDefRHSHeap := WandDefRHSHeap[null, Foo#sm(x):=WandDefRHSHeap[null, Foo#sm(x)][x, val:=true]];
            assume state(WandDefRHSHeap, WandDefRHSMask);
          
          // -- Free assumptions (exp module)
            WandDefRHSHeap := WandDefRHSHeap[null, Foo#sm(x):=WandDefRHSHeap[null, Foo#sm(x)][x, f1_1:=true]];
            WandDefRHSHeap := WandDefRHSHeap[null, Foo#sm(x):=WandDefRHSHeap[null, Foo#sm(x)][WandDefRHSHeap[x, f1_1], val:=true]];
            WandDefRHSHeap := WandDefRHSHeap[null, Foo#sm(x):=WandDefRHSHeap[null, Foo#sm(x)][x, val:=true]];
            assume state(WandDefRHSHeap, WandDefRHSMask);
        assume WandDefRHSHeap[x, val] == 10;
        assume state(WandDefRHSHeap, WandDefRHSMask);
        assume false;
      }
    PostMask := PostMask[null, wand(res, FullPerm, x, FullPerm, x, 1 / 2, x, 10):=PostMask[null, wand(res, FullPerm, x, FullPerm, x, 1 / 2, x, 10)] + FullPerm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: unfold acc(Foo(x), write) -- 0213.vpr@44.5--44.30
    assume Foo#trigger(Heap, Foo(x));
    assume Heap[null, Foo(x)] == CombineFrames(FrameFragment(Heap[x, f1_1]), CombineFrames(FrameFragment(Heap[Heap[x, f1_1], val]), FrameFragment(Heap[x, val])));
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Unfolding Foo(x) might fail. There might be insufficient permission to access Foo(x) (0213.vpr@44.5--44.30) [210119]"}
        perm <= Mask[null, Foo(x)];
    }
    Mask := Mask[null, Foo(x):=Mask[null, Foo(x)] - perm];
    
    // -- Update version of predicate
      if (!HasDirectPerm(Mask, null, Foo(x))) {
        havoc newVersion;
        Heap := Heap[null, Foo(x):=newVersion];
      }
    perm := FullPerm;
    assume x != null;
    Mask := Mask[x, f1_1:=Mask[x, f1_1] + perm];
    assume state(Heap, Mask);
    perm := FullPerm;
    assume Heap[x, f1_1] != null;
    Mask := Mask[Heap[x, f1_1], val:=Mask[Heap[x, f1_1], val] + perm];
    assume state(Heap, Mask);
    perm := FullPerm;
    assume x != null;
    Mask := Mask[x, val:=Mask[x, val] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: res := x.f1 -- 0213.vpr@45.5--45.16
    
    // -- Check definedness of x.f1
      assert {:msg "  Assignment might fail. There might be insufficient permission to access x.f1 (0213.vpr@45.5--45.16) [210123]"}
        HasDirectPerm(Mask, x, f1_1);
    res := Heap[x, f1_1];
    assume state(Heap, Mask);
  
  // -- Translating statement: x.val := 10 -- 0213.vpr@46.5--46.16
    assert {:msg "  Assignment might fail. There might be insufficient permission to access x.val (0213.vpr@46.5--46.16) [210124]"}
      FullPerm == Mask[x, val];
    Heap := Heap[x, val:=10];
    assume state(Heap, Mask);
  
  // -- Translating statement: package acc(res.val, write) --*
  // acc(Foo(x), write) && (unfolding acc(Foo(x), 1 / 2) in x.val) == 10 {
  //   fold acc(Foo(x), write)
  // } -- 0213.vpr@47.5--49.6
    havoc Ops_3Heap;
    Ops_3Mask := ZeroMask;
    b_9 := b_9 && state(Ops_3Heap, Ops_3Mask);
    havoc Used_3Heap;
    Used_3Mask := ZeroMask;
    b_8 := b_8 && state(Used_3Heap, Used_3Mask);
    // Inhaling left hand side of current wand into hypothetical state
    if (b_9) {
      perm := FullPerm;
      b_9 := b_9 && res != null;
      Ops_3Mask := Ops_3Mask[res, val:=Ops_3Mask[res, val] + perm];
      b_9 := b_9 && state(Ops_3Heap, Ops_3Mask);
    }
    b_9 := b_9 && state(Ops_3Heap, Ops_3Mask);
    
    // -- Translating statement: label lhs5 -- 0213.vpr@47.13--47.31
      lhs5:
      Labellhs5Mask := Ops_3Mask;
      Labellhs5Heap := Ops_3Heap;
      b_9 := b_9 && state(Ops_3Heap, Ops_3Mask);
    boolCur_1 := true;
    if (b_9) {
      
      // -- Translating statement: fold acc(Foo(x), write) -- 0213.vpr@48.9--48.25
        ExhaleWellDef0Mask := Ops_3Mask;
        ExhaleWellDef0Heap := Ops_3Heap;
        havoc Used_4Heap;
        Used_4Mask := ZeroMask;
        b_10 := b_10 && state(Used_4Heap, Used_4Mask);
        
        // -- Transfer of acc(x.f1, write)
          rcvLocal := x;
          neededTransfer := FullPerm;
          initNeededTransfer := Used_4Mask[rcvLocal, f1_1] + neededTransfer;
          assert {:msg "  Folding Foo(x) might fail. Fraction acc(x.f1, write) might be negative. (0213.vpr@48.9--48.25) [210126]"}
            neededTransfer >= 0.000000000;
          
          // -- transfer code for top state of stack
            // accumulate constraints which need to be satisfied for transfer to occur
            accVar2 := true;
            // actual code for the transfer from current state on stack
            if (((b_9 && b_10) && accVar2) && neededTransfer > 0.000000000) {
              maskTransfer := Ops_3Mask[rcvLocal, f1_1];
              if (neededTransfer <= maskTransfer) {
                takeTransfer := neededTransfer;
              } else {
                takeTransfer := maskTransfer;
              }
              if (takeTransfer > 0.000000000) {
                neededTransfer := neededTransfer - takeTransfer;
                Used_4Mask := Used_4Mask[rcvLocal, f1_1:=Used_4Mask[rcvLocal, f1_1] + takeTransfer];
                b_10 := b_10 && state(Used_4Heap, Used_4Mask);
                b_10 := b_10 && Ops_3Heap[rcvLocal, f1_1] == Used_4Heap[rcvLocal, f1_1];
                Ops_3Mask := Ops_3Mask[rcvLocal, f1_1:=Ops_3Mask[rcvLocal, f1_1] - takeTransfer];
              }
            }
          
          // -- transfer code for top state of stack
            // accumulate constraints which need to be satisfied for transfer to occur
            accVar2 := true;
            // actual code for the transfer from current state on stack
            if (((b_9 && b_10) && accVar2) && neededTransfer > 0.000000000) {
              maskTransfer := Mask[rcvLocal, f1_1];
              if (neededTransfer <= maskTransfer) {
                takeTransfer := neededTransfer;
              } else {
                takeTransfer := maskTransfer;
              }
              if (takeTransfer > 0.000000000) {
                neededTransfer := neededTransfer - takeTransfer;
                Used_4Mask := Used_4Mask[rcvLocal, f1_1:=Used_4Mask[rcvLocal, f1_1] + takeTransfer];
                b_10 := b_10 && state(Used_4Heap, Used_4Mask);
                b_10 := b_10 && Heap[rcvLocal, f1_1] == Used_4Heap[rcvLocal, f1_1];
                Mask := Mask[rcvLocal, f1_1:=Mask[rcvLocal, f1_1] - takeTransfer];
                Heap := Heap[null, wand#sm(res, FullPerm, x, FullPerm, x, 1 / 2, x, 10):=Heap[null, wand#sm(res, FullPerm, x, FullPerm, x, 1 / 2, x, 10)][x, f1_1:=true]];
              }
            }
          assert {:msg "  Folding Foo(x) might fail. There might be insufficient permission to access x.f1 (0213.vpr@48.9--48.25) [210127]"}
            b_9 && b_10 ==> neededTransfer == 0.000000000 && Used_4Mask[rcvLocal, f1_1] == initNeededTransfer;
          
          // -- Creating state which is the sum of the two previously built up states
            b_11 := b_9 && b_10;
            b_11 := b_11 && state(Result_4Heap, Result_4Mask);
            b_11 := b_11 && sumMask(Result_4Mask, Ops_3Mask, Used_4Mask);
            b_11 := (b_11 && IdenticalOnKnownLocations(Ops_3Heap, Result_4Heap, Ops_3Mask)) && IdenticalOnKnownLocations(Used_4Heap, Result_4Heap, Used_4Mask);
            b_11 := b_11 && state(Result_4Heap, Result_4Mask);
          b_9 := b_9 && b_11;
        b_9 := b_9 && b_10;
        b_9 := b_9 && Used_4Heap == Ops_3Heap;
        
        // -- Transfer of acc(x.f1.val, write)
          
          // -- checking if access predicate defined in used state
            if (b_9 && b_10) {
              if (b_9) {
                
                // -- Check definedness of acc(x.f1.val, write)
                  assert {:msg "  Folding Foo(x) might fail. There might be insufficient permission to access x.f1 (0213.vpr@48.9--48.25) [210128]"}
                    HasDirectPerm(Result_4Mask, x, f1_1);
              }
            }
          rcvLocal := Result_4Heap[x, f1_1];
          neededTransfer := FullPerm;
          initNeededTransfer := Used_4Mask[rcvLocal, val] + neededTransfer;
          assert {:msg "  Folding Foo(x) might fail. Fraction acc(x.f1.val, write) might be negative. (0213.vpr@48.9--48.25) [210129]"}
            neededTransfer >= 0.000000000;
          
          // -- transfer code for top state of stack
            // accumulate constraints which need to be satisfied for transfer to occur
            accVar2 := true;
            // actual code for the transfer from current state on stack
            if (((b_9 && b_10) && accVar2) && neededTransfer > 0.000000000) {
              maskTransfer := Ops_3Mask[rcvLocal, val];
              if (neededTransfer <= maskTransfer) {
                takeTransfer := neededTransfer;
              } else {
                takeTransfer := maskTransfer;
              }
              if (takeTransfer > 0.000000000) {
                neededTransfer := neededTransfer - takeTransfer;
                Used_4Mask := Used_4Mask[rcvLocal, val:=Used_4Mask[rcvLocal, val] + takeTransfer];
                b_10 := b_10 && state(Used_4Heap, Used_4Mask);
                b_10 := b_10 && Ops_3Heap[rcvLocal, val] == Used_4Heap[rcvLocal, val];
                Ops_3Mask := Ops_3Mask[rcvLocal, val:=Ops_3Mask[rcvLocal, val] - takeTransfer];
              }
            }
          
          // -- transfer code for top state of stack
            // accumulate constraints which need to be satisfied for transfer to occur
            accVar2 := true;
            // actual code for the transfer from current state on stack
            if (((b_9 && b_10) && accVar2) && neededTransfer > 0.000000000) {
              maskTransfer := Mask[rcvLocal, val];
              if (neededTransfer <= maskTransfer) {
                takeTransfer := neededTransfer;
              } else {
                takeTransfer := maskTransfer;
              }
              if (takeTransfer > 0.000000000) {
                neededTransfer := neededTransfer - takeTransfer;
                Used_4Mask := Used_4Mask[rcvLocal, val:=Used_4Mask[rcvLocal, val] + takeTransfer];
                b_10 := b_10 && state(Used_4Heap, Used_4Mask);
                b_10 := b_10 && Heap[rcvLocal, val] == Used_4Heap[rcvLocal, val];
                Mask := Mask[rcvLocal, val:=Mask[rcvLocal, val] - takeTransfer];
                Heap := Heap[null, wand#sm(res, FullPerm, x, FullPerm, x, 1 / 2, x, 10):=Heap[null, wand#sm(res, FullPerm, x, FullPerm, x, 1 / 2, x, 10)][Heap[x, f1_1], val:=true]];
              }
            }
          assert {:msg "  Folding Foo(x) might fail. There might be insufficient permission to access x.f1.val (0213.vpr@48.9--48.25) [210130]"}
            b_9 && b_10 ==> neededTransfer == 0.000000000 && Used_4Mask[rcvLocal, val] == initNeededTransfer;
          
          // -- Creating state which is the sum of the two previously built up states
            b_12 := b_9 && b_10;
            b_12 := b_12 && state(Result_5Heap, Result_5Mask);
            b_12 := b_12 && sumMask(Result_5Mask, Ops_3Mask, Used_4Mask);
            b_12 := (b_12 && IdenticalOnKnownLocations(Ops_3Heap, Result_5Heap, Ops_3Mask)) && IdenticalOnKnownLocations(Used_4Heap, Result_5Heap, Used_4Mask);
            b_12 := b_12 && state(Result_5Heap, Result_5Mask);
          b_9 := b_9 && b_12;
        b_9 := b_9 && b_10;
        b_9 := b_9 && Used_4Heap == Ops_3Heap;
        
        // -- Transfer of acc(x.val, write)
          rcvLocal := x;
          neededTransfer := FullPerm;
          initNeededTransfer := Used_4Mask[rcvLocal, val] + neededTransfer;
          assert {:msg "  Folding Foo(x) might fail. Fraction acc(x.val, write) might be negative. (0213.vpr@48.9--48.25) [210131]"}
            neededTransfer >= 0.000000000;
          
          // -- transfer code for top state of stack
            // accumulate constraints which need to be satisfied for transfer to occur
            accVar2 := true;
            // actual code for the transfer from current state on stack
            if (((b_9 && b_10) && accVar2) && neededTransfer > 0.000000000) {
              maskTransfer := Ops_3Mask[rcvLocal, val];
              if (neededTransfer <= maskTransfer) {
                takeTransfer := neededTransfer;
              } else {
                takeTransfer := maskTransfer;
              }
              if (takeTransfer > 0.000000000) {
                neededTransfer := neededTransfer - takeTransfer;
                Used_4Mask := Used_4Mask[rcvLocal, val:=Used_4Mask[rcvLocal, val] + takeTransfer];
                b_10 := b_10 && state(Used_4Heap, Used_4Mask);
                b_10 := b_10 && Ops_3Heap[rcvLocal, val] == Used_4Heap[rcvLocal, val];
                Ops_3Mask := Ops_3Mask[rcvLocal, val:=Ops_3Mask[rcvLocal, val] - takeTransfer];
              }
            }
          
          // -- transfer code for top state of stack
            // accumulate constraints which need to be satisfied for transfer to occur
            accVar2 := true;
            // actual code for the transfer from current state on stack
            if (((b_9 && b_10) && accVar2) && neededTransfer > 0.000000000) {
              maskTransfer := Mask[rcvLocal, val];
              if (neededTransfer <= maskTransfer) {
                takeTransfer := neededTransfer;
              } else {
                takeTransfer := maskTransfer;
              }
              if (takeTransfer > 0.000000000) {
                neededTransfer := neededTransfer - takeTransfer;
                Used_4Mask := Used_4Mask[rcvLocal, val:=Used_4Mask[rcvLocal, val] + takeTransfer];
                b_10 := b_10 && state(Used_4Heap, Used_4Mask);
                b_10 := b_10 && Heap[rcvLocal, val] == Used_4Heap[rcvLocal, val];
                Mask := Mask[rcvLocal, val:=Mask[rcvLocal, val] - takeTransfer];
                Heap := Heap[null, wand#sm(res, FullPerm, x, FullPerm, x, 1 / 2, x, 10):=Heap[null, wand#sm(res, FullPerm, x, FullPerm, x, 1 / 2, x, 10)][x, val:=true]];
              }
            }
          assert {:msg "  Folding Foo(x) might fail. There might be insufficient permission to access x.val (0213.vpr@48.9--48.25) [210132]"}
            b_9 && b_10 ==> neededTransfer == 0.000000000 && Used_4Mask[rcvLocal, val] == initNeededTransfer;
          
          // -- Creating state which is the sum of the two previously built up states
            b_13 := b_9 && b_10;
            b_13 := b_13 && state(Result_6Heap, Result_6Mask);
            b_13 := b_13 && sumMask(Result_6Mask, Ops_3Mask, Used_4Mask);
            b_13 := (b_13 && IdenticalOnKnownLocations(Ops_3Heap, Result_6Heap, Ops_3Mask)) && IdenticalOnKnownLocations(Used_4Heap, Result_6Heap, Used_4Mask);
            b_13 := b_13 && state(Result_6Heap, Result_6Mask);
          b_9 := b_9 && b_13;
        b_9 := b_9 && b_10;
        b_9 := b_9 && Used_4Heap == Ops_3Heap;
        perm := FullPerm;
        b_9 := b_9;
        Ops_3Mask := Ops_3Mask[null, Foo(x):=Ops_3Mask[null, Foo(x)] + perm];
        b_9 := b_9 && state(Ops_3Heap, Ops_3Mask);
        b_9 := b_9 && state(Ops_3Heap, Ops_3Mask);
        assume Foo#trigger(Ops_3Heap, Foo(x));
        assume Ops_3Heap[null, Foo(x)] == CombineFrames(FrameFragment(Ops_3Heap[x, f1_1]), CombineFrames(FrameFragment(Ops_3Heap[Ops_3Heap[x, f1_1], val]), FrameFragment(Ops_3Heap[x, val])));
        if (!HasDirectPerm(Ops_3Mask, null, Foo(x))) {
          Ops_3Heap := Ops_3Heap[null, Foo#sm(x):=ZeroPMask];
          havoc freshVersion;
          Ops_3Heap := Ops_3Heap[null, Foo(x):=freshVersion];
        }
        Ops_3Heap := Ops_3Heap[null, Foo#sm(x):=Ops_3Heap[null, Foo#sm(x)][x, f1_1:=true]];
        Ops_3Heap := Ops_3Heap[null, Foo#sm(x):=Ops_3Heap[null, Foo#sm(x)][Ops_3Heap[x, f1_1], val:=true]];
        Ops_3Heap := Ops_3Heap[null, Foo#sm(x):=Ops_3Heap[null, Foo#sm(x)][x, val:=true]];
        assume state(Ops_3Heap, Ops_3Mask);
        b_9 := b_9 && state(Ops_3Heap, Ops_3Mask);
    }
    // Translating exec of non-ghost operationacc(Foo(x), write) && (unfolding acc(Foo(x), 1 / 2) in x.val) == 10
    havoc Used_5Heap;
    Used_5Mask := ZeroMask;
    b_14 := b_14 && state(Used_5Heap, Used_5Mask);
    
    // -- Transfer of acc(Foo(x), write)
      arg_1_1 := x;
      neededTransfer := FullPerm;
      initNeededTransfer := Used_5Mask[null, Foo(arg_1_1)] + neededTransfer;
      assert {:msg "  Packaging wand might fail. Fraction acc(Foo(x), write) might be negative. (0213.vpr@47.5--49.6) [210134]"}
        neededTransfer >= 0.000000000;
      
      // -- transfer code for top state of stack
        // accumulate constraints which need to be satisfied for transfer to occur
        accVar2 := true;
        // actual code for the transfer from current state on stack
        if ((((b_9 && b_9) && b_14) && accVar2) && neededTransfer > 0.000000000) {
          maskTransfer := Ops_3Mask[null, Foo(arg_1_1)];
          if (neededTransfer <= maskTransfer) {
            takeTransfer := neededTransfer;
          } else {
            takeTransfer := maskTransfer;
          }
          if (takeTransfer > 0.000000000) {
            neededTransfer := neededTransfer - takeTransfer;
            Used_5Mask := Used_5Mask[null, Foo(arg_1_1):=Used_5Mask[null, Foo(arg_1_1)] + takeTransfer];
            b_14 := b_14 && state(Used_5Heap, Used_5Mask);
            TempMask := ZeroMask[null, Foo(arg_1_1):=FullPerm];
            b_14 := b_14 && IdenticalOnKnownLocations(Ops_3Heap, Used_5Heap, TempMask);
            Ops_3Mask := Ops_3Mask[null, Foo(arg_1_1):=Ops_3Mask[null, Foo(arg_1_1)] - takeTransfer];
          }
        }
      
      // -- transfer code for top state of stack
        // accumulate constraints which need to be satisfied for transfer to occur
        accVar2 := true;
        // actual code for the transfer from current state on stack
        if ((((b_9 && b_9) && b_14) && accVar2) && neededTransfer > 0.000000000) {
          maskTransfer := Mask[null, Foo(arg_1_1)];
          if (neededTransfer <= maskTransfer) {
            takeTransfer := neededTransfer;
          } else {
            takeTransfer := maskTransfer;
          }
          if (takeTransfer > 0.000000000) {
            neededTransfer := neededTransfer - takeTransfer;
            Used_5Mask := Used_5Mask[null, Foo(arg_1_1):=Used_5Mask[null, Foo(arg_1_1)] + takeTransfer];
            b_14 := b_14 && state(Used_5Heap, Used_5Mask);
            TempMask := ZeroMask[null, Foo(arg_1_1):=FullPerm];
            b_14 := b_14 && IdenticalOnKnownLocations(Heap, Used_5Heap, TempMask);
            Mask := Mask[null, Foo(arg_1_1):=Mask[null, Foo(arg_1_1)] - takeTransfer];
            havoc newPMask;
            assume (forall <A, B> o_16: Ref, f_21: (Field A B) ::
              { newPMask[o_16, f_21] }
              Heap[null, wand#sm(res, FullPerm, x, FullPerm, x, 1 / 2, x, 10)][o_16, f_21] || Heap[null, Foo#sm(x)][o_16, f_21] ==> newPMask[o_16, f_21]
            );
            Heap := Heap[null, wand#sm(res, FullPerm, x, FullPerm, x, 1 / 2, x, 10):=newPMask];
          }
        }
      assert {:msg "  Packaging wand might fail. There might be insufficient permission to access Foo(x) (0213.vpr@47.5--49.6) [210135]"}
        (b_9 && b_9) && b_14 ==> neededTransfer == 0.000000000 && Used_5Mask[null, Foo(arg_1_1)] == initNeededTransfer;
      
      // -- Creating state which is the sum of the two previously built up states
        b_15 := b_9 && b_14;
        b_15 := b_15 && state(Result_7Heap, Result_7Mask);
        b_15 := b_15 && sumMask(Result_7Mask, Ops_3Mask, Used_5Mask);
        b_15 := (b_15 && IdenticalOnKnownLocations(Ops_3Heap, Result_7Heap, Ops_3Mask)) && IdenticalOnKnownLocations(Used_5Heap, Result_7Heap, Used_5Mask);
        b_15 := b_15 && state(Result_7Heap, Result_7Mask);
      b_9 := b_9 && b_15;
    if ((b_9 && b_9) && b_14) {
      if (b_9) {
        
        // -- Check definedness of (unfolding acc(Foo(x), 1 / 2) in x.val) == 10
          UnfoldingHeap := Result_7Heap;
          UnfoldingMask := Result_7Mask;
          assume Foo#trigger(UnfoldingHeap, Foo(x));
          assume UnfoldingHeap[null, Foo(x)] == CombineFrames(FrameFragment(UnfoldingHeap[x, f1_1]), CombineFrames(FrameFragment(UnfoldingHeap[UnfoldingHeap[x, f1_1], val]), FrameFragment(UnfoldingHeap[x, val])));
          ExhaleWellDef0Mask := UnfoldingMask;
          ExhaleWellDef0Heap := UnfoldingHeap;
          perm := 1 / 2;
          assert {:msg "  Packaging wand might fail. Fraction 1 / 2 might be negative. (0213.vpr@47.5--49.6) [210136]"}
            perm >= NoPerm;
          if (perm != NoPerm) {
            assert {:msg "  Packaging wand might fail. There might be insufficient permission to access Foo(x) (0213.vpr@47.5--49.6) [210137]"}
              perm <= UnfoldingMask[null, Foo(x)];
          }
          UnfoldingMask := UnfoldingMask[null, Foo(x):=UnfoldingMask[null, Foo(x)] - perm];
          perm := 1 / 2;
          assert {:msg "  Packaging wand might fail. Fraction 1 / 2 might be negative. (0213.vpr@47.5--49.6) [210138]"}
            perm >= NoPerm;
          assume perm > NoPerm ==> x != null;
          UnfoldingMask := UnfoldingMask[x, f1_1:=UnfoldingMask[x, f1_1] + perm];
          assume state(UnfoldingHeap, UnfoldingMask);
          perm := 1 / 2;
          assert {:msg "  Packaging wand might fail. Fraction 1 / 2 might be negative. (0213.vpr@47.5--49.6) [210139]"}
            perm >= NoPerm;
          assume perm > NoPerm ==> UnfoldingHeap[x, f1_1] != null;
          UnfoldingMask := UnfoldingMask[UnfoldingHeap[x, f1_1], val:=UnfoldingMask[UnfoldingHeap[x, f1_1], val] + perm];
          assume state(UnfoldingHeap, UnfoldingMask);
          perm := 1 / 2;
          assert {:msg "  Packaging wand might fail. Fraction 1 / 2 might be negative. (0213.vpr@47.5--49.6) [210140]"}
            perm >= NoPerm;
          assume perm > NoPerm ==> x != null;
          UnfoldingMask := UnfoldingMask[x, val:=UnfoldingMask[x, val] + perm];
          assume state(UnfoldingHeap, UnfoldingMask);
          assume state(UnfoldingHeap, UnfoldingMask);
          assert {:msg "  Packaging wand might fail. There might be insufficient permission to access x.val (0213.vpr@47.5--49.6) [210141]"}
            HasDirectPerm(UnfoldingMask, x, val);
          
          // -- Free assumptions (exp module)
            Result_7Heap := Result_7Heap[null, Foo#sm(x):=Result_7Heap[null, Foo#sm(x)][x, f1_1:=true]];
            Result_7Heap := Result_7Heap[null, Foo#sm(x):=Result_7Heap[null, Foo#sm(x)][Result_7Heap[x, f1_1], val:=true]];
            Result_7Heap := Result_7Heap[null, Foo#sm(x):=Result_7Heap[null, Foo#sm(x)][x, val:=true]];
            assume state(Result_7Heap, Result_7Mask);
          
          // -- Free assumptions (exp module)
            Result_7Heap := Result_7Heap[null, Foo#sm(x):=Result_7Heap[null, Foo#sm(x)][x, f1_1:=true]];
            Result_7Heap := Result_7Heap[null, Foo#sm(x):=Result_7Heap[null, Foo#sm(x)][Result_7Heap[x, f1_1], val:=true]];
            Result_7Heap := Result_7Heap[null, Foo#sm(x):=Result_7Heap[null, Foo#sm(x)][x, val:=true]];
            assume state(Result_7Heap, Result_7Mask);
      }
    }
    assert {:msg "  Packaging wand might fail. Assertion (unfolding acc(Foo(x), 1 / 2) in x.val) == 10 might not hold. (0213.vpr@47.5--49.6) [210142]"}
      (b_9 && b_9) && b_14 ==> Result_7Heap[x, val] == 10;
    Mask := Mask[null, wand(res, FullPerm, x, FullPerm, x, 1 / 2, x, 10):=Mask[null, wand(res, FullPerm, x, FullPerm, x, 1 / 2, x, 10)] + FullPerm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of silicon_ok1 might not hold. There might be insufficient permission to access res.val (0213.vpr@41.13--41.25) [210143]"}
        perm <= Mask[res, val];
    }
    Mask := Mask[res, val:=Mask[res, val] - perm];
    // permLe
    assert {:msg "  Postcondition of silicon_ok1 might not hold. Magic wand instance not found. (0213.vpr@42.13--42.29) [210144]"}
      FullPerm <= Mask[null, wand(res, FullPerm, x, FullPerm, x, 1 / 2, x, 10)];
    Mask := Mask[null, wand(res, FullPerm, x, FullPerm, x, 1 / 2, x, 10):=Mask[null, wand(res, FullPerm, x, FullPerm, x, 1 / 2, x, 10)] - FullPerm];
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method silicon_ok2
// ==================================================

procedure silicon_ok2(x: Ref) returns (res: Ref)
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var WandDefLHSHeap: HeapType;
  var WandDefLHSMask: MaskType;
  var Labellhs7Mask: MaskType;
  var Labellhs7Heap: HeapType;
  var WandDefRHSHeap: HeapType;
  var WandDefRHSMask: MaskType;
  var Ops_5Heap: HeapType;
  var Ops_5Mask: MaskType;
  var b_17: bool;
  var Used_6Heap: HeapType;
  var Used_6Mask: MaskType;
  var b_16: bool;
  var Labellhs8Mask: MaskType;
  var Labellhs8Heap: HeapType;
  var boolCur_2: bool;
  var Used_7Heap: HeapType;
  var Used_7Mask: MaskType;
  var b_18: bool;
  var rcvLocal: Ref;
  var neededTransfer: Perm;
  var initNeededTransfer: Perm;
  var accVar2: bool;
  var maskTransfer: Perm;
  var takeTransfer: Perm;
  var b_19: bool;
  var Result_8Heap: HeapType;
  var Result_8Mask: MaskType;
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
    Mask := Mask[x, f1_1:=Mask[x, f1_1] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of acc(x.f1.val, write)
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access x.f1 (0213.vpr@58.14--58.27) [210145]"}
        HasDirectPerm(Mask, x, f1_1);
    perm := FullPerm;
    assume Heap[x, f1_1] != null;
    Mask := Mask[Heap[x, f1_1], val:=Mask[Heap[x, f1_1], val] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    perm := FullPerm;
    assume x != null;
    Mask := Mask[x, val:=Mask[x, val] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  if (*) {
    havoc PostHeap;
    PostMask := ZeroMask;
    assume state(PostHeap, PostMask);
    // Checked inhaling of postcondition to check definedness
    perm := FullPerm;
    assume res != null;
    PostMask := PostMask[res, val:=PostMask[res, val] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of acc(res.val, write) --* acc(x.val, write) && x.val == old(x.val)
      if (*) {
        havoc WandDefLHSHeap;
        WandDefLHSMask := ZeroMask;
        perm := FullPerm;
        assume res != null;
        WandDefLHSMask := WandDefLHSMask[res, val:=WandDefLHSMask[res, val] + perm];
        assume state(WandDefLHSHeap, WandDefLHSMask);
        assume state(WandDefLHSHeap, WandDefLHSMask);
        
        // -- Translating statement: label lhs7 -- 0213.vpr@61.13--61.29
          lhs7:
          Labellhs7Mask := WandDefLHSMask;
          Labellhs7Heap := WandDefLHSHeap;
          assume state(WandDefLHSHeap, WandDefLHSMask);
        havoc WandDefRHSHeap;
        WandDefRHSMask := ZeroMask;
        perm := FullPerm;
        assume x != null;
        WandDefRHSMask := WandDefRHSMask[x, val:=WandDefRHSMask[x, val] + perm];
        assume state(WandDefRHSHeap, WandDefRHSMask);
        
        // -- Check definedness of x.val == old(x.val)
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access x.val (0213.vpr@61.13--61.29) [210146]"}
            HasDirectPerm(WandDefRHSMask, x, val);
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access x.val (0213.vpr@61.13--61.29) [210147]"}
            HasDirectPerm(oldMask, x, val);
        assume WandDefRHSHeap[x, val] == oldHeap[x, val];
        assume state(WandDefRHSHeap, WandDefRHSMask);
        assume false;
      }
    PostMask := PostMask[null, wand_1(res, FullPerm, x, FullPerm, x, oldHeap[x, val]):=PostMask[null, wand_1(res, FullPerm, x, FullPerm, x, oldHeap[x, val])] + FullPerm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: res := x.f1 -- 0213.vpr@63.5--63.16
    
    // -- Check definedness of x.f1
      assert {:msg "  Assignment might fail. There might be insufficient permission to access x.f1 (0213.vpr@63.5--63.16) [210148]"}
        HasDirectPerm(Mask, x, f1_1);
    res := Heap[x, f1_1];
    assume state(Heap, Mask);
  
  // -- Translating statement: package acc(res.val, write) --* acc(x.val, write) && x.val == old(x.val) {
  // } -- 0213.vpr@64.5--64.29
    havoc Ops_5Heap;
    Ops_5Mask := ZeroMask;
    b_17 := b_17 && state(Ops_5Heap, Ops_5Mask);
    havoc Used_6Heap;
    Used_6Mask := ZeroMask;
    b_16 := b_16 && state(Used_6Heap, Used_6Mask);
    // Inhaling left hand side of current wand into hypothetical state
    if (b_17) {
      perm := FullPerm;
      b_17 := b_17 && res != null;
      Ops_5Mask := Ops_5Mask[res, val:=Ops_5Mask[res, val] + perm];
      b_17 := b_17 && state(Ops_5Heap, Ops_5Mask);
    }
    b_17 := b_17 && state(Ops_5Heap, Ops_5Mask);
    
    // -- Translating statement: label lhs8 -- 0213.vpr@64.13--64.29
      lhs8:
      Labellhs8Mask := Ops_5Mask;
      Labellhs8Heap := Ops_5Heap;
      b_17 := b_17 && state(Ops_5Heap, Ops_5Mask);
    boolCur_2 := true;
    // Translating exec of non-ghost operationacc(x.val, write) && x.val == old(x.val)
    havoc Used_7Heap;
    Used_7Mask := ZeroMask;
    b_18 := b_18 && state(Used_7Heap, Used_7Mask);
    
    // -- Transfer of acc(x.val, write)
      rcvLocal := x;
      neededTransfer := FullPerm;
      initNeededTransfer := Used_7Mask[rcvLocal, val] + neededTransfer;
      assert {:msg "  Packaging wand might fail. Fraction acc(x.val, write) might be negative. (0213.vpr@64.5--64.29) [210149]"}
        neededTransfer >= 0.000000000;
      
      // -- transfer code for top state of stack
        // accumulate constraints which need to be satisfied for transfer to occur
        accVar2 := true;
        // actual code for the transfer from current state on stack
        if ((((b_17 && b_17) && b_18) && accVar2) && neededTransfer > 0.000000000) {
          maskTransfer := Ops_5Mask[rcvLocal, val];
          if (neededTransfer <= maskTransfer) {
            takeTransfer := neededTransfer;
          } else {
            takeTransfer := maskTransfer;
          }
          if (takeTransfer > 0.000000000) {
            neededTransfer := neededTransfer - takeTransfer;
            Used_7Mask := Used_7Mask[rcvLocal, val:=Used_7Mask[rcvLocal, val] + takeTransfer];
            b_18 := b_18 && state(Used_7Heap, Used_7Mask);
            b_18 := b_18 && Ops_5Heap[rcvLocal, val] == Used_7Heap[rcvLocal, val];
            Ops_5Mask := Ops_5Mask[rcvLocal, val:=Ops_5Mask[rcvLocal, val] - takeTransfer];
          }
        }
      
      // -- transfer code for top state of stack
        // accumulate constraints which need to be satisfied for transfer to occur
        accVar2 := true;
        // actual code for the transfer from current state on stack
        if ((((b_17 && b_17) && b_18) && accVar2) && neededTransfer > 0.000000000) {
          maskTransfer := Mask[rcvLocal, val];
          if (neededTransfer <= maskTransfer) {
            takeTransfer := neededTransfer;
          } else {
            takeTransfer := maskTransfer;
          }
          if (takeTransfer > 0.000000000) {
            neededTransfer := neededTransfer - takeTransfer;
            Used_7Mask := Used_7Mask[rcvLocal, val:=Used_7Mask[rcvLocal, val] + takeTransfer];
            b_18 := b_18 && state(Used_7Heap, Used_7Mask);
            b_18 := b_18 && Heap[rcvLocal, val] == Used_7Heap[rcvLocal, val];
            Mask := Mask[rcvLocal, val:=Mask[rcvLocal, val] - takeTransfer];
            Heap := Heap[null, wand_1#sm(res, FullPerm, x, FullPerm, x, oldHeap[x, val]):=Heap[null, wand_1#sm(res, FullPerm, x, FullPerm, x, oldHeap[x, val])][x, val:=true]];
          }
        }
      assert {:msg "  Packaging wand might fail. There might be insufficient permission to access x.val (0213.vpr@64.5--64.29) [210150]"}
        (b_17 && b_17) && b_18 ==> neededTransfer == 0.000000000 && Used_7Mask[rcvLocal, val] == initNeededTransfer;
      
      // -- Creating state which is the sum of the two previously built up states
        b_19 := b_17 && b_18;
        b_19 := b_19 && state(Result_8Heap, Result_8Mask);
        b_19 := b_19 && sumMask(Result_8Mask, Ops_5Mask, Used_7Mask);
        b_19 := (b_19 && IdenticalOnKnownLocations(Ops_5Heap, Result_8Heap, Ops_5Mask)) && IdenticalOnKnownLocations(Used_7Heap, Result_8Heap, Used_7Mask);
        b_19 := b_19 && state(Result_8Heap, Result_8Mask);
      b_17 := b_17 && b_19;
    if ((b_17 && b_17) && b_18) {
      if (b_17) {
        
        // -- Check definedness of x.val == old(x.val)
          assert {:msg "  Packaging wand might fail. There might be insufficient permission to access x.val (0213.vpr@64.5--64.29) [210151]"}
            HasDirectPerm(Result_8Mask, x, val);
          assert {:msg "  Packaging wand might fail. There might be insufficient permission to access x.val (0213.vpr@64.5--64.29) [210152]"}
            HasDirectPerm(oldMask, x, val);
      }
    }
    assert {:msg "  Packaging wand might fail. Assertion x.val == old(x.val) might not hold. (0213.vpr@64.5--64.29) [210153]"}
      (b_17 && b_17) && b_18 ==> Result_8Heap[x, val] == oldHeap[x, val];
    Mask := Mask[null, wand_1(res, FullPerm, x, FullPerm, x, oldHeap[x, val]):=Mask[null, wand_1(res, FullPerm, x, FullPerm, x, oldHeap[x, val])] + FullPerm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of silicon_ok2 might not hold. There might be insufficient permission to access res.val (0213.vpr@60.13--60.25) [210154]"}
        perm <= Mask[res, val];
    }
    Mask := Mask[res, val:=Mask[res, val] - perm];
    // permLe
    assert {:msg "  Postcondition of silicon_ok2 might not hold. Magic wand instance not found. (0213.vpr@61.13--61.29) [210155]"}
      FullPerm <= Mask[null, wand_1(res, FullPerm, x, FullPerm, x, oldHeap[x, val])];
    Mask := Mask[null, wand_1(res, FullPerm, x, FullPerm, x, oldHeap[x, val]):=Mask[null, wand_1(res, FullPerm, x, FullPerm, x, oldHeap[x, val])] - FullPerm];
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}