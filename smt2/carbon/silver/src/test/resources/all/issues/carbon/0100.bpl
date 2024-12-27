// 
// Translation of Viper program.
// 
// Date:         2024-12-27 10:45:31
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/issues/carbon/0100.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/issues/carbon/0100-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
axiom (forall o_5: Ref, f_3: (Field NormalField Ref), Heap: HeapType ::
  { Heap[o_5, f_3] }
  Heap[o_5, $allocated] ==> Heap[Heap[o_5, f_3], $allocated]
);
function  succHeap(Heap0: HeapType, Heap1: HeapType): bool;
function  succHeapTrans(Heap0: HeapType, Heap1: HeapType): bool;
function  IdenticalOnKnownLocations(Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType): bool;
function  IsPredicateField<A, B>(f_1: (Field A B)): bool;
function  IsWandField<A, B>(f_1: (Field A B)): bool;
function  getPredWandId<A, B>(f_1: (Field A B)): int;
// Frame all locations with direct permissions
axiom (forall <A, B> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_6: Ref, f_9: (Field A B) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_6, f_9] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, o_6, f_9) ==> Heap[o_6, f_9] == ExhaleHeap[o_6, f_9]
);
// Frame all predicate mask locations of predicates with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_2: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_2), ExhaleHeap[null, PredicateMaskField(pm_f_2)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_2) && IsPredicateField(pm_f_2) ==> Heap[null, PredicateMaskField(pm_f_2)] == ExhaleHeap[null, PredicateMaskField(pm_f_2)]
);
// Frame all locations with known folded permissions
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_2: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_2) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_2) && IsPredicateField(pm_f_2) ==> (forall <A, B> o2_2: Ref, f_9: (Field A B) ::
    { ExhaleHeap[o2_2, f_9] }
    Heap[null, PredicateMaskField(pm_f_2)][o2_2, f_9] ==> Heap[o2_2, f_9] == ExhaleHeap[o2_2, f_9]
  )
);
// Frame all wand mask locations of wands with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_2: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_2), ExhaleHeap[null, WandMaskField(pm_f_2)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_2) && IsWandField(pm_f_2) ==> Heap[null, WandMaskField(pm_f_2)] == ExhaleHeap[null, WandMaskField(pm_f_2)]
);
// Frame all locations in the footprint of magic wands
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_2: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsWandField(pm_f_2) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_2) && IsWandField(pm_f_2) ==> (forall <A, B> o2_2: Ref, f_9: (Field A B) ::
    { ExhaleHeap[o2_2, f_9] }
    Heap[null, WandMaskField(pm_f_2)][o2_2, f_9] ==> Heap[o2_2, f_9] == ExhaleHeap[o2_2, f_9]
  )
);
// All previously-allocated references are still allocated
axiom (forall Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_6: Ref ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_6, $allocated] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> Heap[o_6, $allocated] ==> ExhaleHeap[o_6, $allocated]
);
// Updated Heaps are Successor Heaps
axiom (forall <A, B> Heap: HeapType, o_5: Ref, f_10: (Field A B), v: B ::
  { Heap[o_5, f_10:=v] }
  succHeap(Heap, Heap[o_5, f_10:=v])
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

const unique mustReleaseBounded$: Field NormalField Ref;
axiom !IsPredicateField(mustReleaseBounded$);
axiom !IsWandField(mustReleaseBounded$);
const unique mustReleaseUnbounded$: Field NormalField Ref;
axiom !IsPredicateField(mustReleaseUnbounded$);
axiom !IsWandField(mustReleaseUnbounded$);
const unique Main$f: Field NormalField int;
axiom !IsPredicateField(Main$f);
axiom !IsWandField(Main$f);

// ==================================================
// Translation of predicate Main$MonitorInvariant
// ==================================================

type PredicateType_Main$MonitorInvariant;
function  Main$MonitorInvariant(this$_2: Ref): Field PredicateType_Main$MonitorInvariant FrameType;
function  Main$MonitorInvariant#sm(this$_2: Ref): Field PredicateType_Main$MonitorInvariant PMaskType;
axiom (forall this$_2: Ref ::
  { PredicateMaskField(Main$MonitorInvariant(this$_2)) }
  PredicateMaskField(Main$MonitorInvariant(this$_2)) == Main$MonitorInvariant#sm(this$_2)
);
axiom (forall this$_2: Ref ::
  { Main$MonitorInvariant(this$_2) }
  IsPredicateField(Main$MonitorInvariant(this$_2))
);
axiom (forall this$_2: Ref ::
  { Main$MonitorInvariant(this$_2) }
  getPredWandId(Main$MonitorInvariant(this$_2)) == 0
);
function  Main$MonitorInvariant#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  Main$MonitorInvariant#everUsed<A>(pred: (Field A FrameType)): bool;
axiom (forall this$_2: Ref, this$_22: Ref ::
  { Main$MonitorInvariant(this$_2), Main$MonitorInvariant(this$_22) }
  Main$MonitorInvariant(this$_2) == Main$MonitorInvariant(this$_22) ==> this$_2 == this$_22
);
axiom (forall this$_2: Ref, this$_22: Ref ::
  { Main$MonitorInvariant#sm(this$_2), Main$MonitorInvariant#sm(this$_22) }
  Main$MonitorInvariant#sm(this$_2) == Main$MonitorInvariant#sm(this$_22) ==> this$_2 == this$_22
);

axiom (forall Heap: HeapType, this$_2: Ref ::
  { Main$MonitorInvariant#trigger(Heap, Main$MonitorInvariant(this$_2)) }
  Main$MonitorInvariant#everUsed(Main$MonitorInvariant(this$_2))
);

procedure Main$MonitorInvariant#definedness(this$_2: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  
  // -- Check definedness of predicate body of Main$MonitorInvariant
    
    // -- Initializing the state
      Mask := ZeroMask;
      assume state(Heap, Mask);
      assume AssumePermUpperBound;
      assume Heap[this$_2, $allocated];
    perm := FullPerm;
    assume this$_2 != null;
    Mask := Mask[this$_2, Main$f:=Mask[this$_2, Main$f] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method Main$change
// ==================================================

procedure Main$change(this: Ref, m_17: Ref, n: int) returns ()
  modifies Heap, Mask;
{
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var perm: Perm;
  var r$_15: Ref;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var newVersion: FrameType;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[this, $allocated];
    assume Heap[m_17, $allocated];
  
  // -- Checked inhaling of precondition
    assume this != null;
    assume state(Heap, Mask);
    assume m_17 != null;
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
    
    // -- Do welldefinedness check of the inhale part.
      if (*) {
        assume state(PostHeap, PostMask);
        assume state(PostHeap, PostMask);
        assume state(PostHeap, PostMask);
        assume state(PostHeap, PostMask);
        assume false;
      }
    
    // -- Normally inhale the exhale part.
      assume PostMask[m_17, mustReleaseBounded$] == NoPerm;
      assume state(PostHeap, PostMask);
      assume FullPerm - PostMask[m_17, mustReleaseBounded$] == FullPerm;
      assume state(PostHeap, PostMask);
      perm := FullPerm - PostMask[m_17, mustReleaseBounded$];
      assert {:msg "  Contract might not be well-formed. Fraction write - perm(m.mustReleaseBounded$) might be negative. (0100.vpr@20.11--20.84) [192283]"}
        perm >= NoPerm;
      assume perm > NoPerm ==> m_17 != null;
      PostMask := PostMask[m_17, mustReleaseUnbounded$:=PostMask[m_17, mustReleaseUnbounded$] + perm];
      assume state(PostHeap, PostMask);
      assume state(PostHeap, PostMask);
      
      // -- Check definedness of (forperm r$_15: Ref [r$_15.mustReleaseUnbounded$] :: false)
        if (*) {
          if (HasDirectPerm(PostMask, r$_15, mustReleaseUnbounded$)) {
            assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access r$_15.mustReleaseUnbounded$ (0100.vpr@21.11--21.78) [192284]"}
              HasDirectPerm(PostMask, r$_15, mustReleaseUnbounded$);
          }
          assume false;
        }
      assume (forall r$_15_1: Ref ::
        { PostMask[r$_15_1, mustReleaseUnbounded$] } { PostHeap[r$_15_1, mustReleaseUnbounded$] }
        HasDirectPerm(PostMask, r$_15_1, mustReleaseUnbounded$) ==> false
      );
      assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: assert m != null -- 0100.vpr@23.3--23.19
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Assert might fail. Assertion m != null might not hold. (0100.vpr@23.10--23.19) [192285]"}
      m_17 != null;
    assume state(Heap, Mask);
  
  // -- Translating statement: assert perm(m.mustReleaseBounded$) + perm(m.mustReleaseUnbounded$) == none -- 0100.vpr@25.3--25.77
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Assert might fail. Assertion perm(m.mustReleaseBounded$) + perm(m.mustReleaseUnbounded$) == none might not hold. (0100.vpr@25.10--25.77) [192286]"}
      Mask[m_17, mustReleaseBounded$] + Mask[m_17, mustReleaseUnbounded$] == NoPerm;
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale acc(Main$MonitorInvariant(m), write) -- 0100.vpr@26.3--26.46
    perm := FullPerm;
    Mask := Mask[null, Main$MonitorInvariant(m_17):=Mask[null, Main$MonitorInvariant(m_17)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: unfold acc(Main$MonitorInvariant(m), write) -- 0100.vpr@27.3--27.46
    assume Main$MonitorInvariant#trigger(Heap, Main$MonitorInvariant(m_17));
    assume Heap[null, Main$MonitorInvariant(m_17)] == FrameFragment(Heap[m_17, Main$f]);
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Unfolding Main$MonitorInvariant(m) might fail. There might be insufficient permission to access Main$MonitorInvariant(m) (0100.vpr@27.3--27.46) [192290]"}
        perm <= Mask[null, Main$MonitorInvariant(m_17)];
    }
    Mask := Mask[null, Main$MonitorInvariant(m_17):=Mask[null, Main$MonitorInvariant(m_17)] - perm];
    
    // -- Update version of predicate
      if (!HasDirectPerm(Mask, null, Main$MonitorInvariant(m_17))) {
        havoc newVersion;
        Heap := Heap[null, Main$MonitorInvariant(m_17):=newVersion];
      }
    perm := FullPerm;
    assume m_17 != null;
    Mask := Mask[m_17, Main$f:=Mask[m_17, Main$f] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale acc(m.mustReleaseUnbounded$, write) -- 0100.vpr@29.3--29.45
    perm := FullPerm;
    assume m_17 != null;
    Mask := Mask[m_17, mustReleaseUnbounded$:=Mask[m_17, mustReleaseUnbounded$] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: m.Main$f := n -- 0100.vpr@30.3--30.16
    assert {:msg "  Assignment might fail. There might be insufficient permission to access m.Main$f (0100.vpr@30.3--30.16) [192293]"}
      FullPerm == Mask[m_17, Main$f];
    Heap := Heap[m_17, Main$f:=n];
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Postcondition of Main$change might not hold. Assertion perm(m.mustReleaseBounded$) == none might not hold. (0100.vpr@18.11--18.54) [192294]"}
      Mask[m_17, mustReleaseBounded$] == NoPerm;
    assert {:msg "  Postcondition of Main$change might not hold. Assertion write - perm(m.mustReleaseBounded$) == write might not hold. (0100.vpr@19.11--19.63) [192295]"}
      FullPerm - Mask[m_17, mustReleaseBounded$] == FullPerm;
    perm := FullPerm - Mask[m_17, mustReleaseBounded$];
    assert {:msg "  Postcondition of Main$change might not hold. Fraction write - perm(m.mustReleaseBounded$) might be negative. (0100.vpr@20.11--20.84) [192296]"}
      perm >= NoPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of Main$change might not hold. There might be insufficient permission to access m.mustReleaseUnbounded$ (0100.vpr@20.11--20.84) [192297]"}
        perm <= Mask[m_17, mustReleaseUnbounded$];
    }
    Mask := Mask[m_17, mustReleaseUnbounded$:=Mask[m_17, mustReleaseUnbounded$] - perm];
    assert {:msg "  Postcondition of Main$change might not hold. Assertion (forperm r$_15: Ref [r$_15.mustReleaseUnbounded$] :: false) might not hold. (0100.vpr@21.11--21.78) [192298]"}
      (forall r$_15_2: Ref ::
      { Mask[r$_15_2, mustReleaseUnbounded$] } { Heap[r$_15_2, mustReleaseUnbounded$] }
      HasDirectPerm(Mask, r$_15_2, mustReleaseUnbounded$) ==> false
    );
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}