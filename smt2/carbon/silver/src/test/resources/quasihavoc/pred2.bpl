// 
// Translation of Viper program.
// 
// Date:         2024-12-26 14:53:27
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/quasihavoc/pred2.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/quasihavoc/pred2-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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
axiom (forall o_11: Ref, f_10: (Field NormalField Ref), Heap: HeapType ::
  { Heap[o_11, f_10] }
  Heap[o_11, $allocated] ==> Heap[Heap[o_11, f_10], $allocated]
);
function  succHeap(Heap0: HeapType, Heap1: HeapType): bool;
function  succHeapTrans(Heap0: HeapType, Heap1: HeapType): bool;
function  IdenticalOnKnownLocations(Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType): bool;
function  IsPredicateField<A, B>(f_1: (Field A B)): bool;
function  IsWandField<A, B>(f_1: (Field A B)): bool;
function  getPredWandId<A, B>(f_1: (Field A B)): int;
// Frame all locations with direct permissions
axiom (forall <A, B> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_12: Ref, f_16: (Field A B) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_12, f_16] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, o_12, f_16) ==> Heap[o_12, f_16] == ExhaleHeap[o_12, f_16]
);
// Frame all predicate mask locations of predicates with direct permission
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_5: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_5), ExhaleHeap[null, PredicateMaskField(pm_f_5)] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_5) && IsPredicateField(pm_f_5) ==> Heap[null, PredicateMaskField(pm_f_5)] == ExhaleHeap[null, PredicateMaskField(pm_f_5)]
);
// Frame all locations with known folded permissions
axiom (forall <C> Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, pm_f_5: (Field C FrameType) ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), IsPredicateField(pm_f_5) }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_5) && IsPredicateField(pm_f_5) ==> (forall <A, B> o2_5: Ref, f_16: (Field A B) ::
    { ExhaleHeap[o2_5, f_16] }
    Heap[null, PredicateMaskField(pm_f_5)][o2_5, f_16] ==> Heap[o2_5, f_16] == ExhaleHeap[o2_5, f_16]
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
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> HasDirectPerm(Mask, null, pm_f_5) && IsWandField(pm_f_5) ==> (forall <A, B> o2_5: Ref, f_16: (Field A B) ::
    { ExhaleHeap[o2_5, f_16] }
    Heap[null, WandMaskField(pm_f_5)][o2_5, f_16] ==> Heap[o2_5, f_16] == ExhaleHeap[o2_5, f_16]
  )
);
// All previously-allocated references are still allocated
axiom (forall Heap: HeapType, ExhaleHeap: HeapType, Mask: MaskType, o_12: Ref ::
  { IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask), ExhaleHeap[o_12, $allocated] }
  IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask) ==> Heap[o_12, $allocated] ==> ExhaleHeap[o_12, $allocated]
);
// Updated Heaps are Successor Heaps
axiom (forall <A, B> Heap: HeapType, o_11: Ref, f_17: (Field A B), v: B ::
  { Heap[o_11, f_17:=v] }
  succHeap(Heap, Heap[o_11, f_17:=v])
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
// Translation of predicate p1
// ==================================================

type PredicateType_p1;
function  p1(x: Ref): Field PredicateType_p1 FrameType;
function  p1#sm(x: Ref): Field PredicateType_p1 PMaskType;
axiom (forall x: Ref ::
  { PredicateMaskField(p1(x)) }
  PredicateMaskField(p1(x)) == p1#sm(x)
);
axiom (forall x: Ref ::
  { p1(x) }
  IsPredicateField(p1(x))
);
axiom (forall x: Ref ::
  { p1(x) }
  getPredWandId(p1(x)) == 0
);
function  p1#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  p1#everUsed<A>(pred: (Field A FrameType)): bool;
axiom (forall x: Ref, x2: Ref ::
  { p1(x), p1(x2) }
  p1(x) == p1(x2) ==> x == x2
);
axiom (forall x: Ref, x2: Ref ::
  { p1#sm(x), p1#sm(x2) }
  p1#sm(x) == p1#sm(x2) ==> x == x2
);

axiom (forall Heap: HeapType, x: Ref ::
  { p1#trigger(Heap, p1(x)) }
  p1#everUsed(p1(x))
);

procedure p1#definedness(x: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  
  // -- Check definedness of predicate body of p1
    
    // -- Initializing the state
      Mask := ZeroMask;
      assume state(Heap, Mask);
      assume AssumePermUpperBound;
      assume Heap[x, $allocated];
    perm := FullPerm;
    assume x != null;
    Mask := Mask[x, f_7:=Mask[x, f_7] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of predicate p2
// ==================================================

type PredicateType_p2;
function  p2(x: Ref): Field PredicateType_p2 FrameType;
function  p2#sm(x: Ref): Field PredicateType_p2 PMaskType;
axiom (forall x: Ref ::
  { PredicateMaskField(p2(x)) }
  PredicateMaskField(p2(x)) == p2#sm(x)
);
axiom (forall x: Ref ::
  { p2(x) }
  IsPredicateField(p2(x))
);
axiom (forall x: Ref ::
  { p2(x) }
  getPredWandId(p2(x)) == 1
);
function  p2#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  p2#everUsed<A>(pred: (Field A FrameType)): bool;
axiom (forall x: Ref, x2: Ref ::
  { p2(x), p2(x2) }
  p2(x) == p2(x2) ==> x == x2
);
axiom (forall x: Ref, x2: Ref ::
  { p2#sm(x), p2#sm(x2) }
  p2#sm(x) == p2#sm(x2) ==> x == x2
);

axiom (forall Heap: HeapType, x: Ref ::
  { p2#trigger(Heap, p2(x)) }
  p2#everUsed(p2(x))
);

procedure p2#definedness(x: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  
  // -- Check definedness of predicate body of p2
    
    // -- Initializing the state
      Mask := ZeroMask;
      assume state(Heap, Mask);
      assume AssumePermUpperBound;
      assume Heap[x, $allocated];
    perm := 1 / 2;
    assert {:msg "  Predicate might not be well-formed. Fraction 1 / 2 might be negative. (pred2.vpr@7.1--9.2) [77901]"}
      perm >= NoPerm;
    Mask := Mask[null, p1(x):=Mask[null, p1(x)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method foo
// ==================================================

procedure foo_1(x: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var freshVersion: FrameType;
  var newPMask: PMaskType;
  var perm_temp_quasihavoc_: Perm;
  var ExhaleHeap: HeapType;
  var newVersion: FrameType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[x, $allocated];
  
  // -- Checked inhaling of precondition
    perm := FullPerm;
    assume x != null;
    Mask := Mask[x, f_7:=Mask[x, f_7] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of x.f == 42
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access x.f (pred2.vpr@12.14--12.35) [77902]"}
        HasDirectPerm(Mask, x, f_7);
    assume Heap[x, f_7] == 42;
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: fold acc(p1(x), write) -- pred2.vpr@14.5--14.15
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding p1(x) might fail. There might be insufficient permission to access x.f (pred2.vpr@14.5--14.15) [77905]"}
        perm <= Mask[x, f_7];
    }
    Mask := Mask[x, f_7:=Mask[x, f_7] - perm];
    perm := FullPerm;
    Mask := Mask[null, p1(x):=Mask[null, p1(x)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume p1#trigger(Heap, p1(x));
    assume Heap[null, p1(x)] == FrameFragment(Heap[x, f_7]);
    if (!HasDirectPerm(Mask, null, p1(x))) {
      Heap := Heap[null, p1#sm(x):=ZeroPMask];
      havoc freshVersion;
      Heap := Heap[null, p1(x):=freshVersion];
    }
    Heap := Heap[null, p1#sm(x):=Heap[null, p1#sm(x)][x, f_7:=true]];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(p2(x), write) -- pred2.vpr@15.5--15.15
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := 1 / 2;
    assert {:msg "  Folding p2(x) might fail. Fraction 1 / 2 might be negative. (pred2.vpr@15.5--15.15) [77908]"}
      perm >= NoPerm;
    if (perm != NoPerm) {
      assert {:msg "  Folding p2(x) might fail. There might be insufficient permission to access p1(x) (pred2.vpr@15.5--15.15) [77909]"}
        perm <= Mask[null, p1(x)];
    }
    Mask := Mask[null, p1(x):=Mask[null, p1(x)] - perm];
    
    // -- Record predicate instance information
      assume InsidePredicate(p2(x), Heap[null, p2(x)], p1(x), Heap[null, p1(x)]);
    perm := FullPerm;
    Mask := Mask[null, p2(x):=Mask[null, p2(x)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume p2#trigger(Heap, p2(x));
    assume Heap[null, p2(x)] == Heap[null, p1(x)];
    if (!HasDirectPerm(Mask, null, p2(x))) {
      Heap := Heap[null, p2#sm(x):=ZeroPMask];
      havoc freshVersion;
      Heap := Heap[null, p2(x):=freshVersion];
    }
    havoc newPMask;
    assume (forall <A, B> o_15: Ref, f_20: (Field A B) ::
      { newPMask[o_15, f_20] }
      Heap[null, p2#sm(x)][o_15, f_20] || Heap[null, p1#sm(x)][o_15, f_20] ==> newPMask[o_15, f_20]
    );
    Heap := Heap[null, p2#sm(x):=newPMask];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: perm_temp_quasihavoc_ := perm(p1(x)) -- <no position>
    perm_temp_quasihavoc_ := Mask[null, p1(x)];
    assume state(Heap, Mask);
  
  // -- Translating statement: exhale acc(p1(x), perm_temp_quasihavoc_) -- <no position>
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := perm_temp_quasihavoc_;
    assert {:msg "  Exhale might fail. Fraction perm_temp_quasihavoc_ might be negative. (<no position>) [77911]"}
      perm >= NoPerm;
    if (perm != NoPerm) {
      assert {:msg "  Exhale might fail. There might be insufficient permission to access p1(x) (<no position>) [77912]"}
        perm <= Mask[null, p1(x)];
    }
    Mask := Mask[null, p1(x):=Mask[null, p1(x)] - perm];
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale acc(p1(x), perm_temp_quasihavoc_) -- <no position>
    perm := perm_temp_quasihavoc_;
    assert {:msg "  Inhale might fail. Fraction perm_temp_quasihavoc_ might be negative. (<no position>) [77913]"}
      perm >= NoPerm;
    Mask := Mask[null, p1(x):=Mask[null, p1(x)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: unfold acc(p1(x), 1 / 2) -- pred2.vpr@19.5--19.27
    assume p1#trigger(Heap, p1(x));
    assume Heap[null, p1(x)] == FrameFragment(Heap[x, f_7]);
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := 1 / 2;
    assert {:msg "  Unfolding p1(x) might fail. Fraction 1 / 2 might be negative. (pred2.vpr@19.5--19.27) [77915]"}
      perm >= NoPerm;
    if (perm != NoPerm) {
      assert {:msg "  Unfolding p1(x) might fail. There might be insufficient permission to access p1(x) (pred2.vpr@19.5--19.27) [77916]"}
        perm <= Mask[null, p1(x)];
    }
    Mask := Mask[null, p1(x):=Mask[null, p1(x)] - perm];
    
    // -- Update version of predicate
      if (!HasDirectPerm(Mask, null, p1(x))) {
        havoc newVersion;
        Heap := Heap[null, p1(x):=newVersion];
      }
    perm := 1 / 2;
    assert {:msg "  Unfolding p1(x) might fail. Fraction 1 / 2 might be negative. (pred2.vpr@19.5--19.27) [77917]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> x != null;
    Mask := Mask[x, f_7:=Mask[x, f_7] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: unfold acc(p2(x), write) -- pred2.vpr@22.5--22.17
    assume p2#trigger(Heap, p2(x));
    assume Heap[null, p2(x)] == Heap[null, p1(x)];
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Unfolding p2(x) might fail. There might be insufficient permission to access p2(x) (pred2.vpr@22.5--22.17) [77920]"}
        perm <= Mask[null, p2(x)];
    }
    Mask := Mask[null, p2(x):=Mask[null, p2(x)] - perm];
    
    // -- Update version of predicate
      if (!HasDirectPerm(Mask, null, p2(x))) {
        havoc newVersion;
        Heap := Heap[null, p2(x):=newVersion];
      }
    perm := 1 / 2;
    assert {:msg "  Unfolding p2(x) might fail. Fraction 1 / 2 might be negative. (pred2.vpr@22.5--22.17) [77921]"}
      perm >= NoPerm;
    Mask := Mask[null, p1(x):=Mask[null, p1(x)] + perm];
    
    // -- Extra unfolding of predicate
      assume InsidePredicate(p2(x), Heap[null, p2(x)], p1(x), Heap[null, p1(x)]);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: unfold acc(p1(x), 1 / 2) -- pred2.vpr@23.5--23.27
    assume p1#trigger(Heap, p1(x));
    assume Heap[null, p1(x)] == FrameFragment(Heap[x, f_7]);
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := 1 / 2;
    assert {:msg "  Unfolding p1(x) might fail. Fraction 1 / 2 might be negative. (pred2.vpr@23.5--23.27) [77923]"}
      perm >= NoPerm;
    if (perm != NoPerm) {
      assert {:msg "  Unfolding p1(x) might fail. There might be insufficient permission to access p1(x) (pred2.vpr@23.5--23.27) [77924]"}
        perm <= Mask[null, p1(x)];
    }
    Mask := Mask[null, p1(x):=Mask[null, p1(x)] - perm];
    
    // -- Update version of predicate
      if (!HasDirectPerm(Mask, null, p1(x))) {
        havoc newVersion;
        Heap := Heap[null, p1(x):=newVersion];
      }
    perm := 1 / 2;
    assert {:msg "  Unfolding p1(x) might fail. Fraction 1 / 2 might be negative. (pred2.vpr@23.5--23.27) [77925]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> x != null;
    Mask := Mask[x, f_7:=Mask[x, f_7] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert x.f == 42 -- pred2.vpr@24.5--24.21
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    
    // -- Check definedness of x.f == 42
      assert {:msg "  Assert might fail. There might be insufficient permission to access x.f (pred2.vpr@24.12--24.21) [77926]"}
        HasDirectPerm(ExhaleWellDef0Mask, x, f_7);
    assert {:msg "  Assert might fail. Assertion x.f == 42 might not hold. (pred2.vpr@24.12--24.21) [77927]"}
      Heap[x, f_7] == 42;
    assume state(Heap, Mask);
}