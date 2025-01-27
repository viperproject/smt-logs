// 
// Translation of Viper program.
// 
// Date:         2025-01-26 23:15:19
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/issues/carbon/0060.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/issues/carbon/0060-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
axiom (forall o_14: Ref, f_22: (Field NormalField Ref), Heap: HeapType ::
  { Heap[o_14, f_22] }
  Heap[o_14, $allocated] ==> Heap[Heap[o_14, f_22], $allocated]
);
function  succHeap(Heap0: HeapType, Heap1: HeapType): bool;
function  succHeapTrans(Heap0: HeapType, Heap1: HeapType): bool;
function  IdenticalOnKnownLocations(Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType): bool;
function  IsPredicateField<A, B>(f_1: (Field A B)): bool;
function  IsWandField<A, B>(f_1: (Field A B)): bool;
function  getPredWandId<A, B>(f_1: (Field A B)): int;
// Frame all locations with direct permissions
axiom (forall <A, B> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_15: Ref, f_23: (Field A B) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_15, f_23] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, o_15, f_23) ==> Heap[o_15, f_23] == ExhaleHeap[o_15, f_23]
);
// Frame all predicate mask locations of predicates with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_5: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_5), ExhaleHeap[null, PredicateMaskField(pm_f_5)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_5) && IsPredicateField(pm_f_5) ==> Heap[null, PredicateMaskField(pm_f_5)] == ExhaleHeap[null, PredicateMaskField(pm_f_5)]
);
// Frame all locations with known folded permissions
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_5: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_5) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_5) && IsPredicateField(pm_f_5) ==> (forall <A, B> o2_5: Ref, f_23: (Field A B) ::
    { ExhaleHeap[o2_5, f_23] }
    Heap[null, PredicateMaskField(pm_f_5)][o2_5, f_23] ==> Heap[o2_5, f_23] == ExhaleHeap[o2_5, f_23]
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
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_5) && IsWandField(pm_f_5) ==> (forall <A, B> o2_5: Ref, f_23: (Field A B) ::
    { ExhaleHeap[o2_5, f_23] }
    Heap[null, WandMaskField(pm_f_5)][o2_5, f_23] ==> Heap[o2_5, f_23] == ExhaleHeap[o2_5, f_23]
  )
);
// All previously-allocated references are still allocated
axiom (forall Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_15: Ref ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_15, $allocated] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> Heap[o_15, $allocated] ==> ExhaleHeap[o_15, $allocated]
);
// Updated Heaps are Successor Heaps
axiom (forall <A, B> Heap: HeapType, o_14: Ref, f_24: (Field A B), v: B ::
  { Heap[o_14, f_24:=v] }
  succHeap(Heap, Heap[o_14, f_24:=v])
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
// Translation of all fields
// ==================================================

const unique z_24: Field NormalField int;
axiom !IsPredicateField(z_24);
axiom !IsWandField(z_24);

// ==================================================
// Translation of predicate Z
// ==================================================

type PredicateType_Z;
function  Z_2(this$_1: Ref): Field PredicateType_Z FrameType;
function  Z#sm(this$_1: Ref): Field PredicateType_Z PMaskType;
axiom (forall this$_1: Ref ::
  { PredicateMaskField(Z_2(this$_1)) }
  PredicateMaskField(Z_2(this$_1)) == Z#sm(this$_1)
);
axiom (forall this$_1: Ref ::
  { Z_2(this$_1) }
  IsPredicateField(Z_2(this$_1))
);
axiom (forall this$_1: Ref ::
  { Z_2(this$_1) }
  getPredWandId(Z_2(this$_1)) == 0
);
function  Z#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  Z#everUsed<A>(pred: (Field A FrameType)): bool;
axiom (forall this$_1: Ref, this$_12: Ref ::
  { Z_2(this$_1), Z_2(this$_12) }
  Z_2(this$_1) == Z_2(this$_12) ==> this$_1 == this$_12
);
axiom (forall this$_1: Ref, this$_12: Ref ::
  { Z#sm(this$_1), Z#sm(this$_12) }
  Z#sm(this$_1) == Z#sm(this$_12) ==> this$_1 == this$_12
);

axiom (forall Heap: HeapType, this$_1: Ref ::
  { Z#trigger(Heap, Z_2(this$_1)) }
  Z#everUsed(Z_2(this$_1))
);

procedure Z#definedness(this$_1: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  
  // -- Check definedness of predicate body of Z
    
    // -- Initializing the state
      Mask := ZeroMask;
      assume state(Heap, Mask);
      assume AssumePermUpperBound;
      assume Heap[this$_1, $allocated];
    perm := FullPerm;
    assume this$_1 != null;
    Mask := Mask[this$_1, z_24:=Mask[this$_1, z_24] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of predicate ZZ
// ==================================================

type PredicateType_ZZ;
function  ZZ(this$_2: Ref): Field PredicateType_ZZ FrameType;
function  ZZ#sm(this$_2: Ref): Field PredicateType_ZZ PMaskType;
axiom (forall this$_2: Ref ::
  { PredicateMaskField(ZZ(this$_2)) }
  PredicateMaskField(ZZ(this$_2)) == ZZ#sm(this$_2)
);
axiom (forall this$_2: Ref ::
  { ZZ(this$_2) }
  IsPredicateField(ZZ(this$_2))
);
axiom (forall this$_2: Ref ::
  { ZZ(this$_2) }
  getPredWandId(ZZ(this$_2)) == 1
);
function  ZZ#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  ZZ#everUsed<A>(pred: (Field A FrameType)): bool;
axiom (forall this$_2: Ref, this$_22: Ref ::
  { ZZ(this$_2), ZZ(this$_22) }
  ZZ(this$_2) == ZZ(this$_22) ==> this$_2 == this$_22
);
axiom (forall this$_2: Ref, this$_22: Ref ::
  { ZZ#sm(this$_2), ZZ#sm(this$_22) }
  ZZ#sm(this$_2) == ZZ#sm(this$_22) ==> this$_2 == this$_22
);

axiom (forall Heap: HeapType, this$_2: Ref ::
  { ZZ#trigger(Heap, ZZ(this$_2)) }
  ZZ#everUsed(ZZ(this$_2))
);

procedure ZZ#definedness(this$_2: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  
  // -- Check definedness of predicate body of ZZ
    
    // -- Initializing the state
      Mask := ZeroMask;
      assume state(Heap, Mask);
      assume AssumePermUpperBound;
      assume Heap[this$_2, $allocated];
    perm := FullPerm;
    Mask := Mask[null, Z_2(this$_2):=Mask[null, Z_2(this$_2)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method TestuseZZ$
// ==================================================

procedure TestuseZZ$(this: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var AssertHeap: HeapType;
  var AssertMask: MaskType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var newVersion: FrameType;
  var freshVersion: FrameType;
  var newPMask: PMaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[this, $allocated];
  
  // -- Checked inhaling of precondition
    assume this != null;
    assume state(Heap, Mask);
    perm := FullPerm;
    Mask := Mask[null, ZZ(this):=Mask[null, ZZ(this)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: assert acc(ZZ(this), 100 / 100) -- 0060.vpr@20.3--20.34
    AssertHeap := Heap;
    AssertMask := Mask;
    ExhaleWellDef0Mask := AssertMask;
    ExhaleWellDef0Heap := AssertHeap;
    perm := 100 / 100;
    assert {:msg "  Assert might fail. Fraction 100 / 100 might be negative. (0060.vpr@20.10--20.34) [84086]"}
      perm >= NoPerm;
    if (perm != NoPerm) {
      assert {:msg "  Assert might fail. There might be insufficient permission to access ZZ(this) (0060.vpr@20.10--20.34) [84087]"}
        perm <= AssertMask[null, ZZ(this)];
    }
    AssertMask := AssertMask[null, ZZ(this):=AssertMask[null, ZZ(this)] - perm];
    assume state(Heap, Mask);
  
  // -- Translating statement: unfold acc(ZZ(this), 40 / 100) -- 0060.vpr@22.3--22.33
    assume ZZ#trigger(Heap, ZZ(this));
    assume Heap[null, ZZ(this)] == Heap[null, Z_2(this)];
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := 40 / 100;
    assert {:msg "  Unfolding ZZ(this) might fail. Fraction 40 / 100 might be negative. (0060.vpr@22.3--22.33) [84089]"}
      perm >= NoPerm;
    if (perm != NoPerm) {
      assert {:msg "  Unfolding ZZ(this) might fail. There might be insufficient permission to access ZZ(this) (0060.vpr@22.3--22.33) [84090]"}
        perm <= Mask[null, ZZ(this)];
    }
    Mask := Mask[null, ZZ(this):=Mask[null, ZZ(this)] - perm];
    
    // -- Update version of predicate
      if (!HasDirectPerm(Mask, null, ZZ(this))) {
        havoc newVersion;
        Heap := Heap[null, ZZ(this):=newVersion];
      }
    perm := FullPerm * (40 / 100);
    assert {:msg "  Unfolding ZZ(this) might fail. Fraction write * (40 / 100) might be negative. (0060.vpr@22.3--22.33) [84091]"}
      perm >= NoPerm;
    Mask := Mask[null, Z_2(this):=Mask[null, Z_2(this)] + perm];
    
    // -- Extra unfolding of predicate
      assume InsidePredicate(ZZ(this), Heap[null, ZZ(this)], Z_2(this), Heap[null, Z_2(this)]);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert acc(ZZ(this), 60 / 100) -- 0060.vpr@24.3--24.33
    AssertHeap := Heap;
    AssertMask := Mask;
    ExhaleWellDef0Mask := AssertMask;
    ExhaleWellDef0Heap := AssertHeap;
    perm := 60 / 100;
    assert {:msg "  Assert might fail. Fraction 60 / 100 might be negative. (0060.vpr@24.10--24.33) [84092]"}
      perm >= NoPerm;
    if (perm != NoPerm) {
      assert {:msg "  Assert might fail. There might be insufficient permission to access ZZ(this) (0060.vpr@24.10--24.33) [84093]"}
        perm <= AssertMask[null, ZZ(this)];
    }
    AssertMask := AssertMask[null, ZZ(this):=AssertMask[null, ZZ(this)] - perm];
    assume state(Heap, Mask);
  
  // -- Translating statement: assert acc(Z(this), 40 / 100) -- 0060.vpr@25.3--25.32
    AssertHeap := Heap;
    AssertMask := Mask;
    ExhaleWellDef0Mask := AssertMask;
    ExhaleWellDef0Heap := AssertHeap;
    perm := 40 / 100;
    assert {:msg "  Assert might fail. Fraction 40 / 100 might be negative. (0060.vpr@25.10--25.32) [84094]"}
      perm >= NoPerm;
    if (perm != NoPerm) {
      assert {:msg "  Assert might fail. There might be insufficient permission to access Z(this) (0060.vpr@25.10--25.32) [84095]"}
        perm <= AssertMask[null, Z_2(this)];
    }
    AssertMask := AssertMask[null, Z_2(this):=AssertMask[null, Z_2(this)] - perm];
    assume state(Heap, Mask);
  
  // -- Translating statement: unfold acc(Z(this), 20 / 100) -- 0060.vpr@27.3--27.32
    assume Z#trigger(Heap, Z_2(this));
    assume Heap[null, Z_2(this)] == FrameFragment(Heap[this, z_24]);
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := 20 / 100;
    assert {:msg "  Unfolding Z(this) might fail. Fraction 20 / 100 might be negative. (0060.vpr@27.3--27.32) [84097]"}
      perm >= NoPerm;
    if (perm != NoPerm) {
      assert {:msg "  Unfolding Z(this) might fail. There might be insufficient permission to access Z(this) (0060.vpr@27.3--27.32) [84098]"}
        perm <= Mask[null, Z_2(this)];
    }
    Mask := Mask[null, Z_2(this):=Mask[null, Z_2(this)] - perm];
    
    // -- Update version of predicate
      if (!HasDirectPerm(Mask, null, Z_2(this))) {
        havoc newVersion;
        Heap := Heap[null, Z_2(this):=newVersion];
      }
    perm := FullPerm * (20 / 100);
    assert {:msg "  Unfolding Z(this) might fail. Fraction write * (20 / 100) might be negative. (0060.vpr@27.3--27.32) [84099]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> this != null;
    Mask := Mask[this, z_24:=Mask[this, z_24] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert acc(ZZ(this), 60 / 100) -- 0060.vpr@29.3--29.33
    AssertHeap := Heap;
    AssertMask := Mask;
    ExhaleWellDef0Mask := AssertMask;
    ExhaleWellDef0Heap := AssertHeap;
    perm := 60 / 100;
    assert {:msg "  Assert might fail. Fraction 60 / 100 might be negative. (0060.vpr@29.10--29.33) [84100]"}
      perm >= NoPerm;
    if (perm != NoPerm) {
      assert {:msg "  Assert might fail. There might be insufficient permission to access ZZ(this) (0060.vpr@29.10--29.33) [84101]"}
        perm <= AssertMask[null, ZZ(this)];
    }
    AssertMask := AssertMask[null, ZZ(this):=AssertMask[null, ZZ(this)] - perm];
    assume state(Heap, Mask);
  
  // -- Translating statement: assert acc(Z(this), 20 / 100) -- 0060.vpr@30.3--30.32
    AssertHeap := Heap;
    AssertMask := Mask;
    ExhaleWellDef0Mask := AssertMask;
    ExhaleWellDef0Heap := AssertHeap;
    perm := 20 / 100;
    assert {:msg "  Assert might fail. Fraction 20 / 100 might be negative. (0060.vpr@30.10--30.32) [84102]"}
      perm >= NoPerm;
    if (perm != NoPerm) {
      assert {:msg "  Assert might fail. There might be insufficient permission to access Z(this) (0060.vpr@30.10--30.32) [84103]"}
        perm <= AssertMask[null, Z_2(this)];
    }
    AssertMask := AssertMask[null, Z_2(this):=AssertMask[null, Z_2(this)] - perm];
    assume state(Heap, Mask);
  
  // -- Translating statement: assert acc(this.z, 20 / 100) -- 0060.vpr@31.3--31.31
    AssertHeap := Heap;
    AssertMask := Mask;
    ExhaleWellDef0Mask := AssertMask;
    ExhaleWellDef0Heap := AssertHeap;
    perm := 20 / 100;
    assert {:msg "  Assert might fail. Fraction 20 / 100 might be negative. (0060.vpr@31.10--31.31) [84104]"}
      perm >= NoPerm;
    if (perm != NoPerm) {
      assert {:msg "  Assert might fail. There might be insufficient permission to access this.z (0060.vpr@31.10--31.31) [84105]"}
        perm <= AssertMask[this, z_24];
    }
    AssertMask := AssertMask[this, z_24:=AssertMask[this, z_24] - perm];
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(Z(this), 10 / 100) -- 0060.vpr@33.3--33.30
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm * (10 / 100);
    assert {:msg "  Folding Z(this) might fail. Fraction write * (10 / 100) might be negative. (0060.vpr@33.3--33.30) [84107]"}
      perm >= NoPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding Z(this) might fail. There might be insufficient permission to access this.z (0060.vpr@33.3--33.30) [84108]"}
        perm <= Mask[this, z_24];
    }
    Mask := Mask[this, z_24:=Mask[this, z_24] - perm];
    perm := 10 / 100;
    assert {:msg "  Folding Z(this) might fail. Fraction 10 / 100 might be negative. (0060.vpr@33.3--33.30) [84109]"}
      perm >= NoPerm;
    Mask := Mask[null, Z_2(this):=Mask[null, Z_2(this)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume Z#trigger(Heap, Z_2(this));
    assume Heap[null, Z_2(this)] == FrameFragment(Heap[this, z_24]);
    if (!HasDirectPerm(Mask, null, Z_2(this))) {
      Heap := Heap[null, Z#sm(this):=ZeroPMask];
      havoc freshVersion;
      Heap := Heap[null, Z_2(this):=freshVersion];
    }
    Heap := Heap[null, Z#sm(this):=Heap[null, Z#sm(this)][this, z_24:=true]];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert acc(ZZ(this), 60 / 100) -- 0060.vpr@35.3--35.33
    AssertHeap := Heap;
    AssertMask := Mask;
    ExhaleWellDef0Mask := AssertMask;
    ExhaleWellDef0Heap := AssertHeap;
    perm := 60 / 100;
    assert {:msg "  Assert might fail. Fraction 60 / 100 might be negative. (0060.vpr@35.10--35.33) [84110]"}
      perm >= NoPerm;
    if (perm != NoPerm) {
      assert {:msg "  Assert might fail. There might be insufficient permission to access ZZ(this) (0060.vpr@35.10--35.33) [84111]"}
        perm <= AssertMask[null, ZZ(this)];
    }
    AssertMask := AssertMask[null, ZZ(this):=AssertMask[null, ZZ(this)] - perm];
    assume state(Heap, Mask);
  
  // -- Translating statement: assert acc(Z(this), 30 / 100) -- 0060.vpr@36.3--36.32
    AssertHeap := Heap;
    AssertMask := Mask;
    ExhaleWellDef0Mask := AssertMask;
    ExhaleWellDef0Heap := AssertHeap;
    perm := 30 / 100;
    assert {:msg "  Assert might fail. Fraction 30 / 100 might be negative. (0060.vpr@36.10--36.32) [84112]"}
      perm >= NoPerm;
    if (perm != NoPerm) {
      assert {:msg "  Assert might fail. There might be insufficient permission to access Z(this) (0060.vpr@36.10--36.32) [84113]"}
        perm <= AssertMask[null, Z_2(this)];
    }
    AssertMask := AssertMask[null, Z_2(this):=AssertMask[null, Z_2(this)] - perm];
    assume state(Heap, Mask);
  
  // -- Translating statement: assert acc(this.z, 10 / 100) -- 0060.vpr@37.3--37.31
    AssertHeap := Heap;
    AssertMask := Mask;
    ExhaleWellDef0Mask := AssertMask;
    ExhaleWellDef0Heap := AssertHeap;
    perm := 10 / 100;
    assert {:msg "  Assert might fail. Fraction 10 / 100 might be negative. (0060.vpr@37.10--37.31) [84114]"}
      perm >= NoPerm;
    if (perm != NoPerm) {
      assert {:msg "  Assert might fail. There might be insufficient permission to access this.z (0060.vpr@37.10--37.31) [84115]"}
        perm <= AssertMask[this, z_24];
    }
    AssertMask := AssertMask[this, z_24:=AssertMask[this, z_24] - perm];
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(ZZ(this), 30 / 100) -- 0060.vpr@39.3--39.31
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm * (30 / 100);
    assert {:msg "  Folding ZZ(this) might fail. Fraction write * (30 / 100) might be negative. (0060.vpr@39.3--39.31) [84117]"}
      perm >= NoPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding ZZ(this) might fail. There might be insufficient permission to access Z(this) (0060.vpr@39.3--39.31) [84118]"}
        perm <= Mask[null, Z_2(this)];
    }
    Mask := Mask[null, Z_2(this):=Mask[null, Z_2(this)] - perm];
    
    // -- Record predicate instance information
      assume InsidePredicate(ZZ(this), Heap[null, ZZ(this)], Z_2(this), Heap[null, Z_2(this)]);
    perm := 30 / 100;
    assert {:msg "  Folding ZZ(this) might fail. Fraction 30 / 100 might be negative. (0060.vpr@39.3--39.31) [84119]"}
      perm >= NoPerm;
    Mask := Mask[null, ZZ(this):=Mask[null, ZZ(this)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume ZZ#trigger(Heap, ZZ(this));
    assume Heap[null, ZZ(this)] == Heap[null, Z_2(this)];
    if (!HasDirectPerm(Mask, null, ZZ(this))) {
      Heap := Heap[null, ZZ#sm(this):=ZeroPMask];
      havoc freshVersion;
      Heap := Heap[null, ZZ(this):=freshVersion];
    }
    havoc newPMask;
    assume (forall <A, B> o_5: Ref, f_11: (Field A B) ::
      { newPMask[o_5, f_11] }
      Heap[null, ZZ#sm(this)][o_5, f_11] || Heap[null, Z#sm(this)][o_5, f_11] ==> newPMask[o_5, f_11]
    );
    Heap := Heap[null, ZZ#sm(this):=newPMask];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert acc(ZZ(this), 90 / 100) -- 0060.vpr@41.3--41.33
    AssertHeap := Heap;
    AssertMask := Mask;
    ExhaleWellDef0Mask := AssertMask;
    ExhaleWellDef0Heap := AssertHeap;
    perm := 90 / 100;
    assert {:msg "  Assert might fail. Fraction 90 / 100 might be negative. (0060.vpr@41.10--41.33) [84120]"}
      perm >= NoPerm;
    if (perm != NoPerm) {
      assert {:msg "  Assert might fail. There might be insufficient permission to access ZZ(this) (0060.vpr@41.10--41.33) [84121]"}
        perm <= AssertMask[null, ZZ(this)];
    }
    AssertMask := AssertMask[null, ZZ(this):=AssertMask[null, ZZ(this)] - perm];
    assume state(Heap, Mask);
  
  // -- Translating statement: assert acc(this.z, 10 / 100) -- 0060.vpr@42.3--42.31
    AssertHeap := Heap;
    AssertMask := Mask;
    ExhaleWellDef0Mask := AssertMask;
    ExhaleWellDef0Heap := AssertHeap;
    perm := 10 / 100;
    assert {:msg "  Assert might fail. Fraction 10 / 100 might be negative. (0060.vpr@42.10--42.31) [84122]"}
      perm >= NoPerm;
    if (perm != NoPerm) {
      assert {:msg "  Assert might fail. There might be insufficient permission to access this.z (0060.vpr@42.10--42.31) [84123]"}
        perm <= AssertMask[this, z_24];
    }
    AssertMask := AssertMask[this, z_24:=AssertMask[this, z_24] - perm];
    assume state(Heap, Mask);
}