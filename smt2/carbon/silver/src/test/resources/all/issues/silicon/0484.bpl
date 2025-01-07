// 
// Translation of Viper program.
// 
// Date:         2025-01-07 14:34:21
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/issues/silicon/0484.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/issues/silicon/0484-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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

const unique left: Field NormalField Ref;
axiom !IsPredicateField(left);
axiom !IsWandField(left);
const unique right_1: Field NormalField Ref;
axiom !IsPredicateField(right_1);
axiom !IsWandField(right_1);

// ==================================================
// Translation of predicate treePerm_simpler
// ==================================================

type PredicateType_treePerm_simpler;
function  treePerm_simpler(current: Ref): Field PredicateType_treePerm_simpler FrameType;
function  treePerm_simpler#sm(current: Ref): Field PredicateType_treePerm_simpler PMaskType;
axiom (forall current: Ref ::
  { PredicateMaskField(treePerm_simpler(current)) }
  PredicateMaskField(treePerm_simpler(current)) == treePerm_simpler#sm(current)
);
axiom (forall current: Ref ::
  { treePerm_simpler(current) }
  IsPredicateField(treePerm_simpler(current))
);
axiom (forall current: Ref ::
  { treePerm_simpler(current) }
  getPredWandId(treePerm_simpler(current)) == 0
);
function  treePerm_simpler#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  treePerm_simpler#everUsed<A>(pred: (Field A FrameType)): bool;
axiom (forall current: Ref, current2: Ref ::
  { treePerm_simpler(current), treePerm_simpler(current2) }
  treePerm_simpler(current) == treePerm_simpler(current2) ==> current == current2
);
axiom (forall current: Ref, current2: Ref ::
  { treePerm_simpler#sm(current), treePerm_simpler#sm(current2) }
  treePerm_simpler#sm(current) == treePerm_simpler#sm(current2) ==> current == current2
);

axiom (forall Heap: HeapType, current: Ref ::
  { treePerm_simpler#trigger(Heap, treePerm_simpler(current)) }
  treePerm_simpler#everUsed(treePerm_simpler(current))
);

procedure treePerm_simpler#definedness(current: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  
  // -- Check definedness of predicate body of treePerm_simpler
    
    // -- Initializing the state
      Mask := ZeroMask;
      assume state(Heap, Mask);
      assume AssumePermUpperBound;
      assume Heap[current, $allocated];
    if (current != null) {
      perm := FullPerm;
      assume current != null;
      Mask := Mask[current, left:=Mask[current, left] + perm];
      assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
}

// ==================================================
// Translation of predicate treePerm
// ==================================================

type PredicateType_treePerm;
function  treePerm(current: Ref): Field PredicateType_treePerm FrameType;
function  treePerm#sm(current: Ref): Field PredicateType_treePerm PMaskType;
axiom (forall current: Ref ::
  { PredicateMaskField(treePerm(current)) }
  PredicateMaskField(treePerm(current)) == treePerm#sm(current)
);
axiom (forall current: Ref ::
  { treePerm(current) }
  IsPredicateField(treePerm(current))
);
axiom (forall current: Ref ::
  { treePerm(current) }
  getPredWandId(treePerm(current)) == 1
);
function  treePerm#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  treePerm#everUsed<A>(pred: (Field A FrameType)): bool;
axiom (forall current: Ref, current2: Ref ::
  { treePerm(current), treePerm(current2) }
  treePerm(current) == treePerm(current2) ==> current == current2
);
axiom (forall current: Ref, current2: Ref ::
  { treePerm#sm(current), treePerm#sm(current2) }
  treePerm#sm(current) == treePerm#sm(current2) ==> current == current2
);

axiom (forall Heap: HeapType, current: Ref ::
  { treePerm#trigger(Heap, treePerm(current)) }
  treePerm#everUsed(treePerm(current))
);

procedure treePerm#definedness(current: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  
  // -- Check definedness of predicate body of treePerm
    
    // -- Initializing the state
      Mask := ZeroMask;
      assume state(Heap, Mask);
      assume AssumePermUpperBound;
      assume Heap[current, $allocated];
    if (current != null) {
      perm := FullPerm;
      assume current != null;
      Mask := Mask[current, left:=Mask[current, left] + perm];
      assume state(Heap, Mask);
      perm := FullPerm;
      assume current != null;
      Mask := Mask[current, right_1:=Mask[current, right_1] + perm];
      assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method insert_simpler
// ==================================================

procedure insert_simpler(current: Ref, bool_val: bool) returns ()
  modifies Heap, Mask;
{
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var perm: Perm;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var freshVersion: FrameType;
  var UnfoldingHeap: HeapType;
  var UnfoldingMask: MaskType;
  var ExhaleWellDef1Mask: MaskType;
  var ExhaleWellDef1Heap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[current, $allocated];
  
  // -- Checked inhaling of precondition
    assume bool_val;
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: inhale acc(current.left, write) -- 0484.vpr@13.3--13.27
    perm := FullPerm;
    assume current != null;
    Mask := Mask[current, left:=Mask[current, left] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(treePerm_simpler(current), write) -- 0484.vpr@15.3--15.38
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    if (current != null) {
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Folding treePerm_simpler(current) might fail. There might be insufficient permission to access current.left (0484.vpr@15.3--15.38) [219287]"}
          perm <= Mask[current, left];
      }
      Mask := Mask[current, left:=Mask[current, left] - perm];
    }
    perm := FullPerm;
    Mask := Mask[null, treePerm_simpler(current):=Mask[null, treePerm_simpler(current)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume treePerm_simpler#trigger(Heap, treePerm_simpler(current));
    assume Heap[null, treePerm_simpler(current)] == FrameFragment((if current != null then FrameFragment(Heap[current, left]) else EmptyFrame));
    if (!HasDirectPerm(Mask, null, treePerm_simpler(current))) {
      Heap := Heap[null, treePerm_simpler#sm(current):=ZeroPMask];
      havoc freshVersion;
      Heap := Heap[null, treePerm_simpler(current):=freshVersion];
    }
    if (current != null) {
      Heap := Heap[null, treePerm_simpler#sm(current):=Heap[null, treePerm_simpler#sm(current)][current, left:=true]];
    }
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert current != null ||
  //   (unfolding acc(treePerm_simpler(current), write) in true) -- 0484.vpr@17.3--18.72
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of current != null || (unfolding acc(treePerm_simpler(current), write) in true)
      if (!(current != null)) {
        UnfoldingHeap := ExhaleWellDef0Heap;
        UnfoldingMask := ExhaleWellDef0Mask;
        assume treePerm_simpler#trigger(UnfoldingHeap, treePerm_simpler(current));
        assume UnfoldingHeap[null, treePerm_simpler(current)] == FrameFragment((if current != null then FrameFragment(UnfoldingHeap[current, left]) else EmptyFrame));
        ExhaleWellDef1Mask := UnfoldingMask;
        ExhaleWellDef1Heap := UnfoldingHeap;
        perm := FullPerm;
        if (perm != NoPerm) {
          assert {:msg "  Assert might fail. There might be insufficient permission to access treePerm_simpler(current) (0484.vpr@18.5--18.72) [219290]"}
            perm <= UnfoldingMask[null, treePerm_simpler(current)];
        }
        UnfoldingMask := UnfoldingMask[null, treePerm_simpler(current):=UnfoldingMask[null, treePerm_simpler(current)] - perm];
        if (current != null) {
          perm := FullPerm;
          assume current != null;
          UnfoldingMask := UnfoldingMask[current, left:=UnfoldingMask[current, left] + perm];
          assume state(UnfoldingHeap, UnfoldingMask);
        }
        assume state(UnfoldingHeap, UnfoldingMask);
        
        // -- Free assumptions (exp module)
          if (current != null) {
            Heap := Heap[null, treePerm_simpler#sm(current):=Heap[null, treePerm_simpler#sm(current)][current, left:=true]];
          }
          assume state(Heap, Mask);
      }
    
    // -- Free assumptions (exhale module)
      if (current != null) {
        Heap := Heap[null, treePerm_simpler#sm(current):=Heap[null, treePerm_simpler#sm(current)][current, left:=true]];
      }
      assume state(Heap, Mask);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method insert
// ==================================================

procedure insert(current: Ref, bool_val: bool) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var newVersion: FrameType;
  var freshVersion: FrameType;
  var UnfoldingHeap: HeapType;
  var UnfoldingMask: MaskType;
  var ExhaleWellDef1Mask: MaskType;
  var ExhaleWellDef1Heap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[current, $allocated];
  
  // -- Checked inhaling of precondition
    perm := FullPerm;
    Mask := Mask[null, treePerm(current):=Mask[null, treePerm(current)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume bool_val;
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: unfold acc(treePerm(current), write) -- 0484.vpr@34.3--34.39
    assume treePerm#trigger(Heap, treePerm(current));
    assume Heap[null, treePerm(current)] == FrameFragment((if current != null then CombineFrames(FrameFragment(Heap[current, left]), FrameFragment(Heap[current, right_1])) else EmptyFrame));
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Unfolding treePerm(current) might fail. There might be insufficient permission to access treePerm(current) (0484.vpr@34.3--34.39) [219294]"}
        perm <= Mask[null, treePerm(current)];
    }
    Mask := Mask[null, treePerm(current):=Mask[null, treePerm(current)] - perm];
    
    // -- Update version of predicate
      if (!HasDirectPerm(Mask, null, treePerm(current))) {
        havoc newVersion;
        Heap := Heap[null, treePerm(current):=newVersion];
      }
    if (current != null) {
      perm := FullPerm;
      assume current != null;
      Mask := Mask[current, left:=Mask[current, left] + perm];
      assume state(Heap, Mask);
      perm := FullPerm;
      assume current != null;
      Mask := Mask[current, right_1:=Mask[current, right_1] + perm];
      assume state(Heap, Mask);
    }
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: fold acc(treePerm(current), write) -- 0484.vpr@35.3--35.37
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    if (current != null) {
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Folding treePerm(current) might fail. There might be insufficient permission to access current.left (0484.vpr@35.3--35.37) [219299]"}
          perm <= Mask[current, left];
      }
      Mask := Mask[current, left:=Mask[current, left] - perm];
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Folding treePerm(current) might fail. There might be insufficient permission to access current.right (0484.vpr@35.3--35.37) [219301]"}
          perm <= Mask[current, right_1];
      }
      Mask := Mask[current, right_1:=Mask[current, right_1] - perm];
    }
    perm := FullPerm;
    Mask := Mask[null, treePerm(current):=Mask[null, treePerm(current)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume treePerm#trigger(Heap, treePerm(current));
    assume Heap[null, treePerm(current)] == FrameFragment((if current != null then CombineFrames(FrameFragment(Heap[current, left]), FrameFragment(Heap[current, right_1])) else EmptyFrame));
    if (!HasDirectPerm(Mask, null, treePerm(current))) {
      Heap := Heap[null, treePerm#sm(current):=ZeroPMask];
      havoc freshVersion;
      Heap := Heap[null, treePerm(current):=freshVersion];
    }
    if (current != null) {
      Heap := Heap[null, treePerm#sm(current):=Heap[null, treePerm#sm(current)][current, left:=true]];
      Heap := Heap[null, treePerm#sm(current):=Heap[null, treePerm#sm(current)][current, right_1:=true]];
    }
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert bool_val == true ||
  //   (unfolding acc(treePerm(current), write) in true) -- 0484.vpr@36.3--38.12
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of bool_val == true || (unfolding acc(treePerm(current), write) in true)
      if (!bool_val) {
        UnfoldingHeap := ExhaleWellDef0Heap;
        UnfoldingMask := ExhaleWellDef0Mask;
        assume treePerm#trigger(UnfoldingHeap, treePerm(current));
        assume UnfoldingHeap[null, treePerm(current)] == FrameFragment((if current != null then CombineFrames(FrameFragment(UnfoldingHeap[current, left]), FrameFragment(UnfoldingHeap[current, right_1])) else EmptyFrame));
        ExhaleWellDef1Mask := UnfoldingMask;
        ExhaleWellDef1Heap := UnfoldingHeap;
        perm := FullPerm;
        if (perm != NoPerm) {
          assert {:msg "  Assert might fail. There might be insufficient permission to access treePerm(current) (0484.vpr@36.11--37.64) [219303]"}
            perm <= UnfoldingMask[null, treePerm(current)];
        }
        UnfoldingMask := UnfoldingMask[null, treePerm(current):=UnfoldingMask[null, treePerm(current)] - perm];
        if (current != null) {
          perm := FullPerm;
          assume current != null;
          UnfoldingMask := UnfoldingMask[current, left:=UnfoldingMask[current, left] + perm];
          assume state(UnfoldingHeap, UnfoldingMask);
          perm := FullPerm;
          assume current != null;
          UnfoldingMask := UnfoldingMask[current, right_1:=UnfoldingMask[current, right_1] + perm];
          assume state(UnfoldingHeap, UnfoldingMask);
        }
        assume state(UnfoldingHeap, UnfoldingMask);
        
        // -- Free assumptions (exp module)
          if (current != null) {
            Heap := Heap[null, treePerm#sm(current):=Heap[null, treePerm#sm(current)][current, left:=true]];
            Heap := Heap[null, treePerm#sm(current):=Heap[null, treePerm#sm(current)][current, right_1:=true]];
          }
          assume state(Heap, Mask);
      }
    
    // -- Free assumptions (exhale module)
      if (current != null) {
        Heap := Heap[null, treePerm#sm(current):=Heap[null, treePerm#sm(current)][current, left:=true]];
        Heap := Heap[null, treePerm#sm(current):=Heap[null, treePerm#sm(current)][current, right_1:=true]];
      }
      assume state(Heap, Mask);
    assume state(Heap, Mask);
}