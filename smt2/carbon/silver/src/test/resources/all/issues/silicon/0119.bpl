// 
// Translation of Viper program.
// 
// Date:         2024-12-26 20:18:02
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/issues/silicon/0119.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/issues/silicon/0119-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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

const unique x_36: Field NormalField int;
axiom !IsPredicateField(x_36);
axiom !IsWandField(x_36);

// ==================================================
// Translation of predicate p
// ==================================================

type PredicateType_p;
function  p_14(this: Ref): Field PredicateType_p FrameType;
function  p#sm(this: Ref): Field PredicateType_p PMaskType;
axiom (forall this: Ref ::
  { PredicateMaskField(p_14(this)) }
  PredicateMaskField(p_14(this)) == p#sm(this)
);
axiom (forall this: Ref ::
  { p_14(this) }
  IsPredicateField(p_14(this))
);
axiom (forall this: Ref ::
  { p_14(this) }
  getPredWandId(p_14(this)) == 0
);
function  p#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  p#everUsed<A>(pred: (Field A FrameType)): bool;
axiom (forall this: Ref, this2: Ref ::
  { p_14(this), p_14(this2) }
  p_14(this) == p_14(this2) ==> this == this2
);
axiom (forall this: Ref, this2: Ref ::
  { p#sm(this), p#sm(this2) }
  p#sm(this) == p#sm(this2) ==> this == this2
);

axiom (forall Heap: HeapType, this: Ref ::
  { p#trigger(Heap, p_14(this)) }
  p#everUsed(p_14(this))
);

procedure p#definedness(this: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  
  // -- Check definedness of predicate body of p
    
    // -- Initializing the state
      Mask := ZeroMask;
      assume state(Heap, Mask);
      assume AssumePermUpperBound;
      assume Heap[this, $allocated];
    perm := 1 / 2;
    assert {:msg "  Predicate might not be well-formed. Fraction 1 / 2 might be negative. (0119.vpr@6.1--6.44) [197004]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> this != null;
    Mask := Mask[this, x_36:=Mask[this, x_36] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test01
// ==================================================

procedure test01(this: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var UnfoldingHeap: HeapType;
  var UnfoldingMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var c: int;
  var ExhaleHeap: HeapType;
  var d: int;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[this, $allocated];
  
  // -- Checked inhaling of precondition
    perm := FullPerm;
    Mask := Mask[null, p_14(this):=Mask[null, p_14(this)] + perm];
    assume state(Heap, Mask);
    perm := 1 / 2;
    assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (0119.vpr@9.12--9.44) [197005]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> this != null;
    Mask := Mask[this, x_36:=Mask[this, x_36] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: c := (unfolding acc(p(this), write) in this.x) -- 0119.vpr@14.3--14.40
    
    // -- Check definedness of (unfolding acc(p(this), write) in this.x)
      UnfoldingHeap := Heap;
      UnfoldingMask := Mask;
      assume p#trigger(UnfoldingHeap, p_14(this));
      assume UnfoldingHeap[null, p_14(this)] == FrameFragment(UnfoldingHeap[this, x_36]);
      ExhaleWellDef0Heap := UnfoldingHeap;
      ExhaleWellDef0Mask := UnfoldingMask;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Assignment might fail. There might be insufficient permission to access p(this) (0119.vpr@14.3--14.40) [197006]"}
          perm <= UnfoldingMask[null, p_14(this)];
      }
      UnfoldingMask := UnfoldingMask[null, p_14(this):=UnfoldingMask[null, p_14(this)] - perm];
      perm := 1 / 2;
      assert {:msg "  Assignment might fail. Fraction 1 / 2 might be negative. (0119.vpr@14.3--14.40) [197007]"}
        perm >= NoPerm;
      assume perm > NoPerm ==> this != null;
      UnfoldingMask := UnfoldingMask[this, x_36:=UnfoldingMask[this, x_36] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      assume state(UnfoldingHeap, UnfoldingMask);
      assert {:msg "  Assignment might fail. There might be insufficient permission to access this.x (0119.vpr@14.3--14.40) [197008]"}
        HasDirectPerm(UnfoldingMask, this, x_36);
      
      // -- Free assumptions (exp module)
        Heap := Heap[null, p#sm(this):=Heap[null, p#sm(this)][this, x_36:=true]];
        assume state(Heap, Mask);
    c := Heap[this, x_36];
    assume state(Heap, Mask);
  
  // -- Translating statement: exhale acc(this.x, 1 / 2) -- 0119.vpr@15.3--15.26
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := 1 / 2;
    assert {:msg "  Exhale might fail. Fraction 1 / 2 might be negative. (0119.vpr@15.10--15.26) [197009]"}
      perm >= NoPerm;
    if (perm != NoPerm) {
      assert {:msg "  Exhale might fail. There might be insufficient permission to access this.x (0119.vpr@15.10--15.26) [197010]"}
        perm <= Mask[this, x_36];
    }
    Mask := Mask[this, x_36:=Mask[this, x_36] - perm];
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
    assume state(Heap, Mask);
  
  // -- Translating statement: d := (unfolding acc(p(this), write) in this.x) -- 0119.vpr@16.3--16.40
    
    // -- Check definedness of (unfolding acc(p(this), write) in this.x)
      UnfoldingHeap := Heap;
      UnfoldingMask := Mask;
      assume p#trigger(UnfoldingHeap, p_14(this));
      assume UnfoldingHeap[null, p_14(this)] == FrameFragment(UnfoldingHeap[this, x_36]);
      ExhaleWellDef0Heap := UnfoldingHeap;
      ExhaleWellDef0Mask := UnfoldingMask;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Assignment might fail. There might be insufficient permission to access p(this) (0119.vpr@16.3--16.40) [197011]"}
          perm <= UnfoldingMask[null, p_14(this)];
      }
      UnfoldingMask := UnfoldingMask[null, p_14(this):=UnfoldingMask[null, p_14(this)] - perm];
      perm := 1 / 2;
      assert {:msg "  Assignment might fail. Fraction 1 / 2 might be negative. (0119.vpr@16.3--16.40) [197012]"}
        perm >= NoPerm;
      assume perm > NoPerm ==> this != null;
      UnfoldingMask := UnfoldingMask[this, x_36:=UnfoldingMask[this, x_36] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      assume state(UnfoldingHeap, UnfoldingMask);
      assert {:msg "  Assignment might fail. There might be insufficient permission to access this.x (0119.vpr@16.3--16.40) [197013]"}
        HasDirectPerm(UnfoldingMask, this, x_36);
      
      // -- Free assumptions (exp module)
        Heap := Heap[null, p#sm(this):=Heap[null, p#sm(this)][this, x_36:=true]];
        assume state(Heap, Mask);
    d := Heap[this, x_36];
    assume state(Heap, Mask);
  
  // -- Translating statement: assert c == d -- 0119.vpr@18.3--18.16
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Assert might fail. Assertion c == d might not hold. (0119.vpr@18.10--18.16) [197014]"}
      c == d;
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test02
// ==================================================

procedure test02(this: Ref, alias: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var UnfoldingHeap: HeapType;
  var UnfoldingMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var c: int;
  var ExhaleHeap: HeapType;
  var d: int;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[this, $allocated];
    assume Heap[alias, $allocated];
  
  // -- Checked inhaling of precondition
    assume this == alias;
    assume state(Heap, Mask);
    perm := FullPerm;
    Mask := Mask[null, p_14(this):=Mask[null, p_14(this)] + perm];
    assume state(Heap, Mask);
    perm := 1 / 2;
    assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (0119.vpr@23.12--23.45) [197015]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> alias != null;
    Mask := Mask[alias, x_36:=Mask[alias, x_36] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: c := (unfolding acc(p(this), write) in this.x) -- 0119.vpr@28.3--28.40
    
    // -- Check definedness of (unfolding acc(p(this), write) in this.x)
      UnfoldingHeap := Heap;
      UnfoldingMask := Mask;
      assume p#trigger(UnfoldingHeap, p_14(this));
      assume UnfoldingHeap[null, p_14(this)] == FrameFragment(UnfoldingHeap[this, x_36]);
      ExhaleWellDef0Heap := UnfoldingHeap;
      ExhaleWellDef0Mask := UnfoldingMask;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Assignment might fail. There might be insufficient permission to access p(this) (0119.vpr@28.3--28.40) [197016]"}
          perm <= UnfoldingMask[null, p_14(this)];
      }
      UnfoldingMask := UnfoldingMask[null, p_14(this):=UnfoldingMask[null, p_14(this)] - perm];
      perm := 1 / 2;
      assert {:msg "  Assignment might fail. Fraction 1 / 2 might be negative. (0119.vpr@28.3--28.40) [197017]"}
        perm >= NoPerm;
      assume perm > NoPerm ==> this != null;
      UnfoldingMask := UnfoldingMask[this, x_36:=UnfoldingMask[this, x_36] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      assume state(UnfoldingHeap, UnfoldingMask);
      assert {:msg "  Assignment might fail. There might be insufficient permission to access this.x (0119.vpr@28.3--28.40) [197018]"}
        HasDirectPerm(UnfoldingMask, this, x_36);
      
      // -- Free assumptions (exp module)
        Heap := Heap[null, p#sm(this):=Heap[null, p#sm(this)][this, x_36:=true]];
        assume state(Heap, Mask);
    c := Heap[this, x_36];
    assume state(Heap, Mask);
  
  // -- Translating statement: exhale acc(this.x, 1 / 2) -- 0119.vpr@29.3--29.26
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := 1 / 2;
    assert {:msg "  Exhale might fail. Fraction 1 / 2 might be negative. (0119.vpr@29.10--29.26) [197019]"}
      perm >= NoPerm;
    if (perm != NoPerm) {
      assert {:msg "  Exhale might fail. There might be insufficient permission to access this.x (0119.vpr@29.10--29.26) [197020]"}
        perm <= Mask[this, x_36];
    }
    Mask := Mask[this, x_36:=Mask[this, x_36] - perm];
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
    assume state(Heap, Mask);
  
  // -- Translating statement: d := (unfolding acc(p(alias), write) in alias.x) -- 0119.vpr@30.3--30.42
    
    // -- Check definedness of (unfolding acc(p(alias), write) in alias.x)
      UnfoldingHeap := Heap;
      UnfoldingMask := Mask;
      assume p#trigger(UnfoldingHeap, p_14(alias));
      assume UnfoldingHeap[null, p_14(alias)] == FrameFragment(UnfoldingHeap[alias, x_36]);
      ExhaleWellDef0Heap := UnfoldingHeap;
      ExhaleWellDef0Mask := UnfoldingMask;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Assignment might fail. There might be insufficient permission to access p(alias) (0119.vpr@30.3--30.42) [197021]"}
          perm <= UnfoldingMask[null, p_14(alias)];
      }
      UnfoldingMask := UnfoldingMask[null, p_14(alias):=UnfoldingMask[null, p_14(alias)] - perm];
      perm := 1 / 2;
      assert {:msg "  Assignment might fail. Fraction 1 / 2 might be negative. (0119.vpr@30.3--30.42) [197022]"}
        perm >= NoPerm;
      assume perm > NoPerm ==> alias != null;
      UnfoldingMask := UnfoldingMask[alias, x_36:=UnfoldingMask[alias, x_36] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      assume state(UnfoldingHeap, UnfoldingMask);
      assert {:msg "  Assignment might fail. There might be insufficient permission to access alias.x (0119.vpr@30.3--30.42) [197023]"}
        HasDirectPerm(UnfoldingMask, alias, x_36);
      
      // -- Free assumptions (exp module)
        Heap := Heap[null, p#sm(alias):=Heap[null, p#sm(alias)][alias, x_36:=true]];
        assume state(Heap, Mask);
    d := Heap[alias, x_36];
    assume state(Heap, Mask);
  
  // -- Translating statement: assert c == d -- 0119.vpr@32.3--32.16
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Assert might fail. Assertion c == d might not hold. (0119.vpr@32.10--32.16) [197024]"}
      c == d;
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test03
// ==================================================

procedure test03(this: Ref, alias: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldHeap: HeapType;
  var oldMask: MaskType;
  var UnfoldingHeap: HeapType;
  var UnfoldingMask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleWellDef0Mask: MaskType;
  var c: int;
  var ExhaleHeap: HeapType;
  var d: int;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[this, $allocated];
    assume Heap[alias, $allocated];
  
  // -- Checked inhaling of precondition
    assume this == alias;
    assume state(Heap, Mask);
    perm := FullPerm;
    Mask := Mask[null, p_14(this):=Mask[null, p_14(this)] + perm];
    assume state(Heap, Mask);
    perm := 1 / 2;
    assert {:msg "  Contract might not be well-formed. Fraction 1 / 2 might be negative. (0119.vpr@37.12--37.45) [197025]"}
      perm >= NoPerm;
    assume perm > NoPerm ==> alias != null;
    Mask := Mask[alias, x_36:=Mask[alias, x_36] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldHeap := Heap;
      oldMask := Mask;
  
  // -- Translating statement: c := (unfolding acc(p(alias), write) in alias.x) -- 0119.vpr@42.3--42.42
    
    // -- Check definedness of (unfolding acc(p(alias), write) in alias.x)
      UnfoldingHeap := Heap;
      UnfoldingMask := Mask;
      assume p#trigger(UnfoldingHeap, p_14(alias));
      assume UnfoldingHeap[null, p_14(alias)] == FrameFragment(UnfoldingHeap[alias, x_36]);
      ExhaleWellDef0Heap := UnfoldingHeap;
      ExhaleWellDef0Mask := UnfoldingMask;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Assignment might fail. There might be insufficient permission to access p(alias) (0119.vpr@42.3--42.42) [197026]"}
          perm <= UnfoldingMask[null, p_14(alias)];
      }
      UnfoldingMask := UnfoldingMask[null, p_14(alias):=UnfoldingMask[null, p_14(alias)] - perm];
      perm := 1 / 2;
      assert {:msg "  Assignment might fail. Fraction 1 / 2 might be negative. (0119.vpr@42.3--42.42) [197027]"}
        perm >= NoPerm;
      assume perm > NoPerm ==> alias != null;
      UnfoldingMask := UnfoldingMask[alias, x_36:=UnfoldingMask[alias, x_36] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      assume state(UnfoldingHeap, UnfoldingMask);
      assert {:msg "  Assignment might fail. There might be insufficient permission to access alias.x (0119.vpr@42.3--42.42) [197028]"}
        HasDirectPerm(UnfoldingMask, alias, x_36);
      
      // -- Free assumptions (exp module)
        Heap := Heap[null, p#sm(alias):=Heap[null, p#sm(alias)][alias, x_36:=true]];
        assume state(Heap, Mask);
    c := Heap[alias, x_36];
    assume state(Heap, Mask);
  
  // -- Translating statement: exhale acc(alias.x, 1 / 2) -- 0119.vpr@43.3--43.27
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    perm := 1 / 2;
    assert {:msg "  Exhale might fail. Fraction 1 / 2 might be negative. (0119.vpr@43.10--43.27) [197029]"}
      perm >= NoPerm;
    if (perm != NoPerm) {
      assert {:msg "  Exhale might fail. There might be insufficient permission to access alias.x (0119.vpr@43.10--43.27) [197030]"}
        perm <= Mask[alias, x_36];
    }
    Mask := Mask[alias, x_36:=Mask[alias, x_36] - perm];
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
    assume state(Heap, Mask);
  
  // -- Translating statement: d := (unfolding acc(p(this), write) in this.x) -- 0119.vpr@44.3--44.40
    
    // -- Check definedness of (unfolding acc(p(this), write) in this.x)
      UnfoldingHeap := Heap;
      UnfoldingMask := Mask;
      assume p#trigger(UnfoldingHeap, p_14(this));
      assume UnfoldingHeap[null, p_14(this)] == FrameFragment(UnfoldingHeap[this, x_36]);
      ExhaleWellDef0Heap := UnfoldingHeap;
      ExhaleWellDef0Mask := UnfoldingMask;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Assignment might fail. There might be insufficient permission to access p(this) (0119.vpr@44.3--44.40) [197031]"}
          perm <= UnfoldingMask[null, p_14(this)];
      }
      UnfoldingMask := UnfoldingMask[null, p_14(this):=UnfoldingMask[null, p_14(this)] - perm];
      perm := 1 / 2;
      assert {:msg "  Assignment might fail. Fraction 1 / 2 might be negative. (0119.vpr@44.3--44.40) [197032]"}
        perm >= NoPerm;
      assume perm > NoPerm ==> this != null;
      UnfoldingMask := UnfoldingMask[this, x_36:=UnfoldingMask[this, x_36] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      assume state(UnfoldingHeap, UnfoldingMask);
      assert {:msg "  Assignment might fail. There might be insufficient permission to access this.x (0119.vpr@44.3--44.40) [197033]"}
        HasDirectPerm(UnfoldingMask, this, x_36);
      
      // -- Free assumptions (exp module)
        Heap := Heap[null, p#sm(this):=Heap[null, p#sm(this)][this, x_36:=true]];
        assume state(Heap, Mask);
    d := Heap[this, x_36];
    assume state(Heap, Mask);
  
  // -- Translating statement: assert c == d -- 0119.vpr@46.3--46.16
    ExhaleWellDef0Heap := Heap;
    ExhaleWellDef0Mask := Mask;
    assert {:msg "  Assert might fail. Assertion c == d might not hold. (0119.vpr@46.10--46.16) [197034]"}
      c == d;
    assume state(Heap, Mask);
}