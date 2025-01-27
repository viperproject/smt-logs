// 
// Translation of Viper program.
// 
// Date:         2025-01-27 03:12:45
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/old/labelled_old.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/old/labelled_old-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
axiom (forall o_3: Ref, f_8: (Field NormalField Ref), Heap: HeapType ::
  { Heap[o_3, f_8] }
  Heap[o_3, $allocated] ==> Heap[Heap[o_3, f_8], $allocated]
);
function  succHeap(Heap0: HeapType, Heap1: HeapType): bool;
function  succHeapTrans(Heap0: HeapType, Heap1: HeapType): bool;
function  IdenticalOnKnownLocations(Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType): bool;
function  IsPredicateField<A, B>(f_1: (Field A B)): bool;
function  IsWandField<A, B>(f_1: (Field A B)): bool;
function  getPredWandId<A, B>(f_1: (Field A B)): int;
// Frame all locations with direct permissions
axiom (forall <A, B> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_4: Ref, f_9: (Field A B) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_4, f_9] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, o_4, f_9) ==> Heap[o_4, f_9] == ExhaleHeap[o_4, f_9]
);
// Frame all predicate mask locations of predicates with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_1: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_1), ExhaleHeap[null, PredicateMaskField(pm_f_1)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_1) && IsPredicateField(pm_f_1) ==> Heap[null, PredicateMaskField(pm_f_1)] == ExhaleHeap[null, PredicateMaskField(pm_f_1)]
);
// Frame all locations with known folded permissions
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_1: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_1) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_1) && IsPredicateField(pm_f_1) ==> (forall <A, B> o2_1: Ref, f_9: (Field A B) ::
    { ExhaleHeap[o2_1, f_9] }
    Heap[null, PredicateMaskField(pm_f_1)][o2_1, f_9] ==> Heap[o2_1, f_9] == ExhaleHeap[o2_1, f_9]
  )
);
// Frame all wand mask locations of wands with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_1: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_1), ExhaleHeap[null, WandMaskField(pm_f_1)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_1) && IsWandField(pm_f_1) ==> Heap[null, WandMaskField(pm_f_1)] == ExhaleHeap[null, WandMaskField(pm_f_1)]
);
// Frame all locations in the footprint of magic wands
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_1: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_1) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_1) && IsWandField(pm_f_1) ==> (forall <A, B> o2_1: Ref, f_9: (Field A B) ::
    { ExhaleHeap[o2_1, f_9] }
    Heap[null, WandMaskField(pm_f_1)][o2_1, f_9] ==> Heap[o2_1, f_9] == ExhaleHeap[o2_1, f_9]
  )
);
// All previously-allocated references are still allocated
axiom (forall Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_4: Ref ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_4, $allocated] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> Heap[o_4, $allocated] ==> ExhaleHeap[o_4, $allocated]
);
// Updated Heaps are Successor Heaps
axiom (forall <A, B> Heap: HeapType, o_3: Ref, f_10: (Field A B), v: B ::
  { Heap[o_3, f_10:=v] }
  succHeap(Heap, Heap[o_3, f_10:=v])
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

const unique tk: Field NormalField Ref;
axiom !IsPredicateField(tk);
axiom !IsWandField(tk);
const unique f_7: Field NormalField int;
axiom !IsPredicateField(f_7);
axiom !IsWandField(f_7);

// ==================================================
// Translation of method test01
// ==================================================

procedure test01() returns ()
  modifies Heap, Mask;
{
  var initial_lblGuard: bool;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var m_18: Ref;
  var freshObj: Ref;
  var LabelinitialHeap: HeapType;
  var LabelinitialMask: MaskType;
  var perm: Perm;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
    initial_lblGuard := false;
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Assumptions about local variables
    assume Heap[m_18, $allocated];
  
  // -- Translating statement: m := new(f) -- labelled_old.vpr@9.3--9.14
    havoc freshObj;
    assume freshObj != null && !Heap[freshObj, $allocated];
    Heap := Heap[freshObj, $allocated:=true];
    m_18 := freshObj;
    Mask := Mask[m_18, f_7:=Mask[m_18, f_7] + FullPerm];
    assume state(Heap, Mask);
  
  // -- Translating statement: m.f := 15 -- labelled_old.vpr@10.3--10.12
    assert {:msg "  Assignment might fail. There might be insufficient permission to access m.f (labelled_old.vpr@10.3--10.12) [47477]"}
      FullPerm == Mask[m_18, f_7];
    Heap := Heap[m_18, f_7:=15];
    assume state(Heap, Mask);
  
  // -- Translating statement: label initial -- labelled_old.vpr@12.1--12.14
    initial:
    LabelinitialHeap := Heap;
    LabelinitialMask := Mask;
    initial_lblGuard := true;
    assume state(Heap, Mask);
  
  // -- Translating statement: m.f := 3 -- labelled_old.vpr@14.3--14.11
    assert {:msg "  Assignment might fail. There might be insufficient permission to access m.f (labelled_old.vpr@14.3--14.11) [47478]"}
      FullPerm == Mask[m_18, f_7];
    Heap := Heap[m_18, f_7:=3];
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale acc(m.tk, write) -- labelled_old.vpr@15.3--15.26
    perm := FullPerm;
    assume m_18 != null;
    Mask := Mask[m_18, tk:=Mask[m_18, tk] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert m.f == 3 && old[initial](m.f) == 15 -- labelled_old.vpr@17.3--17.45
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of m.f == 3
      assert {:msg "  Assert might fail. There might be insufficient permission to access m.f (labelled_old.vpr@17.10--17.45) [47480]"}
        HasDirectPerm(ExhaleWellDef0Mask, m_18, f_7);
    assert {:msg "  Assert might fail. Assertion m.f == 3 might not hold. (labelled_old.vpr@17.10--17.45) [47481]"}
      Heap[m_18, f_7] == 3;
    
    // -- Check definedness of old[initial](m.f) == 15
      assert {:msg "  Assert might fail. Did not reach labelled state initial required to evaluate old[initial](m.f). (labelled_old.vpr@17.10--17.45) [47482]"}
        initial_lblGuard;
      assert {:msg "  Assert might fail. There might be insufficient permission to access m.f (labelled_old.vpr@17.10--17.45) [47483]"}
        HasDirectPerm(LabelinitialMask, m_18, f_7);
    assert {:msg "  Assert might fail. Assertion old[initial](m.f) == 15 might not hold. (labelled_old.vpr@17.10--17.45) [47484]"}
      LabelinitialHeap[m_18, f_7] == 15;
    assume state(Heap, Mask);
  
  // -- Translating statement: assert perm(m.tk) == write && old[initial](perm(m.tk)) == none -- labelled_old.vpr@18.3--18.65
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Assert might fail. Assertion perm(m.tk) == write might not hold. (labelled_old.vpr@18.10--18.65) [47485]"}
      Mask[m_18, tk] == FullPerm;
    
    // -- Check definedness of old[initial](perm(m.tk)) == none
      assert {:msg "  Assert might fail. Did not reach labelled state initial required to evaluate old[initial](perm(m.tk)). (labelled_old.vpr@18.10--18.65) [47486]"}
        initial_lblGuard;
    assert {:msg "  Assert might fail. Assertion old[initial](perm(m.tk)) == none might not hold. (labelled_old.vpr@18.10--18.65) [47487]"}
      LabelinitialMask[m_18, tk] == NoPerm;
    assume state(Heap, Mask);
  
  // -- Translating statement: exhale acc(m.f, write) -- labelled_old.vpr@19.3--19.18
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Exhale might fail. There might be insufficient permission to access m.f (labelled_old.vpr@19.10--19.18) [47489]"}
        perm <= Mask[m_18, f_7];
    }
    Mask := Mask[m_18, f_7:=Mask[m_18, f_7] - perm];
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
    assume state(Heap, Mask);
  
  // -- Translating statement: assert old[initial](m.f) == 15 -- labelled_old.vpr@20.3--20.33
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of old[initial](m.f) == 15
      assert {:msg "  Assert might fail. Did not reach labelled state initial required to evaluate old[initial](m.f). (labelled_old.vpr@20.10--20.33) [47490]"}
        initial_lblGuard;
      assert {:msg "  Assert might fail. There might be insufficient permission to access m.f (labelled_old.vpr@20.10--20.33) [47491]"}
        HasDirectPerm(LabelinitialMask, m_18, f_7);
    assert {:msg "  Assert might fail. Assertion old[initial](m.f) == 15 might not hold. (labelled_old.vpr@20.10--20.33) [47492]"}
      LabelinitialHeap[m_18, f_7] == 15;
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test02
// ==================================================

procedure test02() returns ()
  modifies Heap, Mask;
{
  var initial_lblGuard: bool;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var m_18: Ref;
  var freshObj: Ref;
  var LabelinitialHeap: HeapType;
  var LabelinitialMask: MaskType;
  var perm: Perm;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
    initial_lblGuard := false;
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Assumptions about local variables
    assume Heap[m_18, $allocated];
  
  // -- Translating statement: m := new(f) -- labelled_old.vpr@25.3--25.14
    havoc freshObj;
    assume freshObj != null && !Heap[freshObj, $allocated];
    Heap := Heap[freshObj, $allocated:=true];
    m_18 := freshObj;
    Mask := Mask[m_18, f_7:=Mask[m_18, f_7] + FullPerm];
    assume state(Heap, Mask);
  
  // -- Translating statement: m.f := 15 -- labelled_old.vpr@26.3--26.12
    assert {:msg "  Assignment might fail. There might be insufficient permission to access m.f (labelled_old.vpr@26.3--26.12) [47493]"}
      FullPerm == Mask[m_18, f_7];
    Heap := Heap[m_18, f_7:=15];
    assume state(Heap, Mask);
  
  // -- Translating statement: label initial -- labelled_old.vpr@28.1--28.14
    initial:
    LabelinitialHeap := Heap;
    LabelinitialMask := Mask;
    initial_lblGuard := true;
    assume state(Heap, Mask);
  
  // -- Translating statement: m.f := 3 -- labelled_old.vpr@30.3--30.11
    assert {:msg "  Assignment might fail. There might be insufficient permission to access m.f (labelled_old.vpr@30.3--30.11) [47494]"}
      FullPerm == Mask[m_18, f_7];
    Heap := Heap[m_18, f_7:=3];
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale acc(m.tk, write) -- labelled_old.vpr@31.3--31.26
    perm := FullPerm;
    assume m_18 != null;
    Mask := Mask[m_18, tk:=Mask[m_18, tk] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: exhale m.f == 3 && old[initial](m.f) == 15 -- labelled_old.vpr@33.3--33.45
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of m.f == 3
      assert {:msg "  Exhale might fail. There might be insufficient permission to access m.f (labelled_old.vpr@33.10--33.45) [47496]"}
        HasDirectPerm(ExhaleWellDef0Mask, m_18, f_7);
    assert {:msg "  Exhale might fail. Assertion m.f == 3 might not hold. (labelled_old.vpr@33.10--33.45) [47497]"}
      Heap[m_18, f_7] == 3;
    
    // -- Check definedness of old[initial](m.f) == 15
      assert {:msg "  Exhale might fail. Did not reach labelled state initial required to evaluate old[initial](m.f). (labelled_old.vpr@33.10--33.45) [47498]"}
        initial_lblGuard;
      assert {:msg "  Exhale might fail. There might be insufficient permission to access m.f (labelled_old.vpr@33.10--33.45) [47499]"}
        HasDirectPerm(LabelinitialMask, m_18, f_7);
    assert {:msg "  Exhale might fail. Assertion old[initial](m.f) == 15 might not hold. (labelled_old.vpr@33.10--33.45) [47500]"}
      LabelinitialHeap[m_18, f_7] == 15;
    assume state(Heap, Mask);
  
  // -- Translating statement: assert perm(m.tk) == write -- labelled_old.vpr@34.3--34.29
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Assert might fail. Assertion perm(m.tk) == write might not hold. (labelled_old.vpr@34.10--34.29) [47501]"}
      Mask[m_18, tk] == FullPerm;
    assume state(Heap, Mask);
  
  // -- Translating statement: assert old[initial](perm(m.tk)) == write -- labelled_old.vpr@36.3--36.43
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of old[initial](perm(m.tk)) == write
      assert {:msg "  Assert might fail. Did not reach labelled state initial required to evaluate old[initial](perm(m.tk)). (labelled_old.vpr@36.10--36.43) [47502]"}
        initial_lblGuard;
    assert {:msg "  Assert might fail. Assertion old[initial](perm(m.tk)) == write might not hold. (labelled_old.vpr@36.10--36.43) [47503]"}
      LabelinitialMask[m_18, tk] == FullPerm;
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test03
// ==================================================

procedure test03() returns ()
  modifies Heap, Mask;
{
  var initial_lblGuard: bool;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var m_18: Ref;
  var freshObj: Ref;
  var LabelinitialHeap: HeapType;
  var LabelinitialMask: MaskType;
  var perm: Perm;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
    initial_lblGuard := false;
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Assumptions about local variables
    assume Heap[m_18, $allocated];
  
  // -- Translating statement: m := new(f) -- labelled_old.vpr@41.3--41.14
    havoc freshObj;
    assume freshObj != null && !Heap[freshObj, $allocated];
    Heap := Heap[freshObj, $allocated:=true];
    m_18 := freshObj;
    Mask := Mask[m_18, f_7:=Mask[m_18, f_7] + FullPerm];
    assume state(Heap, Mask);
  
  // -- Translating statement: m.f := 15 -- labelled_old.vpr@43.3--43.12
    assert {:msg "  Assignment might fail. There might be insufficient permission to access m.f (labelled_old.vpr@43.3--43.12) [47504]"}
      FullPerm == Mask[m_18, f_7];
    Heap := Heap[m_18, f_7:=15];
    assume state(Heap, Mask);
  
  // -- Translating statement: label initial -- labelled_old.vpr@45.1--45.14
    initial:
    LabelinitialHeap := Heap;
    LabelinitialMask := Mask;
    initial_lblGuard := true;
    assume state(Heap, Mask);
  
  // -- Translating statement: m.f := 3 -- labelled_old.vpr@47.3--47.11
    assert {:msg "  Assignment might fail. There might be insufficient permission to access m.f (labelled_old.vpr@47.3--47.11) [47505]"}
      FullPerm == Mask[m_18, f_7];
    Heap := Heap[m_18, f_7:=3];
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale acc(m.tk, write) -- labelled_old.vpr@48.3--48.26
    perm := FullPerm;
    assume m_18 != null;
    Mask := Mask[m_18, tk:=Mask[m_18, tk] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: exhale m.f == 3 && old[initial](m.f) == 15 -- labelled_old.vpr@50.3--50.45
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of m.f == 3
      assert {:msg "  Exhale might fail. There might be insufficient permission to access m.f (labelled_old.vpr@50.10--50.45) [47507]"}
        HasDirectPerm(ExhaleWellDef0Mask, m_18, f_7);
    assert {:msg "  Exhale might fail. Assertion m.f == 3 might not hold. (labelled_old.vpr@50.10--50.45) [47508]"}
      Heap[m_18, f_7] == 3;
    
    // -- Check definedness of old[initial](m.f) == 15
      assert {:msg "  Exhale might fail. Did not reach labelled state initial required to evaluate old[initial](m.f). (labelled_old.vpr@50.10--50.45) [47509]"}
        initial_lblGuard;
      assert {:msg "  Exhale might fail. There might be insufficient permission to access m.f (labelled_old.vpr@50.10--50.45) [47510]"}
        HasDirectPerm(LabelinitialMask, m_18, f_7);
    assert {:msg "  Exhale might fail. Assertion old[initial](m.f) == 15 might not hold. (labelled_old.vpr@50.10--50.45) [47511]"}
      LabelinitialHeap[m_18, f_7] == 15;
    assume state(Heap, Mask);
  
  // -- Translating statement: exhale acc(m.f, write) -- labelled_old.vpr@51.3--51.18
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Exhale might fail. There might be insufficient permission to access m.f (labelled_old.vpr@51.10--51.18) [47513]"}
        perm <= Mask[m_18, f_7];
    }
    Mask := Mask[m_18, f_7:=Mask[m_18, f_7] - perm];
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
    assume state(Heap, Mask);
  
  // -- Translating statement: exhale old[initial](m.f) == 3 -- labelled_old.vpr@53.3--53.32
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of old[initial](m.f) == 3
      assert {:msg "  Exhale might fail. Did not reach labelled state initial required to evaluate old[initial](m.f). (labelled_old.vpr@53.10--53.32) [47514]"}
        initial_lblGuard;
      assert {:msg "  Exhale might fail. There might be insufficient permission to access m.f (labelled_old.vpr@53.10--53.32) [47515]"}
        HasDirectPerm(LabelinitialMask, m_18, f_7);
    assert {:msg "  Exhale might fail. Assertion old[initial](m.f) == 3 might not hold. (labelled_old.vpr@53.10--53.32) [47516]"}
      LabelinitialHeap[m_18, f_7] == 3;
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test04
// ==================================================

procedure test04(x: Ref) returns ()
  modifies Heap, Mask;
{
  var first_lblGuard: bool;
  var second_lblGuard: bool;
  var perm: Perm;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var y: Ref;
  var LabelfirstHeap: HeapType;
  var LabelfirstMask: MaskType;
  var freshObj: Ref;
  var LabelsecondHeap: HeapType;
  var LabelsecondMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var z_12: Ref;
  var z_14: Ref;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
    first_lblGuard := false;
    second_lblGuard := false;
  
  // -- Assumptions about method arguments
    assume Heap[x, $allocated];
  
  // -- Checked inhaling of precondition
    perm := FullPerm;
    assume x != null;
    Mask := Mask[x, f_7:=Mask[x, f_7] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Assumptions about local variables
    assume Heap[y, $allocated];
  
  // -- Translating statement: label first -- labelled_old.vpr@59.1--59.12
    first_2:
    LabelfirstHeap := Heap;
    LabelfirstMask := Mask;
    first_lblGuard := true;
    assume state(Heap, Mask);
  
  // -- Translating statement: y := new(f) -- labelled_old.vpr@61.3--61.14
    havoc freshObj;
    assume freshObj != null && !Heap[freshObj, $allocated];
    Heap := Heap[freshObj, $allocated:=true];
    y := freshObj;
    Mask := Mask[y, f_7:=Mask[y, f_7] + FullPerm];
    assume state(Heap, Mask);
  
  // -- Translating statement: label second -- labelled_old.vpr@63.1--63.13
    second_2:
    LabelsecondHeap := Heap;
    LabelsecondMask := Mask;
    second_lblGuard := true;
    assume state(Heap, Mask);
  
  // -- Translating statement: assert (forperm z: Ref [z.f] :: z.f == old[second](z.f)) -- labelled_old.vpr@64.3--64.57
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of (forperm z: Ref [z.f] :: z.f == old[second](z.f))
      if (*) {
        if (HasDirectPerm(Mask, z_12, f_7)) {
          assert {:msg "  Assert might fail. There might be insufficient permission to access z.f (labelled_old.vpr@64.10--64.57) [47517]"}
            HasDirectPerm(ExhaleWellDef0Mask, z_12, f_7);
          assert {:msg "  Assert might fail. There might be insufficient permission to access z.f (labelled_old.vpr@64.10--64.57) [47518]"}
            HasDirectPerm(ExhaleWellDef0Mask, z_12, f_7);
          assert {:msg "  Assert might fail. Did not reach labelled state second required to evaluate old[second](z.f). (labelled_old.vpr@64.10--64.57) [47519]"}
            second_lblGuard;
          assert {:msg "  Assert might fail. There might be insufficient permission to access z.f (labelled_old.vpr@64.10--64.57) [47520]"}
            HasDirectPerm(LabelsecondMask, z_12, f_7);
        }
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion (forperm z: Ref [z.f] :: z.f == old[second](z.f)) might not hold. (labelled_old.vpr@64.10--64.57) [47521]"}
      (forall z_1: Ref ::
      { Mask[z_1, f_7] } { Heap[z_1, f_7] }
      HasDirectPerm(Mask, z_1, f_7) ==> Heap[z_1, f_7] == LabelsecondHeap[z_1, f_7]
    );
    assume state(Heap, Mask);
  
  // -- Translating statement: assert (forperm z: Ref [z.f] :: z.f == old[first](z.f)) -- labelled_old.vpr@67.3--67.56
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of (forperm z: Ref [z.f] :: z.f == old[first](z.f))
      if (*) {
        if (HasDirectPerm(Mask, z_14, f_7)) {
          assert {:msg "  Assert might fail. There might be insufficient permission to access z.f (labelled_old.vpr@67.10--67.56) [47522]"}
            HasDirectPerm(ExhaleWellDef0Mask, z_14, f_7);
          assert {:msg "  Assert might fail. There might be insufficient permission to access z.f (labelled_old.vpr@67.10--67.56) [47523]"}
            HasDirectPerm(ExhaleWellDef0Mask, z_14, f_7);
          assert {:msg "  Assert might fail. Did not reach labelled state first required to evaluate old[first](z.f). (labelled_old.vpr@67.10--67.56) [47524]"}
            first_lblGuard;
          assert {:msg "  Assert might fail. There might be insufficient permission to access z.f (labelled_old.vpr@67.10--67.56) [47525]"}
            HasDirectPerm(LabelfirstMask, z_14, f_7);
        }
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion (forperm z: Ref [z.f] :: z.f == old[first](z.f)) might not hold. (labelled_old.vpr@67.10--67.56) [47526]"}
      (forall z_3: Ref ::
      { Mask[z_3, f_7] } { Heap[z_3, f_7] }
      HasDirectPerm(Mask, z_3, f_7) ==> Heap[z_3, f_7] == LabelfirstHeap[z_3, f_7]
    );
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test05
// ==================================================

procedure test05(x: Ref, y: Ref) returns ()
  modifies Heap, Mask;
{
  var first_lblGuard: bool;
  var second_lblGuard: bool;
  var perm: Perm;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var LabelfirstHeap: HeapType;
  var LabelfirstMask: MaskType;
  var LabelsecondHeap: HeapType;
  var LabelsecondMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var z_16: Ref;
  var z_18: Ref;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
    first_lblGuard := false;
    second_lblGuard := false;
  
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
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: label first -- labelled_old.vpr@73.1--73.12
    first_2:
    LabelfirstHeap := Heap;
    LabelfirstMask := Mask;
    first_lblGuard := true;
    assume state(Heap, Mask);
  
  // -- Translating statement: y.f := 0 -- labelled_old.vpr@74.3--74.11
    assert {:msg "  Assignment might fail. There might be insufficient permission to access y.f (labelled_old.vpr@74.3--74.11) [47527]"}
      FullPerm == Mask[y, f_7];
    Heap := Heap[y, f_7:=0];
    assume state(Heap, Mask);
  
  // -- Translating statement: label second -- labelled_old.vpr@76.1--76.13
    second_2:
    LabelsecondHeap := Heap;
    LabelsecondMask := Mask;
    second_lblGuard := true;
    assume state(Heap, Mask);
  
  // -- Translating statement: assert (forperm z: Ref [z.f] :: z.f == old[second](z.f)) -- labelled_old.vpr@77.3--77.57
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of (forperm z: Ref [z.f] :: z.f == old[second](z.f))
      if (*) {
        if (HasDirectPerm(Mask, z_16, f_7)) {
          assert {:msg "  Assert might fail. There might be insufficient permission to access z.f (labelled_old.vpr@77.10--77.57) [47528]"}
            HasDirectPerm(ExhaleWellDef0Mask, z_16, f_7);
          assert {:msg "  Assert might fail. There might be insufficient permission to access z.f (labelled_old.vpr@77.10--77.57) [47529]"}
            HasDirectPerm(ExhaleWellDef0Mask, z_16, f_7);
          assert {:msg "  Assert might fail. Did not reach labelled state second required to evaluate old[second](z.f). (labelled_old.vpr@77.10--77.57) [47530]"}
            second_lblGuard;
          assert {:msg "  Assert might fail. There might be insufficient permission to access z.f (labelled_old.vpr@77.10--77.57) [47531]"}
            HasDirectPerm(LabelsecondMask, z_16, f_7);
        }
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion (forperm z: Ref [z.f] :: z.f == old[second](z.f)) might not hold. (labelled_old.vpr@77.10--77.57) [47532]"}
      (forall z_1: Ref ::
      { Mask[z_1, f_7] } { Heap[z_1, f_7] }
      HasDirectPerm(Mask, z_1, f_7) ==> Heap[z_1, f_7] == LabelsecondHeap[z_1, f_7]
    );
    assume state(Heap, Mask);
  
  // -- Translating statement: assert (forperm z: Ref [z.f] :: z.f == old[first](z.f)) -- labelled_old.vpr@80.3--80.56
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of (forperm z: Ref [z.f] :: z.f == old[first](z.f))
      if (*) {
        if (HasDirectPerm(Mask, z_18, f_7)) {
          assert {:msg "  Assert might fail. There might be insufficient permission to access z.f (labelled_old.vpr@80.10--80.56) [47533]"}
            HasDirectPerm(ExhaleWellDef0Mask, z_18, f_7);
          assert {:msg "  Assert might fail. There might be insufficient permission to access z.f (labelled_old.vpr@80.10--80.56) [47534]"}
            HasDirectPerm(ExhaleWellDef0Mask, z_18, f_7);
          assert {:msg "  Assert might fail. Did not reach labelled state first required to evaluate old[first](z.f). (labelled_old.vpr@80.10--80.56) [47535]"}
            first_lblGuard;
          assert {:msg "  Assert might fail. There might be insufficient permission to access z.f (labelled_old.vpr@80.10--80.56) [47536]"}
            HasDirectPerm(LabelfirstMask, z_18, f_7);
        }
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion (forperm z: Ref [z.f] :: z.f == old[first](z.f)) might not hold. (labelled_old.vpr@80.10--80.56) [47537]"}
      (forall z_3: Ref ::
      { Mask[z_3, f_7] } { Heap[z_3, f_7] }
      HasDirectPerm(Mask, z_3, f_7) ==> Heap[z_3, f_7] == LabelfirstHeap[z_3, f_7]
    );
    assume state(Heap, Mask);
}