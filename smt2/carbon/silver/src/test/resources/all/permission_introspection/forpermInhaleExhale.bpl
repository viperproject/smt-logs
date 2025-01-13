// 
// Translation of Viper program.
// 
// Date:         2025-01-13 13:10:07
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
axiom (forall o_6: Ref, f_9: (Field NormalField Ref), Heap: HeapType ::
  { Heap[o_6, f_9] }
  Heap[o_6, $allocated] ==> Heap[Heap[o_6, f_9], $allocated]
);
function  succHeap(Heap0: HeapType, Heap1: HeapType): bool;
function  succHeapTrans(Heap0: HeapType, Heap1: HeapType): bool;
function  IdenticalOnKnownLocations(Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType): bool;
function  IsPredicateField<A, B>(f_1: (Field A B)): bool;
function  IsWandField<A, B>(f_1: (Field A B)): bool;
function  getPredWandId<A, B>(f_1: (Field A B)): int;
// Frame all locations with direct permissions
axiom (forall <A, B> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_30: Ref, f_35: (Field A B) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_30, f_35] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, o_30, f_35) ==> Heap[o_30, f_35] == ExhaleHeap[o_30, f_35]
);
// Frame all predicate mask locations of predicates with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_34: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_34), ExhaleHeap[null, PredicateMaskField(pm_f_34)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_34) && IsPredicateField(pm_f_34) ==> Heap[null, PredicateMaskField(pm_f_34)] == ExhaleHeap[null, PredicateMaskField(pm_f_34)]
);
// Frame all locations with known folded permissions
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_34: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_34) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_34) && IsPredicateField(pm_f_34) ==> (forall <A, B> o2_34: Ref, f_35: (Field A B) ::
    { ExhaleHeap[o2_34, f_35] }
    Heap[null, PredicateMaskField(pm_f_34)][o2_34, f_35] ==> Heap[o2_34, f_35] == ExhaleHeap[o2_34, f_35]
  )
);
// Frame all wand mask locations of wands with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_34: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_34), ExhaleHeap[null, WandMaskField(pm_f_34)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_34) && IsWandField(pm_f_34) ==> Heap[null, WandMaskField(pm_f_34)] == ExhaleHeap[null, WandMaskField(pm_f_34)]
);
// Frame all locations in the footprint of magic wands
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_34: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_34) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_34) && IsWandField(pm_f_34) ==> (forall <A, B> o2_34: Ref, f_35: (Field A B) ::
    { ExhaleHeap[o2_34, f_35] }
    Heap[null, WandMaskField(pm_f_34)][o2_34, f_35] ==> Heap[o2_34, f_35] == ExhaleHeap[o2_34, f_35]
  )
);
// All previously-allocated references are still allocated
axiom (forall Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_30: Ref ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_30, $allocated] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> Heap[o_30, $allocated] ==> ExhaleHeap[o_30, $allocated]
);
// Updated Heaps are Successor Heaps
axiom (forall <A, B> Heap: HeapType, o_6: Ref, f_16: (Field A B), v: B ::
  { Heap[o_6, f_16:=v] }
  succHeap(Heap, Heap[o_6, f_16:=v])
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
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var r_36: Ref;
  var perm: Perm;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[x, $allocated];
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: inhale (forperm r: Ref [r.f] :: r.f > 0) && acc(x.f, write) -- forpermInhaleExhale.vpr@7.3--7.55
    
    // -- Check definedness of (forperm r: Ref [r.f] :: r.f > 0)
      if (*) {
        if (HasDirectPerm(Mask, r_36, f_7)) {
          assert {:msg "  Inhale might fail. There might be insufficient permission to access r.f (forpermInhaleExhale.vpr@7.10--7.55) [142211]"}
            HasDirectPerm(Mask, r_36, f_7);
          assert {:msg "  Inhale might fail. There might be insufficient permission to access r.f (forpermInhaleExhale.vpr@7.10--7.55) [142212]"}
            HasDirectPerm(Mask, r_36, f_7);
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
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of x.f > 0
      assert {:msg "  Assert might fail. There might be insufficient permission to access x.f (forpermInhaleExhale.vpr@9.10--9.17) [142214]"}
        HasDirectPerm(ExhaleWellDef0Mask, x, f_7);
    assert {:msg "  Assert might fail. Assertion x.f > 0 might not hold. (forpermInhaleExhale.vpr@9.10--9.17) [142215]"}
      Heap[x, f_7] > 0;
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test01b
// ==================================================

procedure test01b(x: Ref) returns ()
  modifies Heap, Mask;
{
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var perm: Perm;
  var r_27: Ref;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[x, $allocated];
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: inhale acc(x.f, write) && (forperm r: Ref [r.f] :: r.f > 0) -- forpermInhaleExhale.vpr@13.3--13.55
    perm := FullPerm;
    assume x != null;
    Mask := Mask[x, f_7:=Mask[x, f_7] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of (forperm r: Ref [r.f] :: r.f > 0)
      if (*) {
        if (HasDirectPerm(Mask, r_27, f_7)) {
          assert {:msg "  Inhale might fail. There might be insufficient permission to access r.f (forpermInhaleExhale.vpr@13.10--13.55) [142217]"}
            HasDirectPerm(Mask, r_27, f_7);
          assert {:msg "  Inhale might fail. There might be insufficient permission to access r.f (forpermInhaleExhale.vpr@13.10--13.55) [142218]"}
            HasDirectPerm(Mask, r_27, f_7);
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
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of x.f > 0
      assert {:msg "  Assert might fail. There might be insufficient permission to access x.f (forpermInhaleExhale.vpr@14.10--14.17) [142219]"}
        HasDirectPerm(ExhaleWellDef0Mask, x, f_7);
    assert {:msg "  Assert might fail. Assertion x.f > 0 might not hold. (forpermInhaleExhale.vpr@14.10--14.17) [142220]"}
      Heap[x, f_7] > 0;
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test02a
// ==================================================

procedure test02a(x: Ref) returns ()
  modifies Heap, Mask;
{
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var perm: Perm;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var r_28: Ref;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[x, $allocated];
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: inhale acc(x.f, write) && x.f > 0 -- forpermInhaleExhale.vpr@18.3--18.29
    perm := FullPerm;
    assume x != null;
    Mask := Mask[x, f_7:=Mask[x, f_7] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of x.f > 0
      assert {:msg "  Inhale might fail. There might be insufficient permission to access x.f (forpermInhaleExhale.vpr@18.10--18.29) [142222]"}
        HasDirectPerm(Mask, x, f_7);
    assume Heap[x, f_7] > 0;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: exhale (forperm r: Ref [r.f] :: r.f > 0) && acc(x.f, write) -- forpermInhaleExhale.vpr@19.3--19.55
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of (forperm r: Ref [r.f] :: r.f > 0)
      if (*) {
        if (HasDirectPerm(Mask, r_28, f_7)) {
          assert {:msg "  Exhale might fail. There might be insufficient permission to access r.f (forpermInhaleExhale.vpr@19.10--19.55) [142223]"}
            HasDirectPerm(ExhaleWellDef0Mask, r_28, f_7);
          assert {:msg "  Exhale might fail. There might be insufficient permission to access r.f (forpermInhaleExhale.vpr@19.10--19.55) [142224]"}
            HasDirectPerm(ExhaleWellDef0Mask, r_28, f_7);
        }
        assume false;
      }
    assert {:msg "  Exhale might fail. Assertion (forperm r: Ref [r.f] :: r.f > 0) might not hold. (forpermInhaleExhale.vpr@19.10--19.55) [142225]"}
      (forall r_1_1: Ref ::
      { Mask[r_1_1, f_7] } { Heap[r_1_1, f_7] }
      HasDirectPerm(Mask, r_1_1, f_7) ==> Heap[r_1_1, f_7] > 0
    );
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Exhale might fail. There might be insufficient permission to access x.f (forpermInhaleExhale.vpr@19.10--19.55) [142227]"}
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
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var perm: Perm;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var r_38: Ref;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[x, $allocated];
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: inhale acc(x.f, write) && x.f > 0 -- forpermInhaleExhale.vpr@23.3--23.29
    perm := FullPerm;
    assume x != null;
    Mask := Mask[x, f_7:=Mask[x, f_7] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of x.f > 0
      assert {:msg "  Inhale might fail. There might be insufficient permission to access x.f (forpermInhaleExhale.vpr@23.10--23.29) [142229]"}
        HasDirectPerm(Mask, x, f_7);
    assume Heap[x, f_7] > 0;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: exhale acc(x.f, write) && (forperm r: Ref [r.f] :: r.f > 0) -- forpermInhaleExhale.vpr@24.3--24.55
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Exhale might fail. There might be insufficient permission to access x.f (forpermInhaleExhale.vpr@24.10--24.55) [142231]"}
        perm <= Mask[x, f_7];
    }
    Mask := Mask[x, f_7:=Mask[x, f_7] - perm];
    
    // -- Check definedness of (forperm r: Ref [r.f] :: r.f > 0)
      if (*) {
        if (HasDirectPerm(Mask, r_38, f_7)) {
          assert {:msg "  Exhale might fail. There might be insufficient permission to access r.f (forpermInhaleExhale.vpr@24.10--24.55) [142232]"}
            HasDirectPerm(ExhaleWellDef0Mask, r_38, f_7);
          assert {:msg "  Exhale might fail. There might be insufficient permission to access r.f (forpermInhaleExhale.vpr@24.10--24.55) [142233]"}
            HasDirectPerm(ExhaleWellDef0Mask, r_38, f_7);
        }
        assume false;
      }
    assert {:msg "  Exhale might fail. Assertion (forperm r: Ref [r.f] :: r.f > 0) might not hold. (forpermInhaleExhale.vpr@24.10--24.55) [142234]"}
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
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var perm: Perm;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var r_12: Ref;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[x, $allocated];
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: inhale acc(x.f, write) -- forpermInhaleExhale.vpr@28.3--28.18
    perm := FullPerm;
    assume x != null;
    Mask := Mask[x, f_7:=Mask[x, f_7] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: exhale acc(x.f, write) && (forperm r: Ref [r.f] :: r.f > 0) -- forpermInhaleExhale.vpr@29.3--29.55
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Exhale might fail. There might be insufficient permission to access x.f (forpermInhaleExhale.vpr@29.10--29.55) [142237]"}
        perm <= Mask[x, f_7];
    }
    Mask := Mask[x, f_7:=Mask[x, f_7] - perm];
    
    // -- Check definedness of (forperm r: Ref [r.f] :: r.f > 0)
      if (*) {
        if (HasDirectPerm(Mask, r_12, f_7)) {
          assert {:msg "  Exhale might fail. There might be insufficient permission to access r.f (forpermInhaleExhale.vpr@29.10--29.55) [142238]"}
            HasDirectPerm(ExhaleWellDef0Mask, r_12, f_7);
          assert {:msg "  Exhale might fail. There might be insufficient permission to access r.f (forpermInhaleExhale.vpr@29.10--29.55) [142239]"}
            HasDirectPerm(ExhaleWellDef0Mask, r_12, f_7);
        }
        assume false;
      }
    assert {:msg "  Exhale might fail. Assertion (forperm r: Ref [r.f] :: r.f > 0) might not hold. (forpermInhaleExhale.vpr@29.10--29.55) [142240]"}
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
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var perm: Perm;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var r_41: Ref;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[x, $allocated];
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: inhale acc(x.f, write) -- forpermInhaleExhale.vpr@33.3--33.18
    perm := FullPerm;
    assume x != null;
    Mask := Mask[x, f_7:=Mask[x, f_7] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: exhale (forperm r: Ref [r.f] :: r.f > 0) && acc(x.f, write) -- forpermInhaleExhale.vpr@35.3--35.55
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of (forperm r: Ref [r.f] :: r.f > 0)
      if (*) {
        if (HasDirectPerm(Mask, r_41, f_7)) {
          assert {:msg "  Exhale might fail. There might be insufficient permission to access r.f (forpermInhaleExhale.vpr@35.10--35.55) [142242]"}
            HasDirectPerm(ExhaleWellDef0Mask, r_41, f_7);
          assert {:msg "  Exhale might fail. There might be insufficient permission to access r.f (forpermInhaleExhale.vpr@35.10--35.55) [142243]"}
            HasDirectPerm(ExhaleWellDef0Mask, r_41, f_7);
        }
        assume false;
      }
    assert {:msg "  Exhale might fail. Assertion (forperm r: Ref [r.f] :: r.f > 0) might not hold. (forpermInhaleExhale.vpr@35.10--35.55) [142244]"}
      (forall r_1_1: Ref ::
      { Mask[r_1_1, f_7] } { Heap[r_1_1, f_7] }
      HasDirectPerm(Mask, r_1_1, f_7) ==> Heap[r_1_1, f_7] > 0
    );
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Exhale might fail. There might be insufficient permission to access x.f (forpermInhaleExhale.vpr@35.10--35.55) [142246]"}
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
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var r_30: Ref;
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
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access x.f (forpermInhaleExhale.vpr@40.12--40.30) [142247]"}
        HasDirectPerm(Mask, x, f_7);
    assume Heap[x, f_7] > 0;
    
    // -- Check definedness of y.f > 0
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access y.f (forpermInhaleExhale.vpr@40.12--40.30) [142248]"}
        HasDirectPerm(Mask, y, f_7);
    assume Heap[y, f_7] > 0;
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: exhale acc(y.f, write) && (forperm r: Ref [r.f] :: y.f > 0) -- forpermInhaleExhale.vpr@44.3--44.55
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Exhale might fail. There might be insufficient permission to access y.f (forpermInhaleExhale.vpr@44.10--44.55) [142250]"}
        perm <= Mask[y, f_7];
    }
    Mask := Mask[y, f_7:=Mask[y, f_7] - perm];
    
    // -- Check definedness of (forperm r: Ref [r.f] :: y.f > 0)
      if (*) {
        if (HasDirectPerm(Mask, r_30, f_7)) {
          assert {:msg "  Exhale might fail. There might be insufficient permission to access r.f (forpermInhaleExhale.vpr@44.10--44.55) [142251]"}
            HasDirectPerm(ExhaleWellDef0Mask, r_30, f_7);
          assert {:msg "  Exhale might fail. There might be insufficient permission to access y.f (forpermInhaleExhale.vpr@44.10--44.55) [142252]"}
            HasDirectPerm(ExhaleWellDef0Mask, y, f_7);
        }
        assume false;
      }
    assert {:msg "  Exhale might fail. Assertion (forperm r: Ref [r.f] :: y.f > 0) might not hold. (forpermInhaleExhale.vpr@44.10--44.55) [142253]"}
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