// 
// Translation of Viper program.
// 
// Date:         2025-01-13 18:29:26
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/issues/silicon/0231.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/issues/silicon/0231-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
axiom (forall o_20: Ref, f_17: (Field NormalField Ref), Heap: HeapType ::
  { Heap[o_20, f_17] }
  Heap[o_20, $allocated] ==> Heap[Heap[o_20, f_17], $allocated]
);
function  succHeap(Heap0: HeapType, Heap1: HeapType): bool;
function  succHeapTrans(Heap0: HeapType, Heap1: HeapType): bool;
function  IdenticalOnKnownLocations(Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType): bool;
function  IsPredicateField<A, B>(f_1: (Field A B)): bool;
function  IsWandField<A, B>(f_1: (Field A B)): bool;
function  getPredWandId<A, B>(f_1: (Field A B)): int;
// Frame all locations with direct permissions
axiom (forall <A, B> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_27: Ref, f_24: (Field A B) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_27, f_24] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, o_27, f_24) ==> Heap[o_27, f_24] == ExhaleHeap[o_27, f_24]
);
// Frame all predicate mask locations of predicates with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_9: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_9), ExhaleHeap[null, PredicateMaskField(pm_f_9)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_9) && IsPredicateField(pm_f_9) ==> Heap[null, PredicateMaskField(pm_f_9)] == ExhaleHeap[null, PredicateMaskField(pm_f_9)]
);
// Frame all locations with known folded permissions
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_9: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_9) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_9) && IsPredicateField(pm_f_9) ==> (forall <A, B> o2_9: Ref, f_24: (Field A B) ::
    { ExhaleHeap[o2_9, f_24] }
    Heap[null, PredicateMaskField(pm_f_9)][o2_9, f_24] ==> Heap[o2_9, f_24] == ExhaleHeap[o2_9, f_24]
  )
);
// Frame all wand mask locations of wands with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_9: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_9), ExhaleHeap[null, WandMaskField(pm_f_9)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_9) && IsWandField(pm_f_9) ==> Heap[null, WandMaskField(pm_f_9)] == ExhaleHeap[null, WandMaskField(pm_f_9)]
);
// Frame all locations in the footprint of magic wands
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_9: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_9) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_9) && IsWandField(pm_f_9) ==> (forall <A, B> o2_9: Ref, f_24: (Field A B) ::
    { ExhaleHeap[o2_9, f_24] }
    Heap[null, WandMaskField(pm_f_9)][o2_9, f_24] ==> Heap[o2_9, f_24] == ExhaleHeap[o2_9, f_24]
  )
);
// All previously-allocated references are still allocated
axiom (forall Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_27: Ref ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_27, $allocated] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> Heap[o_27, $allocated] ==> ExhaleHeap[o_27, $allocated]
);
// Updated Heaps are Successor Heaps
axiom (forall <A, B> Heap: HeapType, o_20: Ref, f_31: (Field A B), v: B ::
  { Heap[o_20, f_31:=v] }
  succHeap(Heap, Heap[o_20, f_31:=v])
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
// Translation of predicate P
// ==================================================

type PredicateType_P;
function  P(r_1: Ref): Field PredicateType_P FrameType;
function  P#sm(r_1: Ref): Field PredicateType_P PMaskType;
axiom (forall r_1: Ref ::
  { PredicateMaskField(P(r_1)) }
  PredicateMaskField(P(r_1)) == P#sm(r_1)
);
axiom (forall r_1: Ref ::
  { P(r_1) }
  IsPredicateField(P(r_1))
);
axiom (forall r_1: Ref ::
  { P(r_1) }
  getPredWandId(P(r_1)) == 0
);
function  P#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  P#everUsed<A>(pred: (Field A FrameType)): bool;
axiom (forall r_1: Ref, r2: Ref ::
  { P(r_1), P(r2) }
  P(r_1) == P(r2) ==> r_1 == r2
);
axiom (forall r_1: Ref, r2: Ref ::
  { P#sm(r_1), P#sm(r2) }
  P#sm(r_1) == P#sm(r2) ==> r_1 == r2
);

axiom (forall Heap: HeapType, r_1: Ref ::
  { P#trigger(Heap, P(r_1)) }
  P#everUsed(P(r_1))
);

// ==================================================
// Translation of method test01
// ==================================================

procedure test01(this: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[this, $allocated];
  
  // -- Checked inhaling of precondition
    perm := FullPerm;
    Mask := Mask[null, P(this):=Mask[null, P(this)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: exhale perm(P(this)) == write &&
  //   (acc(P(this), write) && perm(P(this)) == none) -- 0231.vpr@9.3--11.31
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Exhale might fail. Assertion perm(P(this)) == write might not hold. (0231.vpr@9.10--11.31) [217345]"}
      Mask[null, P(this)] == FullPerm;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Exhale might fail. There might be insufficient permission to access P(this) (0231.vpr@9.10--11.31) [217347]"}
        perm <= Mask[null, P(this)];
    }
    Mask := Mask[null, P(this):=Mask[null, P(this)] - perm];
    assert {:msg "  Exhale might fail. Assertion perm(P(this)) == none might not hold. (0231.vpr@9.10--11.31) [217348]"}
      Mask[null, P(this)] == NoPerm;
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test02a
// ==================================================

procedure test02a(this: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var r_36: Ref;
  var r_27: Ref;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[this, $allocated];
  
  // -- Checked inhaling of precondition
    perm := FullPerm;
    Mask := Mask[null, P(this):=Mask[null, P(this)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: exhale (forperm r: Ref [P(r)] :: false) &&
  //   (acc(P(this), write) && (forperm r: Ref [P(r)] :: false)) -- 0231.vpr@18.3--20.42
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of (forperm r: Ref [P(r)] :: false)
      if (*) {
        if (HasDirectPerm(Mask, null, P(r_36))) {
          assert {:msg "  Exhale might fail. There might be insufficient permission to access P(r) (0231.vpr@18.10--20.42) [217349]"}
            HasDirectPerm(ExhaleWellDef0Mask, null, P(r_36));
        }
        assume false;
      }
    assert {:msg "  Exhale might fail. Assertion (forperm r: Ref [P(r)] :: false) might not hold. (0231.vpr@18.10--20.42) [217350]"}
      (forall r_1_1: Ref ::
      { Mask[null, P(r_1_1)] } { Heap[null, P(r_1_1)] }
      HasDirectPerm(Mask, null, P(r_1_1)) ==> false
    );
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Exhale might fail. There might be insufficient permission to access P(this) (0231.vpr@18.10--20.42) [217352]"}
        perm <= Mask[null, P(this)];
    }
    Mask := Mask[null, P(this):=Mask[null, P(this)] - perm];
    
    // -- Check definedness of (forperm r: Ref [P(r)] :: false)
      if (*) {
        if (HasDirectPerm(Mask, null, P(r_27))) {
          assert {:msg "  Exhale might fail. There might be insufficient permission to access P(r) (0231.vpr@18.10--20.42) [217353]"}
            HasDirectPerm(ExhaleWellDef0Mask, null, P(r_27));
        }
        assume false;
      }
    assert {:msg "  Exhale might fail. Assertion (forperm r: Ref [P(r)] :: false) might not hold. (0231.vpr@18.10--20.42) [217354]"}
      (forall r_3_2: Ref ::
      { Mask[null, P(r_3_2)] } { Heap[null, P(r_3_2)] }
      HasDirectPerm(Mask, null, P(r_3_2)) ==> false
    );
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test02b
// ==================================================

procedure test02b(this: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var r_28: Ref;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[this, $allocated];
  
  // -- Checked inhaling of precondition
    perm := FullPerm;
    Mask := Mask[null, P(this):=Mask[null, P(this)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: exhale acc(P(this), write) && (forperm r: Ref [P(r)] :: false) -- 0231.vpr@26.3--28.42
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Exhale might fail. There might be insufficient permission to access P(this) (0231.vpr@27.10--28.42) [217356]"}
        perm <= Mask[null, P(this)];
    }
    Mask := Mask[null, P(this):=Mask[null, P(this)] - perm];
    
    // -- Check definedness of (forperm r: Ref [P(r)] :: false)
      if (*) {
        if (HasDirectPerm(Mask, null, P(r_28))) {
          assert {:msg "  Exhale might fail. There might be insufficient permission to access P(r) (0231.vpr@27.10--28.42) [217357]"}
            HasDirectPerm(ExhaleWellDef0Mask, null, P(r_28));
        }
        assume false;
      }
    assert {:msg "  Exhale might fail. Assertion (forperm r: Ref [P(r)] :: false) might not hold. (0231.vpr@27.10--28.42) [217358]"}
      (forall r_1_1: Ref ::
      { Mask[null, P(r_1_1)] } { Heap[null, P(r_1_1)] }
      HasDirectPerm(Mask, null, P(r_1_1)) ==> false
    );
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test04a
// ==================================================

procedure test04a(this: Ref) returns ()
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var perm: Perm;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[this, $allocated];
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: inhale acc(P(this), write) -- 0231.vpr@33.3--33.22
    perm := FullPerm;
    Mask := Mask[null, P(this):=Mask[null, P(this)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: exhale acc(P(this), write) && perm(P(this)) >= write -- 0231.vpr@36.3--36.48
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Exhale might fail. There might be insufficient permission to access P(this) (0231.vpr@36.10--36.48) [217361]"}
        perm <= Mask[null, P(this)];
    }
    Mask := Mask[null, P(this):=Mask[null, P(this)] - perm];
    assert {:msg "  Exhale might fail. Assertion perm(P(this)) >= write might not hold. (0231.vpr@36.10--36.48) [217362]"}
      FullPerm <= Mask[null, P(this)];
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test04b
// ==================================================

procedure test04b(this: Ref) returns ()
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var perm: Perm;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[this, $allocated];
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: inhale acc(P(this), write) -- 0231.vpr@40.3--40.22
    perm := FullPerm;
    Mask := Mask[null, P(this):=Mask[null, P(this)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: exhale acc(P(this), write) -- 0231.vpr@42.3--42.22
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Exhale might fail. There might be insufficient permission to access P(this) (0231.vpr@42.10--42.22) [217365]"}
        perm <= Mask[null, P(this)];
    }
    Mask := Mask[null, P(this):=Mask[null, P(this)] - perm];
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
    assume state(Heap, Mask);
  
  // -- Translating statement: exhale perm(P(this)) >= write ==> acc(P(this), write) -- 0231.vpr@43.3--43.51
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    if (FullPerm <= Mask[null, P(this)]) {
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Exhale might fail. There might be insufficient permission to access P(this) (0231.vpr@43.11--43.50) [217367]"}
          perm <= Mask[null, P(this)];
      }
      Mask := Mask[null, P(this):=Mask[null, P(this)] - perm];
    }
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test04c
// ==================================================

procedure test04c(this: Ref) returns ()
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var perm: Perm;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[this, $allocated];
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: inhale acc(P(this), write) -- 0231.vpr@47.3--47.22
    perm := FullPerm;
    Mask := Mask[null, P(this):=Mask[null, P(this)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: exhale acc(P(this), write) &&
  //   (perm(P(this)) >= write ==> acc(P(this), write)) -- 0231.vpr@49.3--49.67
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Exhale might fail. There might be insufficient permission to access P(this) (0231.vpr@49.10--49.67) [217370]"}
        perm <= Mask[null, P(this)];
    }
    Mask := Mask[null, P(this):=Mask[null, P(this)] - perm];
    if (FullPerm <= Mask[null, P(this)]) {
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Exhale might fail. There might be insufficient permission to access P(this) (0231.vpr@49.10--49.67) [217372]"}
          perm <= Mask[null, P(this)];
      }
      Mask := Mask[null, P(this):=Mask[null, P(this)] - perm];
    }
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test03a
// ==================================================

procedure test03a(this: Ref) returns ()
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var perm: Perm;
  var ExhaleHeap: HeapType;
  var loopHeap: HeapType;
  var loopMask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[this, $allocated];
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: while (true) -- 0231.vpr@55.3--59.5
    
    // -- Before loop head
      
      // -- Exhale loop invariant before loop
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        if (NoPerm < Mask[null, P(this)]) {
          perm := FullPerm;
          if (perm != NoPerm) {
            assert {:msg "  Loop invariant [true, perm(P(this)) > none ==> acc(P(this), write)] might not hold on entry. There might be insufficient permission to access P(this) (0231.vpr@57.15--57.62) [217373]"}
              perm <= Mask[null, P(this)];
          }
          Mask := Mask[null, P(this):=Mask[null, P(this)] - perm];
        }
        if (FullPerm <= Mask[null, P(this)]) {
          perm := FullPerm;
          if (perm != NoPerm) {
            assert {:msg "  Loop invariant [true, perm(P(this)) >= write ==> acc(P(this), write)] might not hold on entry. There might be insufficient permission to access P(this) (0231.vpr@58.15--58.64) [217374]"}
              perm <= Mask[null, P(this)];
          }
          Mask := Mask[null, P(this):=Mask[null, P(this)] - perm];
        }
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
    
    // -- Check definedness of invariant
      if (*) {
        perm := FullPerm;
        Mask := Mask[null, P(this):=Mask[null, P(this)] + perm];
        assume state(Heap, Mask);
        assume state(Heap, Mask);
        assume state(Heap, Mask);
        assume state(Heap, Mask);
        assume false;
      }
    
    // -- Check the loop body
      if (*) {
        // Reset state
        loopHeap := Heap;
        loopMask := Mask;
        Mask := ZeroMask;
        assume state(Heap, Mask);
        // Inhale invariant
        perm := FullPerm;
        Mask := Mask[null, P(this):=Mask[null, P(this)] + perm];
        assume state(Heap, Mask);
        assume state(Heap, Mask);
        // Check and assume guard
        assume state(Heap, Mask);
        // Exhale invariant
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        if (NoPerm < Mask[null, P(this)]) {
          perm := FullPerm;
          if (perm != NoPerm) {
            assert {:msg "  Loop invariant [true, perm(P(this)) > none ==> acc(P(this), write)] might not be preserved. There might be insufficient permission to access P(this) (0231.vpr@57.15--57.62) [217375]"}
              perm <= Mask[null, P(this)];
          }
          Mask := Mask[null, P(this):=Mask[null, P(this)] - perm];
        }
        if (FullPerm <= Mask[null, P(this)]) {
          perm := FullPerm;
          if (perm != NoPerm) {
            assert {:msg "  Loop invariant [true, perm(P(this)) >= write ==> acc(P(this), write)] might not be preserved. There might be insufficient permission to access P(this) (0231.vpr@58.15--58.64) [217376]"}
              perm <= Mask[null, P(this)];
          }
          Mask := Mask[null, P(this):=Mask[null, P(this)] - perm];
        }
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Terminate execution
        assume false;
      }
    
    // -- Inhale loop invariant after loop, and assume guard
      assume false;
      assume state(Heap, Mask);
      perm := FullPerm;
      Mask := Mask[null, P(this):=Mask[null, P(this)] + perm];
      assume state(Heap, Mask);
      assume state(Heap, Mask);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test03b
// ==================================================

procedure test03b(this: Ref) returns ()
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var perm: Perm;
  var ExhaleHeap: HeapType;
  var loopHeap: HeapType;
  var loopMask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[this, $allocated];
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: while (true) -- 0231.vpr@65.3--71.4
    
    // -- Before loop head
      
      // -- Exhale loop invariant before loop
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        if (NoPerm < Mask[null, P(this)]) {
          perm := FullPerm;
          if (perm != NoPerm) {
            assert {:msg "  Loop invariant [true, perm(P(this)) > none ==> acc(P(this), write)] might not hold on entry. There might be insufficient permission to access P(this) (0231.vpr@67.15--67.62) [217377]"}
              perm <= Mask[null, P(this)];
          }
          Mask := Mask[null, P(this):=Mask[null, P(this)] - perm];
        }
        if (FullPerm <= Mask[null, P(this)]) {
          perm := FullPerm;
          if (perm != NoPerm) {
            assert {:msg "  Loop invariant [true, perm(P(this)) >= write ==> acc(P(this), write)] might not hold on entry. There might be insufficient permission to access P(this) (0231.vpr@68.15--68.64) [217378]"}
              perm <= Mask[null, P(this)];
          }
          Mask := Mask[null, P(this):=Mask[null, P(this)] - perm];
        }
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
    
    // -- Check definedness of invariant
      if (*) {
        perm := FullPerm;
        Mask := Mask[null, P(this):=Mask[null, P(this)] + perm];
        assume state(Heap, Mask);
        assume state(Heap, Mask);
        assume state(Heap, Mask);
        assume state(Heap, Mask);
        assume false;
      }
    
    // -- Check the loop body
      if (*) {
        // Reset state
        loopHeap := Heap;
        loopMask := Mask;
        Mask := ZeroMask;
        assume state(Heap, Mask);
        // Inhale invariant
        perm := FullPerm;
        Mask := Mask[null, P(this):=Mask[null, P(this)] + perm];
        assume state(Heap, Mask);
        assume state(Heap, Mask);
        // Check and assume guard
        assume state(Heap, Mask);
        
        // -- Translate loop body
          
          // -- Translating statement: exhale acc(P(this), write) -- 0231.vpr@70.5--70.24
            ExhaleWellDef0Heap := Heap;
            ExhaleWellDef0Mask := Mask;
            perm := FullPerm;
            if (perm != NoPerm) {
              assert {:msg "  Exhale might fail. There might be insufficient permission to access P(this) (0231.vpr@70.12--70.24) [217379]"}
                perm <= Mask[null, P(this)];
            }
            Mask := Mask[null, P(this):=Mask[null, P(this)] - perm];
            // Finish exhale
            havoc ExhaleHeap;
            assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
            Heap := ExhaleHeap;
            assume state(Heap, Mask);
        // Exhale invariant
        ExhaleWellDef0Heap := Heap;
        ExhaleWellDef0Mask := Mask;
        if (NoPerm < Mask[null, P(this)]) {
          perm := FullPerm;
          if (perm != NoPerm) {
            assert {:msg "  Loop invariant [true, perm(P(this)) > none ==> acc(P(this), write)] might not be preserved. There might be insufficient permission to access P(this) (0231.vpr@67.15--67.62) [217380]"}
              perm <= Mask[null, P(this)];
          }
          Mask := Mask[null, P(this):=Mask[null, P(this)] - perm];
        }
        if (FullPerm <= Mask[null, P(this)]) {
          perm := FullPerm;
          if (perm != NoPerm) {
            assert {:msg "  Loop invariant [true, perm(P(this)) >= write ==> acc(P(this), write)] might not be preserved. There might be insufficient permission to access P(this) (0231.vpr@68.15--68.64) [217381]"}
              perm <= Mask[null, P(this)];
          }
          Mask := Mask[null, P(this):=Mask[null, P(this)] - perm];
        }
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
        Heap := ExhaleHeap;
        // Terminate execution
        assume false;
      }
    
    // -- Inhale loop invariant after loop, and assume guard
      assume false;
      assume state(Heap, Mask);
      perm := FullPerm;
      Mask := Mask[null, P(this):=Mask[null, P(this)] + perm];
      assume state(Heap, Mask);
      assume state(Heap, Mask);
    assume state(Heap, Mask);
}