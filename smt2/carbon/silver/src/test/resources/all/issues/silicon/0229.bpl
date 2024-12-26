// 
// Translation of Viper program.
// 
// Date:         2024-12-26 15:21:56
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/issues/silicon/0229.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/issues/silicon/0229-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
axiom (forall o_11: Ref, f_10: (Field NormalField Ref), Heap: HeapType ::
  { Heap[o_11, f_10] }
  Heap[o_11, $allocated] ==> Heap[Heap[o_11, f_10], $allocated]
);
function  succHeap(Heap0: HeapType, Heap1: HeapType): bool;
function  succHeapTrans(Heap0: HeapType, Heap1: HeapType): bool;
function  IdenticalOnKnownLocations(Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType): bool;
function  IsPredicateField<A, B>(f_1: (Field A B)): bool;
function  IsWandField<A, B>(f_1: (Field A B)): bool;
function  getPredWandId<A, B>(f_1: (Field A B)): int;
// Frame all locations with direct permissions
axiom (forall <A, B> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_12: Ref, f_16: (Field A B) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_12, f_16] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, o_12, f_16) ==> Heap[o_12, f_16] == ExhaleHeap[o_12, f_16]
);
// Frame all predicate mask locations of predicates with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_5: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_5), ExhaleHeap[null, PredicateMaskField(pm_f_5)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_5) && IsPredicateField(pm_f_5) ==> Heap[null, PredicateMaskField(pm_f_5)] == ExhaleHeap[null, PredicateMaskField(pm_f_5)]
);
// Frame all locations with known folded permissions
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_5: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_5) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_5) && IsPredicateField(pm_f_5) ==> (forall <A, B> o2_5: Ref, f_16: (Field A B) ::
    { ExhaleHeap[o2_5, f_16] }
    Heap[null, PredicateMaskField(pm_f_5)][o2_5, f_16] ==> Heap[o2_5, f_16] == ExhaleHeap[o2_5, f_16]
  )
);
// Frame all wand mask locations of wands with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_5: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_5), ExhaleHeap[null, WandMaskField(pm_f_5)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_5) && IsWandField(pm_f_5) ==> Heap[null, WandMaskField(pm_f_5)] == ExhaleHeap[null, WandMaskField(pm_f_5)]
);
// Frame all locations in the footprint of magic wands
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_5: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_5) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_5) && IsWandField(pm_f_5) ==> (forall <A, B> o2_5: Ref, f_16: (Field A B) ::
    { ExhaleHeap[o2_5, f_16] }
    Heap[null, WandMaskField(pm_f_5)][o2_5, f_16] ==> Heap[o2_5, f_16] == ExhaleHeap[o2_5, f_16]
  )
);
// All previously-allocated references are still allocated
axiom (forall Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_12: Ref ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_12, $allocated] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> Heap[o_12, $allocated] ==> ExhaleHeap[o_12, $allocated]
);
// Updated Heaps are Successor Heaps
axiom (forall <A, B> Heap: HeapType, o_11: Ref, f_17: (Field A B), v: B ::
  { Heap[o_11, f_17:=v] }
  succHeap(Heap, Heap[o_11, f_17:=v])
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
  getPredWandId(wand(arg1, arg2)) == 2
);
axiom (forall arg1: bool, arg2: bool, arg1_2: bool, arg2_2: bool ::
  { wand(arg1, arg2), wand(arg1_2, arg2_2) }
  wand(arg1, arg2) == wand(arg1_2, arg2_2) ==> arg1 == arg1_2 && arg2 == arg2_2
);
type WandType_wand_1;
function  wand_1(arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm, arg5: Ref, arg6: Perm, arg7: Ref, arg8: int): Field WandType_wand_1 int;
function  wand_1#sm(arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm, arg5: Ref, arg6: Perm, arg7: Ref, arg8: int): Field WandType_wand_1 PMaskType;
function  wand_1#ft(arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm, arg5: Ref, arg6: Perm, arg7: Ref, arg8: int): Field WandType_wand_1 FrameType;
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm, arg5: Ref, arg6: Perm, arg7: Ref, arg8: int ::
  { wand_1(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8) }
  IsWandField(wand_1(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm, arg5: Ref, arg6: Perm, arg7: Ref, arg8: int ::
  { wand_1#ft(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8) }
  IsWandField(wand_1#ft(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm, arg5: Ref, arg6: Perm, arg7: Ref, arg8: int ::
  { wand_1(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8) }
  !IsPredicateField(wand_1(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm, arg5: Ref, arg6: Perm, arg7: Ref, arg8: int ::
  { wand_1#ft(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8) }
  !IsPredicateField(wand_1#ft(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm, arg5: Ref, arg6: Perm, arg7: Ref, arg8: int ::
  { WandMaskField(wand_1#ft(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8)) }
  wand_1#sm(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8) == WandMaskField(wand_1#ft(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8))
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm, arg5: Ref, arg6: Perm, arg7: Ref, arg8: int ::
  { wand_1(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8) }
  getPredWandId(wand_1(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8)) == 3
);
axiom (forall arg1: Ref, arg2: Perm, arg3: Ref, arg4: Perm, arg5: Ref, arg6: Perm, arg7: Ref, arg8: int, arg1_2: Ref, arg2_2: Perm, arg3_2: Ref, arg4_2: Perm, arg5_2: Ref, arg6_2: Perm, arg7_2: Ref, arg8_2: int ::
  { wand_1(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8), wand_1(arg1_2, arg2_2, arg3_2, arg4_2, arg5_2, arg6_2, arg7_2, arg8_2) }
  wand_1(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8) == wand_1(arg1_2, arg2_2, arg3_2, arg4_2, arg5_2, arg6_2, arg7_2, arg8_2) ==> arg1 == arg1_2 && (arg2 == arg2_2 && (arg3 == arg3_2 && (arg4 == arg4_2 && (arg5 == arg5_2 && (arg6 == arg6_2 && (arg7 == arg7_2 && arg8 == arg8_2))))))
);

// ==================================================
// Translation of all fields
// ==================================================

const unique r_6: Field NormalField bool;
axiom !IsPredicateField(r_6);
axiom !IsWandField(r_6);
const unique Foo__v1: Field NormalField Ref;
axiom !IsPredicateField(Foo__v1);
axiom !IsWandField(Foo__v1);
const unique Foo__v2: Field NormalField Ref;
axiom !IsPredicateField(Foo__v2);
axiom !IsWandField(Foo__v2);
const unique Int__v: Field NormalField int;
axiom !IsPredicateField(Int__v);
axiom !IsWandField(Int__v);

// ==================================================
// Translation of predicate valid2
// ==================================================

type PredicateType_valid2;
function  valid2(self: Ref): Field PredicateType_valid2 FrameType;
function  valid2#sm(self: Ref): Field PredicateType_valid2 PMaskType;
axiom (forall self: Ref ::
  { PredicateMaskField(valid2(self)) }
  PredicateMaskField(valid2(self)) == valid2#sm(self)
);
axiom (forall self: Ref ::
  { valid2(self) }
  IsPredicateField(valid2(self))
);
axiom (forall self: Ref ::
  { valid2(self) }
  getPredWandId(valid2(self)) == 0
);
function  valid2#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  valid2#everUsed<A>(pred: (Field A FrameType)): bool;
axiom (forall self: Ref, self2: Ref ::
  { valid2(self), valid2(self2) }
  valid2(self) == valid2(self2) ==> self == self2
);
axiom (forall self: Ref, self2: Ref ::
  { valid2#sm(self), valid2#sm(self2) }
  valid2#sm(self) == valid2#sm(self2) ==> self == self2
);

axiom (forall Heap: HeapType, self: Ref ::
  { valid2#trigger(Heap, valid2(self)) }
  valid2#everUsed(valid2(self))
);

procedure valid2#definedness(self: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  
  // -- Check definedness of predicate body of valid2
    
    // -- Initializing the state
      Mask := ZeroMask;
      assume state(Heap, Mask);
      assume AssumePermUpperBound;
      assume Heap[self, $allocated];
    perm := FullPerm;
    assume self != null;
    Mask := Mask[self, r_6:=Mask[self, r_6] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of predicate valid__Foo
// ==================================================

type PredicateType_valid__Foo;
function  valid__Foo(self: Ref): Field PredicateType_valid__Foo FrameType;
function  valid__Foo#sm(self: Ref): Field PredicateType_valid__Foo PMaskType;
axiom (forall self: Ref ::
  { PredicateMaskField(valid__Foo(self)) }
  PredicateMaskField(valid__Foo(self)) == valid__Foo#sm(self)
);
axiom (forall self: Ref ::
  { valid__Foo(self) }
  IsPredicateField(valid__Foo(self))
);
axiom (forall self: Ref ::
  { valid__Foo(self) }
  getPredWandId(valid__Foo(self)) == 1
);
function  valid__Foo#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  valid__Foo#everUsed<A>(pred: (Field A FrameType)): bool;
axiom (forall self: Ref, self2: Ref ::
  { valid__Foo(self), valid__Foo(self2) }
  valid__Foo(self) == valid__Foo(self2) ==> self == self2
);
axiom (forall self: Ref, self2: Ref ::
  { valid__Foo#sm(self), valid__Foo#sm(self2) }
  valid__Foo#sm(self) == valid__Foo#sm(self2) ==> self == self2
);

axiom (forall Heap: HeapType, self: Ref ::
  { valid__Foo#trigger(Heap, valid__Foo(self)) }
  valid__Foo#everUsed(valid__Foo(self))
);

procedure valid__Foo#definedness(self: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  
  // -- Check definedness of predicate body of valid__Foo
    
    // -- Initializing the state
      Mask := ZeroMask;
      assume state(Heap, Mask);
      assume AssumePermUpperBound;
      assume Heap[self, $allocated];
    perm := FullPerm;
    assume self != null;
    Mask := Mask[self, Foo__v1:=Mask[self, Foo__v1] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of acc(self.Foo__v1.Int__v, write)
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access self.Foo__v1 (0229.vpr@47.1--52.2) [202404]"}
        HasDirectPerm(Mask, self, Foo__v1);
    perm := FullPerm;
    assume Heap[self, Foo__v1] != null;
    Mask := Mask[Heap[self, Foo__v1], Int__v:=Mask[Heap[self, Foo__v1], Int__v] + perm];
    assume state(Heap, Mask);
    perm := FullPerm;
    assume self != null;
    Mask := Mask[self, Foo__v2:=Mask[self, Foo__v2] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of acc(self.Foo__v2.Int__v, write)
      assert {:msg "  Predicate might not be well-formed. There might be insufficient permission to access self.Foo__v2 (0229.vpr@47.1--52.2) [202405]"}
        HasDirectPerm(Mask, self, Foo__v2);
    perm := FullPerm;
    assume Heap[self, Foo__v2] != null;
    Mask := Mask[Heap[self, Foo__v2], Int__v:=Mask[Heap[self, Foo__v2], Int__v] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test42
// ==================================================

procedure test42(x: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var UnfoldingHeap: HeapType;
  var UnfoldingMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var WandDefLHSHeap: HeapType;
  var WandDefLHSMask: MaskType;
  var Labellhs1Heap: HeapType;
  var Labellhs1Mask: MaskType;
  var WandDefRHSHeap: HeapType;
  var WandDefRHSMask: MaskType;
  var Ops_1Heap: HeapType;
  var Ops_1Mask: MaskType;
  var b_1_1: bool;
  var UsedHeap: HeapType;
  var UsedMask: MaskType;
  var b_2: bool;
  var Labellhs2Heap: HeapType;
  var Labellhs2Mask: MaskType;
  var boolCur: bool;
  var Used_1Heap: HeapType;
  var Used_1Mask: MaskType;
  var b_2_1: bool;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[x, $allocated];
  
  // -- Checked inhaling of precondition
    perm := FullPerm;
    Mask := Mask[null, valid2(x):=Mask[null, valid2(x)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    
    // -- Check definedness of (unfolding acc(valid2(x), write) in x.r)
      UnfoldingHeap := Heap;
      UnfoldingMask := Mask;
      assume valid2#trigger(UnfoldingHeap, valid2(x));
      assume UnfoldingHeap[null, valid2(x)] == FrameFragment(UnfoldingHeap[x, r_6]);
      ExhaleWellDef0Heap := UnfoldingHeap;
      ExhaleWellDef0Mask := UnfoldingMask;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access valid2(x) (0229.vpr@10.12--10.43) [202406]"}
          perm <= UnfoldingMask[null, valid2(x)];
      }
      UnfoldingMask := UnfoldingMask[null, valid2(x):=UnfoldingMask[null, valid2(x)] - perm];
      perm := FullPerm;
      assume x != null;
      UnfoldingMask := UnfoldingMask[x, r_6:=UnfoldingMask[x, r_6] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      assume state(UnfoldingHeap, UnfoldingMask);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access x.r (0229.vpr@10.12--10.43) [202407]"}
        HasDirectPerm(UnfoldingMask, x, r_6);
      
      // -- Free assumptions (exp module)
        Heap := Heap[null, valid2#sm(x):=Heap[null, valid2#sm(x)][x, r_6:=true]];
        assume state(Heap, Mask);
    
    // -- Execute unfolding (for extra information)
      UnfoldingHeap := Heap;
      UnfoldingMask := Mask;
      assume valid2#trigger(UnfoldingHeap, valid2(x));
      assume UnfoldingHeap[null, valid2(x)] == FrameFragment(UnfoldingHeap[x, r_6]);
      ExhaleWellDef0Heap := UnfoldingHeap;
      ExhaleWellDef0Mask := UnfoldingMask;
      perm := FullPerm;
      UnfoldingMask := UnfoldingMask[null, valid2(x):=UnfoldingMask[null, valid2(x)] - perm];
      perm := FullPerm;
      assume x != null;
      UnfoldingMask := UnfoldingMask[x, r_6:=UnfoldingMask[x, r_6] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      assume state(UnfoldingHeap, UnfoldingMask);
    assume Heap[x, r_6];
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
    
    // -- Check definedness of true --* old((unfolding acc(valid2(x), write) in x.r))
      if (*) {
        havoc WandDefLHSHeap;
        WandDefLHSMask := ZeroMask;
        assume state(WandDefLHSHeap, WandDefLHSMask);
        
        // -- Translating statement: label lhs1 -- 0229.vpr@11.11--11.24
          lhs1:
          Labellhs1Heap := WandDefLHSHeap;
          Labellhs1Mask := WandDefLHSMask;
          assume state(WandDefLHSHeap, WandDefLHSMask);
        havoc WandDefRHSHeap;
        WandDefRHSMask := ZeroMask;
        
        // -- Check definedness of old((unfolding acc(valid2(x), write) in x.r))
          UnfoldingHeap := oldHeap;
          UnfoldingMask := oldMask;
          assume valid2#trigger(UnfoldingHeap, valid2(x));
          assume UnfoldingHeap[null, valid2(x)] == FrameFragment(UnfoldingHeap[x, r_6]);
          ExhaleWellDef0Heap := UnfoldingHeap;
          ExhaleWellDef0Mask := UnfoldingMask;
          perm := FullPerm;
          if (perm != NoPerm) {
            assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access valid2(x) (0229.vpr@11.11--11.24) [202408]"}
              perm <= UnfoldingMask[null, valid2(x)];
          }
          UnfoldingMask := UnfoldingMask[null, valid2(x):=UnfoldingMask[null, valid2(x)] - perm];
          perm := FullPerm;
          assume x != null;
          UnfoldingMask := UnfoldingMask[x, r_6:=UnfoldingMask[x, r_6] + perm];
          assume state(UnfoldingHeap, UnfoldingMask);
          assume state(UnfoldingHeap, UnfoldingMask);
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access x.r (0229.vpr@11.11--11.24) [202409]"}
            HasDirectPerm(UnfoldingMask, x, r_6);
        assume oldHeap[x, r_6];
        assume state(WandDefRHSHeap, WandDefRHSMask);
        assume false;
      }
    PostMask := PostMask[null, wand(true, oldHeap[x, r_6]):=PostMask[null, wand(true, oldHeap[x, r_6])] + FullPerm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: package true --* old((unfolding acc(valid2(x), write) in x.r)) {
  // } -- 0229.vpr@13.3--13.24
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
    
    // -- Translating statement: label lhs2 -- 0229.vpr@13.11--13.24
      lhs2:
      Labellhs2Heap := Ops_1Heap;
      Labellhs2Mask := Ops_1Mask;
      b_1_1 := b_1_1 && state(Ops_1Heap, Ops_1Mask);
    boolCur := true;
    // Translating exec of non-ghost operationold((unfolding acc(valid2(x), write) in x.r))
    havoc Used_1Heap;
    Used_1Mask := ZeroMask;
    b_2_1 := b_2_1 && state(Used_1Heap, Used_1Mask);
    if ((b_1_1 && b_1_1) && b_2_1) {
      if (b_1_1) {
        
        // -- Check definedness of old((unfolding acc(valid2(x), write) in x.r))
          UnfoldingHeap := oldHeap;
          UnfoldingMask := oldMask;
          assume valid2#trigger(UnfoldingHeap, valid2(x));
          assume UnfoldingHeap[null, valid2(x)] == FrameFragment(UnfoldingHeap[x, r_6]);
          ExhaleWellDef0Heap := UnfoldingHeap;
          ExhaleWellDef0Mask := UnfoldingMask;
          perm := FullPerm;
          if (perm != NoPerm) {
            assert {:msg "  Packaging wand might fail. There might be insufficient permission to access valid2(x) (0229.vpr@13.3--13.24) [202410]"}
              perm <= UnfoldingMask[null, valid2(x)];
          }
          UnfoldingMask := UnfoldingMask[null, valid2(x):=UnfoldingMask[null, valid2(x)] - perm];
          perm := FullPerm;
          assume x != null;
          UnfoldingMask := UnfoldingMask[x, r_6:=UnfoldingMask[x, r_6] + perm];
          assume state(UnfoldingHeap, UnfoldingMask);
          assume state(UnfoldingHeap, UnfoldingMask);
          assert {:msg "  Packaging wand might fail. There might be insufficient permission to access x.r (0229.vpr@13.3--13.24) [202411]"}
            HasDirectPerm(UnfoldingMask, x, r_6);
      }
    }
    assert {:msg "  Packaging wand might fail. Assertion old((unfolding acc(valid2(x), write) in x.r)) might not hold. (0229.vpr@13.3--13.24) [202412]"}
      (b_1_1 && b_1_1) && b_2_1 ==> oldHeap[x, r_6];
    Mask := Mask[null, wand(true, oldHeap[x, r_6]):=Mask[null, wand(true, oldHeap[x, r_6])] + FullPerm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    // permLe
    assert {:msg "  Postcondition of test42 might not hold. Magic wand instance not found. (0229.vpr@11.11--11.24) [202413]"}
      FullPerm <= Mask[null, wand(true, oldHeap[x, r_6])];
    Mask := Mask[null, wand(true, oldHeap[x, r_6]):=Mask[null, wand(true, oldHeap[x, r_6])] - FullPerm];
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method test4
// ==================================================

procedure test4(x$1: Ref, rd$1: Perm) returns (res$1: Ref)
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var WandDefLHSHeap: HeapType;
  var WandDefLHSMask: MaskType;
  var Labellhs4Heap: HeapType;
  var Labellhs4Mask: MaskType;
  var WandDefRHSHeap: HeapType;
  var WandDefRHSMask: MaskType;
  var UnfoldingHeap: HeapType;
  var UnfoldingMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var newVersion: FrameType;
  var Ops_3Heap: HeapType;
  var Ops_3Mask: MaskType;
  var b_4: bool;
  var Used_2Heap: HeapType;
  var Used_2Mask: MaskType;
  var b_3: bool;
  var Labellhs5Heap: HeapType;
  var Labellhs5Mask: MaskType;
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
  var b_8: bool;
  var Result_2Heap: HeapType;
  var Result_2Mask: MaskType;
  var b_9: bool;
  var Result_3Heap: HeapType;
  var Result_3Mask: MaskType;
  var freshVersion: FrameType;
  var Used_4Heap: HeapType;
  var Used_4Mask: MaskType;
  var b_10: bool;
  var arg_1: Ref;
  var TempMask: MaskType;
  var newPMask: PMaskType;
  var b_11: bool;
  var Result_4Heap: HeapType;
  var Result_4Mask: MaskType;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[x$1, $allocated];
  
  // -- Checked inhaling of precondition
    assume NoPerm < rd$1;
    assume rd$1 < FullPerm;
    assume state(Heap, Mask);
    perm := FullPerm;
    Mask := Mask[null, valid__Foo(x$1):=Mask[null, valid__Foo(x$1)] + perm];
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
    assume res$1 != null;
    PostMask := PostMask[res$1, Int__v:=PostMask[res$1, Int__v] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    
    // -- Check definedness of acc(res$1.Int__v, write) --* acc(valid__Foo(x$1), write) && (unfolding acc(valid__Foo(x$1), rd$1 / 2) in x$1.Foo__v2.Int__v) == old((unfolding acc(valid__Foo(x$1), rd$1 / 2) in x$1.Foo__v2.Int__v))
      if (*) {
        havoc WandDefLHSHeap;
        WandDefLHSMask := ZeroMask;
        perm := FullPerm;
        assume res$1 != null;
        WandDefLHSMask := WandDefLHSMask[res$1, Int__v:=WandDefLHSMask[res$1, Int__v] + perm];
        assume state(WandDefLHSHeap, WandDefLHSMask);
        assume state(WandDefLHSHeap, WandDefLHSMask);
        
        // -- Translating statement: label lhs4 -- 0229.vpr@34.11--34.43
          lhs4:
          Labellhs4Heap := WandDefLHSHeap;
          Labellhs4Mask := WandDefLHSMask;
          assume state(WandDefLHSHeap, WandDefLHSMask);
        havoc WandDefRHSHeap;
        WandDefRHSMask := ZeroMask;
        perm := FullPerm;
        WandDefRHSMask := WandDefRHSMask[null, valid__Foo(x$1):=WandDefRHSMask[null, valid__Foo(x$1)] + perm];
        assume state(WandDefRHSHeap, WandDefRHSMask);
        
        // -- Check definedness of (unfolding acc(valid__Foo(x$1), rd$1 / 2) in x$1.Foo__v2.Int__v) == old((unfolding acc(valid__Foo(x$1), rd$1 / 2) in x$1.Foo__v2.Int__v))
          UnfoldingHeap := WandDefRHSHeap;
          UnfoldingMask := WandDefRHSMask;
          assert {:msg "  Contract might not be well-formed. Fraction rd$1 / 2 might not be positive. (0229.vpr@34.11--34.43) [202414]"}
            rd$1 > NoPerm;
          assume valid__Foo#trigger(UnfoldingHeap, valid__Foo(x$1));
          assume UnfoldingHeap[null, valid__Foo(x$1)] == CombineFrames(FrameFragment(UnfoldingHeap[x$1, Foo__v1]), CombineFrames(FrameFragment(UnfoldingHeap[UnfoldingHeap[x$1, Foo__v1], Int__v]), CombineFrames(FrameFragment(UnfoldingHeap[x$1, Foo__v2]), FrameFragment(UnfoldingHeap[UnfoldingHeap[x$1, Foo__v2], Int__v]))));
          ExhaleWellDef0Heap := UnfoldingHeap;
          ExhaleWellDef0Mask := UnfoldingMask;
          perm := rd$1 / 2;
          assert {:msg "  Contract might not be well-formed. Fraction rd$1 / 2 might be negative. (0229.vpr@34.11--34.43) [202415]"}
            perm >= NoPerm;
          if (perm != NoPerm) {
            assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access valid__Foo(x$1) (0229.vpr@34.11--34.43) [202416]"}
              perm <= UnfoldingMask[null, valid__Foo(x$1)];
          }
          UnfoldingMask := UnfoldingMask[null, valid__Foo(x$1):=UnfoldingMask[null, valid__Foo(x$1)] - perm];
          perm := rd$1 / 2;
          assert {:msg "  Contract might not be well-formed. Fraction rd$1 / 2 might be negative. (0229.vpr@34.11--34.43) [202417]"}
            perm >= NoPerm;
          assume perm > NoPerm ==> x$1 != null;
          UnfoldingMask := UnfoldingMask[x$1, Foo__v1:=UnfoldingMask[x$1, Foo__v1] + perm];
          assume state(UnfoldingHeap, UnfoldingMask);
          perm := rd$1 / 2;
          assert {:msg "  Contract might not be well-formed. Fraction rd$1 / 2 might be negative. (0229.vpr@34.11--34.43) [202418]"}
            perm >= NoPerm;
          assume perm > NoPerm ==> UnfoldingHeap[x$1, Foo__v1] != null;
          UnfoldingMask := UnfoldingMask[UnfoldingHeap[x$1, Foo__v1], Int__v:=UnfoldingMask[UnfoldingHeap[x$1, Foo__v1], Int__v] + perm];
          assume state(UnfoldingHeap, UnfoldingMask);
          perm := rd$1 / 2;
          assert {:msg "  Contract might not be well-formed. Fraction rd$1 / 2 might be negative. (0229.vpr@34.11--34.43) [202419]"}
            perm >= NoPerm;
          assume perm > NoPerm ==> x$1 != null;
          UnfoldingMask := UnfoldingMask[x$1, Foo__v2:=UnfoldingMask[x$1, Foo__v2] + perm];
          assume state(UnfoldingHeap, UnfoldingMask);
          perm := rd$1 / 2;
          assert {:msg "  Contract might not be well-formed. Fraction rd$1 / 2 might be negative. (0229.vpr@34.11--34.43) [202420]"}
            perm >= NoPerm;
          assume perm > NoPerm ==> UnfoldingHeap[x$1, Foo__v2] != null;
          UnfoldingMask := UnfoldingMask[UnfoldingHeap[x$1, Foo__v2], Int__v:=UnfoldingMask[UnfoldingHeap[x$1, Foo__v2], Int__v] + perm];
          assume state(UnfoldingHeap, UnfoldingMask);
          assume state(UnfoldingHeap, UnfoldingMask);
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access x$1.Foo__v2 (0229.vpr@34.11--34.43) [202421]"}
            HasDirectPerm(UnfoldingMask, x$1, Foo__v2);
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access x$1.Foo__v2.Int__v (0229.vpr@34.11--34.43) [202422]"}
            HasDirectPerm(UnfoldingMask, UnfoldingHeap[x$1, Foo__v2], Int__v);
          
          // -- Free assumptions (exp module)
            WandDefRHSHeap := WandDefRHSHeap[null, valid__Foo#sm(x$1):=WandDefRHSHeap[null, valid__Foo#sm(x$1)][x$1, Foo__v1:=true]];
            WandDefRHSHeap := WandDefRHSHeap[null, valid__Foo#sm(x$1):=WandDefRHSHeap[null, valid__Foo#sm(x$1)][WandDefRHSHeap[x$1, Foo__v1], Int__v:=true]];
            WandDefRHSHeap := WandDefRHSHeap[null, valid__Foo#sm(x$1):=WandDefRHSHeap[null, valid__Foo#sm(x$1)][x$1, Foo__v2:=true]];
            WandDefRHSHeap := WandDefRHSHeap[null, valid__Foo#sm(x$1):=WandDefRHSHeap[null, valid__Foo#sm(x$1)][WandDefRHSHeap[x$1, Foo__v2], Int__v:=true]];
            assume state(WandDefRHSHeap, WandDefRHSMask);
          UnfoldingHeap := oldHeap;
          UnfoldingMask := oldMask;
          assert {:msg "  Contract might not be well-formed. Fraction rd$1 / 2 might not be positive. (0229.vpr@34.11--34.43) [202423]"}
            rd$1 > NoPerm;
          assume valid__Foo#trigger(UnfoldingHeap, valid__Foo(x$1));
          assume UnfoldingHeap[null, valid__Foo(x$1)] == CombineFrames(FrameFragment(UnfoldingHeap[x$1, Foo__v1]), CombineFrames(FrameFragment(UnfoldingHeap[UnfoldingHeap[x$1, Foo__v1], Int__v]), CombineFrames(FrameFragment(UnfoldingHeap[x$1, Foo__v2]), FrameFragment(UnfoldingHeap[UnfoldingHeap[x$1, Foo__v2], Int__v]))));
          ExhaleWellDef0Heap := UnfoldingHeap;
          ExhaleWellDef0Mask := UnfoldingMask;
          perm := rd$1 / 2;
          assert {:msg "  Contract might not be well-formed. Fraction rd$1 / 2 might be negative. (0229.vpr@34.11--34.43) [202424]"}
            perm >= NoPerm;
          if (perm != NoPerm) {
            assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access valid__Foo(x$1) (0229.vpr@34.11--34.43) [202425]"}
              perm <= UnfoldingMask[null, valid__Foo(x$1)];
          }
          UnfoldingMask := UnfoldingMask[null, valid__Foo(x$1):=UnfoldingMask[null, valid__Foo(x$1)] - perm];
          perm := rd$1 / 2;
          assert {:msg "  Contract might not be well-formed. Fraction rd$1 / 2 might be negative. (0229.vpr@34.11--34.43) [202426]"}
            perm >= NoPerm;
          assume perm > NoPerm ==> x$1 != null;
          UnfoldingMask := UnfoldingMask[x$1, Foo__v1:=UnfoldingMask[x$1, Foo__v1] + perm];
          assume state(UnfoldingHeap, UnfoldingMask);
          perm := rd$1 / 2;
          assert {:msg "  Contract might not be well-formed. Fraction rd$1 / 2 might be negative. (0229.vpr@34.11--34.43) [202427]"}
            perm >= NoPerm;
          assume perm > NoPerm ==> UnfoldingHeap[x$1, Foo__v1] != null;
          UnfoldingMask := UnfoldingMask[UnfoldingHeap[x$1, Foo__v1], Int__v:=UnfoldingMask[UnfoldingHeap[x$1, Foo__v1], Int__v] + perm];
          assume state(UnfoldingHeap, UnfoldingMask);
          perm := rd$1 / 2;
          assert {:msg "  Contract might not be well-formed. Fraction rd$1 / 2 might be negative. (0229.vpr@34.11--34.43) [202428]"}
            perm >= NoPerm;
          assume perm > NoPerm ==> x$1 != null;
          UnfoldingMask := UnfoldingMask[x$1, Foo__v2:=UnfoldingMask[x$1, Foo__v2] + perm];
          assume state(UnfoldingHeap, UnfoldingMask);
          perm := rd$1 / 2;
          assert {:msg "  Contract might not be well-formed. Fraction rd$1 / 2 might be negative. (0229.vpr@34.11--34.43) [202429]"}
            perm >= NoPerm;
          assume perm > NoPerm ==> UnfoldingHeap[x$1, Foo__v2] != null;
          UnfoldingMask := UnfoldingMask[UnfoldingHeap[x$1, Foo__v2], Int__v:=UnfoldingMask[UnfoldingHeap[x$1, Foo__v2], Int__v] + perm];
          assume state(UnfoldingHeap, UnfoldingMask);
          assume state(UnfoldingHeap, UnfoldingMask);
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access x$1.Foo__v2 (0229.vpr@34.11--34.43) [202430]"}
            HasDirectPerm(UnfoldingMask, x$1, Foo__v2);
          assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access x$1.Foo__v2.Int__v (0229.vpr@34.11--34.43) [202431]"}
            HasDirectPerm(UnfoldingMask, UnfoldingHeap[x$1, Foo__v2], Int__v);
          
          // -- Free assumptions (exp module)
            WandDefRHSHeap := WandDefRHSHeap[null, valid__Foo#sm(x$1):=WandDefRHSHeap[null, valid__Foo#sm(x$1)][x$1, Foo__v1:=true]];
            WandDefRHSHeap := WandDefRHSHeap[null, valid__Foo#sm(x$1):=WandDefRHSHeap[null, valid__Foo#sm(x$1)][WandDefRHSHeap[x$1, Foo__v1], Int__v:=true]];
            WandDefRHSHeap := WandDefRHSHeap[null, valid__Foo#sm(x$1):=WandDefRHSHeap[null, valid__Foo#sm(x$1)][x$1, Foo__v2:=true]];
            WandDefRHSHeap := WandDefRHSHeap[null, valid__Foo#sm(x$1):=WandDefRHSHeap[null, valid__Foo#sm(x$1)][WandDefRHSHeap[x$1, Foo__v2], Int__v:=true]];
            assume state(WandDefRHSHeap, WandDefRHSMask);
        assume WandDefRHSHeap[WandDefRHSHeap[x$1, Foo__v2], Int__v] == oldHeap[oldHeap[x$1, Foo__v2], Int__v];
        assume state(WandDefRHSHeap, WandDefRHSMask);
        assume false;
      }
    PostMask := PostMask[null, wand_1(res$1, FullPerm, x$1, FullPerm, x$1, rd$1 / 2, x$1, oldHeap[oldHeap[x$1, Foo__v2], Int__v]):=PostMask[null, wand_1(res$1, FullPerm, x$1, FullPerm, x$1, rd$1 / 2, x$1, oldHeap[oldHeap[x$1, Foo__v2], Int__v])] + FullPerm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: unfold acc(valid__Foo(x$1), write) -- 0229.vpr@36.5--36.39
    assume valid__Foo#trigger(Heap, valid__Foo(x$1));
    assume Heap[null, valid__Foo(x$1)] == CombineFrames(FrameFragment(Heap[x$1, Foo__v1]), CombineFrames(FrameFragment(Heap[Heap[x$1, Foo__v1], Int__v]), CombineFrames(FrameFragment(Heap[x$1, Foo__v2]), FrameFragment(Heap[Heap[x$1, Foo__v2], Int__v]))));
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Unfolding valid__Foo(x$1) might fail. There might be insufficient permission to access valid__Foo(x$1) (0229.vpr@36.5--36.39) [202434]"}
        perm <= Mask[null, valid__Foo(x$1)];
    }
    Mask := Mask[null, valid__Foo(x$1):=Mask[null, valid__Foo(x$1)] - perm];
    
    // -- Update version of predicate
      if (!HasDirectPerm(Mask, null, valid__Foo(x$1))) {
        havoc newVersion;
        Heap := Heap[null, valid__Foo(x$1):=newVersion];
      }
    perm := FullPerm;
    assume x$1 != null;
    Mask := Mask[x$1, Foo__v1:=Mask[x$1, Foo__v1] + perm];
    assume state(Heap, Mask);
    perm := FullPerm;
    assume Heap[x$1, Foo__v1] != null;
    Mask := Mask[Heap[x$1, Foo__v1], Int__v:=Mask[Heap[x$1, Foo__v1], Int__v] + perm];
    assume state(Heap, Mask);
    perm := FullPerm;
    assume x$1 != null;
    Mask := Mask[x$1, Foo__v2:=Mask[x$1, Foo__v2] + perm];
    assume state(Heap, Mask);
    perm := FullPerm;
    assume Heap[x$1, Foo__v2] != null;
    Mask := Mask[Heap[x$1, Foo__v2], Int__v:=Mask[Heap[x$1, Foo__v2], Int__v] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: res$1 := x$1.Foo__v1 -- 0229.vpr@37.5--37.25
    
    // -- Check definedness of x$1.Foo__v1
      assert {:msg "  Assignment might fail. There might be insufficient permission to access x$1.Foo__v1 (0229.vpr@37.5--37.25) [202439]"}
        HasDirectPerm(Mask, x$1, Foo__v1);
    res$1 := Heap[x$1, Foo__v1];
    assume state(Heap, Mask);
  
  // -- Translating statement: package acc(res$1.Int__v, write) --*
  // acc(valid__Foo(x$1), write) &&
  // (unfolding acc(valid__Foo(x$1), rd$1 / 2) in x$1.Foo__v2.Int__v) ==
  // old((unfolding acc(valid__Foo(x$1), rd$1 / 2) in x$1.Foo__v2.Int__v)) {
  //   fold acc(valid__Foo(x$1), write)
  // } -- 0229.vpr@39.3--41.4
    havoc Ops_3Heap;
    Ops_3Mask := ZeroMask;
    b_4 := b_4 && state(Ops_3Heap, Ops_3Mask);
    havoc Used_2Heap;
    Used_2Mask := ZeroMask;
    b_3 := b_3 && state(Used_2Heap, Used_2Mask);
    // Inhaling left hand side of current wand into hypothetical state
    if (b_4) {
      perm := FullPerm;
      b_4 := b_4 && res$1 != null;
      Ops_3Mask := Ops_3Mask[res$1, Int__v:=Ops_3Mask[res$1, Int__v] + perm];
      b_4 := b_4 && state(Ops_3Heap, Ops_3Mask);
    }
    b_4 := b_4 && state(Ops_3Heap, Ops_3Mask);
    
    // -- Translating statement: label lhs5 -- 0229.vpr@39.11--39.45
      lhs5:
      Labellhs5Heap := Ops_3Heap;
      Labellhs5Mask := Ops_3Mask;
      b_4 := b_4 && state(Ops_3Heap, Ops_3Mask);
    boolCur_1 := true;
    if (b_4) {
      
      // -- Translating statement: fold acc(valid__Foo(x$1), write) -- 0229.vpr@40.7--40.39
        ExhaleWellDef0Heap := Ops_3Heap;
        ExhaleWellDef0Mask := Ops_3Mask;
        havoc Used_3Heap;
        Used_3Mask := ZeroMask;
        b_5 := b_5 && state(Used_3Heap, Used_3Mask);
        
        // -- Transfer of acc(x$1.Foo__v1, write)
          rcvLocal := x$1;
          neededTransfer := FullPerm;
          initNeededTransfer := Used_3Mask[rcvLocal, Foo__v1] + neededTransfer;
          assert {:msg "  Folding valid__Foo(x$1) might fail. Fraction acc(x$1.Foo__v1, write) might be negative. (0229.vpr@40.7--40.39) [202441]"}
            neededTransfer >= 0.000000000;
          
          // -- transfer code for top state of stack
            // accumulate constraints which need to be satisfied for transfer to occur
            accVar2 := true;
            // actual code for the transfer from current state on stack
            if (((b_4 && b_5) && accVar2) && neededTransfer > 0.000000000) {
              maskTransfer := Ops_3Mask[rcvLocal, Foo__v1];
              if (neededTransfer <= maskTransfer) {
                takeTransfer := neededTransfer;
              } else {
                takeTransfer := maskTransfer;
              }
              if (takeTransfer > 0.000000000) {
                neededTransfer := neededTransfer - takeTransfer;
                Used_3Mask := Used_3Mask[rcvLocal, Foo__v1:=Used_3Mask[rcvLocal, Foo__v1] + takeTransfer];
                b_5 := b_5 && state(Used_3Heap, Used_3Mask);
                b_5 := b_5 && Ops_3Heap[rcvLocal, Foo__v1] == Used_3Heap[rcvLocal, Foo__v1];
                Ops_3Mask := Ops_3Mask[rcvLocal, Foo__v1:=Ops_3Mask[rcvLocal, Foo__v1] - takeTransfer];
              }
            }
          
          // -- transfer code for top state of stack
            // accumulate constraints which need to be satisfied for transfer to occur
            accVar2 := true;
            // actual code for the transfer from current state on stack
            if (((b_4 && b_5) && accVar2) && neededTransfer > 0.000000000) {
              maskTransfer := Mask[rcvLocal, Foo__v1];
              if (neededTransfer <= maskTransfer) {
                takeTransfer := neededTransfer;
              } else {
                takeTransfer := maskTransfer;
              }
              if (takeTransfer > 0.000000000) {
                neededTransfer := neededTransfer - takeTransfer;
                Used_3Mask := Used_3Mask[rcvLocal, Foo__v1:=Used_3Mask[rcvLocal, Foo__v1] + takeTransfer];
                b_5 := b_5 && state(Used_3Heap, Used_3Mask);
                b_5 := b_5 && Heap[rcvLocal, Foo__v1] == Used_3Heap[rcvLocal, Foo__v1];
                Mask := Mask[rcvLocal, Foo__v1:=Mask[rcvLocal, Foo__v1] - takeTransfer];
                Heap := Heap[null, wand_1#sm(res$1, FullPerm, x$1, FullPerm, x$1, rd$1 / 2, x$1, oldHeap[oldHeap[x$1, Foo__v2], Int__v]):=Heap[null, wand_1#sm(res$1, FullPerm, x$1, FullPerm, x$1, rd$1 / 2, x$1, oldHeap[oldHeap[x$1, Foo__v2], Int__v])][x$1, Foo__v1:=true]];
              }
            }
          assert {:msg "  Folding valid__Foo(x$1) might fail. There might be insufficient permission to access x$1.Foo__v1 (0229.vpr@40.7--40.39) [202442]"}
            b_4 && b_5 ==> neededTransfer == 0.000000000 && Used_3Mask[rcvLocal, Foo__v1] == initNeededTransfer;
          
          // -- Creating state which is the sum of the two previously built up states
            b_6 := b_4 && b_5;
            b_6 := b_6 && state(ResultHeap, ResultMask);
            b_6 := b_6 && sumMask(ResultMask, Ops_3Mask, Used_3Mask);
            b_6 := (b_6 && IdenticalOnKnownLocations(Ops_3Heap, ResultHeap, Ops_3Mask)) && IdenticalOnKnownLocations(Used_3Heap, ResultHeap, Used_3Mask);
            b_6 := b_6 && state(ResultHeap, ResultMask);
          b_4 := b_4 && b_6;
        b_4 := b_4 && b_5;
        b_4 := b_4 && Used_3Heap == Ops_3Heap;
        
        // -- Transfer of acc(x$1.Foo__v1.Int__v, write)
          
          // -- checking if access predicate defined in used state
            if (b_4 && b_5) {
              if (b_4) {
                
                // -- Check definedness of acc(x$1.Foo__v1.Int__v, write)
                  assert {:msg "  Folding valid__Foo(x$1) might fail. There might be insufficient permission to access x$1.Foo__v1 (0229.vpr@40.7--40.39) [202443]"}
                    HasDirectPerm(ResultMask, x$1, Foo__v1);
              }
            }
          rcvLocal := ResultHeap[x$1, Foo__v1];
          neededTransfer := FullPerm;
          initNeededTransfer := Used_3Mask[rcvLocal, Int__v] + neededTransfer;
          assert {:msg "  Folding valid__Foo(x$1) might fail. Fraction acc(x$1.Foo__v1.Int__v, write) might be negative. (0229.vpr@40.7--40.39) [202444]"}
            neededTransfer >= 0.000000000;
          
          // -- transfer code for top state of stack
            // accumulate constraints which need to be satisfied for transfer to occur
            accVar2 := true;
            // actual code for the transfer from current state on stack
            if (((b_4 && b_5) && accVar2) && neededTransfer > 0.000000000) {
              maskTransfer := Ops_3Mask[rcvLocal, Int__v];
              if (neededTransfer <= maskTransfer) {
                takeTransfer := neededTransfer;
              } else {
                takeTransfer := maskTransfer;
              }
              if (takeTransfer > 0.000000000) {
                neededTransfer := neededTransfer - takeTransfer;
                Used_3Mask := Used_3Mask[rcvLocal, Int__v:=Used_3Mask[rcvLocal, Int__v] + takeTransfer];
                b_5 := b_5 && state(Used_3Heap, Used_3Mask);
                b_5 := b_5 && Ops_3Heap[rcvLocal, Int__v] == Used_3Heap[rcvLocal, Int__v];
                Ops_3Mask := Ops_3Mask[rcvLocal, Int__v:=Ops_3Mask[rcvLocal, Int__v] - takeTransfer];
              }
            }
          
          // -- transfer code for top state of stack
            // accumulate constraints which need to be satisfied for transfer to occur
            accVar2 := true;
            // actual code for the transfer from current state on stack
            if (((b_4 && b_5) && accVar2) && neededTransfer > 0.000000000) {
              maskTransfer := Mask[rcvLocal, Int__v];
              if (neededTransfer <= maskTransfer) {
                takeTransfer := neededTransfer;
              } else {
                takeTransfer := maskTransfer;
              }
              if (takeTransfer > 0.000000000) {
                neededTransfer := neededTransfer - takeTransfer;
                Used_3Mask := Used_3Mask[rcvLocal, Int__v:=Used_3Mask[rcvLocal, Int__v] + takeTransfer];
                b_5 := b_5 && state(Used_3Heap, Used_3Mask);
                b_5 := b_5 && Heap[rcvLocal, Int__v] == Used_3Heap[rcvLocal, Int__v];
                Mask := Mask[rcvLocal, Int__v:=Mask[rcvLocal, Int__v] - takeTransfer];
                Heap := Heap[null, wand_1#sm(res$1, FullPerm, x$1, FullPerm, x$1, rd$1 / 2, x$1, oldHeap[oldHeap[x$1, Foo__v2], Int__v]):=Heap[null, wand_1#sm(res$1, FullPerm, x$1, FullPerm, x$1, rd$1 / 2, x$1, oldHeap[oldHeap[x$1, Foo__v2], Int__v])][Heap[x$1, Foo__v1], Int__v:=true]];
              }
            }
          assert {:msg "  Folding valid__Foo(x$1) might fail. There might be insufficient permission to access x$1.Foo__v1.Int__v (0229.vpr@40.7--40.39) [202445]"}
            b_4 && b_5 ==> neededTransfer == 0.000000000 && Used_3Mask[rcvLocal, Int__v] == initNeededTransfer;
          
          // -- Creating state which is the sum of the two previously built up states
            b_7 := b_4 && b_5;
            b_7 := b_7 && state(Result_1Heap, Result_1Mask);
            b_7 := b_7 && sumMask(Result_1Mask, Ops_3Mask, Used_3Mask);
            b_7 := (b_7 && IdenticalOnKnownLocations(Ops_3Heap, Result_1Heap, Ops_3Mask)) && IdenticalOnKnownLocations(Used_3Heap, Result_1Heap, Used_3Mask);
            b_7 := b_7 && state(Result_1Heap, Result_1Mask);
          b_4 := b_4 && b_7;
        b_4 := b_4 && b_5;
        b_4 := b_4 && Used_3Heap == Ops_3Heap;
        
        // -- Transfer of acc(x$1.Foo__v2, write)
          rcvLocal := x$1;
          neededTransfer := FullPerm;
          initNeededTransfer := Used_3Mask[rcvLocal, Foo__v2] + neededTransfer;
          assert {:msg "  Folding valid__Foo(x$1) might fail. Fraction acc(x$1.Foo__v2, write) might be negative. (0229.vpr@40.7--40.39) [202446]"}
            neededTransfer >= 0.000000000;
          
          // -- transfer code for top state of stack
            // accumulate constraints which need to be satisfied for transfer to occur
            accVar2 := true;
            // actual code for the transfer from current state on stack
            if (((b_4 && b_5) && accVar2) && neededTransfer > 0.000000000) {
              maskTransfer := Ops_3Mask[rcvLocal, Foo__v2];
              if (neededTransfer <= maskTransfer) {
                takeTransfer := neededTransfer;
              } else {
                takeTransfer := maskTransfer;
              }
              if (takeTransfer > 0.000000000) {
                neededTransfer := neededTransfer - takeTransfer;
                Used_3Mask := Used_3Mask[rcvLocal, Foo__v2:=Used_3Mask[rcvLocal, Foo__v2] + takeTransfer];
                b_5 := b_5 && state(Used_3Heap, Used_3Mask);
                b_5 := b_5 && Ops_3Heap[rcvLocal, Foo__v2] == Used_3Heap[rcvLocal, Foo__v2];
                Ops_3Mask := Ops_3Mask[rcvLocal, Foo__v2:=Ops_3Mask[rcvLocal, Foo__v2] - takeTransfer];
              }
            }
          
          // -- transfer code for top state of stack
            // accumulate constraints which need to be satisfied for transfer to occur
            accVar2 := true;
            // actual code for the transfer from current state on stack
            if (((b_4 && b_5) && accVar2) && neededTransfer > 0.000000000) {
              maskTransfer := Mask[rcvLocal, Foo__v2];
              if (neededTransfer <= maskTransfer) {
                takeTransfer := neededTransfer;
              } else {
                takeTransfer := maskTransfer;
              }
              if (takeTransfer > 0.000000000) {
                neededTransfer := neededTransfer - takeTransfer;
                Used_3Mask := Used_3Mask[rcvLocal, Foo__v2:=Used_3Mask[rcvLocal, Foo__v2] + takeTransfer];
                b_5 := b_5 && state(Used_3Heap, Used_3Mask);
                b_5 := b_5 && Heap[rcvLocal, Foo__v2] == Used_3Heap[rcvLocal, Foo__v2];
                Mask := Mask[rcvLocal, Foo__v2:=Mask[rcvLocal, Foo__v2] - takeTransfer];
                Heap := Heap[null, wand_1#sm(res$1, FullPerm, x$1, FullPerm, x$1, rd$1 / 2, x$1, oldHeap[oldHeap[x$1, Foo__v2], Int__v]):=Heap[null, wand_1#sm(res$1, FullPerm, x$1, FullPerm, x$1, rd$1 / 2, x$1, oldHeap[oldHeap[x$1, Foo__v2], Int__v])][x$1, Foo__v2:=true]];
              }
            }
          assert {:msg "  Folding valid__Foo(x$1) might fail. There might be insufficient permission to access x$1.Foo__v2 (0229.vpr@40.7--40.39) [202447]"}
            b_4 && b_5 ==> neededTransfer == 0.000000000 && Used_3Mask[rcvLocal, Foo__v2] == initNeededTransfer;
          
          // -- Creating state which is the sum of the two previously built up states
            b_8 := b_4 && b_5;
            b_8 := b_8 && state(Result_2Heap, Result_2Mask);
            b_8 := b_8 && sumMask(Result_2Mask, Ops_3Mask, Used_3Mask);
            b_8 := (b_8 && IdenticalOnKnownLocations(Ops_3Heap, Result_2Heap, Ops_3Mask)) && IdenticalOnKnownLocations(Used_3Heap, Result_2Heap, Used_3Mask);
            b_8 := b_8 && state(Result_2Heap, Result_2Mask);
          b_4 := b_4 && b_8;
        b_4 := b_4 && b_5;
        b_4 := b_4 && Used_3Heap == Ops_3Heap;
        
        // -- Transfer of acc(x$1.Foo__v2.Int__v, write)
          
          // -- checking if access predicate defined in used state
            if (b_4 && b_5) {
              if (b_4) {
                
                // -- Check definedness of acc(x$1.Foo__v2.Int__v, write)
                  assert {:msg "  Folding valid__Foo(x$1) might fail. There might be insufficient permission to access x$1.Foo__v2 (0229.vpr@40.7--40.39) [202448]"}
                    HasDirectPerm(Result_2Mask, x$1, Foo__v2);
              }
            }
          rcvLocal := Result_2Heap[x$1, Foo__v2];
          neededTransfer := FullPerm;
          initNeededTransfer := Used_3Mask[rcvLocal, Int__v] + neededTransfer;
          assert {:msg "  Folding valid__Foo(x$1) might fail. Fraction acc(x$1.Foo__v2.Int__v, write) might be negative. (0229.vpr@40.7--40.39) [202449]"}
            neededTransfer >= 0.000000000;
          
          // -- transfer code for top state of stack
            // accumulate constraints which need to be satisfied for transfer to occur
            accVar2 := true;
            // actual code for the transfer from current state on stack
            if (((b_4 && b_5) && accVar2) && neededTransfer > 0.000000000) {
              maskTransfer := Ops_3Mask[rcvLocal, Int__v];
              if (neededTransfer <= maskTransfer) {
                takeTransfer := neededTransfer;
              } else {
                takeTransfer := maskTransfer;
              }
              if (takeTransfer > 0.000000000) {
                neededTransfer := neededTransfer - takeTransfer;
                Used_3Mask := Used_3Mask[rcvLocal, Int__v:=Used_3Mask[rcvLocal, Int__v] + takeTransfer];
                b_5 := b_5 && state(Used_3Heap, Used_3Mask);
                b_5 := b_5 && Ops_3Heap[rcvLocal, Int__v] == Used_3Heap[rcvLocal, Int__v];
                Ops_3Mask := Ops_3Mask[rcvLocal, Int__v:=Ops_3Mask[rcvLocal, Int__v] - takeTransfer];
              }
            }
          
          // -- transfer code for top state of stack
            // accumulate constraints which need to be satisfied for transfer to occur
            accVar2 := true;
            // actual code for the transfer from current state on stack
            if (((b_4 && b_5) && accVar2) && neededTransfer > 0.000000000) {
              maskTransfer := Mask[rcvLocal, Int__v];
              if (neededTransfer <= maskTransfer) {
                takeTransfer := neededTransfer;
              } else {
                takeTransfer := maskTransfer;
              }
              if (takeTransfer > 0.000000000) {
                neededTransfer := neededTransfer - takeTransfer;
                Used_3Mask := Used_3Mask[rcvLocal, Int__v:=Used_3Mask[rcvLocal, Int__v] + takeTransfer];
                b_5 := b_5 && state(Used_3Heap, Used_3Mask);
                b_5 := b_5 && Heap[rcvLocal, Int__v] == Used_3Heap[rcvLocal, Int__v];
                Mask := Mask[rcvLocal, Int__v:=Mask[rcvLocal, Int__v] - takeTransfer];
                Heap := Heap[null, wand_1#sm(res$1, FullPerm, x$1, FullPerm, x$1, rd$1 / 2, x$1, oldHeap[oldHeap[x$1, Foo__v2], Int__v]):=Heap[null, wand_1#sm(res$1, FullPerm, x$1, FullPerm, x$1, rd$1 / 2, x$1, oldHeap[oldHeap[x$1, Foo__v2], Int__v])][Heap[x$1, Foo__v2], Int__v:=true]];
              }
            }
          assert {:msg "  Folding valid__Foo(x$1) might fail. There might be insufficient permission to access x$1.Foo__v2.Int__v (0229.vpr@40.7--40.39) [202450]"}
            b_4 && b_5 ==> neededTransfer == 0.000000000 && Used_3Mask[rcvLocal, Int__v] == initNeededTransfer;
          
          // -- Creating state which is the sum of the two previously built up states
            b_9 := b_4 && b_5;
            b_9 := b_9 && state(Result_3Heap, Result_3Mask);
            b_9 := b_9 && sumMask(Result_3Mask, Ops_3Mask, Used_3Mask);
            b_9 := (b_9 && IdenticalOnKnownLocations(Ops_3Heap, Result_3Heap, Ops_3Mask)) && IdenticalOnKnownLocations(Used_3Heap, Result_3Heap, Used_3Mask);
            b_9 := b_9 && state(Result_3Heap, Result_3Mask);
          b_4 := b_4 && b_9;
        b_4 := b_4 && b_5;
        b_4 := b_4 && Used_3Heap == Ops_3Heap;
        perm := FullPerm;
        b_4 := b_4;
        Ops_3Mask := Ops_3Mask[null, valid__Foo(x$1):=Ops_3Mask[null, valid__Foo(x$1)] + perm];
        b_4 := b_4 && state(Ops_3Heap, Ops_3Mask);
        b_4 := b_4 && state(Ops_3Heap, Ops_3Mask);
        assume valid__Foo#trigger(Ops_3Heap, valid__Foo(x$1));
        assume Ops_3Heap[null, valid__Foo(x$1)] == CombineFrames(FrameFragment(Ops_3Heap[x$1, Foo__v1]), CombineFrames(FrameFragment(Ops_3Heap[Ops_3Heap[x$1, Foo__v1], Int__v]), CombineFrames(FrameFragment(Ops_3Heap[x$1, Foo__v2]), FrameFragment(Ops_3Heap[Ops_3Heap[x$1, Foo__v2], Int__v]))));
        if (!HasDirectPerm(Ops_3Mask, null, valid__Foo(x$1))) {
          Ops_3Heap := Ops_3Heap[null, valid__Foo#sm(x$1):=ZeroPMask];
          havoc freshVersion;
          Ops_3Heap := Ops_3Heap[null, valid__Foo(x$1):=freshVersion];
        }
        Ops_3Heap := Ops_3Heap[null, valid__Foo#sm(x$1):=Ops_3Heap[null, valid__Foo#sm(x$1)][x$1, Foo__v1:=true]];
        Ops_3Heap := Ops_3Heap[null, valid__Foo#sm(x$1):=Ops_3Heap[null, valid__Foo#sm(x$1)][Ops_3Heap[x$1, Foo__v1], Int__v:=true]];
        Ops_3Heap := Ops_3Heap[null, valid__Foo#sm(x$1):=Ops_3Heap[null, valid__Foo#sm(x$1)][x$1, Foo__v2:=true]];
        Ops_3Heap := Ops_3Heap[null, valid__Foo#sm(x$1):=Ops_3Heap[null, valid__Foo#sm(x$1)][Ops_3Heap[x$1, Foo__v2], Int__v:=true]];
        assume state(Ops_3Heap, Ops_3Mask);
        b_4 := b_4 && state(Ops_3Heap, Ops_3Mask);
    }
    // Translating exec of non-ghost operationacc(valid__Foo(x$1), write) && (unfolding acc(valid__Foo(x$1), rd$1 / 2) in x$1.Foo__v2.Int__v) == old((unfolding acc(valid__Foo(x$1), rd$1 / 2) in x$1.Foo__v2.Int__v))
    havoc Used_4Heap;
    Used_4Mask := ZeroMask;
    b_10 := b_10 && state(Used_4Heap, Used_4Mask);
    
    // -- Transfer of acc(valid__Foo(x$1), write)
      arg_1 := x$1;
      neededTransfer := FullPerm;
      initNeededTransfer := Used_4Mask[null, valid__Foo(arg_1)] + neededTransfer;
      assert {:msg "  Packaging wand might fail. Fraction acc(valid__Foo(x$1), write) might be negative. (0229.vpr@39.3--41.4) [202452]"}
        neededTransfer >= 0.000000000;
      
      // -- transfer code for top state of stack
        // accumulate constraints which need to be satisfied for transfer to occur
        accVar2 := true;
        // actual code for the transfer from current state on stack
        if ((((b_4 && b_4) && b_10) && accVar2) && neededTransfer > 0.000000000) {
          maskTransfer := Ops_3Mask[null, valid__Foo(arg_1)];
          if (neededTransfer <= maskTransfer) {
            takeTransfer := neededTransfer;
          } else {
            takeTransfer := maskTransfer;
          }
          if (takeTransfer > 0.000000000) {
            neededTransfer := neededTransfer - takeTransfer;
            Used_4Mask := Used_4Mask[null, valid__Foo(arg_1):=Used_4Mask[null, valid__Foo(arg_1)] + takeTransfer];
            b_10 := b_10 && state(Used_4Heap, Used_4Mask);
            TempMask := ZeroMask[null, valid__Foo(arg_1):=FullPerm];
            b_10 := b_10 && IdenticalOnKnownLocations(Ops_3Heap, Used_4Heap, TempMask);
            Ops_3Mask := Ops_3Mask[null, valid__Foo(arg_1):=Ops_3Mask[null, valid__Foo(arg_1)] - takeTransfer];
          }
        }
      
      // -- transfer code for top state of stack
        // accumulate constraints which need to be satisfied for transfer to occur
        accVar2 := true;
        // actual code for the transfer from current state on stack
        if ((((b_4 && b_4) && b_10) && accVar2) && neededTransfer > 0.000000000) {
          maskTransfer := Mask[null, valid__Foo(arg_1)];
          if (neededTransfer <= maskTransfer) {
            takeTransfer := neededTransfer;
          } else {
            takeTransfer := maskTransfer;
          }
          if (takeTransfer > 0.000000000) {
            neededTransfer := neededTransfer - takeTransfer;
            Used_4Mask := Used_4Mask[null, valid__Foo(arg_1):=Used_4Mask[null, valid__Foo(arg_1)] + takeTransfer];
            b_10 := b_10 && state(Used_4Heap, Used_4Mask);
            TempMask := ZeroMask[null, valid__Foo(arg_1):=FullPerm];
            b_10 := b_10 && IdenticalOnKnownLocations(Heap, Used_4Heap, TempMask);
            Mask := Mask[null, valid__Foo(arg_1):=Mask[null, valid__Foo(arg_1)] - takeTransfer];
            havoc newPMask;
            assume (forall <A, B> o_15: Ref, f_20: (Field A B) ::
              { newPMask[o_15, f_20] }
              Heap[null, wand_1#sm(res$1, FullPerm, x$1, FullPerm, x$1, rd$1 / 2, x$1, oldHeap[oldHeap[x$1, Foo__v2], Int__v])][o_15, f_20] || Heap[null, valid__Foo#sm(x$1)][o_15, f_20] ==> newPMask[o_15, f_20]
            );
            Heap := Heap[null, wand_1#sm(res$1, FullPerm, x$1, FullPerm, x$1, rd$1 / 2, x$1, oldHeap[oldHeap[x$1, Foo__v2], Int__v]):=newPMask];
          }
        }
      assert {:msg "  Packaging wand might fail. There might be insufficient permission to access valid__Foo(x$1) (0229.vpr@39.3--41.4) [202453]"}
        (b_4 && b_4) && b_10 ==> neededTransfer == 0.000000000 && Used_4Mask[null, valid__Foo(arg_1)] == initNeededTransfer;
      
      // -- Creating state which is the sum of the two previously built up states
        b_11 := b_4 && b_10;
        b_11 := b_11 && state(Result_4Heap, Result_4Mask);
        b_11 := b_11 && sumMask(Result_4Mask, Ops_3Mask, Used_4Mask);
        b_11 := (b_11 && IdenticalOnKnownLocations(Ops_3Heap, Result_4Heap, Ops_3Mask)) && IdenticalOnKnownLocations(Used_4Heap, Result_4Heap, Used_4Mask);
        b_11 := b_11 && state(Result_4Heap, Result_4Mask);
      b_4 := b_4 && b_11;
    if ((b_4 && b_4) && b_10) {
      if (b_4) {
        
        // -- Check definedness of (unfolding acc(valid__Foo(x$1), rd$1 / 2) in x$1.Foo__v2.Int__v) == old((unfolding acc(valid__Foo(x$1), rd$1 / 2) in x$1.Foo__v2.Int__v))
          UnfoldingHeap := Result_4Heap;
          UnfoldingMask := Result_4Mask;
          assert {:msg "  Packaging wand might fail. Fraction rd$1 / 2 might not be positive. (0229.vpr@39.3--41.4) [202454]"}
            rd$1 > NoPerm;
          assume valid__Foo#trigger(UnfoldingHeap, valid__Foo(x$1));
          assume UnfoldingHeap[null, valid__Foo(x$1)] == CombineFrames(FrameFragment(UnfoldingHeap[x$1, Foo__v1]), CombineFrames(FrameFragment(UnfoldingHeap[UnfoldingHeap[x$1, Foo__v1], Int__v]), CombineFrames(FrameFragment(UnfoldingHeap[x$1, Foo__v2]), FrameFragment(UnfoldingHeap[UnfoldingHeap[x$1, Foo__v2], Int__v]))));
          ExhaleWellDef0Heap := UnfoldingHeap;
          ExhaleWellDef0Mask := UnfoldingMask;
          perm := rd$1 / 2;
          assert {:msg "  Packaging wand might fail. Fraction rd$1 / 2 might be negative. (0229.vpr@39.3--41.4) [202455]"}
            perm >= NoPerm;
          if (perm != NoPerm) {
            assert {:msg "  Packaging wand might fail. There might be insufficient permission to access valid__Foo(x$1) (0229.vpr@39.3--41.4) [202456]"}
              perm <= UnfoldingMask[null, valid__Foo(x$1)];
          }
          UnfoldingMask := UnfoldingMask[null, valid__Foo(x$1):=UnfoldingMask[null, valid__Foo(x$1)] - perm];
          perm := rd$1 / 2;
          assert {:msg "  Packaging wand might fail. Fraction rd$1 / 2 might be negative. (0229.vpr@39.3--41.4) [202457]"}
            perm >= NoPerm;
          assume perm > NoPerm ==> x$1 != null;
          UnfoldingMask := UnfoldingMask[x$1, Foo__v1:=UnfoldingMask[x$1, Foo__v1] + perm];
          assume state(UnfoldingHeap, UnfoldingMask);
          perm := rd$1 / 2;
          assert {:msg "  Packaging wand might fail. Fraction rd$1 / 2 might be negative. (0229.vpr@39.3--41.4) [202458]"}
            perm >= NoPerm;
          assume perm > NoPerm ==> UnfoldingHeap[x$1, Foo__v1] != null;
          UnfoldingMask := UnfoldingMask[UnfoldingHeap[x$1, Foo__v1], Int__v:=UnfoldingMask[UnfoldingHeap[x$1, Foo__v1], Int__v] + perm];
          assume state(UnfoldingHeap, UnfoldingMask);
          perm := rd$1 / 2;
          assert {:msg "  Packaging wand might fail. Fraction rd$1 / 2 might be negative. (0229.vpr@39.3--41.4) [202459]"}
            perm >= NoPerm;
          assume perm > NoPerm ==> x$1 != null;
          UnfoldingMask := UnfoldingMask[x$1, Foo__v2:=UnfoldingMask[x$1, Foo__v2] + perm];
          assume state(UnfoldingHeap, UnfoldingMask);
          perm := rd$1 / 2;
          assert {:msg "  Packaging wand might fail. Fraction rd$1 / 2 might be negative. (0229.vpr@39.3--41.4) [202460]"}
            perm >= NoPerm;
          assume perm > NoPerm ==> UnfoldingHeap[x$1, Foo__v2] != null;
          UnfoldingMask := UnfoldingMask[UnfoldingHeap[x$1, Foo__v2], Int__v:=UnfoldingMask[UnfoldingHeap[x$1, Foo__v2], Int__v] + perm];
          assume state(UnfoldingHeap, UnfoldingMask);
          assume state(UnfoldingHeap, UnfoldingMask);
          assert {:msg "  Packaging wand might fail. There might be insufficient permission to access x$1.Foo__v2 (0229.vpr@39.3--41.4) [202461]"}
            HasDirectPerm(UnfoldingMask, x$1, Foo__v2);
          assert {:msg "  Packaging wand might fail. There might be insufficient permission to access x$1.Foo__v2.Int__v (0229.vpr@39.3--41.4) [202462]"}
            HasDirectPerm(UnfoldingMask, UnfoldingHeap[x$1, Foo__v2], Int__v);
          
          // -- Free assumptions (exp module)
            Result_4Heap := Result_4Heap[null, valid__Foo#sm(x$1):=Result_4Heap[null, valid__Foo#sm(x$1)][x$1, Foo__v1:=true]];
            Result_4Heap := Result_4Heap[null, valid__Foo#sm(x$1):=Result_4Heap[null, valid__Foo#sm(x$1)][Result_4Heap[x$1, Foo__v1], Int__v:=true]];
            Result_4Heap := Result_4Heap[null, valid__Foo#sm(x$1):=Result_4Heap[null, valid__Foo#sm(x$1)][x$1, Foo__v2:=true]];
            Result_4Heap := Result_4Heap[null, valid__Foo#sm(x$1):=Result_4Heap[null, valid__Foo#sm(x$1)][Result_4Heap[x$1, Foo__v2], Int__v:=true]];
            assume state(Result_4Heap, Result_4Mask);
          UnfoldingHeap := oldHeap;
          UnfoldingMask := oldMask;
          assert {:msg "  Packaging wand might fail. Fraction rd$1 / 2 might not be positive. (0229.vpr@39.3--41.4) [202463]"}
            rd$1 > NoPerm;
          assume valid__Foo#trigger(UnfoldingHeap, valid__Foo(x$1));
          assume UnfoldingHeap[null, valid__Foo(x$1)] == CombineFrames(FrameFragment(UnfoldingHeap[x$1, Foo__v1]), CombineFrames(FrameFragment(UnfoldingHeap[UnfoldingHeap[x$1, Foo__v1], Int__v]), CombineFrames(FrameFragment(UnfoldingHeap[x$1, Foo__v2]), FrameFragment(UnfoldingHeap[UnfoldingHeap[x$1, Foo__v2], Int__v]))));
          ExhaleWellDef0Heap := UnfoldingHeap;
          ExhaleWellDef0Mask := UnfoldingMask;
          perm := rd$1 / 2;
          assert {:msg "  Packaging wand might fail. Fraction rd$1 / 2 might be negative. (0229.vpr@39.3--41.4) [202464]"}
            perm >= NoPerm;
          if (perm != NoPerm) {
            assert {:msg "  Packaging wand might fail. There might be insufficient permission to access valid__Foo(x$1) (0229.vpr@39.3--41.4) [202465]"}
              perm <= UnfoldingMask[null, valid__Foo(x$1)];
          }
          UnfoldingMask := UnfoldingMask[null, valid__Foo(x$1):=UnfoldingMask[null, valid__Foo(x$1)] - perm];
          perm := rd$1 / 2;
          assert {:msg "  Packaging wand might fail. Fraction rd$1 / 2 might be negative. (0229.vpr@39.3--41.4) [202466]"}
            perm >= NoPerm;
          assume perm > NoPerm ==> x$1 != null;
          UnfoldingMask := UnfoldingMask[x$1, Foo__v1:=UnfoldingMask[x$1, Foo__v1] + perm];
          assume state(UnfoldingHeap, UnfoldingMask);
          perm := rd$1 / 2;
          assert {:msg "  Packaging wand might fail. Fraction rd$1 / 2 might be negative. (0229.vpr@39.3--41.4) [202467]"}
            perm >= NoPerm;
          assume perm > NoPerm ==> UnfoldingHeap[x$1, Foo__v1] != null;
          UnfoldingMask := UnfoldingMask[UnfoldingHeap[x$1, Foo__v1], Int__v:=UnfoldingMask[UnfoldingHeap[x$1, Foo__v1], Int__v] + perm];
          assume state(UnfoldingHeap, UnfoldingMask);
          perm := rd$1 / 2;
          assert {:msg "  Packaging wand might fail. Fraction rd$1 / 2 might be negative. (0229.vpr@39.3--41.4) [202468]"}
            perm >= NoPerm;
          assume perm > NoPerm ==> x$1 != null;
          UnfoldingMask := UnfoldingMask[x$1, Foo__v2:=UnfoldingMask[x$1, Foo__v2] + perm];
          assume state(UnfoldingHeap, UnfoldingMask);
          perm := rd$1 / 2;
          assert {:msg "  Packaging wand might fail. Fraction rd$1 / 2 might be negative. (0229.vpr@39.3--41.4) [202469]"}
            perm >= NoPerm;
          assume perm > NoPerm ==> UnfoldingHeap[x$1, Foo__v2] != null;
          UnfoldingMask := UnfoldingMask[UnfoldingHeap[x$1, Foo__v2], Int__v:=UnfoldingMask[UnfoldingHeap[x$1, Foo__v2], Int__v] + perm];
          assume state(UnfoldingHeap, UnfoldingMask);
          assume state(UnfoldingHeap, UnfoldingMask);
          assert {:msg "  Packaging wand might fail. There might be insufficient permission to access x$1.Foo__v2 (0229.vpr@39.3--41.4) [202470]"}
            HasDirectPerm(UnfoldingMask, x$1, Foo__v2);
          assert {:msg "  Packaging wand might fail. There might be insufficient permission to access x$1.Foo__v2.Int__v (0229.vpr@39.3--41.4) [202471]"}
            HasDirectPerm(UnfoldingMask, UnfoldingHeap[x$1, Foo__v2], Int__v);
          
          // -- Free assumptions (exp module)
            Result_4Heap := Result_4Heap[null, valid__Foo#sm(x$1):=Result_4Heap[null, valid__Foo#sm(x$1)][x$1, Foo__v1:=true]];
            Result_4Heap := Result_4Heap[null, valid__Foo#sm(x$1):=Result_4Heap[null, valid__Foo#sm(x$1)][Result_4Heap[x$1, Foo__v1], Int__v:=true]];
            Result_4Heap := Result_4Heap[null, valid__Foo#sm(x$1):=Result_4Heap[null, valid__Foo#sm(x$1)][x$1, Foo__v2:=true]];
            Result_4Heap := Result_4Heap[null, valid__Foo#sm(x$1):=Result_4Heap[null, valid__Foo#sm(x$1)][Result_4Heap[x$1, Foo__v2], Int__v:=true]];
            assume state(Result_4Heap, Result_4Mask);
      }
    }
    assert {:msg "  Packaging wand might fail. Assertion (unfolding acc(valid__Foo(x$1), rd$1 / 2) in x$1.Foo__v2.Int__v) == old((unfolding acc(valid__Foo(x$1), rd$1 / 2) in x$1.Foo__v2.Int__v)) might not hold. (0229.vpr@39.3--41.4) [202472]"}
      (b_4 && b_4) && b_10 ==> Result_4Heap[Result_4Heap[x$1, Foo__v2], Int__v] == oldHeap[oldHeap[x$1, Foo__v2], Int__v];
    Mask := Mask[null, wand_1(res$1, FullPerm, x$1, FullPerm, x$1, rd$1 / 2, x$1, oldHeap[oldHeap[x$1, Foo__v2], Int__v]):=Mask[null, wand_1(res$1, FullPerm, x$1, FullPerm, x$1, rd$1 / 2, x$1, oldHeap[oldHeap[x$1, Foo__v2], Int__v])] + FullPerm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of test4 might not hold. There might be insufficient permission to access res$1.Int__v (0229.vpr@33.11--33.35) [202473]"}
        perm <= Mask[res$1, Int__v];
    }
    Mask := Mask[res$1, Int__v:=Mask[res$1, Int__v] - perm];
    // permLe
    assert {:msg "  Postcondition of test4 might not hold. Magic wand instance not found. (0229.vpr@34.11--34.43) [202474]"}
      FullPerm <= Mask[null, wand_1(res$1, FullPerm, x$1, FullPerm, x$1, rd$1 / 2, x$1, oldHeap[oldHeap[x$1, Foo__v2], Int__v])];
    Mask := Mask[null, wand_1(res$1, FullPerm, x$1, FullPerm, x$1, rd$1 / 2, x$1, oldHeap[oldHeap[x$1, Foo__v2], Int__v]):=Mask[null, wand_1(res$1, FullPerm, x$1, FullPerm, x$1, rd$1 / 2, x$1, oldHeap[oldHeap[x$1, Foo__v2], Int__v])] - FullPerm];
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}