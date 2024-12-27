// 
// Translation of Viper program.
// 
// Date:         2024-12-27 10:46:34
// Tool:         carbon 1.0
// Arguments: :  --disableCaching --boogieExe /home/runner/.dotnet/tools/boogie --timeout 10 --print /home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/issues/carbon/0238.bpl --boogieOpt /proverLog:/home/runner/work/smt-logs/smt-logs/carbon/../smt2/carbon/silver/src/test/resources/all/issues/carbon/0238-@PROC@.smt2 --ignoreFile dummy-file-to-prevent-cli-parser-from-complaining-about-missing-file-name.silver
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

// Function heights (higher height means its body is available earlier):
// - height 0: get
const AssumeFunctionsAbove: int;
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

const unique val: Field NormalField int;
axiom !IsPredicateField(val);
axiom !IsWandField(val);

// ==================================================
// Translation of function get
// ==================================================

// Uninterpreted function definitions
function  get(Heap: HeapType, x: Ref): int;
function  get'(Heap: HeapType, x: Ref): int;
axiom (forall Heap: HeapType, x: Ref ::
  { get(Heap, x) }
  get(Heap, x) == get'(Heap, x) && dummyFunction(get#triggerStateless(x))
);
axiom (forall Heap: HeapType, x: Ref ::
  { get'(Heap, x) }
  dummyFunction(get#triggerStateless(x))
);

// Definitional axiom
axiom (forall Heap: HeapType, Mask: MaskType, x: Ref ::
  { state(Heap, Mask), get(Heap, x) } { state(Heap, Mask), get#triggerStateless(x), cell#trigger(Heap, cell_4(x)) }
  state(Heap, Mask) && AssumeFunctionsAbove < 0 ==> get(Heap, x) == Heap[x, val]
);

// Framing axioms
function  get#frame(frame: FrameType, x: Ref): int;
axiom (forall Heap: HeapType, Mask: MaskType, x: Ref ::
  { state(Heap, Mask), get'(Heap, x) }
  state(Heap, Mask) ==> get'(Heap, x) == get#frame(Heap[null, cell_4(x)], x)
);

// Trigger function (controlling recursive postconditions)
function  get#trigger(frame: FrameType, x: Ref): bool;

// State-independent trigger function
function  get#triggerStateless(x: Ref): int;

// Check contract well-formedness and postcondition
procedure get#definedness(x: Ref) returns (Result: int)
  modifies Heap, Mask;
{
  var perm: Perm;
  var UnfoldingHeap: HeapType;
  var UnfoldingMask: MaskType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume !AssumePermUpperBound;
    assume Heap[x, $allocated];
    assume AssumeFunctionsAbove == 0;
  
  // -- Inhaling precondition (with checking)
    perm := FullPerm;
    Mask := Mask[null, cell_4(x):=Mask[null, cell_4(x)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Check definedness of function body
    
    // -- Check definedness of (unfolding acc(cell(x), write) in x.val)
      UnfoldingHeap := Heap;
      UnfoldingMask := Mask;
      assume cell#trigger(UnfoldingHeap, cell_4(x));
      assume UnfoldingHeap[null, cell_4(x)] == FrameFragment(UnfoldingHeap[x, val]);
      ExhaleWellDef0Mask := UnfoldingMask;
      ExhaleWellDef0Heap := UnfoldingHeap;
      perm := FullPerm;
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access cell(x) (0238.vpr@11.1--15.2) [194583]"}
        NoPerm < perm ==> NoPerm < UnfoldingMask[null, cell_4(x)];
      perm := FullPerm;
      assume x != null;
      UnfoldingMask := UnfoldingMask[x, val:=UnfoldingMask[x, val] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      assume state(UnfoldingHeap, UnfoldingMask);
      assert {:msg "  Function might not be well-formed. There might be insufficient permission to access x.val (0238.vpr@11.1--15.2) [194584]"}
        HasDirectPerm(UnfoldingMask, x, val);
      
      // -- Free assumptions (exp module)
        Heap := Heap[null, cell#sm(x):=Heap[null, cell#sm(x)][x, val:=true]];
        assume state(Heap, Mask);
  
  // -- Translate function body
    Result := Heap[x, val];
}

// ==================================================
// Translation of predicate cell
// ==================================================

type PredicateType_cell;
function  cell_4(x: Ref): Field PredicateType_cell FrameType;
function  cell#sm(x: Ref): Field PredicateType_cell PMaskType;
axiom (forall x: Ref ::
  { PredicateMaskField(cell_4(x)) }
  PredicateMaskField(cell_4(x)) == cell#sm(x)
);
axiom (forall x: Ref ::
  { cell_4(x) }
  IsPredicateField(cell_4(x))
);
axiom (forall x: Ref ::
  { cell_4(x) }
  getPredWandId(cell_4(x)) == 0
);
function  cell#trigger<A>(Heap: HeapType, pred: (Field A FrameType)): bool;
function  cell#everUsed<A>(pred: (Field A FrameType)): bool;
axiom (forall x: Ref, x2: Ref ::
  { cell_4(x), cell_4(x2) }
  cell_4(x) == cell_4(x2) ==> x == x2
);
axiom (forall x: Ref, x2: Ref ::
  { cell#sm(x), cell#sm(x2) }
  cell#sm(x) == cell#sm(x2) ==> x == x2
);

axiom (forall Heap: HeapType, x: Ref ::
  { cell#trigger(Heap, cell_4(x)) }
  cell#everUsed(cell_4(x))
);

procedure cell#definedness(x: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  
  // -- Check definedness of predicate body of cell
    
    // -- Initializing the state
      Mask := ZeroMask;
      assume state(Heap, Mask);
      assume AssumeFunctionsAbove == -1;
      assume AssumePermUpperBound;
      assume Heap[x, $allocated];
    perm := FullPerm;
    assume x != null;
    Mask := Mask[x, val:=Mask[x, val] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
}

// ==================================================
// Translation of method m
// ==================================================

procedure m(x: Ref, y: Ref) returns ()
  modifies Heap, Mask;
{
  var perm: Perm;
  var oldMask: MaskType;
  var oldHeap: HeapType;
  var z: Ref;
  var UnfoldingHeap: HeapType;
  var UnfoldingMask: MaskType;
  var ExhaleWellDef0Mask: MaskType;
  var ExhaleWellDef0Heap: HeapType;
  var w_2: Ref;
  var Unfolding1Heap: HeapType;
  var Unfolding1Mask: MaskType;
  var w_1: Ref;
  var ExhaleHeap: HeapType;
  var ExhaleWellDef1Mask: MaskType;
  var ExhaleWellDef1Heap: HeapType;
  
  // -- Initializing the state
    Mask := ZeroMask;
    assume state(Heap, Mask);
    assume AssumeFunctionsAbove == -1;
    assume AssumePermUpperBound;
  
  // -- Assumptions about method arguments
    assume Heap[x, $allocated];
    assume Heap[y, $allocated];
  
  // -- Checked inhaling of precondition
    perm := FullPerm;
    Mask := Mask[null, cell_4(x):=Mask[null, cell_4(x)] + perm];
    assume state(Heap, Mask);
    perm := FullPerm;
    Mask := Mask[null, cell_4(y):=Mask[null, cell_4(y)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Initializing of old state
    
    // -- Initializing the old state
      oldMask := Mask;
      oldHeap := Heap;
  
  // -- Translating statement: inhale (let z ==
  //     (x) in
  //     (unfolding acc(cell(x), write) in
  //       (let w ==
  //         (y) in
  //         (unfolding acc(cell(w), write) in x.val == w.val)))) -- 0238.vpr@20.13--20.103
    z := x;
    
    // -- Check definedness of (unfolding acc(cell(x), write) in (let w == (y) in (unfolding acc(cell(w), write) in x.val == w.val)))
      UnfoldingHeap := Heap;
      UnfoldingMask := Mask;
      assume cell#trigger(UnfoldingHeap, cell_4(x));
      assume UnfoldingHeap[null, cell_4(x)] == FrameFragment(UnfoldingHeap[x, val]);
      ExhaleWellDef0Mask := UnfoldingMask;
      ExhaleWellDef0Heap := UnfoldingHeap;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Inhale might fail. There might be insufficient permission to access cell(x) (0238.vpr@20.13--20.103) [194585]"}
          perm <= UnfoldingMask[null, cell_4(x)];
      }
      UnfoldingMask := UnfoldingMask[null, cell_4(x):=UnfoldingMask[null, cell_4(x)] - perm];
      perm := FullPerm;
      assume x != null;
      UnfoldingMask := UnfoldingMask[x, val:=UnfoldingMask[x, val] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      assume state(UnfoldingHeap, UnfoldingMask);
      w_2 := y;
      Unfolding1Heap := UnfoldingHeap;
      Unfolding1Mask := UnfoldingMask;
      assume cell#trigger(Unfolding1Heap, cell_4(w_2));
      assume Unfolding1Heap[null, cell_4(w_2)] == FrameFragment(Unfolding1Heap[w_2, val]);
      ExhaleWellDef0Mask := Unfolding1Mask;
      ExhaleWellDef0Heap := Unfolding1Heap;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Inhale might fail. There might be insufficient permission to access cell(w) (0238.vpr@20.13--20.103) [194586]"}
          perm <= Unfolding1Mask[null, cell_4(w_2)];
      }
      Unfolding1Mask := Unfolding1Mask[null, cell_4(w_2):=Unfolding1Mask[null, cell_4(w_2)] - perm];
      perm := FullPerm;
      assume w_2 != null;
      Unfolding1Mask := Unfolding1Mask[w_2, val:=Unfolding1Mask[w_2, val] + perm];
      assume state(Unfolding1Heap, Unfolding1Mask);
      assume state(Unfolding1Heap, Unfolding1Mask);
      assert {:msg "  Inhale might fail. There might be insufficient permission to access x.val (0238.vpr@20.13--20.103) [194587]"}
        HasDirectPerm(Unfolding1Mask, x, val);
      assert {:msg "  Inhale might fail. There might be insufficient permission to access w.val (0238.vpr@20.13--20.103) [194588]"}
        HasDirectPerm(Unfolding1Mask, w_2, val);
      
      // -- Free assumptions (exp module)
        UnfoldingHeap := UnfoldingHeap[null, cell#sm(w_2):=UnfoldingHeap[null, cell#sm(w_2)][w_2, val:=true]];
        assume state(UnfoldingHeap, UnfoldingMask);
      
      // -- Free assumptions (exp module)
        Heap := Heap[null, cell#sm(x):=Heap[null, cell#sm(x)][x, val:=true]];
        assume state(Heap, Mask);
        w_1 := y;
        Heap := Heap[null, cell#sm(w_1):=Heap[null, cell#sm(w_1)][w_1, val:=true]];
        assume state(Heap, Mask);
    
    // -- Execute unfolding (for extra information)
      UnfoldingHeap := Heap;
      UnfoldingMask := Mask;
      assume cell#trigger(UnfoldingHeap, cell_4(x));
      assume UnfoldingHeap[null, cell_4(x)] == FrameFragment(UnfoldingHeap[x, val]);
      ExhaleWellDef0Mask := UnfoldingMask;
      ExhaleWellDef0Heap := UnfoldingHeap;
      perm := FullPerm;
      UnfoldingMask := UnfoldingMask[null, cell_4(x):=UnfoldingMask[null, cell_4(x)] - perm];
      perm := FullPerm;
      assume x != null;
      UnfoldingMask := UnfoldingMask[x, val:=UnfoldingMask[x, val] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      assume state(UnfoldingHeap, UnfoldingMask);
    assume Heap[x, val] == Heap[y, val];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale (unfolding acc(cell(y), write) in y.val == 3) -- 0238.vpr@21.13--21.44
    
    // -- Check definedness of (unfolding acc(cell(y), write) in y.val == 3)
      UnfoldingHeap := Heap;
      UnfoldingMask := Mask;
      assume cell#trigger(UnfoldingHeap, cell_4(y));
      assume UnfoldingHeap[null, cell_4(y)] == FrameFragment(UnfoldingHeap[y, val]);
      ExhaleWellDef0Mask := UnfoldingMask;
      ExhaleWellDef0Heap := UnfoldingHeap;
      perm := FullPerm;
      if (perm != NoPerm) {
        assert {:msg "  Inhale might fail. There might be insufficient permission to access cell(y) (0238.vpr@21.13--21.44) [194589]"}
          perm <= UnfoldingMask[null, cell_4(y)];
      }
      UnfoldingMask := UnfoldingMask[null, cell_4(y):=UnfoldingMask[null, cell_4(y)] - perm];
      perm := FullPerm;
      assume y != null;
      UnfoldingMask := UnfoldingMask[y, val:=UnfoldingMask[y, val] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      assume state(UnfoldingHeap, UnfoldingMask);
      assert {:msg "  Inhale might fail. There might be insufficient permission to access y.val (0238.vpr@21.13--21.44) [194590]"}
        HasDirectPerm(UnfoldingMask, y, val);
      
      // -- Free assumptions (exp module)
        Heap := Heap[null, cell#sm(y):=Heap[null, cell#sm(y)][y, val:=true]];
        assume state(Heap, Mask);
    
    // -- Execute unfolding (for extra information)
      UnfoldingHeap := Heap;
      UnfoldingMask := Mask;
      assume cell#trigger(UnfoldingHeap, cell_4(y));
      assume UnfoldingHeap[null, cell_4(y)] == FrameFragment(UnfoldingHeap[y, val]);
      ExhaleWellDef0Mask := UnfoldingMask;
      ExhaleWellDef0Heap := UnfoldingHeap;
      perm := FullPerm;
      UnfoldingMask := UnfoldingMask[null, cell_4(y):=UnfoldingMask[null, cell_4(y)] - perm];
      perm := FullPerm;
      assume y != null;
      UnfoldingMask := UnfoldingMask[y, val:=UnfoldingMask[y, val] + perm];
      assume state(UnfoldingHeap, UnfoldingMask);
      assume state(UnfoldingHeap, UnfoldingMask);
    assume Heap[y, val] == 3;
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: exhale acc(cell(y), write) -- 0238.vpr@22.6--22.20
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    perm := FullPerm;
    if (perm != NoPerm) {
      assert {:msg "  Exhale might fail. There might be insufficient permission to access cell(y) (0238.vpr@22.13--22.20) [194592]"}
        perm <= Mask[null, cell_4(y)];
    }
    Mask := Mask[null, cell_4(y):=Mask[null, cell_4(y)] - perm];
    // Finish exhale
    havoc ExhaleHeap;
    assume IdenticalOnKnownLocations(Heap, ExhaleHeap, Mask);
    Heap := ExhaleHeap;
    assume state(Heap, Mask);
  
  // -- Translating statement: assert get(x) == 3 -- 0238.vpr@23.6--23.24
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of get(x) == 3
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef1Mask := ExhaleWellDef0Mask;
        ExhaleWellDef1Heap := ExhaleWellDef0Heap;
        perm := FullPerm;
        assert {:msg "  Precondition of function get might not hold. There might be insufficient permission to access cell(x) (0238.vpr@23.13--23.19) [194593]"}
          NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[null, cell_4(x)];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(ExhaleWellDef0Heap, ExhaleHeap, ExhaleWellDef0Mask);
        ExhaleWellDef0Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion get(x) == 3 might not hold. (0238.vpr@23.13--23.24) [194594]"}
      get(Heap, x) == 3;
    assume state(Heap, Mask);
  
  // -- Translating statement: inhale acc(cell(y), write) -- 0238.vpr@24.6--24.20
    perm := FullPerm;
    Mask := Mask[null, cell_4(y):=Mask[null, cell_4(y)] + perm];
    assume state(Heap, Mask);
    assume state(Heap, Mask);
    assume state(Heap, Mask);
  
  // -- Translating statement: assert get(x) == 3 -- 0238.vpr@25.6--25.24
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of get(x) == 3
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef1Mask := ExhaleWellDef0Mask;
        ExhaleWellDef1Heap := ExhaleWellDef0Heap;
        perm := FullPerm;
        assert {:msg "  Precondition of function get might not hold. There might be insufficient permission to access cell(x) (0238.vpr@25.13--25.19) [194596]"}
          NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[null, cell_4(x)];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(ExhaleWellDef0Heap, ExhaleHeap, ExhaleWellDef0Mask);
        ExhaleWellDef0Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion get(x) == 3 might not hold. (0238.vpr@25.13--25.24) [194597]"}
      get(Heap, x) == 3;
    assume state(Heap, Mask);
  
  // -- Translating statement: assert get(y) == 3 -- 0238.vpr@27.6--27.24
    ExhaleWellDef0Mask := Mask;
    ExhaleWellDef0Heap := Heap;
    
    // -- Check definedness of get(y) == 3
      if (*) {
        // Exhale precondition of function application
        ExhaleWellDef1Mask := ExhaleWellDef0Mask;
        ExhaleWellDef1Heap := ExhaleWellDef0Heap;
        perm := FullPerm;
        assert {:msg "  Precondition of function get might not hold. There might be insufficient permission to access cell(y) (0238.vpr@27.13--27.19) [194598]"}
          NoPerm < perm ==> NoPerm < ExhaleWellDef0Mask[null, cell_4(y)];
        // Finish exhale
        havoc ExhaleHeap;
        assume IdenticalOnKnownLocations(ExhaleWellDef0Heap, ExhaleHeap, ExhaleWellDef0Mask);
        ExhaleWellDef0Heap := ExhaleHeap;
        // Stop execution
        assume false;
      }
    assert {:msg "  Assert might fail. Assertion get(y) == 3 might not hold. (0238.vpr@27.13--27.24) [194599]"}
      get(Heap, y) == 3;
    assume state(Heap, Mask);
}