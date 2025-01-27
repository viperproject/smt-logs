// 
// Translation of Viper program.
// 
// Date:         2025-01-26 23:14:19
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/issues/silver/0444.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/issues/silver/0444-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
// Translation of predicate falze
// ==================================================

type PredicateType_falze;
function  falze(): Field PredicateType_falze FrameType;
function  falze#sm(): Field PredicateType_falze PMaskType;
axiom PredicateMaskField(falze()) == falze#sm();
axiom IsPredicateField(falze());
axiom getPredWandId(falze()) == 0;
function  falze#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  falze#everUsed<A>(pred: (Field A FrameType)): bool;

axiom (forall Heap: HeapType ::
  { falze#trigger(Heap, falze()) }
  falze#everUsed(falze())
);

procedure falze#definedness() returns ()
  modifies Heap, Mask;
{
  
  // -- Check definedness of predicate body of falze
    
    // -- Initializing the state
      Mask := ZeroMask;
      assume state(Heap, Mask);
      assume AssumePermUpperBound;
    assume false;
    assume state(Heap, Mask);
}

// ==================================================
// Translation of predicate tru
// ==================================================

type PredicateType_tru;
function  tru(): Field PredicateType_tru FrameType;
function  tru#sm(): Field PredicateType_tru PMaskType;
axiom PredicateMaskField(tru()) == tru#sm();
axiom IsPredicateField(tru());
axiom getPredWandId(tru()) == 1;
function  tru#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  tru#everUsed<A>(pred: (Field A FrameType)): bool;

axiom (forall Heap: HeapType ::
  { tru#trigger(Heap, tru()) }
  tru#everUsed(tru())
);

procedure tru#definedness() returns ()
  modifies Heap, Mask;
{
  
  // -- Check definedness of predicate body of tru
    
    // -- Initializing the state
      Mask := ZeroMask;
      assume state(Heap, Mask);
      assume AssumePermUpperBound;
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test_unfold
// ==================================================

procedure test_unfold() returns ()
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var perm: Perm;
  var newVersion: FrameType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: unfold acc(falze(), none) -- 0444.vpr@17.5--17.30
    assert {:msg "  Unfolding falze() might fail. Fraction none might not be positive. (0444.vpr@17.5--17.30) [55741]"}
      false;
    assume falze#trigger(Heap, falze());
    assume Heap[null, falze()] == EmptyFrame;
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := NoPerm;
    if (perm != NoPerm) {
      assert {:msg "  Unfolding falze() might fail. There might be insufficient permission to access falze() (0444.vpr@17.5--17.30) [55743]"}
        perm <= Mask[null, falze()];
    }
    Mask := Mask[null, falze():=Mask[null, falze()] - perm];
    
    // -- Update version of predicate
      if (!HasDirectPerm(Mask, null, falze())) {
        havoc newVersion;
        Heap := Heap[null, falze():=newVersion];
      }
    assume false;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert false -- 0444.vpr@18.5--18.17
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Assert might fail. Assertion false might not hold. (0444.vpr@18.12--18.17) [55744]"}
      false;
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test_unfold_unknown
// ==================================================

procedure test_unfold_unknown(p_1: Perm) returns ()
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var perm: Perm;
  var newVersion: FrameType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: inhale p >= none -- 0444.vpr@22.12--22.21
    assume NoPerm <= p_1;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: unfold acc(falze(), p) -- 0444.vpr@26.5--26.27
    assert {:msg "  Unfolding falze() might fail. Fraction p might not be positive. (0444.vpr@26.5--26.27) [55745]"}
      p_1 > NoPerm;
    assume falze#trigger(Heap, falze());
    assume Heap[null, falze()] == EmptyFrame;
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := p_1;
    assert {:msg "  Unfolding falze() might fail. Fraction p might be negative. (0444.vpr@26.5--26.27) [55746]"}
      perm >= NoPerm;
    if (perm != NoPerm) {
      assert {:msg "  Unfolding falze() might fail. There might be insufficient permission to access falze() (0444.vpr@26.5--26.27) [55747]"}
        perm <= Mask[null, falze()];
    }
    Mask := Mask[null, falze():=Mask[null, falze()] - perm];
    
    // -- Update version of predicate
      if (!HasDirectPerm(Mask, null, falze())) {
        havoc newVersion;
        Heap := Heap[null, falze():=newVersion];
      }
    assume false;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert false -- 0444.vpr@27.5--27.17
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Assert might fail. Assertion false might not hold. (0444.vpr@27.12--27.17) [55748]"}
      false;
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test_unfolding
// ==================================================

procedure test_unfolding() returns ()
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var UnfoldingHeap: HeapType;
  var UnfoldingMask: MaskType;
  var ExhaleWellDef1Heap: HeapType;
  var ExhaleWellDef1Mask: MaskType;
  var perm: Perm;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: assert (unfolding acc(falze(), none) in false) -- 0444.vpr@32.5--32.49
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of (unfolding acc(falze(), none) in false)
      UnfoldingHeap := ExhaleWellDef0Heap;
      UnfoldingMask := ExhaleWellDef0Mask;
      assert {:msg "  Assert might fail. Fraction none might not be positive. (0444.vpr@32.12--32.49) [55749]"}
        false;
      assume falze#trigger(UnfoldingHeap, falze());
      assume UnfoldingHeap[null, falze()] == EmptyFrame;
      ExhaleWellDef1Heap := UnfoldingHeap;
      ExhaleWellDef1Mask := UnfoldingMask;
      perm := NoPerm;
      if (perm != NoPerm) {
        assert {:msg "  Assert might fail. There might be insufficient permission to access falze() (0444.vpr@32.12--32.49) [55750]"}
          perm <= UnfoldingMask[null, falze()];
      }
      UnfoldingMask := UnfoldingMask[null, falze():=UnfoldingMask[null, falze()] - perm];
      assume false;
      assume state(UnfoldingHeap, UnfoldingMask);
      
      // -- Free assumptions (exp module)
        assume state(Heap, Mask);
    assert {:msg "  Assert might fail. Assertion false might not hold. (0444.vpr@32.12--32.49) [55751]"}
      false;
    
    // -- Free assumptions (exhale module)
      assume state(Heap, Mask);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test_unfolding_unknown
// ==================================================

procedure test_unfolding_unknown(p_1: Perm) returns ()
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var UnfoldingHeap: HeapType;
  var UnfoldingMask: MaskType;
  var ExhaleWellDef1Heap: HeapType;
  var ExhaleWellDef1Mask: MaskType;
  var perm: Perm;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: inhale p >= none -- 0444.vpr@36.12--36.21
    assume NoPerm <= p_1;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert (unfolding acc(falze(), p) in false) -- 0444.vpr@40.5--40.46
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of (unfolding acc(falze(), p) in false)
      UnfoldingHeap := ExhaleWellDef0Heap;
      UnfoldingMask := ExhaleWellDef0Mask;
      assert {:msg "  Assert might fail. Fraction p might not be positive. (0444.vpr@40.12--40.46) [55752]"}
        p_1 > NoPerm;
      assume falze#trigger(UnfoldingHeap, falze());
      assume UnfoldingHeap[null, falze()] == EmptyFrame;
      ExhaleWellDef1Heap := UnfoldingHeap;
      ExhaleWellDef1Mask := UnfoldingMask;
      perm := p_1;
      assert {:msg "  Assert might fail. Fraction p might be negative. (0444.vpr@40.12--40.46) [55753]"}
        perm >= NoPerm;
      if (perm != NoPerm) {
        assert {:msg "  Assert might fail. There might be insufficient permission to access falze() (0444.vpr@40.12--40.46) [55754]"}
          perm <= UnfoldingMask[null, falze()];
      }
      UnfoldingMask := UnfoldingMask[null, falze():=UnfoldingMask[null, falze()] - perm];
      assume false;
      assume state(UnfoldingHeap, UnfoldingMask);
      
      // -- Free assumptions (exp module)
        assume state(Heap, Mask);
    assert {:msg "  Assert might fail. Assertion false might not hold. (0444.vpr@40.12--40.46) [55755]"}
      false;
    
    // -- Free assumptions (exhale module)
      assume state(Heap, Mask);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test_fold
// ==================================================

procedure test_fold() returns ()
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var perm: Perm;
  var freshVersion: FrameType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: fold acc(tru(), none) -- 0444.vpr@45.5--45.26
    assert {:msg "  Folding tru() might fail. Fraction none might not be positive. (0444.vpr@45.5--45.26) [55756]"}
      false;
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := NoPerm;
    Mask := Mask[null, tru():=Mask[null, tru()] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume tru#trigger(Heap, tru());
    assume Heap[null, tru()] == EmptyFrame;
    if (!HasDirectPerm(Mask, null, tru())) {
      Heap := Heap[null, tru#sm():=ZeroPMask];
      havoc freshVersion;
      Heap := Heap[null, tru():=freshVersion];
    }
    assume state(Heap, Mask);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test_fold_unknown
// ==================================================

procedure test_fold_unknown(p_1: Perm) returns ()
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var perm: Perm;
  var freshVersion: FrameType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: inhale p >= none -- 0444.vpr@49.12--49.21
    assume NoPerm <= p_1;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(tru(), p) -- 0444.vpr@51.5--51.23
    assert {:msg "  Folding tru() might fail. Fraction p might not be positive. (0444.vpr@51.5--51.23) [55759]"}
      p_1 > NoPerm;
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := p_1;
    assert {:msg "  Folding tru() might fail. Fraction p might be negative. (0444.vpr@51.5--51.23) [55761]"}
      perm >= NoPerm;
    Mask := Mask[null, tru():=Mask[null, tru()] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume tru#trigger(Heap, tru());
    assume Heap[null, tru()] == EmptyFrame;
    if (!HasDirectPerm(Mask, null, tru())) {
      Heap := Heap[null, tru#sm():=ZeroPMask];
      havoc freshVersion;
      Heap := Heap[null, tru():=freshVersion];
    }
    assume state(Heap, Mask);
    assume state(Heap, Mask);
}