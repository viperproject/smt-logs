// 
// Translation of Viper program.
// 
// Date:         2024-12-27 02:34:53
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/basic/multi_initialization.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/basic/multi_initialization-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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

const unique n_10: Field NormalField Ref;
axiom !IsPredicateField(n_10);
axiom !IsWandField(n_10);
const unique m_22: Field NormalField Ref;
axiom !IsPredicateField(m_22);
axiom !IsWandField(m_22);

// ==================================================
// Translation of predicate P
// ==================================================

type PredicateType_P;
function  P(x: Ref): Field PredicateType_P FrameType;
function  P#sm(x: Ref): Field PredicateType_P PMaskType;
axiom (forall x: Ref ::
  { PredicateMaskField(P(x)) }
  PredicateMaskField(P(x)) == P#sm(x)
);
axiom (forall x: Ref ::
  { P(x) }
  IsPredicateField(P(x))
);
axiom (forall x: Ref ::
  { P(x) }
  getPredWandId(P(x)) == 0
);
function  P#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  P#everUsed<A>(pred: (Field A FrameType)): bool;
axiom (forall x: Ref, x2: Ref ::
  { P(x), P(x2) }
  P(x) == P(x2) ==> x == x2
);
axiom (forall x: Ref, x2: Ref ::
  { P#sm(x), P#sm(x2) }
  P#sm(x) == P#sm(x2) ==> x == x2
);

axiom (forall Heap: HeapType, x: Ref ::
  { P#trigger(Heap, P(x)) }
  P#everUsed(P(x))
);

procedure P#definedness(x: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  
  // -- Check definedness of predicate body of P
    
    // -- Initializing the state
      Mask := ZeroMask;
      assume state(Heap, Mask);
      assume AssumePermUpperBound;
      assume Heap[x, $allocated];
    perm := FullPerm;
    assume x != null;
    Mask := Mask[x, n_10:=Mask[x, n_10] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method get_refs
// ==================================================

procedure get_refs() returns (x: Ref, y: Ref)
  modifies Heap, Mask;
{
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var perm: Perm;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  if (*) {
    havoc PostHeap;
    PostMask := ZeroMask;
    assume state(PostHeap, PostMask);
    // Checked inhaling of postcondition to check definedness
    perm := FullPerm;
    assume x != null;
    PostMask := PostMask[x, n_10:=PostMask[x, n_10] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: inhale false -- <no position>
    assume false;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of get_refs might not hold. There might be insufficient permission to access x.n (multi_initialization.vpr@7.13--7.21) [185534]"}
        perm <= Mask[x, n_10];
    }
    Mask := Mask[x, n_10:=Mask[x, n_10] - perm];
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method test1
// ==================================================

procedure test1() returns ()
  modifies Heap, Mask;
{
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var a_2: Ref;
  var b_24: Ref;
  var c: Ref;
  var d: Ref;
  var e_1: Ref;
  var PreCallHeap: HeapType;
  var PreCallMask: MaskType;
  var perm: Perm;
  var freshObj: Ref;
  var _receiver0: Ref;
  var _target0: Ref;
  var _receiver0_1: Ref;
  var _target0_1: Ref;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Assumptions about local variables
    assume Heap[a_2, $allocated];
    assume Heap[b_24, $allocated];
    assume Heap[c, $allocated];
    assume Heap[d, $allocated];
    assume Heap[e_1, $allocated];
  
  // -- Translating statement: c, d := get_refs() -- multi_initialization.vpr@11.3--11.35
    PreCallHeap := Heap;
    PreCallMask := Mask;
    
    // -- Havocing target variables
      havoc c, d;
    
    // -- Inhaling postcondition
      perm := FullPerm;
      assume c != null;
      Mask := Mask[c, n_10:=Mask[c, n_10] + perm];
      assume state(Heap, Mask);
      assume state(Heap, Mask);
    assume Heap[c, $allocated];
    assume Heap[d, $allocated];
    assume state(Heap, Mask);
  
  // -- Translating statement: e := new(n) -- multi_initialization.vpr@12.3--12.23
    havoc freshObj;
    assume freshObj != null && !Heap[freshObj, $allocated];
    Heap := Heap[freshObj, $allocated:=true];
    e_1 := freshObj;
    Mask := Mask[e_1, n_10:=Mask[e_1, n_10] + FullPerm];
    assume state(Heap, Mask);
  
  // -- Assumptions about local variables
    assume Heap[_receiver0, $allocated];
    assume Heap[_target0, $allocated];
  
  // -- Translating statement: _receiver0 := c -- multi_initialization.vpr@14.3--14.4
    _receiver0 := c;
    assume state(Heap, Mask);
  
  // -- Translating statement: _target0, e := get_refs() -- multi_initialization.vpr@14.3--14.23
    PreCallHeap := Heap;
    PreCallMask := Mask;
    
    // -- Havocing target variables
      havoc _target0, e_1;
    
    // -- Inhaling postcondition
      perm := FullPerm;
      assume _target0 != null;
      Mask := Mask[_target0, n_10:=Mask[_target0, n_10] + perm];
      assume state(Heap, Mask);
      assume state(Heap, Mask);
    assume Heap[_target0, $allocated];
    assume Heap[e_1, $allocated];
    assume state(Heap, Mask);
  
  // -- Translating statement: _receiver0.n := _target0 -- multi_initialization.vpr@14.3--14.6
    assert {:msg "  Assignment might fail. There might be insufficient permission to access _receiver0.n (multi_initialization.vpr@14.3--14.6) [185535]"}
      FullPerm == Mask[_receiver0, n_10];
    Heap := Heap[_receiver0, n_10:=_target0];
    assume state(Heap, Mask);
  
  // -- Assumptions about local variables
    assume Heap[_receiver0_1, $allocated];
    assume Heap[_target0_1, $allocated];
  
  // -- Translating statement: _receiver0 := c.n -- multi_initialization.vpr@15.3--15.6
    
    // -- Check definedness of c.n
      assert {:msg "  Assignment might fail. There might be insufficient permission to access c.n (multi_initialization.vpr@15.3--15.6) [185536]"}
        HasDirectPerm(Mask, c, n_10);
    _receiver0_1 := Heap[c, n_10];
    assume state(Heap, Mask);
  
  // -- Translating statement: _target0 := new(n) -- multi_initialization.vpr@15.3--15.18
    havoc freshObj;
    assume freshObj != null && !Heap[freshObj, $allocated];
    Heap := Heap[freshObj, $allocated:=true];
    _target0_1 := freshObj;
    Mask := Mask[_target0_1, n_10:=Mask[_target0_1, n_10] + FullPerm];
    assume state(Heap, Mask);
  
  // -- Translating statement: _receiver0.n := _target0 -- multi_initialization.vpr@15.3--15.8
    assert {:msg "  Assignment might fail. There might be insufficient permission to access _receiver0.n (multi_initialization.vpr@15.3--15.8) [185537]"}
      FullPerm == Mask[_receiver0_1, n_10];
    Heap := Heap[_receiver0_1, n_10:=_target0_1];
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method foo
// ==================================================

procedure foo_1(x: Ref) returns (a_2: Ref, b_24: Ref)
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[x, $allocated];
  
  // -- Checked inhaling of precondition
    perm := FullPerm;
    Mask := Mask[null, P(x):=Mask[null, P(x)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: inhale false -- <no position>
    assume false;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test2
// ==================================================

procedure test2(x: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var UnfoldingHeap: HeapType;
  var UnfoldingMask: MaskType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var _receiver0: Ref;
  var _target0: Ref;
  var _receiver1: Ref;
  var _target1: Ref;
  var PreCallHeap: HeapType;
  var PreCallMask: MaskType;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[x, $allocated];
  
  // -- Checked inhaling of precondition
    perm := FullPerm;
    Mask := Mask[null, P(x):=Mask[null, P(x)] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of acc((unfolding acc(P(x), write) in x.n).n, write)
      UnfoldingHeap := Heap;
      UnfoldingMask := Mask;
      assume P#trigger(UnfoldingHeap, P(x));
      assume UnfoldingHeap[null, P(x)] == FrameFragment(UnfoldingHeap[x, n_10]);
      ExhaleWellDef0Mask := UnfoldingMask;
      ExhaleWellDef0Heap := UnfoldingHeap;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access P(x) (multi_initialization.vpr@22.12--22.84) [185538]"}
          perm <= UnfoldingMask[null, P(x)];
      }
      UnfoldingMask := UnfoldingMask[null, P(x):=UnfoldingMask[null, P(x)] - perm];
      perm := FullPerm;
      assume x != null;
      UnfoldingMask := UnfoldingMask[x, n_10:=UnfoldingMask[x, n_10] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      assume state(UnfoldingHeap, UnfoldingMask);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access x.n (multi_initialization.vpr@22.12--22.84) [185539]"}
        HasDirectPerm(UnfoldingMask, x, n_10);
      
      // -- Free assumptions (exp module)
        Heap := Heap[null, P#sm(x):=Heap[null, P#sm(x)][x, n_10:=true]];
        assume state(Heap, Mask);
      
      // -- Free assumptions (exp module)
        Heap := Heap[null, P#sm(x):=Heap[null, P#sm(x)][x, n_10:=true]];
        assume state(Heap, Mask);
    perm := FullPerm;
    assume Heap[x, n_10] != null;
    Mask := Mask[Heap[x, n_10], n_10:=Mask[Heap[x, n_10], n_10] + perm];
    assume state(Heap, Mask);
    
    // -- Check definedness of acc((unfolding acc(P(x), write) in x.n).m, write)
      UnfoldingHeap := Heap;
      UnfoldingMask := Mask;
      assume P#trigger(UnfoldingHeap, P(x));
      assume UnfoldingHeap[null, P(x)] == FrameFragment(UnfoldingHeap[x, n_10]);
      ExhaleWellDef0Mask := UnfoldingMask;
      ExhaleWellDef0Heap := UnfoldingHeap;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access P(x) (multi_initialization.vpr@22.12--22.84) [185540]"}
          perm <= UnfoldingMask[null, P(x)];
      }
      UnfoldingMask := UnfoldingMask[null, P(x):=UnfoldingMask[null, P(x)] - perm];
      perm := FullPerm;
      assume x != null;
      UnfoldingMask := UnfoldingMask[x, n_10:=UnfoldingMask[x, n_10] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      assume state(UnfoldingHeap, UnfoldingMask);
      assert {:msg "  Contract might not be well-formed. There might be insufficient permission to access x.n (multi_initialization.vpr@22.12--22.84) [185541]"}
        HasDirectPerm(UnfoldingMask, x, n_10);
      
      // -- Free assumptions (exp module)
        Heap := Heap[null, P#sm(x):=Heap[null, P#sm(x)][x, n_10:=true]];
        assume state(Heap, Mask);
      
      // -- Free assumptions (exp module)
        Heap := Heap[null, P#sm(x):=Heap[null, P#sm(x)][x, n_10:=true]];
        assume state(Heap, Mask);
    perm := FullPerm;
    assume Heap[x, n_10] != null;
    Mask := Mask[Heap[x, n_10], m_22:=Mask[Heap[x, n_10], m_22] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Assumptions about local variables
    assume Heap[_receiver0, $allocated];
    assume Heap[_target0, $allocated];
    assume Heap[_receiver1, $allocated];
    assume Heap[_target1, $allocated];
  
  // -- Translating statement: _receiver0 := (unfolding acc(P(x), write) in x.n) -- multi_initialization.vpr@24.4--24.25
    
    // -- Check definedness of (unfolding acc(P(x), write) in x.n)
      UnfoldingHeap := Heap;
      UnfoldingMask := Mask;
      assume P#trigger(UnfoldingHeap, P(x));
      assume UnfoldingHeap[null, P(x)] == FrameFragment(UnfoldingHeap[x, n_10]);
      ExhaleWellDef0Mask := UnfoldingMask;
      ExhaleWellDef0Heap := UnfoldingHeap;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Assignment might fail. There might be insufficient permission to access P(x) (multi_initialization.vpr@24.4--24.25) [185542]"}
          perm <= UnfoldingMask[null, P(x)];
      }
      UnfoldingMask := UnfoldingMask[null, P(x):=UnfoldingMask[null, P(x)] - perm];
      perm := FullPerm;
      assume x != null;
      UnfoldingMask := UnfoldingMask[x, n_10:=UnfoldingMask[x, n_10] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      assume state(UnfoldingHeap, UnfoldingMask);
      assert {:msg "  Assignment might fail. There might be insufficient permission to access x.n (multi_initialization.vpr@24.4--24.25) [185543]"}
        HasDirectPerm(UnfoldingMask, x, n_10);
      
      // -- Free assumptions (exp module)
        Heap := Heap[null, P#sm(x):=Heap[null, P#sm(x)][x, n_10:=true]];
        assume state(Heap, Mask);
    _receiver0 := Heap[x, n_10];
    assume state(Heap, Mask);
  
  // -- Translating statement: _receiver1 := (unfolding acc(P(x), write) in x.n) -- multi_initialization.vpr@24.31--24.52
    
    // -- Check definedness of (unfolding acc(P(x), write) in x.n)
      UnfoldingHeap := Heap;
      UnfoldingMask := Mask;
      assume P#trigger(UnfoldingHeap, P(x));
      assume UnfoldingHeap[null, P(x)] == FrameFragment(UnfoldingHeap[x, n_10]);
      ExhaleWellDef0Mask := UnfoldingMask;
      ExhaleWellDef0Heap := UnfoldingHeap;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Assignment might fail. There might be insufficient permission to access P(x) (multi_initialization.vpr@24.31--24.52) [185544]"}
          perm <= UnfoldingMask[null, P(x)];
      }
      UnfoldingMask := UnfoldingMask[null, P(x):=UnfoldingMask[null, P(x)] - perm];
      perm := FullPerm;
      assume x != null;
      UnfoldingMask := UnfoldingMask[x, n_10:=UnfoldingMask[x, n_10] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      assume state(UnfoldingHeap, UnfoldingMask);
      assert {:msg "  Assignment might fail. There might be insufficient permission to access x.n (multi_initialization.vpr@24.31--24.52) [185545]"}
        HasDirectPerm(UnfoldingMask, x, n_10);
      
      // -- Free assumptions (exp module)
        Heap := Heap[null, P#sm(x):=Heap[null, P#sm(x)][x, n_10:=true]];
        assume state(Heap, Mask);
    _receiver1 := Heap[x, n_10];
    assume state(Heap, Mask);
  
  // -- Translating statement: _target0, _target1 := foo(x) -- multi_initialization.vpr@24.3--24.65
    PreCallHeap := Heap;
    PreCallMask := Mask;
    
    // -- Exhaling precondition
      ExhaleWellDef0Mask := Mask;
      ExhaleWellDef0Heap := Heap;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  The precondition of method foo might not hold. There might be insufficient permission to access P(x) (multi_initialization.vpr@24.3--24.65) [185546]"}
          perm <= Mask[null, P(x)];
      }
      Mask := Mask[null, P(x):=Mask[null, P(x)] - perm];
      // Finish exhale
      havoc ExhaleHeap;
      assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
      Heap := ExhaleHeap;
    
    // -- Havocing target variables
      havoc _target0, _target1;
    
    // -- Inhaling postcondition
      assume state(Heap, Mask);
    assume Heap[_target0, $allocated];
    assume Heap[_target1, $allocated];
    assume state(Heap, Mask);
  
  // -- Translating statement: _receiver0.n := _target0 -- multi_initialization.vpr@24.4--24.28
    assert {:msg "  Assignment might fail. There might be insufficient permission to access _receiver0.n (multi_initialization.vpr@24.4--24.28) [185547]"}
      FullPerm == Mask[_receiver0, n_10];
    Heap := Heap[_receiver0, n_10:=_target0];
    assume state(Heap, Mask);
  
  // -- Translating statement: _receiver1.m := _target1 -- multi_initialization.vpr@24.31--24.55
    assert {:msg "  Assignment might fail. There might be insufficient permission to access _receiver1.m (multi_initialization.vpr@24.31--24.55) [185548]"}
      FullPerm == Mask[_receiver1, m_22];
    Heap := Heap[_receiver1, m_22:=_target1];
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method bar
// ==================================================

procedure bar_1(x: Ref) returns (a_2: Ref)
  modifies Heap, Mask;
{
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var PostHeap: HeapType;
  var PostMask: MaskType;
  var perm: Perm;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
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
  if (*) {
    havoc PostHeap;
    PostMask := ZeroMask;
    assume state(PostHeap, PostMask);
    // Checked inhaling of postcondition to check definedness
    perm := FullPerm;
    assume x != null;
    PostMask := PostMask[x, n_10:=PostMask[x, n_10] + perm];
    assume state(PostHeap, PostMask);
    assume state(PostHeap, PostMask);
    // Stop execution
    assume false;
  }
  
  // -- Translating statement: inhale false -- <no position>
    assume false;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Exhaling postcondition
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Postcondition of bar might not hold. There might be insufficient permission to access x.n (multi_initialization.vpr@28.11--28.19) [185549]"}
        perm <= Mask[x, n_10];
    }
    Mask := Mask[x, n_10:=Mask[x, n_10] - perm];
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
}

// ==================================================
// Translation of method test3
// ==================================================

procedure test3(x: Ref) returns ()
  modifies Heap, Mask;
{
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var _receiver0: Ref;
  var _target0: Ref;
  var PreCallHeap: HeapType;
  var PreCallMask: MaskType;
  var perm: Perm;
  
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
  
  // -- Assumptions about local variables
    assume Heap[_receiver0, $allocated];
    assume Heap[_target0, $allocated];
  
  // -- Translating statement: _receiver0 := x -- multi_initialization.vpr@30.3--30.4
    _receiver0 := x;
    assume state(Heap, Mask);
  
  // -- Translating statement: _target0 := bar(x) -- multi_initialization.vpr@30.3--30.16
    PreCallHeap := Heap;
    PreCallMask := Mask;
    
    // -- Havocing target variables
      havoc _target0;
    
    // -- Inhaling postcondition
      perm := FullPerm;
      assume x != null;
      Mask := Mask[x, n_10:=Mask[x, n_10] + perm];
      assume state(Heap, Mask);
      assume state(Heap, Mask);
    assume Heap[_target0, $allocated];
    assume state(Heap, Mask);
  
  // -- Translating statement: _receiver0.n := _target0 -- multi_initialization.vpr@30.3--30.6
    assert {:msg "  Assignment might fail. There might be insufficient permission to access _receiver0.n (multi_initialization.vpr@30.3--30.6) [185550]"}
      FullPerm == Mask[_receiver0, n_10];
    Heap := Heap[_receiver0, n_10:=_target0];
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method baz
// ==================================================

procedure baz(x: Ref) returns (a_2: Ref)
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[x, $allocated];
  
  // -- Checked inhaling of precondition
    perm := FullPerm;
    assume x != null;
    Mask := Mask[x, n_10:=Mask[x, n_10] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: inhale false -- <no position>
    assume false;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test4
// ==================================================

procedure test4(x: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var _receiver0: Ref;
  var _target0: Ref;
  var PreCallHeap: HeapType;
  var PreCallMask: MaskType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var ExhaleHeap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[x, $allocated];
  
  // -- Checked inhaling of precondition
    perm := FullPerm;
    assume x != null;
    Mask := Mask[x, n_10:=Mask[x, n_10] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Assumptions about local variables
    assume Heap[_receiver0, $allocated];
    assume Heap[_target0, $allocated];
  
  // -- Translating statement: _receiver0 := x -- multi_initialization.vpr@39.3--39.4
    _receiver0 := x;
    assume state(Heap, Mask);
  
  // -- Translating statement: _target0 := baz(x) -- multi_initialization.vpr@39.3--39.16
    PreCallHeap := Heap;
    PreCallMask := Mask;
    
    // -- Exhaling precondition
      ExhaleWellDef0Mask := Mask;
      ExhaleWellDef0Heap := Heap;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  The precondition of method baz might not hold. There might be insufficient permission to access x.n (multi_initialization.vpr@39.3--39.16) [185551]"}
          perm <= Mask[x, n_10];
      }
      Mask := Mask[x, n_10:=Mask[x, n_10] - perm];
      // Finish exhale
      havoc ExhaleHeap;
      assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
      Heap := ExhaleHeap;
    
    // -- Havocing target variables
      havoc _target0;
    
    // -- Inhaling postcondition
      assume state(Heap, Mask);
    assume Heap[_target0, $allocated];
    assume state(Heap, Mask);
  
  // -- Translating statement: _receiver0.n := _target0 -- multi_initialization.vpr@39.3--39.6
    assert {:msg "  Assignment might fail. There might be insufficient permission to access _receiver0.n (multi_initialization.vpr@39.3--39.6) [185552]"}
      FullPerm == Mask[_receiver0, n_10];
    Heap := Heap[_receiver0, n_10:=_target0];
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method test5
// ==================================================

procedure test5() returns ()
  modifies Heap, Mask;
{
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var a_2: Ref;
  var b_24: Ref;
  var c: Ref;
  var d: Ref;
  var perm: Perm;
  var _receiver0: Ref;
  var _target0: Ref;
  var _receiver1: Ref;
  var _target1: Ref;
  var PreCallHeap: HeapType;
  var PreCallMask: MaskType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumePermUpperBound;
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Assumptions about local variables
    assume Heap[a_2, $allocated];
    assume Heap[b_24, $allocated];
    assume Heap[c, $allocated];
    assume Heap[d, $allocated];
  
  // -- Translating statement: inhale acc(a.n, write) && acc(b.m, write) -- multi_initialization.vpr@50.3--50.30
    perm := FullPerm;
    assume a_2 != null;
    Mask := Mask[a_2, n_10:=Mask[a_2, n_10] + perm];
    assume state(Heap, Mask);
    perm := FullPerm;
    assume b_24 != null;
    Mask := Mask[b_24, m_22:=Mask[b_24, m_22] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Assumptions about local variables
    assume Heap[_receiver0, $allocated];
    assume Heap[_target0, $allocated];
    assume Heap[_receiver1, $allocated];
    assume Heap[_target1, $allocated];
  
  // -- Translating statement: _receiver0 := a -- multi_initialization.vpr@51.10--51.11
    _receiver0 := a_2;
    assume state(Heap, Mask);
  
  // -- Translating statement: _receiver1 := b -- multi_initialization.vpr@51.13--51.14
    _receiver1 := b_24;
    assume state(Heap, Mask);
  
  // -- Translating statement: _target0, _target1 := get_refs() -- multi_initialization.vpr@43.3--43.18
    PreCallHeap := Heap;
    PreCallMask := Mask;
    
    // -- Havocing target variables
      havoc _target0, _target1;
    
    // -- Inhaling postcondition
      perm := FullPerm;
      assume _target0 != null;
      Mask := Mask[_target0, n_10:=Mask[_target0, n_10] + perm];
      assume state(Heap, Mask);
      assume state(Heap, Mask);
    assume Heap[_target0, $allocated];
    assume Heap[_target1, $allocated];
    assume state(Heap, Mask);
  
  // -- Translating statement: _receiver0.n := _target0 -- multi_initialization.vpr@43.3--43.6
    assert {:msg "  Assignment might fail. There might be insufficient permission to access _receiver0.n (multi_initialization.vpr@43.3--43.6) [185555]"}
      FullPerm == Mask[_receiver0, n_10];
    Heap := Heap[_receiver0, n_10:=_target0];
    assume state(Heap, Mask);
  
  // -- Translating statement: _receiver1.m := _target1 -- multi_initialization.vpr@43.8--43.11
    assert {:msg "  Assignment might fail. There might be insufficient permission to access _receiver1.m (multi_initialization.vpr@43.8--43.11) [185556]"}
      FullPerm == Mask[_receiver1, m_22];
    Heap := Heap[_receiver1, m_22:=_target1];
    assume state(Heap, Mask);
  
  // -- Translating statement: c, d := get_refs() -- multi_initialization.vpr@46.3--46.28
    PreCallHeap := Heap;
    PreCallMask := Mask;
    
    // -- Havocing target variables
      havoc c, d;
    
    // -- Inhaling postcondition
      perm := FullPerm;
      assume c != null;
      Mask := Mask[c, n_10:=Mask[c, n_10] + perm];
      assume state(Heap, Mask);
      assume state(Heap, Mask);
    assume Heap[c, $allocated];
    assume Heap[d, $allocated];
    assume state(Heap, Mask);
}