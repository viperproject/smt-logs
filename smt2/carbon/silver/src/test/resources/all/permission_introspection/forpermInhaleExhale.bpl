// 
// Translation of Viper program.
// 
// Date:         2025-01-26 21:41:53
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/permission_introspection/forpermInhaleExhale.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/permission_introspection/forpermInhaleExhale-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
axiom (forall o_38: Ref, f_51: (Field NormalField Ref), Heap: HeapType ::
  { Heap[o_38, f_51] }
  Heap[o_38, $allocated] ==> Heap[Heap[o_38, f_51], $allocated]
);
function  succHeap(Heap0: HeapType, Heap1: HeapType): bool;
function  succHeapTrans(Heap0: HeapType, Heap1: HeapType): bool;
function  IdenticalOnKnownLocations(Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType): bool;
function  IsPredicateField<A, B>(f_1: (Field A B)): bool;
function  IsWandField<A, B>(f_1: (Field A B)): bool;
function  getPredWandId<A, B>(f_1: (Field A B)): int;
// Frame all locations with direct permissions
axiom (forall <A, B> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_39: Ref, f_21: (Field A B) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_39, f_21] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, o_39, f_21) ==> Heap[o_39, f_21] == ExhaleHeap[o_39, f_21]
);
// Frame all predicate mask locations of predicates with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_18: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_18), ExhaleHeap[null, PredicateMaskField(pm_f_18)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_18) && IsPredicateField(pm_f_18) ==> Heap[null, PredicateMaskField(pm_f_18)] == ExhaleHeap[null, PredicateMaskField(pm_f_18)]
);
// Frame all locations with known folded permissions
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_18: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_18) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_18) && IsPredicateField(pm_f_18) ==> (forall <A, B> o2_18: Ref, f_21: (Field A B) ::
    { ExhaleHeap[o2_18, f_21] }
    Heap[null, PredicateMaskField(pm_f_18)][o2_18, f_21] ==> Heap[o2_18, f_21] == ExhaleHeap[o2_18, f_21]
  )
);
// Frame all wand mask locations of wands with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_18: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_18), ExhaleHeap[null, WandMaskField(pm_f_18)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_18) && IsWandField(pm_f_18) ==> Heap[null, WandMaskField(pm_f_18)] == ExhaleHeap[null, WandMaskField(pm_f_18)]
);
// Frame all locations in the footprint of magic wands
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_18: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_18) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_18) && IsWandField(pm_f_18) ==> (forall <A, B> o2_18: Ref, f_21: (Field A B) ::
    { ExhaleHeap[o2_18, f_21] }
    Heap[null, WandMaskField(pm_f_18)][o2_18, f_21] ==> Heap[o2_18, f_21] == ExhaleHeap[o2_18, f_21]
  )
);
// All previously-allocated references are still allocated
axiom (forall Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_39: Ref ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_39, $allocated] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> Heap[o_39, $allocated] ==> ExhaleHeap[o_39, $allocated]
);
// Updated Heaps are Successor Heaps
axiom (forall <A, B> Heap: HeapType, o_38: Ref, f_23: (Field A B), v: B ::
  { Heap[o_38, f_23:=v] }
  succHeap(Heap, Heap[o_38, f_23:=v])
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

const unique f_7: Field NormalField int;
axiom !IsPredicateField(f_7);
axiom !IsWandField(f_7);

// ==================================================
// Translation of method test01a
// ==================================================

procedure test01a(x: Ref) returns ()
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var r_12: Ref;
  var perm: Perm;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  
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
  
  // -- Translating statement: inhale (forperm r: Ref [r.f] :: r.f > 0) && acc(x.f, write) -- forpermInhaleExhale.vpr@7.3--7.55
    
    // -- Check definedness of (forperm r: Ref [r.f] :: r.f > 0)
      if (*) {
        if (HasDirectPerm(Mask, r_12, f_7)) {
          assert {:msg "  Inhale might fail. There might be insufficient permission to access r.f (forpermInhaleExhale.vpr@7.10--7.55) [52730]"}
            HasDirectPerm(Mask, r_12, f_7);
          assert {:msg "  Inhale might fail. There might be insufficient permission to access r.f (forpermInhaleExhale.vpr@7.10--7.55) [52731]"}
            HasDirectPerm(Mask, r_12, f_7);
        }
        assume false;
      }
    assume (forall r_1_1: Ref ::
      { Mask[r_1_1, f_7] } { Heap[r_1_1, f_7] }
      HasDirectPerm(Mask, r_1_1, f_7) ==> Heap[r_1_1, f_7] > 0
    );
    perm := FullPerm;
    assume x != null;
    Mask := Mask[x, f_7:=Mask[x, f_7] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert x.f > 0 -- forpermInhaleExhale.vpr@9.3--9.17
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of x.f > 0
      assert {:msg "  Assert might fail. There might be insufficient permission to access x.f (forpermInhaleExhale.vpr@9.10--9.17) [52733]"}
        HasDirectPerm(ExhaleWellDef0Mask, x, f_7);
    assert {:msg "  Assert might fail. Assertion x.f > 0 might not hold. (forpermInhaleExhale.vpr@9.10--9.17) [52734]"}
      Heap[x, f_7] > 0;
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test01b
// ==================================================

procedure test01b(x: Ref) returns ()
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var perm: Perm;
  var r_14: Ref;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  
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
  
  // -- Translating statement: inhale acc(x.f, write) && (forperm r: Ref [r.f] :: r.f > 0) -- forpermInhaleExhale.vpr@13.3--13.55
    perm := FullPerm;
    assume x != null;
    Mask := Mask[x, f_7:=Mask[x, f_7] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of (forperm r: Ref [r.f] :: r.f > 0)
      if (*) {
        if (HasDirectPerm(Mask, r_14, f_7)) {
          assert {:msg "  Inhale might fail. There might be insufficient permission to access r.f (forpermInhaleExhale.vpr@13.10--13.55) [52736]"}
            HasDirectPerm(Mask, r_14, f_7);
          assert {:msg "  Inhale might fail. There might be insufficient permission to access r.f (forpermInhaleExhale.vpr@13.10--13.55) [52737]"}
            HasDirectPerm(Mask, r_14, f_7);
        }
        assume false;
      }
    assume (forall r_1_1: Ref ::
      { Mask[r_1_1, f_7] } { Heap[r_1_1, f_7] }
      HasDirectPerm(Mask, r_1_1, f_7) ==> Heap[r_1_1, f_7] > 0
    );
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert x.f > 0 -- forpermInhaleExhale.vpr@14.3--14.17
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of x.f > 0
      assert {:msg "  Assert might fail. There might be insufficient permission to access x.f (forpermInhaleExhale.vpr@14.10--14.17) [52738]"}
        HasDirectPerm(ExhaleWellDef0Mask, x, f_7);
    assert {:msg "  Assert might fail. Assertion x.f > 0 might not hold. (forpermInhaleExhale.vpr@14.10--14.17) [52739]"}
      Heap[x, f_7] > 0;
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test02a
// ==================================================

procedure test02a(x: Ref) returns ()
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var perm: Perm;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var r_16: Ref;
  var ExhaleHeap: HeapType;
  
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
  
  // -- Translating statement: inhale acc(x.f, write) && x.f > 0 -- forpermInhaleExhale.vpr@18.3--18.29
    perm := FullPerm;
    assume x != null;
    Mask := Mask[x, f_7:=Mask[x, f_7] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of x.f > 0
      assert {:msg "  Inhale might fail. There might be insufficient permission to access x.f (forpermInhaleExhale.vpr@18.10--18.29) [52741]"}
        HasDirectPerm(Mask, x, f_7);
    assume Heap[x, f_7] > 0;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: exhale (forperm r: Ref [r.f] :: r.f > 0) && acc(x.f, write) -- forpermInhaleExhale.vpr@19.3--19.55
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of (forperm r: Ref [r.f] :: r.f > 0)
      if (*) {
        if (HasDirectPerm(Mask, r_16, f_7)) {
          assert {:msg "  Exhale might fail. There might be insufficient permission to access r.f (forpermInhaleExhale.vpr@19.10--19.55) [52742]"}
            HasDirectPerm(ExhaleWellDef0Mask, r_16, f_7);
          assert {:msg "  Exhale might fail. There might be insufficient permission to access r.f (forpermInhaleExhale.vpr@19.10--19.55) [52743]"}
            HasDirectPerm(ExhaleWellDef0Mask, r_16, f_7);
        }
        assume false;
      }
    assert {:msg "  Exhale might fail. Assertion (forperm r: Ref [r.f] :: r.f > 0) might not hold. (forpermInhaleExhale.vpr@19.10--19.55) [52744]"}
      (forall r_1_1: Ref ::
      { Mask[r_1_1, f_7] } { Heap[r_1_1, f_7] }
      HasDirectPerm(Mask, r_1_1, f_7) ==> Heap[r_1_1, f_7] > 0
    );
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Exhale might fail. There might be insufficient permission to access x.f (forpermInhaleExhale.vpr@19.10--19.55) [52746]"}
        perm <= Mask[x, f_7];
    }
    Mask := Mask[x, f_7:=Mask[x, f_7] - perm];
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test02b
// ==================================================

procedure test02b(x: Ref) returns ()
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var perm: Perm;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var r_18: Ref;
  var ExhaleHeap: HeapType;
  
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
  
  // -- Translating statement: inhale acc(x.f, write) && x.f > 0 -- forpermInhaleExhale.vpr@23.3--23.29
    perm := FullPerm;
    assume x != null;
    Mask := Mask[x, f_7:=Mask[x, f_7] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of x.f > 0
      assert {:msg "  Inhale might fail. There might be insufficient permission to access x.f (forpermInhaleExhale.vpr@23.10--23.29) [52748]"}
        HasDirectPerm(Mask, x, f_7);
    assume Heap[x, f_7] > 0;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: exhale acc(x.f, write) && (forperm r: Ref [r.f] :: r.f > 0) -- forpermInhaleExhale.vpr@24.3--24.55
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Exhale might fail. There might be insufficient permission to access x.f (forpermInhaleExhale.vpr@24.10--24.55) [52750]"}
        perm <= Mask[x, f_7];
    }
    Mask := Mask[x, f_7:=Mask[x, f_7] - perm];
    
    // -- Check definedness of (forperm r: Ref [r.f] :: r.f > 0)
      if (*) {
        if (HasDirectPerm(Mask, r_18, f_7)) {
          assert {:msg "  Exhale might fail. There might be insufficient permission to access r.f (forpermInhaleExhale.vpr@24.10--24.55) [52751]"}
            HasDirectPerm(ExhaleWellDef0Mask, r_18, f_7);
          assert {:msg "  Exhale might fail. There might be insufficient permission to access r.f (forpermInhaleExhale.vpr@24.10--24.55) [52752]"}
            HasDirectPerm(ExhaleWellDef0Mask, r_18, f_7);
        }
        assume false;
      }
    assert {:msg "  Exhale might fail. Assertion (forperm r: Ref [r.f] :: r.f > 0) might not hold. (forpermInhaleExhale.vpr@24.10--24.55) [52753]"}
      (forall r_1_1: Ref ::
      { Mask[r_1_1, f_7] } { Heap[r_1_1, f_7] }
      HasDirectPerm(Mask, r_1_1, f_7) ==> Heap[r_1_1, f_7] > 0
    );
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test03a
// ==================================================

procedure test03a(x: Ref) returns ()
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var perm: Perm;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var r_20: Ref;
  var ExhaleHeap: HeapType;
  
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
  
  // -- Translating statement: inhale acc(x.f, write) -- forpermInhaleExhale.vpr@28.3--28.18
    perm := FullPerm;
    assume x != null;
    Mask := Mask[x, f_7:=Mask[x, f_7] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: exhale acc(x.f, write) && (forperm r: Ref [r.f] :: r.f > 0) -- forpermInhaleExhale.vpr@29.3--29.55
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Exhale might fail. There might be insufficient permission to access x.f (forpermInhaleExhale.vpr@29.10--29.55) [52756]"}
        perm <= Mask[x, f_7];
    }
    Mask := Mask[x, f_7:=Mask[x, f_7] - perm];
    
    // -- Check definedness of (forperm r: Ref [r.f] :: r.f > 0)
      if (*) {
        if (HasDirectPerm(Mask, r_20, f_7)) {
          assert {:msg "  Exhale might fail. There might be insufficient permission to access r.f (forpermInhaleExhale.vpr@29.10--29.55) [52757]"}
            HasDirectPerm(ExhaleWellDef0Mask, r_20, f_7);
          assert {:msg "  Exhale might fail. There might be insufficient permission to access r.f (forpermInhaleExhale.vpr@29.10--29.55) [52758]"}
            HasDirectPerm(ExhaleWellDef0Mask, r_20, f_7);
        }
        assume false;
      }
    assert {:msg "  Exhale might fail. Assertion (forperm r: Ref [r.f] :: r.f > 0) might not hold. (forpermInhaleExhale.vpr@29.10--29.55) [52759]"}
      (forall r_1_1: Ref ::
      { Mask[r_1_1, f_7] } { Heap[r_1_1, f_7] }
      HasDirectPerm(Mask, r_1_1, f_7) ==> Heap[r_1_1, f_7] > 0
    );
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test03b
// ==================================================

procedure test03b(x: Ref) returns ()
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var perm: Perm;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var r_22: Ref;
  var ExhaleHeap: HeapType;
  
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
  
  // -- Translating statement: inhale acc(x.f, write) -- forpermInhaleExhale.vpr@33.3--33.18
    perm := FullPerm;
    assume x != null;
    Mask := Mask[x, f_7:=Mask[x, f_7] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: exhale (forperm r: Ref [r.f] :: r.f > 0) && acc(x.f, write) -- forpermInhaleExhale.vpr@35.3--35.55
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of (forperm r: Ref [r.f] :: r.f > 0)
      if (*) {
        if (HasDirectPerm(Mask, r_22, f_7)) {
          assert {:msg "  Exhale might fail. There might be insufficient permission to access r.f (forpermInhaleExhale.vpr@35.10--35.55) [52761]"}
            HasDirectPerm(ExhaleWellDef0Mask, r_22, f_7);
          assert {:msg "  Exhale might fail. There might be insufficient permission to access r.f (forpermInhaleExhale.vpr@35.10--35.55) [52762]"}
            HasDirectPerm(ExhaleWellDef0Mask, r_22, f_7);
        }
        assume false;
      }
    assert {:msg "  Exhale might fail. Assertion (forperm r: Ref [r.f] :: r.f > 0) might not hold. (forpermInhaleExhale.vpr@35.10--35.55) [52763]"}
      (forall r_1_1: Ref ::
      { Mask[r_1_1, f_7] } { Heap[r_1_1, f_7] }
      HasDirectPerm(Mask, r_1_1, f_7) ==> Heap[r_1_1, f_7] > 0
    );
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Exhale might fail. There might be insufficient permission to access x.f (forpermInhaleExhale.vpr@35.10--35.55) [52765]"}
        perm <= Mask[x, f_7];
    }
    Mask := Mask[x, f_7:=Mask[x, f_7] - perm];
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test08
// ==================================================

procedure test08(x: Ref, y: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var r_24: Ref;
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
    
    // -- Check definedness of x.f > 0
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access x.f (forpermInhaleExhale.vpr@40.12--40.30) [52766]"}
        HasDirectPerm(Mask, x, f_7);
    assume Heap[x, f_7] > 0;
    
    // -- Check definedness of y.f > 0
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access y.f (forpermInhaleExhale.vpr@40.12--40.30) [52767]"}
        HasDirectPerm(Mask, y, f_7);
    assume Heap[y, f_7] > 0;
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: exhale acc(y.f, write) && (forperm r: Ref [r.f] :: y.f > 0) -- forpermInhaleExhale.vpr@44.3--44.55
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Exhale might fail. There might be insufficient permission to access y.f (forpermInhaleExhale.vpr@44.10--44.55) [52769]"}
        perm <= Mask[y, f_7];
    }
    Mask := Mask[y, f_7:=Mask[y, f_7] - perm];
    
    // -- Check definedness of (forperm r: Ref [r.f] :: y.f > 0)
      if (*) {
        if (HasDirectPerm(Mask, r_24, f_7)) {
          assert {:msg "  Exhale might fail. There might be insufficient permission to access r.f (forpermInhaleExhale.vpr@44.10--44.55) [52770]"}
            HasDirectPerm(ExhaleWellDef0Mask, r_24, f_7);
          assert {:msg "  Exhale might fail. There might be insufficient permission to access y.f (forpermInhaleExhale.vpr@44.10--44.55) [52771]"}
            HasDirectPerm(ExhaleWellDef0Mask, y, f_7);
        }
        assume false;
      }
    assert {:msg "  Exhale might fail. Assertion (forperm r: Ref [r.f] :: y.f > 0) might not hold. (forpermInhaleExhale.vpr@44.10--44.55) [52772]"}
      (forall r_1_1: Ref ::
      { Mask[r_1_1, f_7] } { Heap[r_1_1, f_7] }
      HasDirectPerm(Mask, r_1_1, f_7) ==> Heap[y, f_7] > 0
    );
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
    assume state(Heap, Mask);
}