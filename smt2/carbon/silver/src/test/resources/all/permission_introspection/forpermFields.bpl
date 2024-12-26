// 
// Translation of Viper program.
// 
// Date:         2024-12-26 15:10:24
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
axiom (forall o_9: Ref, f_13: (Field NormalField Ref), Heap: HeapType ::
  { Heap[o_9, f_13] }
  Heap[o_9, $allocated] ==> Heap[Heap[o_9, f_13], $allocated]
);
function  succHeap(Heap0: HeapType, Heap1: HeapType): bool;
function  succHeapTrans(Heap0: HeapType, Heap1: HeapType): bool;
function  IdenticalOnKnownLocations(Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType): bool;
function  IsPredicateField<A, B>(f_1: (Field A B)): bool;
function  IsWandField<A, B>(f_1: (Field A B)): bool;
function  getPredWandId<A, B>(f_1: (Field A B)): int;
// Frame all locations with direct permissions
axiom (forall <A, B> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_10: Ref, f_14: (Field A B) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_10, f_14] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, o_10, f_14) ==> Heap[o_10, f_14] == ExhaleHeap[o_10, f_14]
);
// Frame all predicate mask locations of predicates with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_4: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_4), ExhaleHeap[null, PredicateMaskField(pm_f_4)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_4) && IsPredicateField(pm_f_4) ==> Heap[null, PredicateMaskField(pm_f_4)] == ExhaleHeap[null, PredicateMaskField(pm_f_4)]
);
// Frame all locations with known folded permissions
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_4: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_4) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_4) && IsPredicateField(pm_f_4) ==> (forall <A, B> o2_4: Ref, f_14: (Field A B) ::
    { ExhaleHeap[o2_4, f_14] }
    Heap[null, PredicateMaskField(pm_f_4)][o2_4, f_14] ==> Heap[o2_4, f_14] == ExhaleHeap[o2_4, f_14]
  )
);
// Frame all wand mask locations of wands with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_4: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_4), ExhaleHeap[null, WandMaskField(pm_f_4)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_4) && IsWandField(pm_f_4) ==> Heap[null, WandMaskField(pm_f_4)] == ExhaleHeap[null, WandMaskField(pm_f_4)]
);
// Frame all locations in the footprint of magic wands
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_4: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_4) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_4) && IsWandField(pm_f_4) ==> (forall <A, B> o2_4: Ref, f_14: (Field A B) ::
    { ExhaleHeap[o2_4, f_14] }
    Heap[null, WandMaskField(pm_f_4)][o2_4, f_14] ==> Heap[o2_4, f_14] == ExhaleHeap[o2_4, f_14]
  )
);
// All previously-allocated references are still allocated
axiom (forall Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_10: Ref ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_10, $allocated] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> Heap[o_10, $allocated] ==> ExhaleHeap[o_10, $allocated]
);
// Updated Heaps are Successor Heaps
axiom (forall <A, B> Heap: HeapType, o_9: Ref, f_15: (Field A B), v: B ::
  { Heap[o_9, f_15:=v] }
  succHeap(Heap, Heap[o_9, f_15:=v])
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

const unique f1_1: Field NormalField int;
axiom !IsPredicateField(f1_1);
axiom !IsWandField(f1_1);
const unique f2_1: Field NormalField int;
axiom !IsPredicateField(f2_1);
axiom !IsWandField(f2_1);
const unique f3: Field NormalField int;
axiom !IsPredicateField(f3);
axiom !IsWandField(f3);

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
  var r_36: Ref;
  var r_27: Ref;
  var r_28: Ref;
  var r_38: Ref;
  var r_12: Ref;
  var r_41: Ref;
  
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
        if (HasDirectPerm(Mask, r_36, f1_1)) {
          assert {:msg "  Assert might fail. There might be insufficient permission to access r.f1 (forpermFields.vpr@12.10--12.43) [142611]"}
            HasDirectPerm(ExhaleWellDef0Mask, r_36, f1_1);
          assert {:msg "  Assert might fail. There might be insufficient permission to access r.f1 (forpermFields.vpr@12.10--12.43) [142612]"}
            HasDirectPerm(ExhaleWellDef0Mask, r_36, f1_1);
        }
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion (forperm r: Ref [r.f1] :: r.f1 > 0) might not hold. (forpermFields.vpr@12.10--12.43) [142613]"}
      (forall r_1_1: Ref ::
      { Mask[r_1_1, f1_1] } { Heap[r_1_1, f1_1] }
      HasDirectPerm(Mask, r_1_1, f1_1) ==> Heap[r_1_1, f1_1] > 0
    );
    assume state(Heap, Mask);
  
  // -- Translating statement: assert (forperm r: Ref [r.f2] :: r.f1 > 0) -- forpermFields.vpr@13.3--13.43
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of (forperm r: Ref [r.f2] :: r.f1 > 0)
      if (*) {
        if (HasDirectPerm(Mask, r_27, f2_1)) {
          assert {:msg "  Assert might fail. There might be insufficient permission to access r.f2 (forpermFields.vpr@13.10--13.43) [142614]"}
            HasDirectPerm(ExhaleWellDef0Mask, r_27, f2_1);
          assert {:msg "  Assert might fail. There might be insufficient permission to access r.f1 (forpermFields.vpr@13.10--13.43) [142615]"}
            HasDirectPerm(ExhaleWellDef0Mask, r_27, f1_1);
        }
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion (forperm r: Ref [r.f2] :: r.f1 > 0) might not hold. (forpermFields.vpr@13.10--13.43) [142616]"}
      (forall r_3_2: Ref ::
      { Mask[r_3_2, f2_1] } { Heap[r_3_2, f2_1] }
      HasDirectPerm(Mask, r_3_2, f2_1) ==> Heap[r_3_2, f1_1] > 0
    );
    assume state(Heap, Mask);
  
  // -- Translating statement: assert (forperm r: Ref [r.f1] :: r.f2 > 0) -- forpermFields.vpr@14.3--14.43
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of (forperm r: Ref [r.f1] :: r.f2 > 0)
      if (*) {
        if (HasDirectPerm(Mask, r_28, f1_1)) {
          assert {:msg "  Assert might fail. There might be insufficient permission to access r.f1 (forpermFields.vpr@14.10--14.43) [142617]"}
            HasDirectPerm(ExhaleWellDef0Mask, r_28, f1_1);
          assert {:msg "  Assert might fail. There might be insufficient permission to access r.f2 (forpermFields.vpr@14.10--14.43) [142618]"}
            HasDirectPerm(ExhaleWellDef0Mask, r_28, f2_1);
        }
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion (forperm r: Ref [r.f1] :: r.f2 > 0) might not hold. (forpermFields.vpr@14.10--14.43) [142619]"}
      (forall r_5: Ref ::
      { Mask[r_5, f1_1] } { Heap[r_5, f1_1] }
      HasDirectPerm(Mask, r_5, f1_1) ==> Heap[r_5, f2_1] > 0
    );
    assume state(Heap, Mask);
  
  // -- Translating statement: assert (forperm r: Ref [r.f2] :: r.f2 > 0) -- forpermFields.vpr@15.3--15.43
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of (forperm r: Ref [r.f2] :: r.f2 > 0)
      if (*) {
        if (HasDirectPerm(Mask, r_38, f2_1)) {
          assert {:msg "  Assert might fail. There might be insufficient permission to access r.f2 (forpermFields.vpr@15.10--15.43) [142620]"}
            HasDirectPerm(ExhaleWellDef0Mask, r_38, f2_1);
          assert {:msg "  Assert might fail. There might be insufficient permission to access r.f2 (forpermFields.vpr@15.10--15.43) [142621]"}
            HasDirectPerm(ExhaleWellDef0Mask, r_38, f2_1);
        }
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion (forperm r: Ref [r.f2] :: r.f2 > 0) might not hold. (forpermFields.vpr@15.10--15.43) [142622]"}
      (forall r_7: Ref ::
      { Mask[r_7, f2_1] } { Heap[r_7, f2_1] }
      HasDirectPerm(Mask, r_7, f2_1) ==> Heap[r_7, f2_1] > 0
    );
    assume state(Heap, Mask);
  
  // -- Translating statement: assert (forperm r: Ref [r.f1] :: r.f1 > 0 && r.f2 > 0) -- forpermFields.vpr@16.3--16.55
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of (forperm r: Ref [r.f1] :: r.f1 > 0 && r.f2 > 0)
      if (*) {
        if (HasDirectPerm(Mask, r_12, f1_1)) {
          assert {:msg "  Assert might fail. There might be insufficient permission to access r.f1 (forpermFields.vpr@16.10--16.55) [142623]"}
            HasDirectPerm(ExhaleWellDef0Mask, r_12, f1_1);
          assert {:msg "  Assert might fail. There might be insufficient permission to access r.f1 (forpermFields.vpr@16.10--16.55) [142624]"}
            HasDirectPerm(ExhaleWellDef0Mask, r_12, f1_1);
          if (Heap[r_12, f1_1] > 0) {
            assert {:msg "  Assert might fail. There might be insufficient permission to access r.f2 (forpermFields.vpr@16.10--16.55) [142625]"}
              HasDirectPerm(ExhaleWellDef0Mask, r_12, f2_1);
          }
        }
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion (forperm r: Ref [r.f1] :: r.f1 > 0 && r.f2 > 0) might not hold. (forpermFields.vpr@16.10--16.55) [142626]"}
      (forall r_9: Ref ::
      { Mask[r_9, f1_1] } { Heap[r_9, f1_1] }
      HasDirectPerm(Mask, r_9, f1_1) ==> Heap[r_9, f1_1] > 0 && Heap[r_9, f2_1] > 0
    );
    assume state(Heap, Mask);
  
  // -- Translating statement: assert (forperm r: Ref [r.f2] :: r.f1 > 0 && r.f2 > 0) -- forpermFields.vpr@17.3--17.55
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of (forperm r: Ref [r.f2] :: r.f1 > 0 && r.f2 > 0)
      if (*) {
        if (HasDirectPerm(Mask, r_41, f2_1)) {
          assert {:msg "  Assert might fail. There might be insufficient permission to access r.f2 (forpermFields.vpr@17.10--17.55) [142627]"}
            HasDirectPerm(ExhaleWellDef0Mask, r_41, f2_1);
          assert {:msg "  Assert might fail. There might be insufficient permission to access r.f1 (forpermFields.vpr@17.10--17.55) [142628]"}
            HasDirectPerm(ExhaleWellDef0Mask, r_41, f1_1);
          if (Heap[r_41, f1_1] > 0) {
            assert {:msg "  Assert might fail. There might be insufficient permission to access r.f2 (forpermFields.vpr@17.10--17.55) [142629]"}
              HasDirectPerm(ExhaleWellDef0Mask, r_41, f2_1);
          }
        }
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion (forperm r: Ref [r.f2] :: r.f1 > 0 && r.f2 > 0) might not hold. (forpermFields.vpr@17.10--17.55) [142630]"}
      (forall r_11_2: Ref ::
      { Mask[r_11_2, f2_1] } { Heap[r_11_2, f2_1] }
      HasDirectPerm(Mask, r_11_2, f2_1) ==> Heap[r_11_2, f1_1] > 0 && Heap[r_11_2, f2_1] > 0
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
  var r_30: Ref;
  var r_32: Ref;
  var r_42: Ref;
  var r_13: Ref;
  var r_15: Ref;
  var r_45: Ref;
  
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
    Mask := Mask[r1, f3:=Mask[r1, f3] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert (forperm r: Ref [r.f1] :: r.f1 > 0) -- forpermFields.vpr@25.3--25.43
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of (forperm r: Ref [r.f1] :: r.f1 > 0)
      if (*) {
        if (HasDirectPerm(Mask, r_30, f1_1)) {
          assert {:msg "  Assert might fail. There might be insufficient permission to access r.f1 (forpermFields.vpr@25.10--25.43) [142632]"}
            HasDirectPerm(ExhaleWellDef0Mask, r_30, f1_1);
          assert {:msg "  Assert might fail. There might be insufficient permission to access r.f1 (forpermFields.vpr@25.10--25.43) [142633]"}
            HasDirectPerm(ExhaleWellDef0Mask, r_30, f1_1);
        }
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion (forperm r: Ref [r.f1] :: r.f1 > 0) might not hold. (forpermFields.vpr@25.10--25.43) [142634]"}
      (forall r_1_1: Ref ::
      { Mask[r_1_1, f1_1] } { Heap[r_1_1, f1_1] }
      HasDirectPerm(Mask, r_1_1, f1_1) ==> Heap[r_1_1, f1_1] > 0
    );
    assume state(Heap, Mask);
  
  // -- Translating statement: assert (forperm r: Ref [r.f2] :: r.f1 > 0) -- forpermFields.vpr@26.3--26.43
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of (forperm r: Ref [r.f2] :: r.f1 > 0)
      if (*) {
        if (HasDirectPerm(Mask, r_32, f2_1)) {
          assert {:msg "  Assert might fail. There might be insufficient permission to access r.f2 (forpermFields.vpr@26.10--26.43) [142635]"}
            HasDirectPerm(ExhaleWellDef0Mask, r_32, f2_1);
          assert {:msg "  Assert might fail. There might be insufficient permission to access r.f1 (forpermFields.vpr@26.10--26.43) [142636]"}
            HasDirectPerm(ExhaleWellDef0Mask, r_32, f1_1);
        }
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion (forperm r: Ref [r.f2] :: r.f1 > 0) might not hold. (forpermFields.vpr@26.10--26.43) [142637]"}
      (forall r_3_2: Ref ::
      { Mask[r_3_2, f2_1] } { Heap[r_3_2, f2_1] }
      HasDirectPerm(Mask, r_3_2, f2_1) ==> Heap[r_3_2, f1_1] > 0
    );
    assume state(Heap, Mask);
  
  // -- Translating statement: assert (forperm r: Ref [r.f1] :: r.f2 > 0) -- forpermFields.vpr@27.3--27.43
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of (forperm r: Ref [r.f1] :: r.f2 > 0)
      if (*) {
        if (HasDirectPerm(Mask, r_42, f1_1)) {
          assert {:msg "  Assert might fail. There might be insufficient permission to access r.f1 (forpermFields.vpr@27.10--27.43) [142638]"}
            HasDirectPerm(ExhaleWellDef0Mask, r_42, f1_1);
          assert {:msg "  Assert might fail. There might be insufficient permission to access r.f2 (forpermFields.vpr@27.10--27.43) [142639]"}
            HasDirectPerm(ExhaleWellDef0Mask, r_42, f2_1);
        }
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion (forperm r: Ref [r.f1] :: r.f2 > 0) might not hold. (forpermFields.vpr@27.10--27.43) [142640]"}
      (forall r_5: Ref ::
      { Mask[r_5, f1_1] } { Heap[r_5, f1_1] }
      HasDirectPerm(Mask, r_5, f1_1) ==> Heap[r_5, f2_1] > 0
    );
    assume state(Heap, Mask);
  
  // -- Translating statement: assert (forperm r: Ref [r.f2] :: r.f2 > 0) -- forpermFields.vpr@28.3--28.43
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of (forperm r: Ref [r.f2] :: r.f2 > 0)
      if (*) {
        if (HasDirectPerm(Mask, r_13, f2_1)) {
          assert {:msg "  Assert might fail. There might be insufficient permission to access r.f2 (forpermFields.vpr@28.10--28.43) [142641]"}
            HasDirectPerm(ExhaleWellDef0Mask, r_13, f2_1);
          assert {:msg "  Assert might fail. There might be insufficient permission to access r.f2 (forpermFields.vpr@28.10--28.43) [142642]"}
            HasDirectPerm(ExhaleWellDef0Mask, r_13, f2_1);
        }
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion (forperm r: Ref [r.f2] :: r.f2 > 0) might not hold. (forpermFields.vpr@28.10--28.43) [142643]"}
      (forall r_7: Ref ::
      { Mask[r_7, f2_1] } { Heap[r_7, f2_1] }
      HasDirectPerm(Mask, r_7, f2_1) ==> Heap[r_7, f2_1] > 0
    );
    assume state(Heap, Mask);
  
  // -- Translating statement: assert (forperm r: Ref [r.f1] :: r.f1 > 0 && r.f2 > 0) -- forpermFields.vpr@29.3--29.55
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of (forperm r: Ref [r.f1] :: r.f1 > 0 && r.f2 > 0)
      if (*) {
        if (HasDirectPerm(Mask, r_15, f1_1)) {
          assert {:msg "  Assert might fail. There might be insufficient permission to access r.f1 (forpermFields.vpr@29.10--29.55) [142644]"}
            HasDirectPerm(ExhaleWellDef0Mask, r_15, f1_1);
          assert {:msg "  Assert might fail. There might be insufficient permission to access r.f1 (forpermFields.vpr@29.10--29.55) [142645]"}
            HasDirectPerm(ExhaleWellDef0Mask, r_15, f1_1);
          if (Heap[r_15, f1_1] > 0) {
            assert {:msg "  Assert might fail. There might be insufficient permission to access r.f2 (forpermFields.vpr@29.10--29.55) [142646]"}
              HasDirectPerm(ExhaleWellDef0Mask, r_15, f2_1);
          }
        }
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion (forperm r: Ref [r.f1] :: r.f1 > 0 && r.f2 > 0) might not hold. (forpermFields.vpr@29.10--29.55) [142647]"}
      (forall r_9: Ref ::
      { Mask[r_9, f1_1] } { Heap[r_9, f1_1] }
      HasDirectPerm(Mask, r_9, f1_1) ==> Heap[r_9, f1_1] > 0 && Heap[r_9, f2_1] > 0
    );
    assume state(Heap, Mask);
  
  // -- Translating statement: assert (forperm r: Ref [r.f2] :: r.f1 > 0 && r.f2 > 0) -- forpermFields.vpr@30.3--30.55
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of (forperm r: Ref [r.f2] :: r.f1 > 0 && r.f2 > 0)
      if (*) {
        if (HasDirectPerm(Mask, r_45, f2_1)) {
          assert {:msg "  Assert might fail. There might be insufficient permission to access r.f2 (forpermFields.vpr@30.10--30.55) [142648]"}
            HasDirectPerm(ExhaleWellDef0Mask, r_45, f2_1);
          assert {:msg "  Assert might fail. There might be insufficient permission to access r.f1 (forpermFields.vpr@30.10--30.55) [142649]"}
            HasDirectPerm(ExhaleWellDef0Mask, r_45, f1_1);
          if (Heap[r_45, f1_1] > 0) {
            assert {:msg "  Assert might fail. There might be insufficient permission to access r.f2 (forpermFields.vpr@30.10--30.55) [142650]"}
              HasDirectPerm(ExhaleWellDef0Mask, r_45, f2_1);
          }
        }
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion (forperm r: Ref [r.f2] :: r.f1 > 0 && r.f2 > 0) might not hold. (forpermFields.vpr@30.10--30.55) [142651]"}
      (forall r_11_2: Ref ::
      { Mask[r_11_2, f2_1] } { Heap[r_11_2, f2_1] }
      HasDirectPerm(Mask, r_11_2, f2_1) ==> Heap[r_11_2, f1_1] > 0 && Heap[r_11_2, f2_1] > 0
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
  var r_18: Ref;
  var r_46: Ref;
  var r_21: Ref;
  
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
    Mask := Mask[r1, f1_1:=Mask[r1, f1_1] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of r1.f1 > 0
      assert {:msg "  Inhale might fail. There might be insufficient permission to access r1.f1 (forpermFields.vpr@37.10--37.33) [142653]"}
        HasDirectPerm(Mask, r1, f1_1);
    assume Heap[r1, f1_1] > 0;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert (forperm r: Ref [r.f1] :: r.f1 > 0) -- forpermFields.vpr@38.3--38.43
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of (forperm r: Ref [r.f1] :: r.f1 > 0)
      if (*) {
        if (HasDirectPerm(Mask, r_18, f1_1)) {
          assert {:msg "  Assert might fail. There might be insufficient permission to access r.f1 (forpermFields.vpr@38.10--38.43) [142654]"}
            HasDirectPerm(ExhaleWellDef0Mask, r_18, f1_1);
          assert {:msg "  Assert might fail. There might be insufficient permission to access r.f1 (forpermFields.vpr@38.10--38.43) [142655]"}
            HasDirectPerm(ExhaleWellDef0Mask, r_18, f1_1);
        }
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion (forperm r: Ref [r.f1] :: r.f1 > 0) might not hold. (forpermFields.vpr@38.10--38.43) [142656]"}
      (forall r_1_1: Ref ::
      { Mask[r_1_1, f1_1] } { Heap[r_1_1, f1_1] }
      HasDirectPerm(Mask, r_1_1, f1_1) ==> Heap[r_1_1, f1_1] > 0
    );
    assume state(Heap, Mask);
  
  // -- Translating statement: assert (forperm r: Ref [r.f2] :: r.f2 > 0) -- forpermFields.vpr@39.3--39.43
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of (forperm r: Ref [r.f2] :: r.f2 > 0)
      if (*) {
        if (HasDirectPerm(Mask, r_46, f2_1)) {
          assert {:msg "  Assert might fail. There might be insufficient permission to access r.f2 (forpermFields.vpr@39.10--39.43) [142657]"}
            HasDirectPerm(ExhaleWellDef0Mask, r_46, f2_1);
          assert {:msg "  Assert might fail. There might be insufficient permission to access r.f2 (forpermFields.vpr@39.10--39.43) [142658]"}
            HasDirectPerm(ExhaleWellDef0Mask, r_46, f2_1);
        }
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion (forperm r: Ref [r.f2] :: r.f2 > 0) might not hold. (forpermFields.vpr@39.10--39.43) [142659]"}
      (forall r_3_2: Ref ::
      { Mask[r_3_2, f2_1] } { Heap[r_3_2, f2_1] }
      HasDirectPerm(Mask, r_3_2, f2_1) ==> Heap[r_3_2, f2_1] > 0
    );
    assume state(Heap, Mask);
  
  // -- Translating statement: assert (forperm r: Ref [r.f2] :: r.f1 > 0) -- forpermFields.vpr@40.3--40.43
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of (forperm r: Ref [r.f2] :: r.f1 > 0)
      if (*) {
        if (HasDirectPerm(Mask, r_21, f2_1)) {
          assert {:msg "  Assert might fail. There might be insufficient permission to access r.f2 (forpermFields.vpr@40.10--40.43) [142660]"}
            HasDirectPerm(ExhaleWellDef0Mask, r_21, f2_1);
          assert {:msg "  Assert might fail. There might be insufficient permission to access r.f1 (forpermFields.vpr@40.10--40.43) [142661]"}
            HasDirectPerm(ExhaleWellDef0Mask, r_21, f1_1);
        }
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion (forperm r: Ref [r.f2] :: r.f1 > 0) might not hold. (forpermFields.vpr@40.10--40.43) [142662]"}
      (forall r_5: Ref ::
      { Mask[r_5, f2_1] } { Heap[r_5, f2_1] }
      HasDirectPerm(Mask, r_5, f2_1) ==> Heap[r_5, f1_1] > 0
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
  var r_50: Ref;
  var r_23: Ref;
  
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
    Mask := Mask[r1, f1_1:=Mask[r1, f1_1] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of r1.f1 > 0
      assert {:msg "  Inhale might fail. There might be insufficient permission to access r1.f1 (forpermFields.vpr@47.10--47.33) [142664]"}
        HasDirectPerm(Mask, r1, f1_1);
    assume Heap[r1, f1_1] > 0;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert (forperm r: Ref [r.f1] :: r.f2 >= r.f2) -- forpermFields.vpr@49.3--49.47
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of (forperm r: Ref [r.f1] :: r.f2 >= r.f2)
      if (*) {
        if (HasDirectPerm(Mask, r_50, f1_1)) {
          assert {:msg "  Assert might fail. There might be insufficient permission to access r.f1 (forpermFields.vpr@49.10--49.47) [142665]"}
            HasDirectPerm(ExhaleWellDef0Mask, r_50, f1_1);
          assert {:msg "  Assert might fail. There might be insufficient permission to access r.f2 (forpermFields.vpr@49.10--49.47) [142666]"}
            HasDirectPerm(ExhaleWellDef0Mask, r_50, f2_1);
          assert {:msg "  Assert might fail. There might be insufficient permission to access r.f2 (forpermFields.vpr@49.10--49.47) [142667]"}
            HasDirectPerm(ExhaleWellDef0Mask, r_50, f2_1);
        }
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion (forperm r: Ref [r.f1] :: r.f2 >= r.f2) might not hold. (forpermFields.vpr@49.10--49.47) [142668]"}
      (forall r_1_1: Ref ::
      { Mask[r_1_1, f1_1] } { Heap[r_1_1, f1_1] }
      HasDirectPerm(Mask, r_1_1, f1_1) ==> Heap[r_1_1, f2_1] >= Heap[r_1_1, f2_1]
    );
    assume state(Heap, Mask);
  
  // -- Translating statement: assert (forperm r: Ref [r.f2] :: r.f2 >= r.f2) -- forpermFields.vpr@50.3--50.47
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of (forperm r: Ref [r.f2] :: r.f2 >= r.f2)
      if (*) {
        if (HasDirectPerm(Mask, r_23, f2_1)) {
          assert {:msg "  Assert might fail. There might be insufficient permission to access r.f2 (forpermFields.vpr@50.10--50.47) [142669]"}
            HasDirectPerm(ExhaleWellDef0Mask, r_23, f2_1);
          assert {:msg "  Assert might fail. There might be insufficient permission to access r.f2 (forpermFields.vpr@50.10--50.47) [142670]"}
            HasDirectPerm(ExhaleWellDef0Mask, r_23, f2_1);
          assert {:msg "  Assert might fail. There might be insufficient permission to access r.f2 (forpermFields.vpr@50.10--50.47) [142671]"}
            HasDirectPerm(ExhaleWellDef0Mask, r_23, f2_1);
        }
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion (forperm r: Ref [r.f2] :: r.f2 >= r.f2) might not hold. (forpermFields.vpr@50.10--50.47) [142672]"}
      (forall r_3_2: Ref ::
      { Mask[r_3_2, f2_1] } { Heap[r_3_2, f2_1] }
      HasDirectPerm(Mask, r_3_2, f2_1) ==> Heap[r_3_2, f2_1] >= Heap[r_3_2, f2_1]
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
  var r_10: Ref;
  var r_11: Ref;
  
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
    Mask := Mask[r1, f1_1:=Mask[r1, f1_1] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of r1.f1 > 0
      assert {:msg "  Inhale might fail. There might be insufficient permission to access r1.f1 (forpermFields.vpr@57.10--57.33) [142674]"}
        HasDirectPerm(Mask, r1, f1_1);
    assume Heap[r1, f1_1] > 0;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert (forperm r: Ref [r.f1] :: r.f1 > 0 && r.f2 >= r.f2) -- forpermFields.vpr@59.3--59.59
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of (forperm r: Ref [r.f1] :: r.f1 > 0 && r.f2 >= r.f2)
      if (*) {
        if (HasDirectPerm(Mask, r_10, f1_1)) {
          assert {:msg "  Assert might fail. There might be insufficient permission to access r.f1 (forpermFields.vpr@59.10--59.59) [142675]"}
            HasDirectPerm(ExhaleWellDef0Mask, r_10, f1_1);
          assert {:msg "  Assert might fail. There might be insufficient permission to access r.f1 (forpermFields.vpr@59.10--59.59) [142676]"}
            HasDirectPerm(ExhaleWellDef0Mask, r_10, f1_1);
          if (Heap[r_10, f1_1] > 0) {
            assert {:msg "  Assert might fail. There might be insufficient permission to access r.f2 (forpermFields.vpr@59.10--59.59) [142677]"}
              HasDirectPerm(ExhaleWellDef0Mask, r_10, f2_1);
            assert {:msg "  Assert might fail. There might be insufficient permission to access r.f2 (forpermFields.vpr@59.10--59.59) [142678]"}
              HasDirectPerm(ExhaleWellDef0Mask, r_10, f2_1);
          }
        }
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion (forperm r: Ref [r.f1] :: r.f1 > 0 && r.f2 >= r.f2) might not hold. (forpermFields.vpr@59.10--59.59) [142679]"}
      (forall r_1_1: Ref ::
      { Mask[r_1_1, f1_1] } { Heap[r_1_1, f1_1] }
      HasDirectPerm(Mask, r_1_1, f1_1) ==> Heap[r_1_1, f1_1] > 0 && Heap[r_1_1, f2_1] >= Heap[r_1_1, f2_1]
    );
    assume state(Heap, Mask);
  
  // -- Translating statement: assert (forperm r: Ref [r.f2] :: r.f1 > 0 && r.f2 >= r.f2) -- forpermFields.vpr@60.3--60.59
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of (forperm r: Ref [r.f2] :: r.f1 > 0 && r.f2 >= r.f2)
      if (*) {
        if (HasDirectPerm(Mask, r_11, f2_1)) {
          assert {:msg "  Assert might fail. There might be insufficient permission to access r.f2 (forpermFields.vpr@60.10--60.59) [142680]"}
            HasDirectPerm(ExhaleWellDef0Mask, r_11, f2_1);
          assert {:msg "  Assert might fail. There might be insufficient permission to access r.f1 (forpermFields.vpr@60.10--60.59) [142681]"}
            HasDirectPerm(ExhaleWellDef0Mask, r_11, f1_1);
          if (Heap[r_11, f1_1] > 0) {
            assert {:msg "  Assert might fail. There might be insufficient permission to access r.f2 (forpermFields.vpr@60.10--60.59) [142682]"}
              HasDirectPerm(ExhaleWellDef0Mask, r_11, f2_1);
            assert {:msg "  Assert might fail. There might be insufficient permission to access r.f2 (forpermFields.vpr@60.10--60.59) [142683]"}
              HasDirectPerm(ExhaleWellDef0Mask, r_11, f2_1);
          }
        }
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion (forperm r: Ref [r.f2] :: r.f1 > 0 && r.f2 >= r.f2) might not hold. (forpermFields.vpr@60.10--60.59) [142684]"}
      (forall r_3_2: Ref ::
      { Mask[r_3_2, f2_1] } { Heap[r_3_2, f2_1] }
      HasDirectPerm(Mask, r_3_2, f2_1) ==> Heap[r_3_2, f1_1] > 0 && Heap[r_3_2, f2_1] >= Heap[r_3_2, f2_1]
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
  var r_24: Ref;
  var r_26: Ref;
  
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
        if (HasDirectPerm(Mask, r_24, f1_1)) {
          assert {:msg "  Assert might fail. There might be insufficient permission to access r.f1 (forpermFields.vpr@67.10--67.40) [142685]"}
            HasDirectPerm(ExhaleWellDef0Mask, r_24, f1_1);
        }
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion (forperm r: Ref [r.f1] :: false) might not hold. (forpermFields.vpr@67.10--67.40) [142686]"}
      (forall r_1_1: Ref ::
      { Mask[r_1_1, f1_1] } { Heap[r_1_1, f1_1] }
      HasDirectPerm(Mask, r_1_1, f1_1) ==> false
    );
    assume state(Heap, Mask);
  
  // -- Translating statement: assert (forperm r: Ref [r.f2] :: false) -- forpermFields.vpr@68.3--68.40
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of (forperm r: Ref [r.f2] :: false)
      if (*) {
        if (HasDirectPerm(Mask, r_26, f2_1)) {
          assert {:msg "  Assert might fail. There might be insufficient permission to access r.f2 (forpermFields.vpr@68.10--68.40) [142687]"}
            HasDirectPerm(ExhaleWellDef0Mask, r_26, f2_1);
        }
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion (forperm r: Ref [r.f2] :: false) might not hold. (forpermFields.vpr@68.10--68.40) [142688]"}
      (forall r_3_2: Ref ::
      { Mask[r_3_2, f2_1] } { Heap[r_3_2, f2_1] }
      HasDirectPerm(Mask, r_3_2, f2_1) ==> false
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
  var r_53: Ref;
  var r_56: Ref;
  
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
    Mask := Mask[r1, f1_1:=Mask[r1, f1_1] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert (forperm r: Ref [r.f1] :: false) -- forpermFields.vpr@77.3--77.40
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of (forperm r: Ref [r.f1] :: false)
      if (*) {
        if (HasDirectPerm(Mask, r_53, f1_1)) {
          assert {:msg "  Assert might fail. There might be insufficient permission to access r.f1 (forpermFields.vpr@77.10--77.40) [142690]"}
            HasDirectPerm(ExhaleWellDef0Mask, r_53, f1_1);
        }
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion (forperm r: Ref [r.f1] :: false) might not hold. (forpermFields.vpr@77.10--77.40) [142691]"}
      (forall r_1_1: Ref ::
      { Mask[r_1_1, f1_1] } { Heap[r_1_1, f1_1] }
      HasDirectPerm(Mask, r_1_1, f1_1) ==> false
    );
    assume state(Heap, Mask);
  
  // -- Translating statement: assert (forperm r: Ref [r.f2] :: false) -- forpermFields.vpr@78.3--78.40
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of (forperm r: Ref [r.f2] :: false)
      if (*) {
        if (HasDirectPerm(Mask, r_56, f2_1)) {
          assert {:msg "  Assert might fail. There might be insufficient permission to access r.f2 (forpermFields.vpr@78.10--78.40) [142692]"}
            HasDirectPerm(ExhaleWellDef0Mask, r_56, f2_1);
        }
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion (forperm r: Ref [r.f2] :: false) might not hold. (forpermFields.vpr@78.10--78.40) [142693]"}
      (forall r_3_2: Ref ::
      { Mask[r_3_2, f2_1] } { Heap[r_3_2, f2_1] }
      HasDirectPerm(Mask, r_3_2, f2_1) ==> false
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
  var r_59: Ref;
  var r_61: Ref;
  
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
    Mask := Mask[r1, f1_1:=Mask[r1, f1_1] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: exhale acc(r1.f1, write) -- forpermFields.vpr@86.3--86.20
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Exhale might fail. There might be insufficient permission to access r1.f1 (forpermFields.vpr@86.10--86.20) [142696]"}
        perm <= Mask[r1, f1_1];
    }
    Mask := Mask[r1, f1_1:=Mask[r1, f1_1] - perm];
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
        if (HasDirectPerm(Mask, r_59, f1_1)) {
          assert {:msg "  Assert might fail. There might be insufficient permission to access r.f1 (forpermFields.vpr@87.10--87.40) [142697]"}
            HasDirectPerm(ExhaleWellDef0Mask, r_59, f1_1);
        }
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion (forperm r: Ref [r.f1] :: false) might not hold. (forpermFields.vpr@87.10--87.40) [142698]"}
      (forall r_1_1: Ref ::
      { Mask[r_1_1, f1_1] } { Heap[r_1_1, f1_1] }
      HasDirectPerm(Mask, r_1_1, f1_1) ==> false
    );
    assume state(Heap, Mask);
  
  // -- Translating statement: assert (forperm r: Ref [r.f2] :: false) -- forpermFields.vpr@88.3--88.40
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of (forperm r: Ref [r.f2] :: false)
      if (*) {
        if (HasDirectPerm(Mask, r_61, f2_1)) {
          assert {:msg "  Assert might fail. There might be insufficient permission to access r.f2 (forpermFields.vpr@88.10--88.40) [142699]"}
            HasDirectPerm(ExhaleWellDef0Mask, r_61, f2_1);
        }
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion (forperm r: Ref [r.f2] :: false) might not hold. (forpermFields.vpr@88.10--88.40) [142700]"}
      (forall r_3_2: Ref ::
      { Mask[r_3_2, f2_1] } { Heap[r_3_2, f2_1] }
      HasDirectPerm(Mask, r_3_2, f2_1) ==> false
    );
    assume state(Heap, Mask);
}