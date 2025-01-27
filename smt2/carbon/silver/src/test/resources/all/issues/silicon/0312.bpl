// 
// Translation of Viper program.
// 
// Date:         2025-01-26 23:15:06
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/issues/silicon/0312.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/issues/silicon/0312-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
// Translation of all fields
// ==================================================

const unique b_32: Field NormalField bool;
axiom !IsPredicateField(b_32);
axiom !IsWandField(b_32);
const unique c_12: Field NormalField Ref;
axiom !IsPredicateField(c_12);
axiom !IsWandField(c_12);
const unique d_1: Field NormalField Ref;
axiom !IsPredicateField(d_1);
axiom !IsWandField(d_1);
const unique f_7: Field NormalField int;
axiom !IsPredicateField(f_7);
axiom !IsWandField(f_7);

// ==================================================
// Translation of method test0
// ==================================================

procedure test0(k: Perm, x: Ref) returns ()
  modifies Heap, Mask;
{
  var succeeds2_end_label_lblGuard: bool;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var perm: Perm;
  var Labelsucceeds2_end_labelMask: MaskType;
  var Labelsucceeds2_end_labelHeap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
    succeeds2_end_label_lblGuard := false;
  
  // -- Assumptions about method arguments
    assume Heap[x, $allocated];
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: inhale k > none -- 0312.vpr@10.3--10.18
    assume NoPerm < k;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale acc(x.c, k) && (acc(x.d, k) && acc(x.b, k)) -- 0312.vpr@11.3--11.53
    perm := k;
    assert {:msg "  Inhale might fail. Fraction k might be negative. (0312.vpr@11.10--11.53) [79643]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> x != null;
    Mask := Mask[x, c_12:=Mask[x, c_12] + perm];
    assume state(Heap, Mask);
    perm := k;
    assert {:msg "  Inhale might fail. Fraction k might be negative. (0312.vpr@11.10--11.53) [79644]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> x != null;
    Mask := Mask[x, d_1:=Mask[x, d_1] + perm];
    assume state(Heap, Mask);
    perm := k;
    assert {:msg "  Inhale might fail. Fraction k might be negative. (0312.vpr@11.10--11.53) [79645]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> x != null;
    Mask := Mask[x, b_32:=Mask[x, b_32] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale x.b == (x.c == x.d) -- 0312.vpr@12.3--12.29
    
    // -- Check definedness of x.b == (x.c == x.d)
      assert {:msg "  Inhale might fail. There might be insufficient permission to access x.b (0312.vpr@12.10--12.29) [79646]"}
        HasDirectPerm(Mask, x, b_32);
      assert {:msg "  Inhale might fail. There might be insufficient permission to access x.c (0312.vpr@12.10--12.29) [79647]"}
        HasDirectPerm(Mask, x, c_12);
      assert {:msg "  Inhale might fail. There might be insufficient permission to access x.d (0312.vpr@12.10--12.29) [79648]"}
        HasDirectPerm(Mask, x, d_1);
    assume Heap[x, b_32] == (Heap[x, c_12] == Heap[x, d_1]);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale acc(x.c.f, k) && acc(x.d.f, write) -- 0312.vpr@13.3--13.44
    
    // -- Check definedness of acc(x.c.f, k)
      assert {:msg "  Inhale might fail. There might be insufficient permission to access x.c (0312.vpr@13.10--13.44) [79649]"}
        HasDirectPerm(Mask, x, c_12);
    perm := k;
    assert {:msg "  Inhale might fail. Fraction k might be negative. (0312.vpr@13.10--13.44) [79650]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> Heap[x, c_12] != null;
    Mask := Mask[Heap[x, c_12], f_7:=Mask[Heap[x, c_12], f_7] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of acc(x.d.f, write)
      assert {:msg "  Inhale might fail. There might be insufficient permission to access x.d (0312.vpr@13.10--13.44) [79651]"}
        HasDirectPerm(Mask, x, d_1);
    perm := FullPerm;
    assume Heap[x, d_1] != null;
    Mask := Mask[Heap[x, d_1], f_7:=Mask[Heap[x, d_1], f_7] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: label succeeds2_end_label -- 0312.vpr@16.3--16.28
    succeeds2_end_label:
    Labelsucceeds2_end_labelMask := Mask;
    Labelsucceeds2_end_labelHeap := Heap;
    succeeds2_end_label_lblGuard := true;
    assume state(Heap, Mask);
  
  // -- Translating statement: exhale acc(old[succeeds2_end_label](x.c).f, k) -- 0312.vpr@18.3--18.49
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of acc(old[succeeds2_end_label](x.c).f, k)
      assert {:msg "  Exhale might fail. Did not reach labelled state succeeds2_end_label required to evaluate old[succeeds2_end_label](x.c). (0312.vpr@18.10--18.49) [79653]"}
        succeeds2_end_label_lblGuard;
      assert {:msg "  Exhale might fail. There might be insufficient permission to access x.c (0312.vpr@18.10--18.49) [79654]"}
        HasDirectPerm(Labelsucceeds2_end_labelMask, x, c_12);
    perm := k;
    assert {:msg "  Exhale might fail. Fraction k might be negative. (0312.vpr@18.10--18.49) [79655]"}
      perm >= NoPerm;
    if (perm != NoPerm) {
      assert {:msg "  Exhale might fail. There might be insufficient permission to access old[succeeds2_end_label](x.c).f (0312.vpr@18.10--18.49) [79656]"}
        perm <= Mask[Labelsucceeds2_end_labelHeap[x, c_12], f_7];
    }
    Mask := Mask[Labelsucceeds2_end_labelHeap[x, c_12], f_7:=Mask[Labelsucceeds2_end_labelHeap[x, c_12], f_7] - perm];
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
    assume state(Heap, Mask);
  
  // -- Translating statement: if (old[succeeds2_end_label](x.b)) -- 0312.vpr@20.3--22.4
    
    // -- Check definedness of old[succeeds2_end_label](x.b)
      assert {:msg "  Conditional statement might fail. Did not reach labelled state succeeds2_end_label required to evaluate old[succeeds2_end_label](x.b). (0312.vpr@20.7--20.36) [79657]"}
        succeeds2_end_label_lblGuard;
      assert {:msg "  Conditional statement might fail. There might be insufficient permission to access x.b (0312.vpr@20.7--20.36) [79658]"}
        HasDirectPerm(Labelsucceeds2_end_labelMask, x, b_32);
    if (Labelsucceeds2_end_labelHeap[x, b_32]) {
      
      // -- Translating statement: exhale old[succeeds2_end_label](x.c.f == x.d.f) -- 0312.vpr@21.5--21.52
        ExhaleWellDef0Mask := Mask;
        ExhaleWellDef0Heap := Heap;
        
        // -- Check definedness of old[succeeds2_end_label](x.c.f == x.d.f)
          assert {:msg "  Exhale might fail. Did not reach labelled state succeeds2_end_label required to evaluate old[succeeds2_end_label](x.c.f == x.d.f). (0312.vpr@21.12--21.52) [79659]"}
            succeeds2_end_label_lblGuard;
          assert {:msg "  Exhale might fail. There might be insufficient permission to access x.c (0312.vpr@21.12--21.52) [79660]"}
            HasDirectPerm(Labelsucceeds2_end_labelMask, x, c_12);
          assert {:msg "  Exhale might fail. There might be insufficient permission to access x.c.f (0312.vpr@21.12--21.52) [79661]"}
            HasDirectPerm(Labelsucceeds2_end_labelMask, Labelsucceeds2_end_labelHeap[x, c_12], f_7);
          assert {:msg "  Exhale might fail. There might be insufficient permission to access x.d (0312.vpr@21.12--21.52) [79662]"}
            HasDirectPerm(Labelsucceeds2_end_labelMask, x, d_1);
          assert {:msg "  Exhale might fail. There might be insufficient permission to access x.d.f (0312.vpr@21.12--21.52) [79663]"}
            HasDirectPerm(Labelsucceeds2_end_labelMask, Labelsucceeds2_end_labelHeap[x, d_1], f_7);
        assert {:msg "  Exhale might fail. Assertion old[succeeds2_end_label](x.c.f == x.d.f) might not hold. (0312.vpr@21.12--21.52) [79664]"}
          Labelsucceeds2_end_labelHeap[Labelsucceeds2_end_labelHeap[x, c_12], f_7] == Labelsucceeds2_end_labelHeap[Labelsucceeds2_end_labelHeap[x, d_1], f_7];
        assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test1
// ==================================================

procedure test1_1(k: Perm, x: Ref) returns ()
  modifies Heap, Mask;
{
  var succeeds2_end_label_lblGuard: bool;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var perm: Perm;
  var Labelsucceeds2_end_labelMask: MaskType;
  var Labelsucceeds2_end_labelHeap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
    succeeds2_end_label_lblGuard := false;
  
  // -- Assumptions about method arguments
    assume Heap[x, $allocated];
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: inhale k > none -- 0312.vpr@26.3--26.18
    assume NoPerm < k;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale acc(x.c, k) && (acc(x.d, k) && acc(x.b, k)) -- 0312.vpr@27.3--27.53
    perm := k;
    assert {:msg "  Inhale might fail. Fraction k might be negative. (0312.vpr@27.10--27.53) [79665]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> x != null;
    Mask := Mask[x, c_12:=Mask[x, c_12] + perm];
    assume state(Heap, Mask);
    perm := k;
    assert {:msg "  Inhale might fail. Fraction k might be negative. (0312.vpr@27.10--27.53) [79666]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> x != null;
    Mask := Mask[x, d_1:=Mask[x, d_1] + perm];
    assume state(Heap, Mask);
    perm := k;
    assert {:msg "  Inhale might fail. Fraction k might be negative. (0312.vpr@27.10--27.53) [79667]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> x != null;
    Mask := Mask[x, b_32:=Mask[x, b_32] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale x.b == (x.c == x.d) -- 0312.vpr@28.3--28.29
    
    // -- Check definedness of x.b == (x.c == x.d)
      assert {:msg "  Inhale might fail. There might be insufficient permission to access x.b (0312.vpr@28.10--28.29) [79668]"}
        HasDirectPerm(Mask, x, b_32);
      assert {:msg "  Inhale might fail. There might be insufficient permission to access x.c (0312.vpr@28.10--28.29) [79669]"}
        HasDirectPerm(Mask, x, c_12);
      assert {:msg "  Inhale might fail. There might be insufficient permission to access x.d (0312.vpr@28.10--28.29) [79670]"}
        HasDirectPerm(Mask, x, d_1);
    assume Heap[x, b_32] == (Heap[x, c_12] == Heap[x, d_1]);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale acc(x.c.f, k) && acc(x.d.f, write) -- 0312.vpr@29.3--29.44
    
    // -- Check definedness of acc(x.c.f, k)
      assert {:msg "  Inhale might fail. There might be insufficient permission to access x.c (0312.vpr@29.10--29.44) [79671]"}
        HasDirectPerm(Mask, x, c_12);
    perm := k;
    assert {:msg "  Inhale might fail. Fraction k might be negative. (0312.vpr@29.10--29.44) [79672]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> Heap[x, c_12] != null;
    Mask := Mask[Heap[x, c_12], f_7:=Mask[Heap[x, c_12], f_7] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of acc(x.d.f, write)
      assert {:msg "  Inhale might fail. There might be insufficient permission to access x.d (0312.vpr@29.10--29.44) [79673]"}
        HasDirectPerm(Mask, x, d_1);
    perm := FullPerm;
    assume Heap[x, d_1] != null;
    Mask := Mask[Heap[x, d_1], f_7:=Mask[Heap[x, d_1], f_7] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: label succeeds2_end_label -- 0312.vpr@32.3--32.28
    succeeds2_end_label:
    Labelsucceeds2_end_labelMask := Mask;
    Labelsucceeds2_end_labelHeap := Heap;
    succeeds2_end_label_lblGuard := true;
    assume state(Heap, Mask);
  
  // -- Translating statement: exhale acc(old[succeeds2_end_label](x.c).f, k) -- 0312.vpr@34.3--34.49
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of acc(old[succeeds2_end_label](x.c).f, k)
      assert {:msg "  Exhale might fail. Did not reach labelled state succeeds2_end_label required to evaluate old[succeeds2_end_label](x.c). (0312.vpr@34.10--34.49) [79675]"}
        succeeds2_end_label_lblGuard;
      assert {:msg "  Exhale might fail. There might be insufficient permission to access x.c (0312.vpr@34.10--34.49) [79676]"}
        HasDirectPerm(Labelsucceeds2_end_labelMask, x, c_12);
    perm := k;
    assert {:msg "  Exhale might fail. Fraction k might be negative. (0312.vpr@34.10--34.49) [79677]"}
      perm >= NoPerm;
    if (perm != NoPerm) {
      assert {:msg "  Exhale might fail. There might be insufficient permission to access old[succeeds2_end_label](x.c).f (0312.vpr@34.10--34.49) [79678]"}
        perm <= Mask[Labelsucceeds2_end_labelHeap[x, c_12], f_7];
    }
    Mask := Mask[Labelsucceeds2_end_labelHeap[x, c_12], f_7:=Mask[Labelsucceeds2_end_labelHeap[x, c_12], f_7] - perm];
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
    assume state(Heap, Mask);
  
  // -- Translating statement: exhale old[succeeds2_end_label](x.b) ==>
  //   old[succeeds2_end_label](x.c.f) == old[succeeds2_end_label](x.d.f) -- 0312.vpr@36.3--38.75
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of old[succeeds2_end_label](x.b)
      assert {:msg "  Exhale might fail. Did not reach labelled state succeeds2_end_label required to evaluate old[succeeds2_end_label](x.b). (0312.vpr@37.5--38.75) [79679]"}
        succeeds2_end_label_lblGuard;
      assert {:msg "  Exhale might fail. There might be insufficient permission to access x.b (0312.vpr@37.5--38.75) [79680]"}
        HasDirectPerm(Labelsucceeds2_end_labelMask, x, b_32);
    if (Labelsucceeds2_end_labelHeap[x, b_32]) {
      
      // -- Check definedness of old[succeeds2_end_label](x.c.f) == old[succeeds2_end_label](x.d.f)
        assert {:msg "  Exhale might fail. Did not reach labelled state succeeds2_end_label required to evaluate old[succeeds2_end_label](x.c.f). (0312.vpr@37.5--38.75) [79681]"}
          succeeds2_end_label_lblGuard;
        assert {:msg "  Exhale might fail. There might be insufficient permission to access x.c (0312.vpr@37.5--38.75) [79682]"}
          HasDirectPerm(Labelsucceeds2_end_labelMask, x, c_12);
        assert {:msg "  Exhale might fail. There might be insufficient permission to access x.c.f (0312.vpr@37.5--38.75) [79683]"}
          HasDirectPerm(Labelsucceeds2_end_labelMask, Labelsucceeds2_end_labelHeap[x, c_12], f_7);
        assert {:msg "  Exhale might fail. Did not reach labelled state succeeds2_end_label required to evaluate old[succeeds2_end_label](x.d.f). (0312.vpr@37.5--38.75) [79684]"}
          succeeds2_end_label_lblGuard;
        assert {:msg "  Exhale might fail. There might be insufficient permission to access x.d (0312.vpr@37.5--38.75) [79685]"}
          HasDirectPerm(Labelsucceeds2_end_labelMask, x, d_1);
        assert {:msg "  Exhale might fail. There might be insufficient permission to access x.d.f (0312.vpr@37.5--38.75) [79686]"}
          HasDirectPerm(Labelsucceeds2_end_labelMask, Labelsucceeds2_end_labelHeap[x, d_1], f_7);
      assert {:msg "  Exhale might fail. Assertion old[succeeds2_end_label](x.c.f) == old[succeeds2_end_label](x.d.f) might not hold. (0312.vpr@37.5--38.75) [79687]"}
        Labelsucceeds2_end_labelHeap[Labelsucceeds2_end_labelHeap[x, c_12], f_7] == Labelsucceeds2_end_labelHeap[Labelsucceeds2_end_labelHeap[x, d_1], f_7];
    }
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test2
// ==================================================

procedure test2_1(k: Perm, x: Ref) returns ()
  modifies Heap, Mask;
{
  var succeeds2_end_label_lblGuard: bool;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var perm: Perm;
  var Labelsucceeds2_end_labelMask: MaskType;
  var Labelsucceeds2_end_labelHeap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
    succeeds2_end_label_lblGuard := false;
  
  // -- Assumptions about method arguments
    assume Heap[x, $allocated];
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: inhale k > none -- 0312.vpr@42.3--42.18
    assume NoPerm < k;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale acc(x.c, k) && (acc(x.d, k) && acc(x.b, k)) -- 0312.vpr@43.3--43.53
    perm := k;
    assert {:msg "  Inhale might fail. Fraction k might be negative. (0312.vpr@43.10--43.53) [79688]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> x != null;
    Mask := Mask[x, c_12:=Mask[x, c_12] + perm];
    assume state(Heap, Mask);
    perm := k;
    assert {:msg "  Inhale might fail. Fraction k might be negative. (0312.vpr@43.10--43.53) [79689]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> x != null;
    Mask := Mask[x, d_1:=Mask[x, d_1] + perm];
    assume state(Heap, Mask);
    perm := k;
    assert {:msg "  Inhale might fail. Fraction k might be negative. (0312.vpr@43.10--43.53) [79690]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> x != null;
    Mask := Mask[x, b_32:=Mask[x, b_32] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale x.b == (x.c == x.d) -- 0312.vpr@44.3--44.29
    
    // -- Check definedness of x.b == (x.c == x.d)
      assert {:msg "  Inhale might fail. There might be insufficient permission to access x.b (0312.vpr@44.10--44.29) [79691]"}
        HasDirectPerm(Mask, x, b_32);
      assert {:msg "  Inhale might fail. There might be insufficient permission to access x.c (0312.vpr@44.10--44.29) [79692]"}
        HasDirectPerm(Mask, x, c_12);
      assert {:msg "  Inhale might fail. There might be insufficient permission to access x.d (0312.vpr@44.10--44.29) [79693]"}
        HasDirectPerm(Mask, x, d_1);
    assume Heap[x, b_32] == (Heap[x, c_12] == Heap[x, d_1]);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale acc(x.c.f, k) && acc(x.d.f, write) -- 0312.vpr@45.3--45.44
    
    // -- Check definedness of acc(x.c.f, k)
      assert {:msg "  Inhale might fail. There might be insufficient permission to access x.c (0312.vpr@45.10--45.44) [79694]"}
        HasDirectPerm(Mask, x, c_12);
    perm := k;
    assert {:msg "  Inhale might fail. Fraction k might be negative. (0312.vpr@45.10--45.44) [79695]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> Heap[x, c_12] != null;
    Mask := Mask[Heap[x, c_12], f_7:=Mask[Heap[x, c_12], f_7] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of acc(x.d.f, write)
      assert {:msg "  Inhale might fail. There might be insufficient permission to access x.d (0312.vpr@45.10--45.44) [79696]"}
        HasDirectPerm(Mask, x, d_1);
    perm := FullPerm;
    assume Heap[x, d_1] != null;
    Mask := Mask[Heap[x, d_1], f_7:=Mask[Heap[x, d_1], f_7] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: label succeeds2_end_label -- 0312.vpr@48.3--48.28
    succeeds2_end_label:
    Labelsucceeds2_end_labelMask := Mask;
    Labelsucceeds2_end_labelHeap := Heap;
    succeeds2_end_label_lblGuard := true;
    assume state(Heap, Mask);
  
  // -- Translating statement: exhale acc(old[succeeds2_end_label](x.c).f, k) -- 0312.vpr@50.3--50.49
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of acc(old[succeeds2_end_label](x.c).f, k)
      assert {:msg "  Exhale might fail. Did not reach labelled state succeeds2_end_label required to evaluate old[succeeds2_end_label](x.c). (0312.vpr@50.10--50.49) [79698]"}
        succeeds2_end_label_lblGuard;
      assert {:msg "  Exhale might fail. There might be insufficient permission to access x.c (0312.vpr@50.10--50.49) [79699]"}
        HasDirectPerm(Labelsucceeds2_end_labelMask, x, c_12);
    perm := k;
    assert {:msg "  Exhale might fail. Fraction k might be negative. (0312.vpr@50.10--50.49) [79700]"}
      perm >= NoPerm;
    if (perm != NoPerm) {
      assert {:msg "  Exhale might fail. There might be insufficient permission to access old[succeeds2_end_label](x.c).f (0312.vpr@50.10--50.49) [79701]"}
        perm <= Mask[Labelsucceeds2_end_labelHeap[x, c_12], f_7];
    }
    Mask := Mask[Labelsucceeds2_end_labelHeap[x, c_12], f_7:=Mask[Labelsucceeds2_end_labelHeap[x, c_12], f_7] - perm];
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
    assume state(Heap, Mask);
  
  // -- Translating statement: exhale old[succeeds2_end_label](x.b) ==>
  //   old[succeeds2_end_label](x.c.f == x.d.f) -- 0312.vpr@52.3--54.49
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of old[succeeds2_end_label](x.b)
      assert {:msg "  Exhale might fail. Did not reach labelled state succeeds2_end_label required to evaluate old[succeeds2_end_label](x.b). (0312.vpr@53.5--54.49) [79702]"}
        succeeds2_end_label_lblGuard;
      assert {:msg "  Exhale might fail. There might be insufficient permission to access x.b (0312.vpr@53.5--54.49) [79703]"}
        HasDirectPerm(Labelsucceeds2_end_labelMask, x, b_32);
    if (Labelsucceeds2_end_labelHeap[x, b_32]) {
      
      // -- Check definedness of old[succeeds2_end_label](x.c.f == x.d.f)
        assert {:msg "  Exhale might fail. Did not reach labelled state succeeds2_end_label required to evaluate old[succeeds2_end_label](x.c.f == x.d.f). (0312.vpr@53.5--54.49) [79704]"}
          succeeds2_end_label_lblGuard;
        assert {:msg "  Exhale might fail. There might be insufficient permission to access x.c (0312.vpr@53.5--54.49) [79705]"}
          HasDirectPerm(Labelsucceeds2_end_labelMask, x, c_12);
        assert {:msg "  Exhale might fail. There might be insufficient permission to access x.c.f (0312.vpr@53.5--54.49) [79706]"}
          HasDirectPerm(Labelsucceeds2_end_labelMask, Labelsucceeds2_end_labelHeap[x, c_12], f_7);
        assert {:msg "  Exhale might fail. There might be insufficient permission to access x.d (0312.vpr@53.5--54.49) [79707]"}
          HasDirectPerm(Labelsucceeds2_end_labelMask, x, d_1);
        assert {:msg "  Exhale might fail. There might be insufficient permission to access x.d.f (0312.vpr@53.5--54.49) [79708]"}
          HasDirectPerm(Labelsucceeds2_end_labelMask, Labelsucceeds2_end_labelHeap[x, d_1], f_7);
      assert {:msg "  Exhale might fail. Assertion old[succeeds2_end_label](x.c.f == x.d.f) might not hold. (0312.vpr@53.5--54.49) [79709]"}
        Labelsucceeds2_end_labelHeap[Labelsucceeds2_end_labelHeap[x, c_12], f_7] == Labelsucceeds2_end_labelHeap[Labelsucceeds2_end_labelHeap[x, d_1], f_7];
    }
    assume state(Heap, Mask);
}