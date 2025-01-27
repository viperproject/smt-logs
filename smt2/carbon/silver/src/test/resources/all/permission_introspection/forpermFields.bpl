// 
// Translation of Viper program.
// 
// Date:         2025-01-27 03:13:47
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/permission_introspection/forpermFields.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/permission_introspection/forpermFields-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
axiom (forall o_49: Ref, f_30: (Field NormalField Ref), Heap: HeapType ::
  { Heap[o_49, f_30] }
  Heap[o_49, $allocated] ==> Heap[Heap[o_49, f_30], $allocated]
);
function  succHeap(Heap0: HeapType, Heap1: HeapType): bool;
function  succHeapTrans(Heap0: HeapType, Heap1: HeapType): bool;
function  IdenticalOnKnownLocations(Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType): bool;
function  IsPredicateField<A, B>(f_1: (Field A B)): bool;
function  IsWandField<A, B>(f_1: (Field A B)): bool;
function  getPredWandId<A, B>(f_1: (Field A B)): int;
// Frame all locations with direct permissions
axiom (forall <A, B> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_59: Ref, f_28: (Field A B) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_59, f_28] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, o_59, f_28) ==> Heap[o_59, f_28] == ExhaleHeap[o_59, f_28]
);
// Frame all predicate mask locations of predicates with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_31: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_31), ExhaleHeap[null, PredicateMaskField(pm_f_31)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_31) && IsPredicateField(pm_f_31) ==> Heap[null, PredicateMaskField(pm_f_31)] == ExhaleHeap[null, PredicateMaskField(pm_f_31)]
);
// Frame all locations with known folded permissions
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_31: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_31) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_31) && IsPredicateField(pm_f_31) ==> (forall <A, B> o2_31: Ref, f_28: (Field A B) ::
    { ExhaleHeap[o2_31, f_28] }
    Heap[null, PredicateMaskField(pm_f_31)][o2_31, f_28] ==> Heap[o2_31, f_28] == ExhaleHeap[o2_31, f_28]
  )
);
// Frame all wand mask locations of wands with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_31: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_31), ExhaleHeap[null, WandMaskField(pm_f_31)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_31) && IsWandField(pm_f_31) ==> Heap[null, WandMaskField(pm_f_31)] == ExhaleHeap[null, WandMaskField(pm_f_31)]
);
// Frame all locations in the footprint of magic wands
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_31: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_31) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_31) && IsWandField(pm_f_31) ==> (forall <A, B> o2_31: Ref, f_28: (Field A B) ::
    { ExhaleHeap[o2_31, f_28] }
    Heap[null, WandMaskField(pm_f_31)][o2_31, f_28] ==> Heap[o2_31, f_28] == ExhaleHeap[o2_31, f_28]
  )
);
// All previously-allocated references are still allocated
axiom (forall Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_59: Ref ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_59, $allocated] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> Heap[o_59, $allocated] ==> ExhaleHeap[o_59, $allocated]
);
// Updated Heaps are Successor Heaps
axiom (forall <A, B> Heap: HeapType, o_49: Ref, f_70: (Field A B), v: B ::
  { Heap[o_49, f_70:=v] }
  succHeap(Heap, Heap[o_49, f_70:=v])
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

const unique f1_2: Field NormalField int;
axiom !IsPredicateField(f1_2);
axiom !IsWandField(f1_2);
const unique f2_2: Field NormalField int;
axiom !IsPredicateField(f2_2);
axiom !IsWandField(f2_2);
const unique f3_1: Field NormalField int;
axiom !IsPredicateField(f3_1);
axiom !IsWandField(f3_1);

// ==================================================
// Translation of method noFields
// ==================================================

procedure noFields() returns ()
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var r1: Ref;
  var r2: Ref;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var r_12: Ref;
  var r_14: Ref;
  var r_16: Ref;
  var r_18: Ref;
  var r_20: Ref;
  var r_22: Ref;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Assumptions about local variables
    assume Heap[r1, $allocated];
    assume Heap[r2, $allocated];
  
  // -- Translating statement: assert (forperm r: Ref [r.f1] :: r.f1 > 0) -- forpermFields.vpr@12.3--12.43
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of (forperm r: Ref [r.f1] :: r.f1 > 0)
      if (*) {
        if (HasDirectPerm(Mask, r_12, f1_2)) {
          assert {:msg "  Assert might fail. There might be insufficient permission to access r.f1 (forpermFields.vpr@12.10--12.43) [53472]"}
            HasDirectPerm(ExhaleWellDef0Mask, r_12, f1_2);
          assert {:msg "  Assert might fail. There might be insufficient permission to access r.f1 (forpermFields.vpr@12.10--12.43) [53473]"}
            HasDirectPerm(ExhaleWellDef0Mask, r_12, f1_2);
        }
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion (forperm r: Ref [r.f1] :: r.f1 > 0) might not hold. (forpermFields.vpr@12.10--12.43) [53474]"}
      (forall r_1_1: Ref ::
      { Mask[r_1_1, f1_2] } { Heap[r_1_1, f1_2] }
      HasDirectPerm(Mask, r_1_1, f1_2) ==> Heap[r_1_1, f1_2] > 0
    );
    assume state(Heap, Mask);
  
  // -- Translating statement: assert (forperm r: Ref [r.f2] :: r.f1 > 0) -- forpermFields.vpr@13.3--13.43
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of (forperm r: Ref [r.f2] :: r.f1 > 0)
      if (*) {
        if (HasDirectPerm(Mask, r_14, f2_2)) {
          assert {:msg "  Assert might fail. There might be insufficient permission to access r.f2 (forpermFields.vpr@13.10--13.43) [53475]"}
            HasDirectPerm(ExhaleWellDef0Mask, r_14, f2_2);
          assert {:msg "  Assert might fail. There might be insufficient permission to access r.f1 (forpermFields.vpr@13.10--13.43) [53476]"}
            HasDirectPerm(ExhaleWellDef0Mask, r_14, f1_2);
        }
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion (forperm r: Ref [r.f2] :: r.f1 > 0) might not hold. (forpermFields.vpr@13.10--13.43) [53477]"}
      (forall r_3: Ref ::
      { Mask[r_3, f2_2] } { Heap[r_3, f2_2] }
      HasDirectPerm(Mask, r_3, f2_2) ==> Heap[r_3, f1_2] > 0
    );
    assume state(Heap, Mask);
  
  // -- Translating statement: assert (forperm r: Ref [r.f1] :: r.f2 > 0) -- forpermFields.vpr@14.3--14.43
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of (forperm r: Ref [r.f1] :: r.f2 > 0)
      if (*) {
        if (HasDirectPerm(Mask, r_16, f1_2)) {
          assert {:msg "  Assert might fail. There might be insufficient permission to access r.f1 (forpermFields.vpr@14.10--14.43) [53478]"}
            HasDirectPerm(ExhaleWellDef0Mask, r_16, f1_2);
          assert {:msg "  Assert might fail. There might be insufficient permission to access r.f2 (forpermFields.vpr@14.10--14.43) [53479]"}
            HasDirectPerm(ExhaleWellDef0Mask, r_16, f2_2);
        }
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion (forperm r: Ref [r.f1] :: r.f2 > 0) might not hold. (forpermFields.vpr@14.10--14.43) [53480]"}
      (forall r_5_1: Ref ::
      { Mask[r_5_1, f1_2] } { Heap[r_5_1, f1_2] }
      HasDirectPerm(Mask, r_5_1, f1_2) ==> Heap[r_5_1, f2_2] > 0
    );
    assume state(Heap, Mask);
  
  // -- Translating statement: assert (forperm r: Ref [r.f2] :: r.f2 > 0) -- forpermFields.vpr@15.3--15.43
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of (forperm r: Ref [r.f2] :: r.f2 > 0)
      if (*) {
        if (HasDirectPerm(Mask, r_18, f2_2)) {
          assert {:msg "  Assert might fail. There might be insufficient permission to access r.f2 (forpermFields.vpr@15.10--15.43) [53481]"}
            HasDirectPerm(ExhaleWellDef0Mask, r_18, f2_2);
          assert {:msg "  Assert might fail. There might be insufficient permission to access r.f2 (forpermFields.vpr@15.10--15.43) [53482]"}
            HasDirectPerm(ExhaleWellDef0Mask, r_18, f2_2);
        }
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion (forperm r: Ref [r.f2] :: r.f2 > 0) might not hold. (forpermFields.vpr@15.10--15.43) [53483]"}
      (forall r_7: Ref ::
      { Mask[r_7, f2_2] } { Heap[r_7, f2_2] }
      HasDirectPerm(Mask, r_7, f2_2) ==> Heap[r_7, f2_2] > 0
    );
    assume state(Heap, Mask);
  
  // -- Translating statement: assert (forperm r: Ref [r.f1] :: r.f1 > 0 && r.f2 > 0) -- forpermFields.vpr@16.3--16.55
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of (forperm r: Ref [r.f1] :: r.f1 > 0 && r.f2 > 0)
      if (*) {
        if (HasDirectPerm(Mask, r_20, f1_2)) {
          assert {:msg "  Assert might fail. There might be insufficient permission to access r.f1 (forpermFields.vpr@16.10--16.55) [53484]"}
            HasDirectPerm(ExhaleWellDef0Mask, r_20, f1_2);
          assert {:msg "  Assert might fail. There might be insufficient permission to access r.f1 (forpermFields.vpr@16.10--16.55) [53485]"}
            HasDirectPerm(ExhaleWellDef0Mask, r_20, f1_2);
          if (Heap[r_20, f1_2] > 0) {
            assert {:msg "  Assert might fail. There might be insufficient permission to access r.f2 (forpermFields.vpr@16.10--16.55) [53486]"}
              HasDirectPerm(ExhaleWellDef0Mask, r_20, f2_2);
          }
        }
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion (forperm r: Ref [r.f1] :: r.f1 > 0 && r.f2 > 0) might not hold. (forpermFields.vpr@16.10--16.55) [53487]"}
      (forall r_9: Ref ::
      { Mask[r_9, f1_2] } { Heap[r_9, f1_2] }
      HasDirectPerm(Mask, r_9, f1_2) ==> Heap[r_9, f1_2] > 0 && Heap[r_9, f2_2] > 0
    );
    assume state(Heap, Mask);
  
  // -- Translating statement: assert (forperm r: Ref [r.f2] :: r.f1 > 0 && r.f2 > 0) -- forpermFields.vpr@17.3--17.55
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of (forperm r: Ref [r.f2] :: r.f1 > 0 && r.f2 > 0)
      if (*) {
        if (HasDirectPerm(Mask, r_22, f2_2)) {
          assert {:msg "  Assert might fail. There might be insufficient permission to access r.f2 (forpermFields.vpr@17.10--17.55) [53488]"}
            HasDirectPerm(ExhaleWellDef0Mask, r_22, f2_2);
          assert {:msg "  Assert might fail. There might be insufficient permission to access r.f1 (forpermFields.vpr@17.10--17.55) [53489]"}
            HasDirectPerm(ExhaleWellDef0Mask, r_22, f1_2);
          if (Heap[r_22, f1_2] > 0) {
            assert {:msg "  Assert might fail. There might be insufficient permission to access r.f2 (forpermFields.vpr@17.10--17.55) [53490]"}
              HasDirectPerm(ExhaleWellDef0Mask, r_22, f2_2);
          }
        }
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion (forperm r: Ref [r.f2] :: r.f1 > 0 && r.f2 > 0) might not hold. (forpermFields.vpr@17.10--17.55) [53491]"}
      (forall r_11_1: Ref ::
      { Mask[r_11_1, f2_2] } { Heap[r_11_1, f2_2] }
      HasDirectPerm(Mask, r_11_1, f2_2) ==> Heap[r_11_1, f1_2] > 0 && Heap[r_11_1, f2_2] > 0
    );
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method noFields2
// ==================================================

procedure noFields2() returns ()
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var r1: Ref;
  var r2: Ref;
  var perm: Perm;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var r_24: Ref;
  var r_26: Ref;
  var r_28: Ref;
  var r_30: Ref;
  var r_32: Ref;
  var r_34: Ref;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Assumptions about local variables
    assume Heap[r1, $allocated];
    assume Heap[r2, $allocated];
  
  // -- Translating statement: inhale acc(r1.f3, write) -- forpermFields.vpr@24.3--24.20
    perm := FullPerm;
    assume r1 != null;
    Mask := Mask[r1, f3_1:=Mask[r1, f3_1] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert (forperm r: Ref [r.f1] :: r.f1 > 0) -- forpermFields.vpr@25.3--25.43
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of (forperm r: Ref [r.f1] :: r.f1 > 0)
      if (*) {
        if (HasDirectPerm(Mask, r_24, f1_2)) {
          assert {:msg "  Assert might fail. There might be insufficient permission to access r.f1 (forpermFields.vpr@25.10--25.43) [53493]"}
            HasDirectPerm(ExhaleWellDef0Mask, r_24, f1_2);
          assert {:msg "  Assert might fail. There might be insufficient permission to access r.f1 (forpermFields.vpr@25.10--25.43) [53494]"}
            HasDirectPerm(ExhaleWellDef0Mask, r_24, f1_2);
        }
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion (forperm r: Ref [r.f1] :: r.f1 > 0) might not hold. (forpermFields.vpr@25.10--25.43) [53495]"}
      (forall r_1_1: Ref ::
      { Mask[r_1_1, f1_2] } { Heap[r_1_1, f1_2] }
      HasDirectPerm(Mask, r_1_1, f1_2) ==> Heap[r_1_1, f1_2] > 0
    );
    assume state(Heap, Mask);
  
  // -- Translating statement: assert (forperm r: Ref [r.f2] :: r.f1 > 0) -- forpermFields.vpr@26.3--26.43
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of (forperm r: Ref [r.f2] :: r.f1 > 0)
      if (*) {
        if (HasDirectPerm(Mask, r_26, f2_2)) {
          assert {:msg "  Assert might fail. There might be insufficient permission to access r.f2 (forpermFields.vpr@26.10--26.43) [53496]"}
            HasDirectPerm(ExhaleWellDef0Mask, r_26, f2_2);
          assert {:msg "  Assert might fail. There might be insufficient permission to access r.f1 (forpermFields.vpr@26.10--26.43) [53497]"}
            HasDirectPerm(ExhaleWellDef0Mask, r_26, f1_2);
        }
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion (forperm r: Ref [r.f2] :: r.f1 > 0) might not hold. (forpermFields.vpr@26.10--26.43) [53498]"}
      (forall r_3: Ref ::
      { Mask[r_3, f2_2] } { Heap[r_3, f2_2] }
      HasDirectPerm(Mask, r_3, f2_2) ==> Heap[r_3, f1_2] > 0
    );
    assume state(Heap, Mask);
  
  // -- Translating statement: assert (forperm r: Ref [r.f1] :: r.f2 > 0) -- forpermFields.vpr@27.3--27.43
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of (forperm r: Ref [r.f1] :: r.f2 > 0)
      if (*) {
        if (HasDirectPerm(Mask, r_28, f1_2)) {
          assert {:msg "  Assert might fail. There might be insufficient permission to access r.f1 (forpermFields.vpr@27.10--27.43) [53499]"}
            HasDirectPerm(ExhaleWellDef0Mask, r_28, f1_2);
          assert {:msg "  Assert might fail. There might be insufficient permission to access r.f2 (forpermFields.vpr@27.10--27.43) [53500]"}
            HasDirectPerm(ExhaleWellDef0Mask, r_28, f2_2);
        }
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion (forperm r: Ref [r.f1] :: r.f2 > 0) might not hold. (forpermFields.vpr@27.10--27.43) [53501]"}
      (forall r_5_1: Ref ::
      { Mask[r_5_1, f1_2] } { Heap[r_5_1, f1_2] }
      HasDirectPerm(Mask, r_5_1, f1_2) ==> Heap[r_5_1, f2_2] > 0
    );
    assume state(Heap, Mask);
  
  // -- Translating statement: assert (forperm r: Ref [r.f2] :: r.f2 > 0) -- forpermFields.vpr@28.3--28.43
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of (forperm r: Ref [r.f2] :: r.f2 > 0)
      if (*) {
        if (HasDirectPerm(Mask, r_30, f2_2)) {
          assert {:msg "  Assert might fail. There might be insufficient permission to access r.f2 (forpermFields.vpr@28.10--28.43) [53502]"}
            HasDirectPerm(ExhaleWellDef0Mask, r_30, f2_2);
          assert {:msg "  Assert might fail. There might be insufficient permission to access r.f2 (forpermFields.vpr@28.10--28.43) [53503]"}
            HasDirectPerm(ExhaleWellDef0Mask, r_30, f2_2);
        }
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion (forperm r: Ref [r.f2] :: r.f2 > 0) might not hold. (forpermFields.vpr@28.10--28.43) [53504]"}
      (forall r_7: Ref ::
      { Mask[r_7, f2_2] } { Heap[r_7, f2_2] }
      HasDirectPerm(Mask, r_7, f2_2) ==> Heap[r_7, f2_2] > 0
    );
    assume state(Heap, Mask);
  
  // -- Translating statement: assert (forperm r: Ref [r.f1] :: r.f1 > 0 && r.f2 > 0) -- forpermFields.vpr@29.3--29.55
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of (forperm r: Ref [r.f1] :: r.f1 > 0 && r.f2 > 0)
      if (*) {
        if (HasDirectPerm(Mask, r_32, f1_2)) {
          assert {:msg "  Assert might fail. There might be insufficient permission to access r.f1 (forpermFields.vpr@29.10--29.55) [53505]"}
            HasDirectPerm(ExhaleWellDef0Mask, r_32, f1_2);
          assert {:msg "  Assert might fail. There might be insufficient permission to access r.f1 (forpermFields.vpr@29.10--29.55) [53506]"}
            HasDirectPerm(ExhaleWellDef0Mask, r_32, f1_2);
          if (Heap[r_32, f1_2] > 0) {
            assert {:msg "  Assert might fail. There might be insufficient permission to access r.f2 (forpermFields.vpr@29.10--29.55) [53507]"}
              HasDirectPerm(ExhaleWellDef0Mask, r_32, f2_2);
          }
        }
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion (forperm r: Ref [r.f1] :: r.f1 > 0 && r.f2 > 0) might not hold. (forpermFields.vpr@29.10--29.55) [53508]"}
      (forall r_9: Ref ::
      { Mask[r_9, f1_2] } { Heap[r_9, f1_2] }
      HasDirectPerm(Mask, r_9, f1_2) ==> Heap[r_9, f1_2] > 0 && Heap[r_9, f2_2] > 0
    );
    assume state(Heap, Mask);
  
  // -- Translating statement: assert (forperm r: Ref [r.f2] :: r.f1 > 0 && r.f2 > 0) -- forpermFields.vpr@30.3--30.55
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of (forperm r: Ref [r.f2] :: r.f1 > 0 && r.f2 > 0)
      if (*) {
        if (HasDirectPerm(Mask, r_34, f2_2)) {
          assert {:msg "  Assert might fail. There might be insufficient permission to access r.f2 (forpermFields.vpr@30.10--30.55) [53509]"}
            HasDirectPerm(ExhaleWellDef0Mask, r_34, f2_2);
          assert {:msg "  Assert might fail. There might be insufficient permission to access r.f1 (forpermFields.vpr@30.10--30.55) [53510]"}
            HasDirectPerm(ExhaleWellDef0Mask, r_34, f1_2);
          if (Heap[r_34, f1_2] > 0) {
            assert {:msg "  Assert might fail. There might be insufficient permission to access r.f2 (forpermFields.vpr@30.10--30.55) [53511]"}
              HasDirectPerm(ExhaleWellDef0Mask, r_34, f2_2);
          }
        }
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion (forperm r: Ref [r.f2] :: r.f1 > 0 && r.f2 > 0) might not hold. (forpermFields.vpr@30.10--30.55) [53512]"}
      (forall r_11_1: Ref ::
      { Mask[r_11_1, f2_2] } { Heap[r_11_1, f2_2] }
      HasDirectPerm(Mask, r_11_1, f2_2) ==> Heap[r_11_1, f1_2] > 0 && Heap[r_11_1, f2_2] > 0
    );
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method permOnlyOneField
// ==================================================

procedure permOnlyOneField() returns ()
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var r1: Ref;
  var r2: Ref;
  var perm: Perm;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var r_36: Ref;
  var r_38: Ref;
  var r_40: Ref;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Assumptions about local variables
    assume Heap[r1, $allocated];
    assume Heap[r2, $allocated];
  
  // -- Translating statement: inhale acc(r1.f1, write) && r1.f1 > 0 -- forpermFields.vpr@37.3--37.33
    perm := FullPerm;
    assume r1 != null;
    Mask := Mask[r1, f1_2:=Mask[r1, f1_2] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of r1.f1 > 0
      assert {:msg "  Inhale might fail. There might be insufficient permission to access r1.f1 (forpermFields.vpr@37.10--37.33) [53514]"}
        HasDirectPerm(Mask, r1, f1_2);
    assume Heap[r1, f1_2] > 0;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert (forperm r: Ref [r.f1] :: r.f1 > 0) -- forpermFields.vpr@38.3--38.43
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of (forperm r: Ref [r.f1] :: r.f1 > 0)
      if (*) {
        if (HasDirectPerm(Mask, r_36, f1_2)) {
          assert {:msg "  Assert might fail. There might be insufficient permission to access r.f1 (forpermFields.vpr@38.10--38.43) [53515]"}
            HasDirectPerm(ExhaleWellDef0Mask, r_36, f1_2);
          assert {:msg "  Assert might fail. There might be insufficient permission to access r.f1 (forpermFields.vpr@38.10--38.43) [53516]"}
            HasDirectPerm(ExhaleWellDef0Mask, r_36, f1_2);
        }
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion (forperm r: Ref [r.f1] :: r.f1 > 0) might not hold. (forpermFields.vpr@38.10--38.43) [53517]"}
      (forall r_1_1: Ref ::
      { Mask[r_1_1, f1_2] } { Heap[r_1_1, f1_2] }
      HasDirectPerm(Mask, r_1_1, f1_2) ==> Heap[r_1_1, f1_2] > 0
    );
    assume state(Heap, Mask);
  
  // -- Translating statement: assert (forperm r: Ref [r.f2] :: r.f2 > 0) -- forpermFields.vpr@39.3--39.43
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of (forperm r: Ref [r.f2] :: r.f2 > 0)
      if (*) {
        if (HasDirectPerm(Mask, r_38, f2_2)) {
          assert {:msg "  Assert might fail. There might be insufficient permission to access r.f2 (forpermFields.vpr@39.10--39.43) [53518]"}
            HasDirectPerm(ExhaleWellDef0Mask, r_38, f2_2);
          assert {:msg "  Assert might fail. There might be insufficient permission to access r.f2 (forpermFields.vpr@39.10--39.43) [53519]"}
            HasDirectPerm(ExhaleWellDef0Mask, r_38, f2_2);
        }
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion (forperm r: Ref [r.f2] :: r.f2 > 0) might not hold. (forpermFields.vpr@39.10--39.43) [53520]"}
      (forall r_3: Ref ::
      { Mask[r_3, f2_2] } { Heap[r_3, f2_2] }
      HasDirectPerm(Mask, r_3, f2_2) ==> Heap[r_3, f2_2] > 0
    );
    assume state(Heap, Mask);
  
  // -- Translating statement: assert (forperm r: Ref [r.f2] :: r.f1 > 0) -- forpermFields.vpr@40.3--40.43
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of (forperm r: Ref [r.f2] :: r.f1 > 0)
      if (*) {
        if (HasDirectPerm(Mask, r_40, f2_2)) {
          assert {:msg "  Assert might fail. There might be insufficient permission to access r.f2 (forpermFields.vpr@40.10--40.43) [53521]"}
            HasDirectPerm(ExhaleWellDef0Mask, r_40, f2_2);
          assert {:msg "  Assert might fail. There might be insufficient permission to access r.f1 (forpermFields.vpr@40.10--40.43) [53522]"}
            HasDirectPerm(ExhaleWellDef0Mask, r_40, f1_2);
        }
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion (forperm r: Ref [r.f2] :: r.f1 > 0) might not hold. (forpermFields.vpr@40.10--40.43) [53523]"}
      (forall r_5_1: Ref ::
      { Mask[r_5_1, f2_2] } { Heap[r_5_1, f2_2] }
      HasDirectPerm(Mask, r_5_1, f2_2) ==> Heap[r_5_1, f1_2] > 0
    );
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method permOnlyOneField1
// ==================================================

procedure permOnlyOneField1() returns ()
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var r1: Ref;
  var r2: Ref;
  var perm: Perm;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var r_42: Ref;
  var r_44: Ref;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Assumptions about local variables
    assume Heap[r1, $allocated];
    assume Heap[r2, $allocated];
  
  // -- Translating statement: inhale acc(r1.f1, write) && r1.f1 > 0 -- forpermFields.vpr@47.3--47.33
    perm := FullPerm;
    assume r1 != null;
    Mask := Mask[r1, f1_2:=Mask[r1, f1_2] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of r1.f1 > 0
      assert {:msg "  Inhale might fail. There might be insufficient permission to access r1.f1 (forpermFields.vpr@47.10--47.33) [53525]"}
        HasDirectPerm(Mask, r1, f1_2);
    assume Heap[r1, f1_2] > 0;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert (forperm r: Ref [r.f1] :: r.f2 >= r.f2) -- forpermFields.vpr@49.3--49.47
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of (forperm r: Ref [r.f1] :: r.f2 >= r.f2)
      if (*) {
        if (HasDirectPerm(Mask, r_42, f1_2)) {
          assert {:msg "  Assert might fail. There might be insufficient permission to access r.f1 (forpermFields.vpr@49.10--49.47) [53526]"}
            HasDirectPerm(ExhaleWellDef0Mask, r_42, f1_2);
          assert {:msg "  Assert might fail. There might be insufficient permission to access r.f2 (forpermFields.vpr@49.10--49.47) [53527]"}
            HasDirectPerm(ExhaleWellDef0Mask, r_42, f2_2);
          assert {:msg "  Assert might fail. There might be insufficient permission to access r.f2 (forpermFields.vpr@49.10--49.47) [53528]"}
            HasDirectPerm(ExhaleWellDef0Mask, r_42, f2_2);
        }
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion (forperm r: Ref [r.f1] :: r.f2 >= r.f2) might not hold. (forpermFields.vpr@49.10--49.47) [53529]"}
      (forall r_1_1: Ref ::
      { Mask[r_1_1, f1_2] } { Heap[r_1_1, f1_2] }
      HasDirectPerm(Mask, r_1_1, f1_2) ==> Heap[r_1_1, f2_2] >= Heap[r_1_1, f2_2]
    );
    assume state(Heap, Mask);
  
  // -- Translating statement: assert (forperm r: Ref [r.f2] :: r.f2 >= r.f2) -- forpermFields.vpr@50.3--50.47
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of (forperm r: Ref [r.f2] :: r.f2 >= r.f2)
      if (*) {
        if (HasDirectPerm(Mask, r_44, f2_2)) {
          assert {:msg "  Assert might fail. There might be insufficient permission to access r.f2 (forpermFields.vpr@50.10--50.47) [53530]"}
            HasDirectPerm(ExhaleWellDef0Mask, r_44, f2_2);
          assert {:msg "  Assert might fail. There might be insufficient permission to access r.f2 (forpermFields.vpr@50.10--50.47) [53531]"}
            HasDirectPerm(ExhaleWellDef0Mask, r_44, f2_2);
          assert {:msg "  Assert might fail. There might be insufficient permission to access r.f2 (forpermFields.vpr@50.10--50.47) [53532]"}
            HasDirectPerm(ExhaleWellDef0Mask, r_44, f2_2);
        }
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion (forperm r: Ref [r.f2] :: r.f2 >= r.f2) might not hold. (forpermFields.vpr@50.10--50.47) [53533]"}
      (forall r_3: Ref ::
      { Mask[r_3, f2_2] } { Heap[r_3, f2_2] }
      HasDirectPerm(Mask, r_3, f2_2) ==> Heap[r_3, f2_2] >= Heap[r_3, f2_2]
    );
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method permOnlyOneField2
// ==================================================

procedure permOnlyOneField2() returns ()
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var r1: Ref;
  var r2: Ref;
  var perm: Perm;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var r_5: Ref;
  var r_10: Ref;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Assumptions about local variables
    assume Heap[r1, $allocated];
    assume Heap[r2, $allocated];
  
  // -- Translating statement: inhale acc(r1.f1, write) && r1.f1 > 0 -- forpermFields.vpr@57.3--57.33
    perm := FullPerm;
    assume r1 != null;
    Mask := Mask[r1, f1_2:=Mask[r1, f1_2] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of r1.f1 > 0
      assert {:msg "  Inhale might fail. There might be insufficient permission to access r1.f1 (forpermFields.vpr@57.10--57.33) [53535]"}
        HasDirectPerm(Mask, r1, f1_2);
    assume Heap[r1, f1_2] > 0;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert (forperm r: Ref [r.f1] :: r.f1 > 0 && r.f2 >= r.f2) -- forpermFields.vpr@59.3--59.59
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of (forperm r: Ref [r.f1] :: r.f1 > 0 && r.f2 >= r.f2)
      if (*) {
        if (HasDirectPerm(Mask, r_5, f1_2)) {
          assert {:msg "  Assert might fail. There might be insufficient permission to access r.f1 (forpermFields.vpr@59.10--59.59) [53536]"}
            HasDirectPerm(ExhaleWellDef0Mask, r_5, f1_2);
          assert {:msg "  Assert might fail. There might be insufficient permission to access r.f1 (forpermFields.vpr@59.10--59.59) [53537]"}
            HasDirectPerm(ExhaleWellDef0Mask, r_5, f1_2);
          if (Heap[r_5, f1_2] > 0) {
            assert {:msg "  Assert might fail. There might be insufficient permission to access r.f2 (forpermFields.vpr@59.10--59.59) [53538]"}
              HasDirectPerm(ExhaleWellDef0Mask, r_5, f2_2);
            assert {:msg "  Assert might fail. There might be insufficient permission to access r.f2 (forpermFields.vpr@59.10--59.59) [53539]"}
              HasDirectPerm(ExhaleWellDef0Mask, r_5, f2_2);
          }
        }
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion (forperm r: Ref [r.f1] :: r.f1 > 0 && r.f2 >= r.f2) might not hold. (forpermFields.vpr@59.10--59.59) [53540]"}
      (forall r_1_1: Ref ::
      { Mask[r_1_1, f1_2] } { Heap[r_1_1, f1_2] }
      HasDirectPerm(Mask, r_1_1, f1_2) ==> Heap[r_1_1, f1_2] > 0 && Heap[r_1_1, f2_2] >= Heap[r_1_1, f2_2]
    );
    assume state(Heap, Mask);
  
  // -- Translating statement: assert (forperm r: Ref [r.f2] :: r.f1 > 0 && r.f2 >= r.f2) -- forpermFields.vpr@60.3--60.59
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of (forperm r: Ref [r.f2] :: r.f1 > 0 && r.f2 >= r.f2)
      if (*) {
        if (HasDirectPerm(Mask, r_10, f2_2)) {
          assert {:msg "  Assert might fail. There might be insufficient permission to access r.f2 (forpermFields.vpr@60.10--60.59) [53541]"}
            HasDirectPerm(ExhaleWellDef0Mask, r_10, f2_2);
          assert {:msg "  Assert might fail. There might be insufficient permission to access r.f1 (forpermFields.vpr@60.10--60.59) [53542]"}
            HasDirectPerm(ExhaleWellDef0Mask, r_10, f1_2);
          if (Heap[r_10, f1_2] > 0) {
            assert {:msg "  Assert might fail. There might be insufficient permission to access r.f2 (forpermFields.vpr@60.10--60.59) [53543]"}
              HasDirectPerm(ExhaleWellDef0Mask, r_10, f2_2);
            assert {:msg "  Assert might fail. There might be insufficient permission to access r.f2 (forpermFields.vpr@60.10--60.59) [53544]"}
              HasDirectPerm(ExhaleWellDef0Mask, r_10, f2_2);
          }
        }
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion (forperm r: Ref [r.f2] :: r.f1 > 0 && r.f2 >= r.f2) might not hold. (forpermFields.vpr@60.10--60.59) [53545]"}
      (forall r_3: Ref ::
      { Mask[r_3, f2_2] } { Heap[r_3, f2_2] }
      HasDirectPerm(Mask, r_3, f2_2) ==> Heap[r_3, f1_2] > 0 && Heap[r_3, f2_2] >= Heap[r_3, f2_2]
    );
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method permCheck1
// ==================================================

procedure permCheck1() returns ()
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var r1: Ref;
  var r2: Ref;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var r_45: Ref;
  var r_46: Ref;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Assumptions about local variables
    assume Heap[r1, $allocated];
    assume Heap[r2, $allocated];
  
  // -- Translating statement: assert (forperm r: Ref [r.f1] :: false) -- forpermFields.vpr@67.3--67.40
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of (forperm r: Ref [r.f1] :: false)
      if (*) {
        if (HasDirectPerm(Mask, r_45, f1_2)) {
          assert {:msg "  Assert might fail. There might be insufficient permission to access r.f1 (forpermFields.vpr@67.10--67.40) [53546]"}
            HasDirectPerm(ExhaleWellDef0Mask, r_45, f1_2);
        }
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion (forperm r: Ref [r.f1] :: false) might not hold. (forpermFields.vpr@67.10--67.40) [53547]"}
      (forall r_1_1: Ref ::
      { Mask[r_1_1, f1_2] } { Heap[r_1_1, f1_2] }
      HasDirectPerm(Mask, r_1_1, f1_2) ==> false
    );
    assume state(Heap, Mask);
  
  // -- Translating statement: assert (forperm r: Ref [r.f2] :: false) -- forpermFields.vpr@68.3--68.40
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of (forperm r: Ref [r.f2] :: false)
      if (*) {
        if (HasDirectPerm(Mask, r_46, f2_2)) {
          assert {:msg "  Assert might fail. There might be insufficient permission to access r.f2 (forpermFields.vpr@68.10--68.40) [53548]"}
            HasDirectPerm(ExhaleWellDef0Mask, r_46, f2_2);
        }
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion (forperm r: Ref [r.f2] :: false) might not hold. (forpermFields.vpr@68.10--68.40) [53549]"}
      (forall r_3: Ref ::
      { Mask[r_3, f2_2] } { Heap[r_3, f2_2] }
      HasDirectPerm(Mask, r_3, f2_2) ==> false
    );
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method permCheck2
// ==================================================

procedure permCheck2() returns ()
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var r1: Ref;
  var r2: Ref;
  var perm: Perm;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var r_47: Ref;
  var r_48: Ref;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Assumptions about local variables
    assume Heap[r1, $allocated];
    assume Heap[r2, $allocated];
  
  // -- Translating statement: inhale acc(r1.f1, write) -- forpermFields.vpr@75.3--75.20
    perm := FullPerm;
    assume r1 != null;
    Mask := Mask[r1, f1_2:=Mask[r1, f1_2] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert (forperm r: Ref [r.f1] :: false) -- forpermFields.vpr@77.3--77.40
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of (forperm r: Ref [r.f1] :: false)
      if (*) {
        if (HasDirectPerm(Mask, r_47, f1_2)) {
          assert {:msg "  Assert might fail. There might be insufficient permission to access r.f1 (forpermFields.vpr@77.10--77.40) [53551]"}
            HasDirectPerm(ExhaleWellDef0Mask, r_47, f1_2);
        }
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion (forperm r: Ref [r.f1] :: false) might not hold. (forpermFields.vpr@77.10--77.40) [53552]"}
      (forall r_1_1: Ref ::
      { Mask[r_1_1, f1_2] } { Heap[r_1_1, f1_2] }
      HasDirectPerm(Mask, r_1_1, f1_2) ==> false
    );
    assume state(Heap, Mask);
  
  // -- Translating statement: assert (forperm r: Ref [r.f2] :: false) -- forpermFields.vpr@78.3--78.40
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of (forperm r: Ref [r.f2] :: false)
      if (*) {
        if (HasDirectPerm(Mask, r_48, f2_2)) {
          assert {:msg "  Assert might fail. There might be insufficient permission to access r.f2 (forpermFields.vpr@78.10--78.40) [53553]"}
            HasDirectPerm(ExhaleWellDef0Mask, r_48, f2_2);
        }
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion (forperm r: Ref [r.f2] :: false) might not hold. (forpermFields.vpr@78.10--78.40) [53554]"}
      (forall r_3: Ref ::
      { Mask[r_3, f2_2] } { Heap[r_3, f2_2] }
      HasDirectPerm(Mask, r_3, f2_2) ==> false
    );
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method permCheck3
// ==================================================

procedure permCheck3() returns ()
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var r1: Ref;
  var r2: Ref;
  var perm: Perm;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleHeap: HeapType;
  var r_49: Ref;
  var r_50: Ref;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Assumptions about local variables
    assume Heap[r1, $allocated];
    assume Heap[r2, $allocated];
  
  // -- Translating statement: inhale acc(r1.f1, write) -- forpermFields.vpr@85.3--85.20
    perm := FullPerm;
    assume r1 != null;
    Mask := Mask[r1, f1_2:=Mask[r1, f1_2] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: exhale acc(r1.f1, write) -- forpermFields.vpr@86.3--86.20
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Exhale might fail. There might be insufficient permission to access r1.f1 (forpermFields.vpr@86.10--86.20) [53557]"}
        perm <= Mask[r1, f1_2];
    }
    Mask := Mask[r1, f1_2:=Mask[r1, f1_2] - perm];
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
    assume state(Heap, Mask);
  
  // -- Translating statement: assert (forperm r: Ref [r.f1] :: false) -- forpermFields.vpr@87.3--87.40
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of (forperm r: Ref [r.f1] :: false)
      if (*) {
        if (HasDirectPerm(Mask, r_49, f1_2)) {
          assert {:msg "  Assert might fail. There might be insufficient permission to access r.f1 (forpermFields.vpr@87.10--87.40) [53558]"}
            HasDirectPerm(ExhaleWellDef0Mask, r_49, f1_2);
        }
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion (forperm r: Ref [r.f1] :: false) might not hold. (forpermFields.vpr@87.10--87.40) [53559]"}
      (forall r_1_1: Ref ::
      { Mask[r_1_1, f1_2] } { Heap[r_1_1, f1_2] }
      HasDirectPerm(Mask, r_1_1, f1_2) ==> false
    );
    assume state(Heap, Mask);
  
  // -- Translating statement: assert (forperm r: Ref [r.f2] :: false) -- forpermFields.vpr@88.3--88.40
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of (forperm r: Ref [r.f2] :: false)
      if (*) {
        if (HasDirectPerm(Mask, r_50, f2_2)) {
          assert {:msg "  Assert might fail. There might be insufficient permission to access r.f2 (forpermFields.vpr@88.10--88.40) [53560]"}
            HasDirectPerm(ExhaleWellDef0Mask, r_50, f2_2);
        }
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion (forperm r: Ref [r.f2] :: false) might not hold. (forpermFields.vpr@88.10--88.40) [53561]"}
      (forall r_3: Ref ::
      { Mask[r_3, f2_2] } { Heap[r_3, f2_2] }
      HasDirectPerm(Mask, r_3, f2_2) ==> false
    );
    assume state(Heap, Mask);
}